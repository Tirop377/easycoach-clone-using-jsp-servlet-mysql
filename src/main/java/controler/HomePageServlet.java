package controler;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Bus;
import model.Utils;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;


/**
 * Servlet implementation class HomePageServlet
 */
@WebServlet("/index")
public class HomePageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public String myName;
    protected String to;
    protected String from;
    protected LocalDate depatureDate;
    protected LocalDate prevDay;
    protected LocalDate nextDay;
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		to = request.getParameter("to");
		from = request.getParameter("from");
		depatureDate = LocalDate.now();
		prevDay = depatureDate.minusDays(1);
		nextDay = depatureDate.plusDays(1);
		myName = request.getParameter("userName");
		 
		
		if(from.isBlank() || to.isBlank()) {
			System.out.println("Value not gotten");
		}else {
			
			if(myName != null) {
				request.setAttribute("userName", myName);	
			}
			
			try {
				loadData(from, to);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			setAttributes(request);
			request.getRequestDispatcher("landing-page.jsp").forward(request, response);
		}


	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		from = request.getParameter("from-destinations");
		to = request.getParameter("to-destinations");
		String date = request.getParameter("depature");
		String[] parts = date.split("-");
		depatureDate = LocalDate.of(Integer.parseInt(parts[0]), Integer.parseInt(parts[1]), Integer.parseInt(parts[2]));
		prevDay = depatureDate.minusDays(1);
		nextDay = depatureDate.plusDays(1);
		myName = request.getParameter("myName");
		
		
		if(from.isBlank() || to.isBlank()) {
			System.out.println("Value not gotten");
		}else {
			if(myName != null) {
				request.setAttribute("userName", myName);	
			}
			
			try {
				loadData(from, to);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			setAttributes(request);
			request.getRequestDispatcher("landing-page.jsp").forward(request, response);
		}
	}
	
	public String busesDetailes() {
		String busDiv = " <div class=\"heading\">\r\n"
				+ "                <h2>Departs/Arrives</h2>\r\n"
				+ "                <h2>Depature Time</h2>\r\n"
				+ "                <h2>Available seats</h2>\r\n"
				+ "                <h2>Total Amount</h2>\r\n"
				+ "            </div>";
		String price = Utils.route.price;
		
		for(int i= 0; i< Utils.route.buses.size(); i++) {
			String busDapartureTime = Utils.route.buses.get(i).departureTime;
			int busAvailableSeats = Utils.route.buses.get(i).availableSeats;
			String busOccupiedSeats = Utils.route.buses.get(i).ocupiedSeatsString();
			
			busDiv += String.format("<div class=\"buses-table\" data-busOccupiedSeats =\" %s \">\r\n"
					+ "                <div>\r\n"
					+ "                    <h3>\r\n"
					+ "                       %s <ion-icon class=\"arrow\" name=\"arrow-forward-outline\"></ion-icon> %s \r\n"
					+ "                    </h3>\r\n"
					+ "                </div>\r\n"
					+ "                <div>\r\n"
					+ "                    <span class=\"Dtime\"> %s </span>\r\n"
					+ "                </div>\r\n"
					+ "                <div>\r\n"
					+ "                    <span class=\"no-seats\">%d  Available seats</span>\r\n"
					+ "                </div>\r\n"
					+ "                <div>\r\n"
					+ "                    <span class=\"price\">Ksh %s</span>\r\n"
					+ "                    <button class=\"select-seat-btn\">Select Seat</button>\r\n"
					+ "                </div>\r\n"
					+ "            </div>", busOccupiedSeats, from, to, busDapartureTime, busAvailableSeats, price);	
				
		}
		
		//System.out.println(busDiv);
		return busDiv;	
	}
	
	
	
	
	public void loadData(String from, String to) throws SQLException {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/easycoach_db", "root", "kevin");
			
			PreparedStatement ps = con.prepareStatement("select * from routes where from_location=? and to_location=?");
			ps.setString(1, from);
			ps.setString(2, to);
			
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				
				Utils.route.id = rs.getString(1);
				Utils.route.from = rs.getString(2);
				Utils.route.to = rs.getString(3);
				Utils.route.price = rs.getString(4);
				
				//System.out.println(Utils.route.id + " " + Utils.route.from + " " + Utils.route.to + " " + Utils.route.price);
				
			}
			
			PreparedStatement ps2 = con.prepareStatement("select * from buses where routes=?");
			ps2.setString(1, Utils.route.id);
			
			ResultSet rs2 = ps2.executeQuery();
			
			while(rs2.next()) {
				
				String id = rs2.getString(1);
				String no_seats = rs2.getString(2);
				String occupied_seats = rs2.getString(3);
				String routeName = rs2.getString(4);
				String departure_time = rs2.getString(5);
				String arrival_time = rs2.getString(6);
				
				
				Bus bus = new Bus(Integer.parseInt(id), routeName, departure_time, arrival_time, Integer.parseInt(no_seats));

				
				if(occupied_seats != null) {
					String[] occupiedSeatsArray = occupied_seats.split(" ");
				    for(int i = 0; i<occupiedSeatsArray.length; i++) {
				    	bus.occupiedSeats.add(occupiedSeatsArray[i]);
				    	//System.out.println(occupiedSeatsArray[i]);
				    }
				}
				bus.claculateAvalilableSeats();
				//System.out.println("Available seats " + bus.availableSeats);
				Utils.route.addBus(bus);
			    	
			}
			
		    con.close();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
	
	
	public void setAttributes(HttpServletRequest request) {
		request.setAttribute("buses", busesDetailes());
		request.setAttribute("to-destination", to);
		request.setAttribute("from-destination", from);
		
		
		request.setAttribute("dayOfWeek", depatureDate.getDayOfWeek());
		request.setAttribute("month", depatureDate.getMonth());
		request.setAttribute("dateOfMonth", depatureDate.getDayOfMonth());
		
		request.setAttribute("nextDayOfWeek", nextDay.getDayOfWeek());
		request.setAttribute("nextDateOfMonth", nextDay.getDayOfMonth());
		request.setAttribute("nextMonth", nextDay.getMonth());

		
		request.setAttribute("prevDayOfWeek", prevDay.getDayOfWeek());
		request.setAttribute("prevDateOfMonth", prevDay.getDayOfMonth());
		request.setAttribute("prevMonth", prevDay.getMonth());	
	}
	

}
