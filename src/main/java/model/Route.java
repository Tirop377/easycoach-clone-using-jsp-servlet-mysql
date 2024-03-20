package model;

import java.util.ArrayList;

public class Route {
	public String id;
	public String from;
	public String to;
	public String price;
	public ArrayList<Bus> buses = new ArrayList<Bus>(4);
	
	public Route( String id,  String from,  String to, String price) {
		this.from = from;
		this.to = to;
		this.price = price;
		this.id = id;	
	}
	
	public Route() {}
	
	public void addBus(Bus bus) {
		this.buses.add(bus);
	}

}
