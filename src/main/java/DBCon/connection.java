package DBCon;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class connection {
	public static Connection getCon() throws ClassNotFoundException {
		        
		String url = "jdbc:postgresql://localhost:5432/LoginModule";
		String username = "your_username";
		String password = "your_password";

			
		Connection con = null;
		       
		try {
			Class.forName("org.postgresql.Driver");
		    con = DriverManager.getConnection(url, username, password);
		    System.out.println("Connection establish..");

		} catch (SQLException e) {
		    e.printStackTrace();
		}
	
		return con;
		
	}
}
