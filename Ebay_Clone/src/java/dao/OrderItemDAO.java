package dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import models.OrderItem;
import models.Product;
import utils.DBUtils;

public class OrderItemDAO extends DBUtils {

    public void insertItem(OrderItem orderItem, int orderId) {
        con = getConnection();
        String sql = "INSERT INTO [dbo].[OrderDetail]\n"
                + "           ([ID_Product]\n"
                + "           ,[ID_Order]\n"
                + "           ,[Quantity])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?)";

        try {
            ps = con.prepareStatement(sql);

            ps.setInt(1, orderItem.getProduct().getId());
            ps.setInt(2, orderId);
            ps.setInt(3, orderItem.getQuantity());

            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteItem(int orderItemID) {
        con = getConnection();
        String sql = "DELETE FROM [dbo].[OrderDetail]\n"
                + "      WHERE [ID] = ? ";
        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1, orderItemID);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<OrderItem> getItemsByOrderId(int orderId) {
        List<OrderItem> listItems = new ArrayList<>();
        String sql = "SELECT p.ID, od.Quantity "
                + "FROM [dbo].[OrderDetail] od "
                + "JOIN [dbo].[Products] p ON od.ID_Product = p.ID "
                + "WHERE od.ID_Order = ?";

        try {
            con = getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, orderId);
            rs = ps.executeQuery();

            while (rs.next()) {
                int productID = rs.getInt("ID");
                int quantity = rs.getInt("Quantity");

                ProductDAO productDAO = new ProductDAO();
                Product product = productDAO.findById(productID);

                OrderItem item = new OrderItem();
                item.setProduct(product);
                item.setQuantity(quantity);

                listItems.add(item);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return listItems;
    }
}
