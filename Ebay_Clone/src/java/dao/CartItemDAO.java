/*
  Student ID   : HE187382
  Student name : Nguyen Minh Cuong
  Due date     :  
 */
package dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import models.CartItem;
import models.Product;
import utils.DBUtils;

/**
 *
 * @author Minh Cuong
 */
public class CartItemDAO extends DBUtils {

    public List<CartItem> getItemsByCartId(String username) {
        List<CartItem> cartItems = new ArrayList<>();
        String sql = "SELECT ID_Product, Quantity FROM Carts c \n"
                + "JOIN CartDetail cd ON c.ID = cd.ID_Cart\n"
                + "WHERE c.ID_Account = ?";

        List<Integer> productIds = new ArrayList<>();
        List<Integer> quantities = new ArrayList<>();

        try {
            con = getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, username);
            rs = ps.executeQuery();

            while (rs.next()) {
                productIds.add(rs.getInt("ID_Product"));
                quantities.add(rs.getInt("Quantity"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        ProductDAO productDAO = new ProductDAO();
        for (int i = 0; i < productIds.size(); i++) {
            Product product = productDAO.findById(productIds.get(i));
            CartItem item = new CartItem();
            item.setProduct(product);
            item.setQuantity(quantities.get(i));
            cartItems.add(item);
        }

        return cartItems;
    }

//    public static void main(String[] args) {
//        CartItemDAO c = new CartItemDAO();
//        for (CartItem cartItem : c.getItemsByCartId("user1")) {
//            System.out.println(cartItem.getProduct().getName());
//        }
//    }
}
