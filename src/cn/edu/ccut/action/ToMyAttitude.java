package cn.edu.ccut.action;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import cn.edu.ccut.helper.DBHelper;
import cn.edu.ccut.helper.SessionHelper;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ToMyAttitude extends ActionSupport {
	static String sql = null;  
    static DBHelper db = null;  
    static ResultSet ret = null;
	
	public String toMyAtt() {
		Object emailAddressObj = SessionHelper.session().getAttribute("emailAddress");
		if (emailAddressObj == null) {
			return "offline";
		} else {
			sql = "select * from attitude_record where user="+"'"+emailAddressObj.toString()+"'";
	    	db = new DBHelper(sql);
		}

        ArrayList msgMaps = new ArrayList();
        try {  
            ret = db.pst.executeQuery();
            while (ret.next()) {
            	String msg_id =ret.getString("msg_id");
            	msgMaps.add(msgMap(msg_id));
            }
            SessionHelper.session().setAttribute("msgMaps", msgMaps);
        	
            ret.close();
            db.close();
        } catch (SQLException e) {  
            e.printStackTrace();
            System.out.println("--Exception--");
        }
        
        return "success";
	}
	
	public Object msgMap(String msg_id) {
		String sql = null;  
	    DBHelper db = null;  
	    ResultSet ret = null;
	    
	    sql = "select * from message where id="+"'"+msg_id+"'";
    	db = new DBHelper(sql);
    	
    	HashMap msgMap = new HashMap();
    	try {  
            ret = db.pst.executeQuery();
            if (ret.next()) {
            	msgMap.put("nickname", ret.getString("nickname"));
            	msgMap.put("text", ret.getString("text"));
            	msgMap.put("create_time", ret.getString("create_time"));
            	msgMap.put("userIconUrl", userIconUrl(ret.getString("user")));
            }
        	
            ret.close();
            db.close();
        } catch (SQLException e) {  
            e.printStackTrace();
            System.out.println("--Exception--");
        }
    	
    	return msgMap;
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
