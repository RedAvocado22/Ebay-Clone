package dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import models.Account;
import models.Order;
import models.OrderItem;
import utils.DBUtils;

public class OrderDAO extends DBUtils {

    public List<Order> getAllOrder() {
        List<Order> listOd = new ArrayList<>();
        con = getConnection();
        String sql = "SELECT o.*\n"
                + "FROM [dbo].[Order] o\n"
                + "JOIN [dbo].[Account] b ON o.Buyer = b.Username\n"
                + "JOIN [dbo].[Account] s ON o.Seller = s.Username";
        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("ID");
                int total = rs.getInt("Total");
                String buyer = rs.getString("Buyer");
                String seller = rs.getString("Seller");
                String status = rs.getString("Status");

                Account account = new Account();
                account.setUsername(buyer);
                account.setUsername(seller);

                List<OrderItem> orderItems = (List<OrderItem>) new OrderItemDAO().getAllItems();
                Order order = new Order(id, total, account, account, status, orderItems);

                listOd.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listOd;
    }

    public void insertOrder(Order order) {
        con = getConnection();

        String sql = "INSERT INTO [dbo].[Order]\n"
                + "           ([Total]\n"
                + "           ,[Buyer]\n"
                + "           ,[Seller]\n"
                + "           ,[Status])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";

        try {
            con = getConnection();
            ps = con.prepareStatement(sql);

            // Gán giá trị cho các tham số
            ps.setDouble(1, order.getTotal());
            ps.setString(2, order.getBuyer().getUsername());
            ps.setString(3, order.getSeller().getUsername());
            ps.setString(4, order.getStatus());

            ps.executeUpdate();

            OrderItemDAO orderItemDAO = new OrderItemDAO();
            for (OrderItem item : order.getOrders()) {
                orderItemDAO.insertItem(item, getLastOrderId());
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private int getLastOrderId() {
        con = getConnection();
        String sql = "SELECT TOP 1 ID FROM [dbo].[Order] ORDER BY ID DESC";
        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getInt("ID");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public Order getOrderById(int id) {
        con = getConnection();
        String sql = "SELECT * FROM [dbo].[Order] WHERE ID = ?";
        Order order = null;

        try {
            con = getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            if (rs.next()) {
                int orderId = rs.getInt("ID");
                double total = rs.getDouble("Total");
                String buyerUsername = rs.getString("Buyer");
                String sellerUsername = rs.getString("Seller");
                String status = rs.getString("Status");

                Account buyer = new Account();
                buyer.setUsername(buyerUsername);

                Account seller = new Account();
                seller.setUsername(sellerUsername);

                List<OrderItem> orderItems = new OrderItemDAO().getItemsByOrderId(orderId);

                order = new Order(orderId, total, buyer, seller, status, orderItems);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return order;
    }

    public void updateOrderStatus(int orderId, String status) {
        con = getConnection();
        String sql = "UPDATE [dbo].[Order] SET Status = ? WHERE ID = ?";

        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, status);
            ps.setInt(2, orderId);

            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
