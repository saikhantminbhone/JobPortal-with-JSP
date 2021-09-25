package SKMB.action;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import SKMB.dao.UserDao;
import SKMB.model.userModel;


public class ManageUserAction extends ActionSupport{

	
	private static final long serialVersionUID = 6329394260276112660L;
	ResultSet rs = null;
	userModel userbean = null;
	List<userModel> beanList = null;
	UserDao userdao = new UserDao();
	private boolean noData = false;


	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		try {
			beanList = new ArrayList<userModel>();
			rs = userdao.getAllUser();
			
			int i = 0;
			if (rs != null) {
				while (rs.next()) {
					i++;
					userbean = new userModel();
					userbean.setSrNo(i);
					userbean.setName(rs.getString("name"));
					userbean.setAge(rs.getInt("age"));
					userbean.setJob_function(rs.getString("job_function"));
					userbean.setSkills(rs.getString("skills"));
					userbean.setPhone_number(rs.getString("phone_number"));
					userbean.setEmail(rs.getString("email"));
					beanList.add(userbean);
				}
			}
			

			if (i == 0) {
				noData = false;
			} else {
				noData = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "MANAGE";
	}
		
	
	
	public userModel getUserbean() {
		return userbean;
	}

	public void setUserbean(userModel userbean) {
		this.userbean = userbean;
	}

	public List<userModel> getBeanList() {
		return beanList;
	}

	public void setBeanList(List<userModel> beanList) {
		this.beanList = beanList;
	}

	public boolean isNoData() {
		return noData;
	}

	public void setNoData(boolean noData) {
		this.noData = noData;
	}
	
	}

