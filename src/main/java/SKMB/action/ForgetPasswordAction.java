package SKMB.action;

import com.opensymphony.xwork2.ActionSupport;


import SKMB.dao.UserDao;
import SKMB.model.userModel;


public class ForgetPasswordAction extends ActionSupport{

	UserDao userdao=null;
	private String email;
	userModel user;
	


	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	public userModel getUser() {
		return user;
	}




	public void setUser(userModel user) {
		this.user = user;
	}




	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		System.out.println("user email is " +email);
		userdao = new UserDao();
		user=userdao.checktUserByEmail(email);
		
		if(user!=null) {
		 return "EMAIL_CONFIRM";
		}
		else
			return "EMAIL_FAIL";

	}
}
