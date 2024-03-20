package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

public class Bus {
	public int id;
	public String departureTime;
	public String arrivalTime;
	public int totalNoOfSeats;
	public ArrayList<String> occupiedSeats = new ArrayList<String>();
	public int availableSeats;
	public String routeName;
	
	public Bus(int id, String routeName, String departureTime, String arrivalTime, int totalNoOfSeats) {
		this.routeName = routeName;
		this.departureTime = departureTime;
		this.arrivalTime = arrivalTime;
		this.totalNoOfSeats = totalNoOfSeats;	
		this.id = id;
		
	}
	
	public void addOccupiedSeat(String seatName) {
		this.occupiedSeats.add(seatName);
		availableSeats--;
	}
	
	public void claculateAvalilableSeats() {
		//System.out.println("occupiedseats.size "+ this.occupiedSeats.size());
		//System.out.println("totalNo of seats "+this.totalNoOfSeats);
		this.availableSeats = totalNoOfSeats - occupiedSeats.size();
	}
	
	public void removeOccupiedSeat(String seatName) {
		this.occupiedSeats.remove(seatName);
		availableSeats++;
	}
	
	public void clearOccupiedSeats() {
		this.occupiedSeats.clear();
		availableSeats = 0;
	}
	
	public String ocupiedSeatsString() {
		String busOccupiedSeats = "";
		
		for (String string : occupiedSeats)
		{
			busOccupiedSeats += string + " ";
		}
		
		return busOccupiedSeats;
	}
	
	public void updateOccupiedSeatsInDd() {
		String obs = "";
		for(String str : occupiedSeats) {	
			obs += str + " ";
		}
		 try {
	           
			 	Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/easycoach_db", "root", "kevin");

	            String query = "UPDATE buses SET occupied_seats=? WHERE id=?;";
	            PreparedStatement pst = con.prepareStatement(query);

	            pst.setString(1, obs);
	            pst.setInt(2, id);

	            // Execute the SQL update statement
	            int rowsUpdated = pst.executeUpdate();

	            if(rowsUpdated > 0) {
	                System.out.println("Occupied seats updated successfully!");
	            } else {
	                System.out.println("Failed to update occupied seats data!</h3>");
	            }

	            // Close database resources
	            pst.close();
	            con.close();

	        } catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        	
	        

	        

	}
}
