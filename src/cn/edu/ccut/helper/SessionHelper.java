package cn.edu.ccut.helper;

import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

public class SessionHelper {
	public static HttpSession session() {
		return ServletActionContext.getRequest().getSession();
	}
}
