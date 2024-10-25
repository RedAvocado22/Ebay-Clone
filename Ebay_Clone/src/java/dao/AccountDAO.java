package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import models.Account;
import utils.DBUtils;

public class AccountDAO extends DBUtils {

    public Account login(String username, String password) {
        con = getConnection();
        String sql = "SELECT * FROM [dbo].[Account]\n"
                + "WHERE [Username] = ? AND  [Password] = ? ";
        try {
            ps = con.prepareStatement(sql);

            ps.setObject(1, username);
            ps.setObject(2, password);

            rs = ps.executeQuery();

            if (rs.next()) {
                String fullname = rs.getString("Fullname");
                String email = rs.getString("Email");
                String role = rs.getString("Role");
                String avatar = rs.getString("Avatar");
                return new Account(
                        username, password, 
                        fullname, email, role, avatar, avatar
                );
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return null;
    }

    public boolean register(Account account) {
        con = getConnection();
        String sql = "INSERT INTO [dbo].[Account]\n"
                + "           ([Username]\n"
                + "           ,[Password]\n"
                + "           ,[Fullname]\n"
                + "           ,[Email]\n"
                + "           ,[Avatar])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        try {
            ps = con.prepareStatement(sql);

            ps.setObject(1, account.getUsername());
            ps.setObject(2, account.getPassword());
            ps.setObject(3, account.getFullname());
            ps.setObject(4, account.getEmail());
            ps.setObject(5, account.getAvatar());

            int affected = ps.executeUpdate();
            rs = ps.getGeneratedKeys();
            if (affected > 0) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public Account getByUsername(String username) {
        con = getConnection();
        String sql = "SELECT * FROM [dbo].[Account]\n"
                + "WHERE [Username] = ?";
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, username);
            rs = ps.executeQuery();

            while (rs.next()) {
                String password = rs.getString("Password");
                String fullname = rs.getString("Fullname");
                String email = rs.getString("Email");
                String role = rs.getString("Role");
                String status = rs.getString("Status");
                String avatar = rs.getString("Avatar");
                return new Account(username, password, fullname, email, role, status, avatar);
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public List<Account> getAll() {
        List<Account> listFound = new ArrayList<>();
        con = getConnection();
        String sql = "SELECT * FROM [dbo].[Account]";
        try {
            ps = con.prepareStatement(sql);

            rs = ps.executeQuery();
            while (rs.next()) {
                String username = rs.getString("Username");
                String password = rs.getString("Password");
                String fullname = rs.getString("Fullname");
                String email = rs.getString("Email");
                String role = rs.getString("Role");
                String status = rs.getString("Status");
                String avatar = rs.getString("Avatar");
                Account account = new Account(username, password, fullname, email, role, status, avatar);

                listFound.add(account);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return listFound;
    }

    public void update(Account account) {
        con = getConnection();
        String sql = "UPDATE [dbo].[Account]\n"
                + "   SET [Password] = ?\n"
                + "      ,[Fullname] = ?\n"
                + "      ,[Email] = ?\n"
                + "      ,[Role] = ?\n"
                + "      ,[Status] = ?\n"
                + "      ,[Avatar] = ?\n"
                + " WHERE [Username] = ?";
        if (account != null) {
            try {
                ps = con.prepareStatement(sql);

                ps.setObject(1, account.getPassword());
                ps.setObject(2, account.getFullname());
                ps.setObject(3, account.getEmail());
                ps.setObject(4, account.getRole());
                ps.setObject(5, account.getStatus());
                ps.setObject(6, account.getAvatar());
                ps.setObject(7, account.getUsername());

                ps.executeUpdate();
                rs = ps.getGeneratedKeys();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public void delete(String username) {
        con = getConnection();
        String sql = "UPDATE [dbo].[Account]\n"
                + "SET [Status] = 0\n"
                + "WHERE [Username] = ?";
        try {
            ps = con.prepareStatement(sql);

            ps.setObject(1, username);

            ps.executeUpdate();
            rs = ps.getGeneratedKeys();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
