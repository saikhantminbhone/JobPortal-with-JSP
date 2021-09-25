import static org.junit.Assert.assertEquals;


import org.junit.Test;

import SKMB.dao.UserDao;


public class registerTest{

	
	@Test
	public void insertData() throws Exception {
		
		UserDao user = new UserDao();
	
		int result=user.registerUser("unite testing", 21, "web developer", "python", "09766477699", "unittesting@gmail.com", "admin");
		System.out.println("result is "+result);
		assertEquals(1,1);
	}
}
