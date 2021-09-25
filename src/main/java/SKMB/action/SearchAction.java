package SKMB.action;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import SKMB.dao.UserDao;
import SKMB.model.jobModel;
import SKMB.model.userModel;


public class SearchAction extends ActionSupport {
	
	private String search_keyword;
	private UserDao userDao;
	private int i;
	private String msg;
	



	ResultSet rs = null;
	userModel userbean = null;
	jobModel jobbean = null;
	List<userModel> beanList = null;
	List<jobModel> jobbeanList = null;
	private boolean noData = false;




@Override
public String execute() throws Exception {
	// TODO Auto-generated method stub
	ResultSetMetaData metadata;
	String columnname="user_id";
	try {
		
		System.out.println("Seach Action");
		userDao= new UserDao();
		beanList = new ArrayList<userModel>();
		jobbeanList = new ArrayList<jobModel>();
		rs = userDao.findbykeyword(search_keyword);
		//jobrs = userDao.findbykeyword(search_keyword);
		
		

		i = 0;
		if ( rs != null){
			System.out.println("Working from user rs  is ture");
			while (rs.next()) {
				i++;
				metadata=rs.getMetaData();
				
				if(columnname.equals(metadata.getColumnName(1))) {
					userbean = new userModel();
					userbean.setUser_id(rs.getInt("user_id"));
					userbean.setName(rs.getString("name"));
					userbean.setAge(rs.getInt("age"));
					userbean.setJob_function(rs.getString("job_function"));
					userbean.setSkills(rs.getString("skills"));
					userbean.setPhone_number(rs.getString("phone_number"));
					userbean.setEmail(rs.getString("email"));
					beanList.add(userbean);	
				}else {
					System.out.println("Job select");
				jobbean = new jobModel();
				
				jobbean.setCompany_id(rs.getInt("company_id"));
				jobbean.setCompany_name(rs.getString("company_name"));
				jobbean.setLocation(rs.getString("location"));
				jobbean.setWorking_time(rs.getString("working_time"));
				jobbean.setSalary(rs.getString("salary"));
				jobbean.setJob_function(rs.getString("job_function"));
				jobbean.setBenefits(rs.getString("benefits"));
				jobbean.setHighlights(rs.getString("highlights"));
				jobbean.setCareer(rs.getString("career"));
				jobbean.setDescription(rs.getString("description"));
				jobbean.setRequirements(rs.getString("requirements"));
				jobbean.setJob_post_date(rs.getString("job_post_date"));
				jobbeanList.add(jobbean);
				
				
			}
			
			
		}
		}


		
		System.out.println("Total number of i is " + i);
		
		
		if (i == 0) {
			noData = false;
			msg = "No Results Found";
		} else {
			noData = true;
			System.out.println("no data true");
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return "RESULTS";

}


public int getI() {
	return i;
}


public void setI(int i) {
	this.i = i;
}


public String getSearch_keyword() {
		return search_keyword;
	}


	public void setSearch_keyword(String search_keyword) {
		this.search_keyword = search_keyword;
	}


	public String getMsg() {
		return msg;
	}


	public void setMsg(String msg) {
		this.msg = msg;
	}


	public userModel getUserbean() {
		return userbean;
	}


	public void setUserbean(userModel userbean) {
		this.userbean = userbean;
	}


	public jobModel getJobbean() {
		return jobbean;
	}


	public void setJobbean(jobModel jobbean) {
		this.jobbean = jobbean;
	}


	public List<userModel> getBeanList() {
		return beanList;
	}


	public void setBeanList(List<userModel> beanList) {
		this.beanList = beanList;
	}


	public List<jobModel> getJobbeanList() {
		return jobbeanList;
	}


	public void setJobbeanList(List<jobModel> jobbeanList) {
		this.jobbeanList = jobbeanList;
	}


	public boolean isNoData() {
		return noData;
	}


	public void setNoData(boolean noData) {
		this.noData = noData;
	}

}