package dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import models.Categories;
import utils.DBUtils;

public class CategoryDAO extends DBUtils {

    public List<Categories> getAll() {
        List<Categories> listFound = new ArrayList<>();
        con = getConnection();
        String sql = "SELECT *\n"
                + "  FROM [dbo].[Categories]";
        try {
            ps = con.prepareStatement(sql);
            
            rs = ps.executeQuery();
            while (rs.next()) {                
                int id = rs.getInt("ID");
                String name = rs.getString("Name");
                Categories categories = new Categories(id, name);
                
                listFound.add(categories);
            }
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return listFound;
    }
}
