package dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import models.Account;
import models.Order;
import models.OrderItem;
import models.Product;
import utils.DBUtils;

public class OrderDAO extends DBUtils {

    public List<Order> getAll() {
        List<Order> orders = new ArrayList<>();
        List<String> buyers = new ArrayList<>();
        List<String> sellers = new ArrayList<>();
        con = getConnection();
        String sql = "SELECT o.*\n"
                + "FROM [dbo].[Orders] o\n"
                + "JOIN [dbo].[Accounts] b ON o.Buyer = b.Username\n"
                + "JOIN [dbo].[Accounts] s ON o.Seller = s.Username";
        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("ID");
                int total = rs.getInt("Total");
                String buyerName = rs.getString("Buyer");
                String sellerName = rs.getString("Seller");
                String status = rs.getString("Status");

                buyers.add(buyerName);
                sellers.add(sellerName);

                orders.add(new Order(id, total, null, null, status, null));
            }

            OrderItemDAO orderItemDAO = new OrderItemDAO();
            AccountDAO accountDAO = new AccountDAO();

            for (int i = 0; i < orders.size(); i++) {
                orders.get(i).setBuyer(accountDAO.getByUsername(buyers.get(i)));
                orders.get(i).setSeller(accountDAO.getByUsername(sellers.get(i)));
                orders.get(i).setOrders(orderItemDAO.getItemsByOrderId(orders.get(i).getId()));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }

    public boolean update(int ID, String status) {
        con = getConnection();
        String sql = "UPDATE [dbo].[Orders] SET [Status] = ? WHERE [ID] = ?";
        boolean isUpdated = false;

        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, status);
            ps.setInt(2, ID);
            int rowsAffected = ps.executeUpdate();

            if (rowsAffected > 0) {
                isUpdated = true; 
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } 
        
        return isUpdated;
    }

    public boolean delete(int ID) {
        con = getConnection();
        String sql = "DELETE [dbo].[Orders] WHERE [ID] = ?";
        boolean isDeleted = false;

        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1, ID);
            int rowsAffected = ps.executeUpdate();

            if (rowsAffected > 0) {
                isDeleted = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
        }

        return isDeleted;
    }

    public void insert(Order order) {
        con = getConnection();

        String sql = "INSERT INTO [dbo].[Orders]\n"
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

            ps.setDouble(1, order.getTotal());
            ps.setString(2, order.getBuyer().getUsername());
            ps.setString(3, order.getSeller().getUsername());
            ps.setString(4, order.getStatus());

            ps.executeUpdate();

            OrderItemDAO orderItemDAO = new OrderItemDAO();
            for (OrderItem item : order.getOrders()) {
                orderItemDAO.insertItem(item, getLastId());
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private int getLastId() {
        con = getConnection();
        String sql = "SELECT TOP 1 ID FROM [dbo].[Orders] ORDER BY ID DESC";
        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getInt("ID");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    public Order getById(int id) {
        con = getConnection();
        String sql = "SELECT * FROM [dbo].[Orders] WHERE ID = ?";
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

                AccountDAO accountDAO = new AccountDAO();
                Account buyer = accountDAO.getByUsername(buyerUsername);
                Account seller = accountDAO.getByUsername(sellerUsername);

                List<OrderItem> orderItems = new OrderItemDAO().getItemsByOrderId(orderId);

                order = new Order(orderId, total, buyer, seller, status, orderItems);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return order;
    }

    public List<Product> getProductsByOrderId(int id) {
        List<Product> products = new ArrayList<>();
        con = getConnection();
        String sql = "SELECT p.*\n"
                + "FROM [dbo].[Products] p\n"
                + "JOIN [dbo].[OrderDetail] od\n"
                + "ON od.ID_Product = p.ID\n"
                + "JOIN [dbo].[Orders] o\n"
                + "ON o.ID = od.ID_Order\n"
                + "WHERE o.ID = ?";
        try {
            con = getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                int productID = rs.getInt("ID");
                String name = rs.getString("Name");
                double price = rs.getDouble("Price");
                int quantity = rs.getInt("Quantity");
                String img = rs.getString("Image");
                String seller = rs.getString("Seller");
                int category = rs.getInt("CategoryID");
                Account sellerAccount = new Account();
                sellerAccount.setUsername(seller);
                Product product = new Product(id, name, price, quantity, img, category, sellerAccount);
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    public List<Order> getOrdersByUsername(String username) {
        List<Order> orders = new ArrayList<>();
        List<String> buyers = new ArrayList<>();
        List<String> sellers = new ArrayList<>();
        String sql = "SELECT o.*\n"
                + "FROM [dbo].[Orders] o\n"
                + "JOIN [dbo].[Accounts] a\n"
                + "ON o.Buyer = a.Username\n"
                + "WHERE a.Username = ?";
        try {
            con = getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("ID");
                int total = rs.getInt("Total");
                String buyerName = rs.getString("Buyer");
                String sellerName = rs.getString("Seller");
                String status = rs.getString("Status");

                buyers.add(buyerName);
                sellers.add(sellerName);

                orders.add(new Order(id, total, null, null, status, null));
            }
            OrderItemDAO orderItemDAO = new OrderItemDAO();
            AccountDAO accountDAO = new AccountDAO();

            for (int i = 0; i < orders.size(); i++) {
                orders.get(i).setBuyer(accountDAO.getByUsername(buyers.get(i)));
                orders.get(i).setSeller(accountDAO.getByUsername(sellers.get(i)));
                orders.get(i).setOrders(orderItemDAO.getItemsByOrderId(orders.get(i).getId()));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }

    public static void main(String[] args) {
        OrderDAO dao = new OrderDAO();

        List<Order> orders = dao.getAll();

        orders = orders.stream().filter(o -> o.getBuyer().getUsername().equals("moonlight")).toList();

        for (Order order : orders) {
            System.out.println(order.getOrders().size());
        }
    }
}
