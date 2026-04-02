package Controller;

import java.sql.Connection;
import java.sql.PreparedStatement;

import DBCon.connection;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/register")
public class register extends HttpServlet{
	private static final long serialVersionUID = 1L;
	@Override
	public void doPost(HttpServletRequest req,HttpServletResponse resp){
		
		String fullName = req.getParameter("fullName");
		String rollNo = req.getParameter("rollNo");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		try {
			Connection con = connection.getCon();
			String sql = "INSERT INTO users (fullName, rollNo, email, password) VALUES (?, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, fullName);
			ps.setString(2, rollNo);
			ps.setString(3, email);
			ps.setString(4, password);
			
			int cnt = ps.executeUpdate();
			if(cnt > 0) {
				System.out.println("Register successfully...");
				RequestDispatcher rd = req.getRequestDispatcher("loginPage.jsp");
			}else {
				System.out.println("Register unsuccessfully...");
				RequestDispatcher rd = req.getRequestDispatcher("register.jsp");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
