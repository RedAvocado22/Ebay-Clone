package dao;

import java.sql.Statement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import models.Feedback;
import utils.DBUtils;

public class FeedbackDAO extends DBUtils {

    public List<Feedback> getAllByUsername(String username) {
        List<Feedback> listFound = new ArrayList<>();
        con = getConnection();
        String sql = "SELECT *\n"
                + "FROM [dbo].[Feedback]";
        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("ID");
                String content = rs.getString("Content");
                String type = rs.getString("Type");
                String status = rs.getString("Status");
                String buyerName = rs.getString("Buyer");
                String sellerName = rs.getString("Seller");

                Feedback feedback = new Feedback(id, content, type, status, buyerName, sellerName);
                listFound.add(feedback);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return listFound;
    }

    public void insert(Feedback feedback) {
        con = getConnection();
        String sql = "INSERT INTO [dbo].[Feedback]\n"
                + "           ([Content]\n"
                + "           ,[Type]\n"
                + "           ,[Status]\n"
                + "           ,[Buyer]\n"
                + "           ,[Seller])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        try {
            ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, feedback.getContent());
            ps.setString(2, feedback.getType());
            ps.setString(3, feedback.getStatus());
            ps.setString(4, feedback.getBuyer());
            ps.setString(5, feedback.getSeller());
            ps.executeUpdate();
            rs = ps.getGeneratedKeys();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void update(Feedback feedback) {
        con = getConnection();
        String sql = "UPDATE [dbo].[Feedback]\n"
                + "   SET [Content] = ?\n"
                + "      ,[Type] = ?\n"
                + " WHERE [ID] = ? ";
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, feedback.getContent());
            ps.setString(2, feedback.getType());
            ps.setInt(3, feedback.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void delete(Feedback feedback, String username) {
        con = getConnection();
        String sql = "UPDATE [dbo].[Feedback]\n"
                + "   SET [Status] = ?\n"
                + " WHERE [ID] = ?";
        try {
            ps = con.prepareStatement(sql);
            ps.setObject(1, feedback.getStatus());
            ps.setInt(1, feedback.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
