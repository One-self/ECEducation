package cn.edu.ccut.action;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import cn.edu.ccut.helper.DBHelper;
import cn.edu.ccut.helper.SessionHelper;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ToAboutMe extends ActionSupport {
	static String sql = null;  
    static DBHelper db = null;  
    static ResultSet ret = null;
	
	public String toAbo() {
		Object emailAddressObj = SessionHelper.session().getAttribute("emailAddress");
		if (emailAddressObj == null) {
			return "offline";
		} else {
			sql = "select * from comment_record where user="+"'"+emailAddressObj.toString()+"'";
	    	db = new DBHelper(sql);
		}

        ArrayList msgCmtMaps = new ArrayList();
        try {  
            ret = db.pst.executeQuery();
            while (ret.next()) {
            	String comment_msg_id =ret.getString("comment_msg_id");
            	msgCmtMaps.add(msgCmtMap(comment_msg_id));
            }
            SessionHelper.session().setAttribute("msgCmtMaps", msgCmtMaps);
            SessionHelper.session().setAttribute("msgCmtedMaps", getMsgCmtedMaps(emailAddressObj.toString()));
        	
            ret.close();
            db.close();
        } catch (SQLException e) {  
            e.printStackTrace();
            System.out.println("--Exception--");
        }
        
        return "success";
	}
	
	public Object getMsgCmtedMaps(String emailAddress) {
		String sql = null;  
	    DBHelper db = null;  
	    ResultSet ret = null;
		sql = "select * from message where user="+"'"+emailAddress+"'";
    	db = new DBHelper(sql);

        ArrayList msgCmtedMaps = new ArrayList();
        try {  
            ret = db.pst.executeQuery();
            while (ret.next()) {
            	if (ret.getString("commented").equals("yes")) {
            		HashMap msgCmtedMap = new HashMap();
            		msgCmtedMap.put("nickname", ret.getString("nickname"));
            		msgCmtedMap.put("text", ret.getString("text"));
            		msgCmtedMap.put("create_time", ret.getString("create_time"));
            		msgCmtedMap.put("userIconUrl", userIconUrl(ret.getString("user")));
                	msgCmtedMaps.add(msgCmtedMap);
            	}
            }
        	
            ret.close();
            db.close();
        } catch (SQLException e) {  
            e.printStackTrace();
            System.out.println("--Exception--");
        }
        
        return msgCmtedMaps;
	}
	
	public Object msgCmtMap(String comment_msg_id) {
		String sql = null;  
	    DBHelper db = null;  
	    ResultSet ret = null;
	    
	    sql = "select * from message where id="+"'"+comment_msg_id+"'";
    	db = new DBHelper(sql);
    	
    	HashMap msgCmtMap = new HashMap();
    	try {  
            ret = db.pst.executeQuery();
            if (ret.next()) {
            	msgCmtMap.put("nickname", ret.getString("nickname"));
            	msgCmtMap.put("text", ret.getString("text"));
            	msgCmtMap.put("create_time", ret.getString("create_time"));
            	msgCmtMap.put("userIconUrl", userIconUrl(ret.getString("user")));
            }
        	
            ret.close();
            db.close();
        } catch (SQLException e) {  
            e.printStackTrace();
            System.out.println("--Exception--");
        }
    	
    	return msgCmtMap;
	}
	
	public String userIconUrl(String user) {
    	String sql = "select *from user where emailAddress="+"'"+user+"'";
    	DBHelper db = new DBHelper(sql);
    	ResultSet ret = null;
    	String userIconUrl = null;
    	try {  
            ret = db.pst.executeQuery();
            while (ret.next()) {
            	userIconUrl = ret.getString("userIconUrl");
            }
        	
            ret.close();
            db.close();
        } catch (SQLException e) {  
            e.printStackTrace();
            System.out.println("--Exception--");
        }
    	
    	return userIconUrl;
    }
}
