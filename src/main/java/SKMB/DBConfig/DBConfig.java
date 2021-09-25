package SKMB.DBConfig;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConfig {
	public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdl_abc_job_portal", "root", "admin");
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
}
