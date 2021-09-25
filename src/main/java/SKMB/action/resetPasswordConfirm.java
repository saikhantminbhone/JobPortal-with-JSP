package SKMB.action;

import com.opensymphony.xwork2.ActionSupport;

import SKMB.model.userModel;

public class resetPasswordConfirm extends ActionSupport{
	
	private String hidden_email;
	public String getHidden_email() {
		return hidden_email;
	}
	public void setHidden_email(String hidden_email) {
		this.hidden_email = hidden_email;
	}
@Override
public String execute() throws Exception {


	return "EMAIL_CONFIRM";
}
}
