package controler;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;
import model.Utils;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Servlet implementation class SignInServlet
 */
@WebServlet("/sign-in")
public class SignInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password  = request.getParameter("password");
		String first_name;
		String last_name;
		String contact;
		String id;
		
		if(email.isBlank() || password .isBlank()) {
			request.getRequestDispatcher("login-page.jsp").forward(request, response);
		}else {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/easycoach_db", "root", "kevin");
				
				PreparedStatement ps = con.prepareStatement("select * from users where uemail=? and password =?");
				ps.setString(1, email);
				ps.setString(2, password );
				
				ResultSet rs = ps.executeQuery();
				
				
				if(rs.next()) {
					first_name = rs.getString(2);
					last_name = rs.getString(3);
					password  = rs.getString(4);
					email = rs.getString(5);
					id = rs.getString(6);
					contact = rs.getString(7);
					Utils.user = new User(first_name, last_name, email, password, contact, id);
					
					request.setAttribute("userName", Utils.user.name);
					request.getRequestDispatcher("index.jsp").forward(request, response);
					con.close();
				}else {
					request.setAttribute("status", "failed");
					request.getRequestDispatcher("login-page.jsp").forward(request, response);	
				}
				
				//con.close();
				
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		
	}

}
