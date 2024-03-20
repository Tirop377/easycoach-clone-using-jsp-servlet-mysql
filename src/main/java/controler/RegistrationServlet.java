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
import java.sql.SQLException;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/register" )
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		String password = request.getParameter("password");
		String repeat_password = request.getParameter("repeat-password");
		String uemail = request.getParameter("email");
		String umobile = request.getParameter("contact");
		String user_id = request.getParameter("id");
		
		if(last_name.isBlank()||first_name.isBlank()|| password.isBlank()|| uemail.isBlank()||umobile.isBlank()) {
			request.setAttribute("status", "failed");
			request.getRequestDispatcher("registration-page.jsp").forward(request, response);
		}else {
			if(umobile.length() != 10  ) {
				request.setAttribute("status", "invalidUmobile");
				request.getRequestDispatcher("registration-page.jsp").forward(request, response);
			}
			
			if(!password.equals(repeat_password)) {
				System.out.println(password + "  " + repeat_password);
				request.setAttribute("status", "passwordMissmatch");
				request.getRequestDispatcher("registration-page.jsp").forward(request, response);	
			}
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/easycoach_db", "root", "kevin");
				
				PreparedStatement pst = con.prepareStatement( "insert into users(first_name, last_name, password, uemail, user_id, umobile) values(?,?,?,?,?,?)");
				pst.setString(1, first_name);
				pst.setString(2, last_name);
				pst.setString(3, password);
				pst.setString(4, uemail);
				pst.setString(5, user_id);
				pst.setString(6, umobile);
				
				int rowCount = pst.executeUpdate();
				if(rowCount > 0) {	
					request.setAttribute("status", "success");
					request.getRequestDispatcher("registration-page.jsp").forward(request, response);
					con.close();
					
				}else {
					request.setAttribute("status", "failed");
					request.getRequestDispatcher("registration-page.jsp").forward(request, response);	
					con.close();
				}
				
			} catch (ClassNotFoundException e) {
				
				e.printStackTrace();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}
		
		

	}

}
