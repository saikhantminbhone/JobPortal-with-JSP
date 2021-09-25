package SKMB.action;

import com.opensymphony.xwork2.ActionSupport;

import SKMB.dao.UserDao;

public class JobDataAction extends ActionSupport{
	
	private String company_name;
    private String location;
    private String working_time;
    private String salary;
    private String job_function;
    


	private String benefits;
    private String highlights;
    private String career;
    private String description;
    private String requirements;
	private UserDao userDao;
	
@Override
public String execute() throws Exception {
	// TODO Auto-generated method stub
	
	System.out.println("company name is  " + company_name);
	userDao = new UserDao();
	int i=0;
	i = userDao.postJob(company_name,location,working_time,salary,job_function,benefits,highlights,career,description,requirements);
	
	
	
	if (i>0) {
		return "JOBDATASAVED";
   }else 

   	return "JOBDATA_FAIL";
   
}




public String getCompany_name() {
		return company_name;
	}





	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}





	public String getLocation() {
		return location;
	}





	public void setLocation(String location) {
		this.location = location;
	}





	public String getWorking_time() {
		return working_time;
	}





	public void setWorking_time(String working_time) {
		this.working_time = working_time;
	}





	public String getSalary() {
		return salary;
	}





	public void setSalary(String salary) {
		this.salary = salary;
	}





	public String getBenefits() {
		return benefits;
	}





	public void setBenefits(String benefits) {
		this.benefits = benefits;
	}





	public String getHighlights() {
		return highlights;
	}





	public void setHighlights(String highlights) {
		this.highlights = highlights;
	}





	public String getCareer() {
		return career;
	}





	public void setCareer(String career) {
		this.career = career;
	}





	public String getDescription() {
		return description;
	}





	public void setDescription(String description) {
		this.description = description;
	}





	public String getRequirements() {
		return requirements;
	}





	public void setRequirements(String requirements) {
		this.requirements = requirements;
	}

	public String getJob_function() {
		return job_function;
	}




	public void setJob_function(String job_function) {
		this.job_function = job_function;
	}







}
