package SKMB.action;

import com.opensymphony.xwork2.ActionSupport;

import SKMB.dao.UserDao;
import SKMB.model.userModel;

public class publicProfileAction extends ActionSupport{
	
	private UserDao userDao;
	private int user_id;

	userModel user;
	
	
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		user = new userModel();
		userDao = new UserDao();
		user = userDao.getUserById(user_id);
		System.out.println("User Profile Object is " + user);
		
		return "PUBLIC_PROFILE";
	}

	
	public int getUser_id() {
		return user_id;
	}



	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}



	public userModel getUser() {
		return user;
	}



	public void setUser(userModel user) {
		this.user = user;
	}
}
