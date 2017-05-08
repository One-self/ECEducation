package cn.edu.ccut.action;

import cn.edu.ccut.helper.SessionHelper;

public class Logoff {
	public String clearUserInfo() {
		SessionHelper.session().setAttribute("emailAddress", null);
		SessionHelper.session().setAttribute("password", null);
		return "success";
	}
}
