package cn.edu.ccut.action;

import cn.edu.ccut.helper.*;
import cn.edu.ccut.model.User;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
public class Login extends ActionSupport implements ModelDriven<User> {
	User user = new User();
	
	static String sql = null;  
    static DBHelper db = null;  
    static ResultSet ret = null;
	
	public String verify() {
		String emailAddress = this.user.getEmailAddress();
		sql = "select *from user where emailAddress="+"'"+emailAddress+"'";
        db = new DBHelper(sql);
  
        try {  
            ret = db.pst.executeQuery(); 
            while (ret.next()) {
            	String password = ret.getString("password");
            	if (password.equals(this.user.getPassword())) {
            		HashMap userMap = new HashMap();
            		userMap.put("nickname", ret.getString("nickname")); 
            		userMap.put("userIconUrl", ret.getString("userIconUrl"));
            		userMap.put("sex", ret.getString("sex"));
            		userMap.put("intro", ret.getString("intro"));
            		userMap.put("babyAge", ret.getInt("babyAge"));
            		userMap.put("star", ret.getString("star"));
            		SessionHelper.session().setAttribute("userMap", userMap);
            		SessionHelper.session().setAttribute("emailAddress", emailAddress);
            		return "success";
            	}
            }
            ret.close();  
            db.close();
        } catch (SQLException e) {  
            e.printStackTrace();
            System.out.println("--Exception--");
        }
        
		return "fail";
	}
	
	public User getModel() {  
	    if (user == null) user = new User();
	    return user;  
	}
}
