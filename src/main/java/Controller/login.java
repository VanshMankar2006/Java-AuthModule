package Controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import DBCon.connection;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/loginPage")
public class login extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Override
	public void doPost(HttpServletRequest req,HttpServletResponse resp){
		
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		try {
			Connection con = connection.getCon();
			String sql = " Select * from users where email = ? and password = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1, username);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				System.out.println("Login successfully...");
				HttpSession session = req.getSession();
				
				session.setAttribute("username",username );
				resp.sendRedirect("home.jsp");
			}else {
				System.out.println("Details Not Match...");
				resp.sendRedirect("loginPage.jsp");
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
