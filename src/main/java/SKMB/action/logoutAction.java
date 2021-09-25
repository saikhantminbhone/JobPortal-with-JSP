package SKMB.action;

import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;



public class logoutAction implements SessionAware{

	SessionMap<String,String> sessionmap;  
	
	
	public void setSession(Map map) {
		// TODO Auto-generated method stub
		  sessionmap=(SessionMap)map;  
	}
	
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		sessionmap.invalidate();  
	    System.out.println("At Logout Action Method");
	    return "LOGOUT";  
	}

	
}
