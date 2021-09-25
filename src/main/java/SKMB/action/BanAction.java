package SKMB.action;

import com.opensymphony.xwork2.ActionSupport;

import SKMB.dao.UserDao;

public class BanAction extends ActionSupport{
	
	UserDao userdao = new UserDao();
	private String email;
	
public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

@Override
public String execute() throws Exception {
	// TODO Auto-generated method stub
	System.out.println("to ban user email is " + email);
	try {
		int isDeleted = userdao.deleteUserDetails(email);
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return "BAN";
	
	
}
}
