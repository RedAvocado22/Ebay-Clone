package dao;

import java.sql.Statement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import models.Account;
import models.Feedback;
import utils.DBUtils;

public class FeedbackDAO extends DBUtils {

    public List<Feedback> findAll() {
        List<Feedback> listFound = new ArrayList<>();
        con = getConnection();
        String sql = "SELECT f.*\n"
                + "FROM [dbo].[Feedback] f\n"
                + "JOIN [dbo].[Account] b ON f.Buyer = b.Username\n"
                + "JOIN [dbo].[Account] s ON f.Seller = s.Username";
        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("ID");
                String content = rs.getString("Content");
                String type = rs.getString("Type");
                String status = rs.getString("Status");
                String buyerName = rs.getString("BuyerName");
                String sellerName = rs.getString("SellerName");

                Account buyerAccount = new Account();
                buyerAccount.setUsername(buyerName);
                Account sellerAccount = new Account();
                sellerAccount.setUsername(buyerName);
                Feedback feedback = new Feedback(id, content, type, status, buyerAccount, sellerAccount);
                listFound.add(feedback);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return listFound;
    }

    public void insertNewFeedback(Feedback feedback) {
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
            ps.setString(4, feedback.getBuyer().getUsername());
            ps.setString(5, feedback.getSeller().getUsername());
            ps.executeUpdate();
            rs = ps.getGeneratedKeys();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateFeedback(Feedback feedback) {
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

    public void deleteFeedback(Feedback feedback) {
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
