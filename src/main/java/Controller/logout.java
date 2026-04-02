package Controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/logout") // This matches the href in your JSP
public class logout extends HttpServlet {

	private static final long serialVersionUID = 1L;

	  protected void doGet(HttpServletRequest request, HttpServletResponse response) 
	            throws ServletException, IOException {
	        
	        HttpSession session = request.getSession(false);
	        
	        if (session != null) {
	            session.invalidate();
	        }
	        
	        // Redirect back to login page
	        response.sendRedirect("loginPage.jsp");
	    }
	}


