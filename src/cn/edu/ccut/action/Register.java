package cn.edu.ccut.action;

import java.sql.ResultSet;
import java.sql.SQLException;

import cn.edu.ccut.helper.DBHelper;

import com.opensymphony.xwork2.ActionSupport;

public class Register extends ActionSupport {
	String emailAddress;
	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	String passowrd;

	public String getPassowrd() {
		return passowrd;
	}

	public void setPassowrd(String passowrd) {
		this.passowrd = passowrd;
	}

	static String sql = null;  
    static DBHelper db = null;  
    static ResultSet ret = null;
	
    public String register() {
    	String emailAddress = this.getEmailAddress();
    	String password = this.getPassowrd();
    	sql = "select *from user where emailAddress="+"'"+emailAddress+"'";
    	db = new DBHelper(sql);
    	
    	try {  
            ret = db.pst.executeQuery(); 
            if (ret.next()) {
            	
            	return "error";
            }
            
            addUser(emailAddress, password);
            
            ret.close();  
            db.close();
        } catch (SQLException e) {  
            e.printStackTrace();
            System.out.println("--Exception--");
        }

        System.out.println("--abc--");
		return "success";
    }
    
    
    public void addUser(String emailAdress, String password) {
    	String sql = "insert into user (emailAddress, password) values("+"'"+emailAddress+"'"+", "+"'"+password+"'"+")";
    	DBHelper dbh = new DBHelper(sql);
    	try {  
    		dbh.pst.executeUpdate();
            
            ret.close(); 
            dbh.close();
        } catch (SQLException e) {  
            e.printStackTrace();
        }
    }

}
