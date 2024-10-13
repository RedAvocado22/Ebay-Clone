package dao;

import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import models.Account;
import models.Categories;
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

    public Product findById(Product p) {
        Product productFound = null;
        con = getConnection();
        String sql = "SELECT p.*\n"
                + "FROM [dbo].[Product] p\n"
                + "JOIN [dbo].[Account] a\n"
                + "ON p.Seller = a.Username\n"
                + "WHERE [ID] = ? ";
        try {
            ps = con.prepareStatement(sql);
            ps.setObject(1, p.getId());
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
                productFound = new Product(id, name, price, quantity, img, sellerAccount);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return productFound;
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

    public int findTotalRecord() {
        int totalRecord = 0;
        con = getConnection();
        String sql = "SELECT COUNT(*) AS total\n"
                + "  FROM [dbo].[Product]\n";
        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                totalRecord = rs.getInt("total");
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return totalRecord;
    }

    public List<Product> findByPage(int page) {
        List<Product> listFound = new ArrayList<>();
        con = getConnection();
        int pageSize = 30;
        int offset = (page - 1) * pageSize;
        String sql = "SELECT *\n"
                + "FROM [dbo].[Product]\n"
                + "ORDER BY [ID]\n"
                + "OFFSET ? ROWS\n"
                + "FETCH NEXT ? ROWS ONLY";
        try {
            ps = con.prepareStatement(sql);

            ps.setInt(1, offset);
            ps.setInt(2, pageSize);

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
            e.printStackTrace();
        }
        return listFound;
    }

    public int findTotalRecordByCategory(Categories category) {
        int totalRecord = 0;
        con = getConnection();
        String sql = "SELECT COUNT(p.ID ) as total\n"
                + "FROM [dbo].[Product] p\n"
                + "RIGHT OUTER JOIN [dbo].[Products_To_Categories] ptc \n"
                + "ON p.ID = ptc.ID_Product\n"
                + "RIGHT OUTER JOIN [dbo].[Categories] c\n"
                + "ON c.[ID] = ptc.[ID_Categories]\n"
                + "WHERE c.Name = ? ";
        try {
            ps = con.prepareStatement(sql);
            ps.setObject(1, category.getName());
            rs = ps.executeQuery();
            if (rs.next()) {
                totalRecord = rs.getInt("total");
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return totalRecord;
    }

    public List<Product> findByCategory(Categories category, int page) {
        List<Product> listFound = new ArrayList<>();
        con = getConnection();
        int pageSize = 30;
        int offset = (page - 1) * pageSize;
        String sql = "SELECT p.*\n"
                + "FROM [dbo].[Product] p\n"
                + "RIGHT OUTER JOIN [dbo].[Products_To_Categories] ptc \n"
                + "ON p.ID = ptc.ID_Product\n"
                + "RIGHT OUTER JOIN [dbo].[Categories] c\n"
                + "ON c.[ID] = ptc.[ID_Categories]\n"
                + "WHERE c.Name = ? \n"
                + "ORDER BY p.ID\n"
                + "OFFSET ? ROWS\n"
                + "FETCH NEXT ? ROWS ONLY;";
        try {
            ps = con.prepareStatement(sql);

            ps.setObject(1, category.getName());
            ps.setInt(2, offset);
            ps.setInt(3, pageSize);

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
            e.printStackTrace();
        }
        return listFound;
    }

    public int findTotalRecordByName(String keyword) {
        int totalRecord = 0;
        con = getConnection();
        String sql = "SELECT COUNT(p.ID ) as total\n"
                + "FROM [dbo].[Product] p\n"
                + "RIGHT OUTER JOIN [dbo].[Products_To_Categories] ptc \n"
                + "ON p.ID = ptc.ID_Product\n"
                + "RIGHT OUTER JOIN [dbo].[Categories] c\n"
                + "ON c.[ID] = ptc.[ID_Categories]\n"
                + "WHERE p.Name LIKE ?";
        try {
            ps = con.prepareStatement(sql);
            ps.setObject(1, "%" + keyword + "%");
            rs = ps.executeQuery();
            if (rs.next()) {
                totalRecord = rs.getInt("total");
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return totalRecord;
    }

    public List<Product> findByName(String keyword, int page) {
        List<Product> listFound = new ArrayList<>();
        con = getConnection();
        int pageSize = 30;
        int offset = (page - 1) * pageSize;
        String sql = "SELECT p.*\n"
                + "FROM [dbo].[Product] p\n"
                + "RIGHT OUTER JOIN [dbo].[Products_To_Categories] ptc \n"
                + "ON p.ID = ptc.ID_Product\n"
                + "RIGHT OUTER JOIN [dbo].[Categories] c\n"
                + "ON c.[ID] = ptc.[ID_Categories]\n"
                + "WHERE p.Name LIKE ? \n"
                + "ORDER BY p.ID\n"
                + "OFFSET ? ROWS\n"
                + "FETCH NEXT ? ROWS ONLY;";
        try {
            ps = con.prepareStatement(sql);

            ps.setObject(1, "%" + keyword + "%");
            ps.setInt(2, offset);
            ps.setInt(3, pageSize);

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
            e.printStackTrace();
        }
        return listFound;
    }
}
