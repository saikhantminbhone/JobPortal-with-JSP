package SKMB.action;

import com.opensymphony.xwork2.ActionSupport;

import SKMB.dao.UserDao;
import SKMB.model.userModel;

public class ResetPasswordAction extends ActionSupport{
	
	UserDao userdao=null;
	userModel user;
	private String hidden_email;
	private String new_password;
	
	


	public String getHidden_email() {
		return hidden_email;
	}




	public void setHidden_email(String hidden_email) {
		this.hidden_email = hidden_email;
	}




	public String getNew_password() {
		return new_password;
	}




	public void setNew_password(String new_password) {
		this.new_password = new_password;
	}




	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		userdao = new UserDao();
		System.out.println("Action Update Password "+new_password);
		System.out.println("Action Update Email "+hidden_email);
		
		int i=userdao.updatePassword(new_password,hidden_email);
		
		return "RESET_PASSWORD_SUCCESS";
	}

}
