package SKMB.action;

import com.opensymphony.xwork2.ActionSupport;

import SKMB.dao.UserDao;


public class RegisterAction extends ActionSupport {

	private String name;
	



	private int age;
	private String job_function;
	private String skills;
	private String phone_number;
	private String email;
	private String password;
	private String rmsg;
	private int i;




	private UserDao userDao;

	
	
	@Override
	public String execute() throws Exception {

		userDao= new UserDao();
		 i=0;
		i=userDao.registerUser(name,age,job_function,skills,phone_number,email,password);
		System.out.println("the value of i is + " + i);
		
		if (i>0) {
            return "REGISTER";
        }else {
        	rmsg= "Email is already exist, Please Login";
        	return "REGISTER_FAIL";
        }

	}
		
	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public int getAge() {
		return age;
	}



	public void setAge(int age) {
		this.age = age;
	}



	public String getJob_function() {
		return job_function;
	}



	public void setJob_function(String job_function) {
		this.job_function = job_function;
	}



	public String getSkills() {
		return skills;
	}



	public void setSkills(String skills) {
		this.skills = skills;
	}



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



	public UserDao getUserDao() {
		return userDao;
	}



	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public String getPhone_number() {
		return phone_number;
	}



	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	



	public String getRmsg() {
		return rmsg;
	}



	public void setRmsg(String rmsg) {
		this.rmsg = rmsg;
	}






	public int getI() {
		return i;
	}



	public void setI(int i) {
		this.i = i;
	}



	
	}

