package cn.edu.ccut.action;

import cn.edu.ccut.helper.*;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import com.opensymphony.xwork2.ActionSupport;

    
public class ToShare extends ActionSupport {
	static String sql = null;  
    static DBHelper db = null;  
    static ResultSet ret = null;
    
    public String toSha() {
    	sql = "select * from message";
    	db = new DBHelper(sql);
    	  
        try {  
            ret = db.pst.executeQuery();
            ArrayList msgMaps = new ArrayList();
            while (ret.next()) {
            	HashMap msgMap = new HashMap();
            	msgMap.put("nickname", ret.getString("nickname"));
            	msgMap.put("text", ret.getString("text"));
            	msgMap.put("create_time", ret.getString("create_time"));
            	msgMap.put("userIconUrl", userIconUrl(ret.getString("user")));
            	
            	msgMaps.add(msgMap);
            }
        	SessionHelper.session().setAttribute("msgMaps", msgMaps);
        	
            ret.close();
            db.close();
            
        	return "success";
        } catch (SQLException e) {  
            e.printStackTrace();
            System.out.println("--Exception--");
        }
        
        return "error";
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
