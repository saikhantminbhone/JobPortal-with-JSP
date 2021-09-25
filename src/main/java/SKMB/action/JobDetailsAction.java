package SKMB.action;

import com.opensymphony.xwork2.ActionSupport;

import SKMB.dao.UserDao;
import SKMB.model.jobModel;
import SKMB.model.userModel;


public class JobDetailsAction extends ActionSupport{
	
	private UserDao userDao;
	private int company_id;



	jobModel job;

@Override
public String execute() throws Exception {
	// TODO Auto-generated method stub
	
	job = new jobModel();
	userDao = new UserDao();
	job = userDao.getJobById(company_id);
	System.out.println("User Profile Object is " + job);

	return "DETAILS";
}





public jobModel getJob() {
	return job;
}




public void setJob(jobModel job) {
	this.job = job;
}




public UserDao getUserDao() {
	return userDao;
}

public void setUserDao(UserDao userDao) {
	this.userDao = userDao;
}


public int getCompany_id() {
	return company_id;
}
public void setCompany_id(int company_id) {
	this.company_id = company_id;
}
}
