package SKMB.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import SKMB.dao.UserDao;
import SKMB.model.userModel;


public class ProfileAction extends ActionSupport{
	
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

		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		System.out.println("Sesssion " + session.getAttribute("login"));

		if (session.getAttribute("login") != null) {
			String login = (String) session.getAttribute("login");
			int userid = Integer.parseInt((String) session.getAttribute("user_id"));
			String email = (String) session.getAttribute("email");
			int roleId = Integer.parseInt((String) session.getAttribute("role_id"));

			user = new userModel();
			userDao = new UserDao();
			user = userDao.getUserById(userid);
			System.out.println("User Profile Object is " + user);

			return "PROFILE";
		}
		return "error";
	
	
}
}
