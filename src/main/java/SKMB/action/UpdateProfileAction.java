package SKMB.action;

import com.opensymphony.xwork2.ActionSupport;

import SKMB.dao.UserDao;
import SKMB.model.userModel;


public class UpdateProfileAction extends ActionSupport{
	
	private UserDao userDao;
	userModel user;
	
	public userModel getUser() {
		return user;
	}

	public void setUser(userModel user) {
		this.user = user;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("Update Profile Action");
		userDao = new SKMB.dao.UserDao();
		int i = 0;
		i = userDao.updateUser(user);
		System.out.println(" Update Profile "+i);
		if (i > 0) {
			return "UPDATED";
		}
		return "UPDATED_FAIL";

	}
}
