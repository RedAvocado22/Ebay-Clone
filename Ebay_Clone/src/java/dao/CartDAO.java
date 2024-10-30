/*
  Student ID   : HE187382
  Student name : Nguyen Minh Cuong
  Due date     :  
 */
package dao;

import java.sql.SQLException;
import java.util.List;
import models.Cart;
import models.CartItem;
import utils.DBUtils;

/**
 *
 * @author Minh Cuong
 */
public class CartDAO extends DBUtils {

    public Cart get(String username) {
        con = getConnection();
        String sql = "SELECT * FROM Carts WHERE ID_Account = ?";
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("ID");

                CartItemDAO cartItemDAO = new CartItemDAO();
                List<CartItem> cartItems = cartItemDAO.getItemsByCartId(username);

                return new Cart(id, cartItems);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public void update(Cart cart) {
        con = getConnection();
        String sql = "UPDATE CartDetail SET quantity = ? WHERE ID_Product = ? AND ID_Cart = ?";

        try {
            // Loop through the cart items to update each quantity
            for (CartItem cartItem : cart.getItems()) {
                ps = con.prepareStatement(sql);
                ps.setInt(1, cartItem.getQuantity());
                ps.setInt(2, cartItem.getProduct().getId());
                ps.setInt(3, cart.getId());

                // Execute the update for each item 
                ps.executeUpdate();
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } 
    }

//    public static void main(String[] args) {
//        CartDAO cartDAO = new CartDAO();
//        for (CartItem cartItem : cartDAO.get("user2").getItems()) {
//            System.out.println(cartItem.getProduct().getName());
//        }
//    }
}
