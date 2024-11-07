package dao;

import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import models.Account;
import models.Category;
import models.Product;
import utils.DBUtils;

public class ProductDAO extends DBUtils {

    public List<Product> getAll() {
        List<Product> listFound = new ArrayList<>();
        con = getConnection();
        String sql = "SELECT p.*\n"
                + "  FROM [dbo].[Products] p\n"
                + "  JOIN [dbo].[Accounts] a\n"
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
                int category = rs.getInt("CategoryID");
                Account sellerAccount = new Account();
                sellerAccount.setUsername(seller);
                Product product = new Product(id, name, price, quantity, img, category, sellerAccount);

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
                + "FROM [dbo].[Products] p\n"
                + "JOIN [dbo].[Accounts] a\n"
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
                int category = rs.getInt("CategoryID");
                Account sellerAccount = new Account();
                sellerAccount.setUsername(seller);
                Product product = new Product(id, name, price, quantity, img, category, sellerAccount);

                listFound.add(product);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return listFound;
    }

    public Product findById(int id) {
        Product productFound = null;
        con = getConnection();
        String sql = "SELECT p.*\n"
                + "FROM [dbo].[Products] p\n"
                + "JOIN [dbo].[Accounts] a\n"
                + "ON p.Seller = a.Username\n"
                + "WHERE [ID] = ? ";
        try {
            ps = con.prepareStatement(sql);
            ps.setObject(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                String name = rs.getString("Name");
                double price = rs.getDouble("Price");
                int quantity = rs.getInt("Quantity");
                String img = rs.getString("Image");
                String seller = rs.getString("Seller");
                int category = rs.getInt("CategoryID");
                AccountDAO accountDAO = new AccountDAO();
                Account sellerAccount = accountDAO.getByUsername(seller);
                productFound = new Product(id, name, price, quantity, img, category, sellerAccount);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return productFound;
    }

    public void insert(Product product) {
        con = getConnection();
        String sql = "INSERT INTO [dbo].[Products]\n"
                + "           ([Name]\n"
                + "           ,[Price]\n"
                + "           ,[Quantity]\n"
                + "           ,[Image]\n"
                + "           ,[CategoryID]\n"
                + "           ,[Seller])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
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
            ps.setObject(5, product.getCategory());
            ps.setObject(4, product.getImage());
            ps.setObject(6, product.getSeller().getUsername());

            ps.executeUpdate();
            rs = ps.getGeneratedKeys();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void update(Product product) {
        con = getConnection();
        String sql = "UPDATE [dbo].[Products]\n"
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
            ps.setObject(5, product.getSeller().getUsername());

            ps.executeUpdate();
            rs = ps.getGeneratedKeys();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public boolean delete(int id) {
        con = getConnection();
        String sql = "DELETE FROM [dbo].[Products] WHERE [ID] = ?";
        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);

            int affectedRows = ps.executeUpdate();

            return affectedRows > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public List<Product> findNewProduct() {
        List<Product> listFound = new ArrayList<>();
        con = getConnection();
        String sql = "SELECT TOP 12 *\n"
                + "  FROM [dbo].[Products]\n"
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
                int category = rs.getInt("CategoryID");
                Account sellerAccount = new Account();
                sellerAccount.setUsername(seller);
                Product product = new Product(id, name, price, quantity, img, category, sellerAccount);

                listFound.add(product);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return listFound;
    }

    public static void main(String[] args) {
        ProductDAO productDAO = new ProductDAO();

        System.out.println(productDAO.delete(12));
    }
}
