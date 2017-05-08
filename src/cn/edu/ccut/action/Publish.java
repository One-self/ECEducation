package cn.edu.ccut.action;

import cn.edu.ccut.action.ToShare;

import cn.edu.ccut.helper.*;

import com.opensymphony.xwork2.ActionSupport;

import java.io.UnsupportedEncodingException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

@SuppressWarnings("serial")
public class Publish extends ActionSupport {
	private String text;
	static String sql = null; 
	static DBHelper db = null;
	static ResultSet ret = null;

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}
	
	public String pub() throws UnsupportedEncodingException {
		Object addressObjc = SessionHelper.session().getAttribute("emailAddress");
		if (addressObjc == null) return "offline";
		
		// 内容
		String text = new String(this.text.getBytes("iso-8859-1"), "utf-8");
		
		// 昵称
		String emailAddress = addressObjc.toString();
		sql = "select * from user where emailAddress="+"'"+emailAddress+"'";
		String nickname = null;
		db = new DBHelper(sql); 
		try {  
            ret = db.pst.executeQuery();
            while (ret.next()) {
            	nickname = ret.getString("nickname");
            }
        } catch (SQLException e) {  
            e.printStackTrace();
        }
		
		// 发布时间
		Date date = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateString = dateFormat.format(date);
		
		// 插入
		sql = "insert message (text, nickname, create_time, user) values('"+text+"', '"+nickname+"', '"+dateString+"', '"+emailAddress+"')";
		try {
			db.pst.executeUpdate(sql);
            ret.close();  
            db.close();
		} catch (SQLException e) {  
            e.printStackTrace();
        }
		
		ToShare toShare = new ToShare();
		toShare.toSha();
		return "success";
	}
}
