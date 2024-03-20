package model;

public class Utils {
	
	
	public static User user = new User();
	public static Route route = new Route();
	public static int busCount = 1;
	
	private Utils() {
		
	
	}
	
	private static Utils instance;
	
	public static Utils getInstance() {
		
		if(instance == null) instance = new Utils();
		
		return instance;
	}

}
