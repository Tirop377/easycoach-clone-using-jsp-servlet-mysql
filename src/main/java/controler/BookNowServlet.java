package controler;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;
import model.Utils;

import java.io.IOException;

/**
 * Servlet implementation class BookNowServlet
 */
@WebServlet("/BookNowServlet")
public class BookNowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public String to;
	public String from;
	public String depatureTime;
	public String SelectedSeats;
	public String TotalAmoutprice;
	public int Totalpassengers = 0;
	public String myName;
	public User currentUser = Utils.user;
	public int busIdentifier;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		to = request.getParameter("to");
		from = request.getParameter("from");
		depatureTime = request.getParameter("depatureTime");
		SelectedSeats = request.getParameter("SelectedSeats");
		TotalAmoutprice = request.getParameter("TotalAmoutprice");
		Totalpassengers = Integer.parseInt(request.getParameter("Totalpassengers"));
		busIdentifier = Integer.parseInt(request.getParameter("busIdentifier"));
		myName = Utils.user.name;
		if(to.isBlank()||from.isBlank()|| depatureTime.isBlank()||SelectedSeats.isBlank()|| TotalAmoutprice.isBlank()||Totalpassengers == 0) {
			System.out.println("Someting went wrong");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}else {
			
			if(!(myName == "")) {
				System.out.println(myName);
				request.setAttribute("userName", myName);	
				String userString = String.format("%s %s %s %s", currentUser.first_name, currentUser.last_name, currentUser.contact ,currentUser.id);
				request.setAttribute("userString", userString);
			}
			
			String[] selectedSeatsArr =	SelectedSeats.split(" ");	
			for(int i = 0; i<selectedSeatsArr.length; i++) {
				System.out.println(busIdentifier);
					Utils.route.buses.get(busIdentifier).addOccupiedSeat(selectedSeatsArr[i]);	
			}
			
			Utils.route.buses.get(busIdentifier).updateOccupiedSeatsInDd();
			
			
			
			request.setAttribute("TotalAmoutprice", TotalAmoutprice);
			request.setAttribute("to", to);
			request.setAttribute("from", from);
			request.setAttribute("depatureTime", depatureTime);
			request.setAttribute("SelectedSeats", SelectedSeats);
			request.setAttribute("Totalpassengers", Totalpassengers);
			
			request.getRequestDispatcher("payment-page.jsp").forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("first-name");
		String lastName = request.getParameter("last-name");
		String Idnumber = request.getParameter("id");
		String residence = request.getParameter("residence");
		String mobileNumber = request.getParameter("contact");
		myName = request.getParameter("myName");
		
		if(!myName.isBlank()) {
			request.setAttribute("userName", myName);	
		}
		request.setAttribute("firstName", firstName);
		request.setAttribute("lastName", lastName);
		request.setAttribute("Idnumber", Idnumber);
		request.setAttribute("residence", residence);
		request.setAttribute("mobileNumber", mobileNumber );
			
		request.setAttribute("TotalAmoutprice", TotalAmoutprice);
		request.setAttribute("to", to);
		request.setAttribute("from", from);
		request.setAttribute("depatureTime", depatureTime);
		request.setAttribute("SelectedSeats", SelectedSeats);
		request.setAttribute("Totalpassengers", Totalpassengers);	
		
		request.getRequestDispatcher("ticket-page.jsp").forward(request, response);	
	}
}
