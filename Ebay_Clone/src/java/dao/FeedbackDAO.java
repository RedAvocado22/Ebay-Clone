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
                + "FROM [dbo].[Feedbacks]"
                + "WHERE [Username] = ?";
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("ID");
                String content = rs.getString("Content");
                String type = rs.getString("Type");
                String status = rs.getString("Status");
                String buyerName = rs.getString("Buyer");
                String sellerName = rs.getString("Seller");

                listFound.add(new Feedback(id, content, type, status, buyerName, sellerName));
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return listFound;
    }

    public void insert(Feedback feedback) {
        con = getConnection();
        String sql = "INSERT INTO [dbo].[Feedbacks]\n"
                + "           ([Content]\n"
                + "           ,[Type]\n"
                + "           ,[Buyer]\n"
                + "           ,[Seller])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        try {
            ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, feedback.getContent());
            ps.setString(2, feedback.getType());
            ps.setString(3, feedback.getBuyer());
            ps.setString(4, feedback.getSeller());
            ps.executeUpdate();
            rs = ps.getGeneratedKeys();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void update(Feedback feedback) {
        con = getConnection();
        String sql = "UPDATE [dbo].[Feedbacks]\n"
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

    public void delete(Feedback feedback) {
        con = getConnection();
        String sql = "UPDATE [dbo].[Feedbacks]\n"
                + "   SET [Status] = 0\n"
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
