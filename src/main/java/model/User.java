package model;

public class User {
	public String name;
	public String first_name;
	public String last_name;
	public String email;
	public String password;
	public String contact;
	public String id;
	
	public User(String first_name,  String last_name, String email, String password, String contact, String id){
		this.name = first_name;
		this.first_name = first_name;
		this.last_name = last_name;
		this.email = email;
		this.password = password;
		this.contact = contact;	
		this.id = id;
	}
	
	public User() {}

}
