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
        List<String> buyers = new ArrayList(), sellers = new ArrayList();
        con = getConnection();
        String sql = "SELECT * FROM Feedbacks WHERE Seller = ?";
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, username);
            rs = ps.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("ID");
                String content = rs.getString("Content");
                String type = rs.getString("Type");
                String buyerName = rs.getString("Buyer");
                String sellerName = rs.getString("Seller");

                buyers.add(buyerName);
                sellers.add(sellerName);

                listFound.add(new Feedback(id, content, type, null, null));
            }

            AccountDAO accountDAO = new AccountDAO();
            for (int i = 0; i < listFound.size(); i++) {
                listFound.get(i).setBuyer(accountDAO.getByUsername(buyers.get(i)));
                listFound.get(i).setSeller(accountDAO.getByUsername(sellers.get(i)));
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
            ps.setString(3, feedback.getBuyer().getUsername());
            ps.setString(4, feedback.getSeller().getUsername());
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

    public boolean delete(int id) {
        con = getConnection();
        String sql = "DELETE FROM [dbo].[Feedbacks]\n"
                + "      WHERE [ID] = ? ";
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

    public static void main(String[] args) {
        FeedbackDAO feedbackDAO = new FeedbackDAO();

        for (Feedback feedback : feedbackDAO.getAllByUsername("minhcuong292")) {
            System.out.println(feedback.getBuyer().getAvatar());
        }
    }
}
