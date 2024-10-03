package utils;

import java.sql.Connection;
import java.sql.DriverManager; 
import java.sql.SQLException;

public class DBUtils {

    private final static String SERVERNAME = "localhost";
    private final static String DBNAME = "Ebay_Clone"; //database's name
    private final static String PORTNUMBER = "1433";
    private final static String INSTANCE = ""; 
    private final static String USERID = "sa";  //username
    private final static String PASSWORD = "123"; //password

    public static Connection getConnection() {

        String url;
        if (INSTANCE == null || INSTANCE.trim().isEmpty()) {
            url = "jdbc:sqlserver://" + SERVERNAME + ":" + PORTNUMBER + ";databaseName=" + DBNAME + ";encrypt=false";
        } else {
            url = "jdbc:sqlserver://" + SERVERNAME + ":" + PORTNUMBER + "\\" + INSTANCE + ";databaseName=" + DBNAME + ";encrypt=false";
        }

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException ex) {
            System.out.println("PRJ301DEMO: Can not load JDBC Driver. Please check your pom file");
        }

        try {
            Connection con = DriverManager.getConnection(url, USERID, PASSWORD);
            return con;
        } catch (SQLException ex) {
            System.out.println("PRJ301DEMO: Can not connect SQL Server. Reason: " + ex.getMessage());
        }
        return null;
    }

    public static void main(String[] args) {
        System.out.println(DBUtils.getConnection());
    }
}
