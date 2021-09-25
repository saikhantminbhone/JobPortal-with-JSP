import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import org.junit.Test;

import SKMB.dao.UserDao;
import SKMB.model.userModel;


public class loginTest{

	
	//test login
		@Test
		public void loginTest() throws Exception {
			//fail("Fail");
			
			UserDao	userdao = new UserDao();
			userModel user=userdao.getUserByEmail("test@gmail.com","admin");
			assertNotNull(user);
		}
}
