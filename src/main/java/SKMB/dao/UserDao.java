package SKMB.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import SKMB.DBConfig.DBConfig;
import SKMB.model.jobModel;
import SKMB.model.userModel;



public class UserDao {

	Connection con;
	PreparedStatement pst;
	userModel user;
	jobModel job;
	List<userModel> users;
	List<jobModel> jobs;

	public UserDao() {
		this.user = null;
		this.job = null;
		this.jobs =null;
		this.users = null;
		this.con = DBConfig.getConnection();
	}
	
	
		//////////////////Register //////////////////////////////////
		
		public int registerUser(String name, int age, String job_function, String skills, String phone_number, String email, String password)throws Exception {
		// TODO Auto-generated method stub
		int flag = 0;
		try {
		String sql = "insert into user(name, age, job_function, skills, phone_number, email, password, role_Id) VALUES (?,?,?,?,?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, name);
		ps.setInt(2, age);
		ps.setString(3, job_function);
		ps.setString(4, skills);
		ps.setString(5, phone_number);
		ps.setString(6, email);
		ps.setString(7, password);
		ps.setInt(8, 2);
		
		flag = ps.executeUpdate();
		

		if (flag > 0) {
			System.out.println("User Register Successful");
		}
		} catch (SQLException e) {
		e.printStackTrace();
		}
		return flag;
		}
		
		////////////////// End Register/////////////////////////////////
		
		
		
///////////// For Login Process //////////////////////////////

		public userModel getUserByEmail(String email, String password) throws SQLException {
		
			System.out.println("login user DAO");
			System.out.println("Login Email is " + email);
			System.out.println("Login Password is " + password);
		
			userModel user = null;
			try {
				String sql = "select * from user where email=? and password=?";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, email);
				ps.setString(2, password);
				ResultSet rs = ps.executeQuery();
		
				while (rs.next()) {
					user = new userModel();
					user.setUser_id(rs.getInt("user_id"));
					user.setName(rs.getString("name"));
					user.setAge(rs.getInt("age"));
					user.setJob_function(rs.getString("job_function"));
					user.setSkills(rs.getString("skills"));
					user.setPhone_number(rs.getString("phone_number"));
					user.setEmail(rs.getString("email"));
					user.setPassword(rs.getString("password"));
					user.setRole_Id(rs.getInt("role_Id"));
				}
		
				System.out.println("login user row is " + user);
				return user;
		
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			} finally {
				if (con != null) {
					con.close();
					System.out.println("Connectoin close");
				}
			}
		}

///////////// End Login Process //////////////////////////////
		
		
		public userModel checktUserByEmail(String email) throws SQLException {

			System.out.println("Check user email  DAO");
			System.out.println("check Email is " + email);

			userModel user = null;
			try {
				String sql = "select * from user where email=?";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, email);
				ResultSet rs = ps.executeQuery();

				while (rs.next()) {
					user = new userModel();
					user.setUser_id(rs.getInt("user_id"));
					user.setName(rs.getString("name"));
					user.setAge(rs.getInt("age"));
					user.setJob_function(rs.getString("job_function"));
					user.setSkills(rs.getString("skills"));
					user.setPhone_number(rs.getString("phone_number"));
					user.setEmail(rs.getString("email"));
					user.setPassword(rs.getString("password"));
					user.setRole_Id(rs.getInt("role_Id"));
				}

				System.out.println("Check user is " + user);
				return user;

			} catch (Exception e) {
				e.printStackTrace();
				return null;
			} finally {
				if (con != null) {
					con.close();
					System.out.println("Connectoin close");
				}
			}
		}
		
		
		public int updatePassword(String password, String email) throws SQLException, Exception {
			
			int i = 0;
			try {
				System.out.println("Update Password "+password);
				System.out.println("Update Email "+email);
				
				String sql = "UPDATE user SET password=? WHERE email=?";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, password);
				ps.setString(2, email);
				i = ps.executeUpdate();
				return i;
			} catch (Exception e) {
				e.printStackTrace();
				return 0;
			} finally {
				if (con != null) {
					con.close();
				}
			}
		}

	//////////////////////////////////////End Forget Password/////////////////////////////////////
		
		/////////////////////// Profile //////////////////////////////

		public userModel getUserById(int user_id) throws SQLException {

			System.out.println("Get User by Dao Method");
			userModel user = null;
			try {
				String sql = "select * from user where user_id=?";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setInt(1, user_id);
				ResultSet rs = ps.executeQuery();

				while (rs.next()) {
					user = new userModel();
					user.setUser_id(rs.getInt("user_id"));
					user.setName(rs.getString("name"));
					user.setAge(rs.getInt("age"));
					user.setJob_function(rs.getString("job_function"));
					user.setSkills(rs.getString("skills"));
					user.setPhone_number(rs.getString("phone_number"));
					user.setEmail(rs.getString("email"));
					user.setPassword(rs.getString("password"));
					user.setRole_Id(rs.getInt("role_Id"));
				}

				System.out.println("Profile User is " + user);
				return user;

			} catch (Exception e) {
				e.printStackTrace();
				return null;
			} finally {
				if (con != null) {
					con.close();
					System.out.println("Connectoin close");
				}
			}
		}

		
		public int updateUser(userModel user) {
			System.out.println(" Update User DAO");
			
			int flag = 0;
			try {
				String sql = "UPDATE user SET name=?,age=?,job_function=?,skills=?,phone_number=?,email=?,password=? WHERE user_id=?";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, user.getName());
				ps.setInt(2, user.getAge());
				ps.setString(3, user.getJob_function());
				ps.setString(4, user.getSkills());
				ps.setString(5, user.getPhone_number());
				ps.setString(6, user.getEmail());
				ps.setString(7, user.getPassword());
				ps.setInt(8, user.getUser_id());
				flag = ps.executeUpdate();

				if (flag > 0) {
					System.out.println("User Update is Successful");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return flag;

		}
		

	//////////////////////////////End Profile ////////////////////////////////////////////////
		
///////////////////////////////////////// Search///////////////////////////////////////// //////////////////////////////////////////

		//search for user name
				public ResultSet findbykeyword(String keyword) throws SQLException, Exception {
				ResultSet rs = null;
				ResultSet jobrs = null;
				try {
				
				
				String sql = "SELECT * FROM user WHERE name Like '%" + keyword + "%'";
				String jobSQL = "SELECT * FROM `job` WHERE job_function like '%"+keyword+"%'";
				
				PreparedStatement ps = con.prepareStatement(sql);
				PreparedStatement jobps = con.prepareStatement(jobSQL);
				rs = ps.executeQuery();
				jobrs = jobps.executeQuery();
				
		if(rs.next()==false) {
			rs=jobrs;
			System.out.println("job");
			
					
		}
			return rs;
		
				
				
				} catch (Exception e) {
				e.printStackTrace();
				return null;
				}
}

//////////////////////////////////////////End Search/////////////////////////////////////////

		
//////////////////////////////////////For admin Users /////////////////////////////////////

		
		public ResultSet getAllUser() throws SQLException, Exception {
		ResultSet rs = null;
		try {
		String sql = "Select * from user";
		PreparedStatement ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		return rs;
		} catch (Exception e) {
		e.printStackTrace();
		return null;
		} 
		
		}
		
		
		public int deleteUserDetails(String email) throws SQLException, Exception {
		int i = 0;
		try {
		String sql = "DELETE from user WHERE email=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, email);
		i = ps.executeUpdate();
		return i;
		} catch (Exception e) {
		e.printStackTrace();
		return 0;
		} finally {
		if (con != null) {
		con.close();
		}
		}
		}

/////////////////////////////////////admin Users /////////////////////////////////////
		
		
	/////////////////For Post Job //////////////////////////////////
		
		public int postJob(String company_name, String location, String working_time, String salary, String job_function, String benefits, String highlights, String career, String description, String requirements)throws Exception {
		// TODO Auto-generated method stub
		int job = 0;
		try {
		String sql = "INSERT INTO job(company_name, location, working_time, salary,job_function, benefits, highlights, career, description, requirements) VALUES (?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, company_name);
		ps.setString(2, location);
		ps.setString(3, working_time);
		ps.setString(4, salary);
		ps.setString(5, job_function);
		ps.setString(6, benefits);
		ps.setString(7, highlights);
		ps.setString(8, career);
		ps.setString(9, description);
		ps.setString(10, requirements);
		
		job = ps.executeUpdate();
		

		if (job > 0) {
			System.out.println("Post Job  Successful");
		}
		} catch (SQLException e) {
		e.printStackTrace();
		}
		return job;
		}
		
		//////////////////for job details page//////////////////////////////////////////////////
		public jobModel getJobById(int company_id) throws SQLException {

			jobModel job = null;
			try {
				String sql = "select * from job where company_id=?";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setInt(1, company_id);
				ResultSet rs = ps.executeQuery();

				while (rs.next()) {
					job = new jobModel();
			
					job.setCompany_id(rs.getInt("company_id"));
					job.setCompany_name(rs.getString("company_name"));
					job.setLocation(rs.getString("location"));
					job.setWorking_time(rs.getString("working_time"));
					job.setSalary(rs.getString("salary"));
					job.setJob_function(rs.getString("job_function"));
					job.setBenefits(rs.getString("benefits"));
					job.setHighlights(rs.getString("highlights"));
					job.setCareer(rs.getString("career"));
					job.setDescription(rs.getString("description"));
					job.setRequirements(rs.getString("requirements"));
					job.setJob_post_date(rs.getString("job_post_date"));
				}

				System.out.println("job details is " + job);
				return job;

			} catch (Exception e) {
				e.printStackTrace();
				return null;
			} finally {
				if (con != null) {
					con.close();
					System.out.println("Connectoin close");
				}
			}
		}

}
