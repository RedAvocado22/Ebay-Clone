package dao;

import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import models.Account;
import models.Product;
import utils.DBUtils;

public class ProductDAO extends DBUtils {

    public List<Product> findAll() {
        List<Product> listFound = new ArrayList<>();
        con = getConnection();
        String sql = "SELECT p.*\n"
                + "  FROM [dbo].[Product] p\n"
                + "  JOIN [dbo].[Account] a\n"
                + "  ON p.Seller = a.Username;";
        try {
            ps = con.prepareStatement(sql);

            rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("ID");
                String name = rs.getString("Name");
                double price = rs.getDouble("Price");
                int quantity = rs.getInt("Quantity");
                String img = rs.getString("Image");
                String seller = rs.getString("Seller");
                Account sellerAccount = new Account();
                sellerAccount.setUsername(seller);
                Product product = new Product(id, name, price, quantity, img, sellerAccount);

                listFound.add(product);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return listFound;
    }

    public List<Product> findByName(String keyword) {
        List<Product> listFound = new ArrayList<>();
        con = getConnection();
        String sql = "SELECT p.*\n"
                + "FROM [dbo].[Product] p\n"
                + "JOIN [dbo].[Account] a\n"
                + "ON p.Seller = a.Username\n"
                + "WHERE [Name] LIKE ? ";
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, "%" + keyword + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("ID");
                String name = rs.getString("Name");
                double price = rs.getDouble("Price");
                int quantity = rs.getInt("Quantity");
                String img = rs.getString("Image");
                String seller = rs.getString("Seller");
                Account sellerAccount = new Account();
                sellerAccount.setUsername(seller);
                Product product = new Product(id, name, price, quantity, img, sellerAccount);

                listFound.add(product);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return listFound;
    }

    public void insertNewProduct(Product product) {
        con = getConnection();
        String sql = "INSERT INTO [dbo].[Product]\n"
                + "           ([Name]\n"
                + "           ,[Price]\n"
                + "           ,[Quantity]\n"
                + "           ,[Image]\n"
                + "           ,[Seller])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        try {
            ps = con.prepareStatement(sql,
                    Statement.RETURN_GENERATED_KEYS);

            ps.setObject(1, product.getName());
            ps.setObject(2, product.getPrice());
            ps.setObject(3, product.getQuantity());
            ps.setObject(4, product.getImage());
            ps.setObject(5, product.getSeller());

            ps.executeUpdate();
            rs = ps.getGeneratedKeys();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void UpdateProduct(Product product) {
        con = getConnection();
        String sql = "UPDATE [dbo].[Product]\n"
                + "   SET [Name] = ?\n"
                + "      ,[Price] = ?\n"
                + "      ,[Quantity] = ?\n"
                + "      ,[Image] = ?\n"
                + "      ,[Seller] = ?\n"
                + " WHERE [ID] = ?";
        try {
            ps = con.prepareStatement(sql);

            ps.setObject(1, product.getName());
            ps.setObject(2, product.getPrice());
            ps.setObject(3, product.getQuantity());
            ps.setObject(4, product.getImage());
            ps.setObject(5, product.getSeller());

            ps.executeUpdate();
            rs = ps.getGeneratedKeys();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteProduct(Product product) {
        con = getConnection();
        String sql = "DELETE FROM [dbo].[Product]\n"
                + "      WHERE [ID] = ?";
        try {
            ps = con.prepareStatement(sql);
            //set parameter            
            ps.setObject(1, product.getId());
            //thuc thi cau lenh
            ps.executeUpdate();
            rs = ps.getGeneratedKeys();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Product> findNewProduct() {
        List<Product> listFound = new ArrayList<>();
        con = getConnection();
        String sql = "SELECT TOP 10 *\n"
                + "  FROM [dbo].[Product]\n"
                + "  ORDER BY [ID] DESC";
        try {
            ps = con.prepareStatement(sql);

            rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("ID");
                String name = rs.getString("Name");
                double price = rs.getDouble("Price");
                int quantity = rs.getInt("Quantity");
                String img = rs.getString("Image");
                String seller = rs.getString("Seller");
                Account sellerAccount = new Account();
                sellerAccount.setUsername(seller);
                Product product = new Product(id, name, price, quantity, img, sellerAccount);

                listFound.add(product);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return listFound;
    }
}
