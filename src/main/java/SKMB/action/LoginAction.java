package SKMB.action;

import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import SKMB.dao.UserDao;
import SKMB.model.userModel;

public class LoginAction implements SessionAware{

	
	private String email,password,msg;  


	SessionMap<String,String> sessionmap;  
	
	UserDao userdao=null;
	
	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public userModel getUser() {
		return user;
	}


	public void setUser(userModel user) {
		this.user = user;
	}

	public String getMsg() {
		return msg;
	}


	public void setMsg(String msg) {
		this.msg = msg;
	}


	userModel user;
	
	

	public void setSession(Map map) {  
	    sessionmap=(SessionMap)map;  
	    sessionmap.put("login","true");  
	}  
	   

	public String execute() throws Exception {
		// TODO Auto-generated method stub
		userdao = new UserDao();
		user=userdao.getUserByEmail(email,password);
		if(user!=null) {
		System.out.println("User is "+user.getEmail()+","+user.getName()+","+user.getRole_Id());
		
		sessionmap.put("user_id",String.valueOf(user.getUser_id()));
		sessionmap.put("email", user.getEmail());
		sessionmap.put("role_id",String.valueOf(user.getRole_Id()));
		
		int roleId = user.getRole_Id();
		 
		if(roleId == 1) {
			return "ADMIN_LOGIN";
		}else {
			return "LOGIN";
		}
		
		
		}else {
		
		msg="Your Email or Password is incorrect";
		return "LOGIN_FAIL";
	}
	
	
	}
	
	
}
