package cn.edu.ccut.action;

import java.io.UnsupportedEncodingException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

import cn.edu.ccut.helper.*;

import cn.edu.ccut.helper.DBHelper;

import com.opensymphony.xwork2.ActionSupport;



public class Change extends ActionSupport {

	private String nickname;


	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}


	private String sex;
	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
		System.out.print(this.sex);
	}


	private String intro;
	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}
	
	private int babyAge;
	public int getBabyAge() {
		return babyAge;
	}

	public void setBabyAge(int babyAge) {
		this.babyAge = babyAge;
	}


	private String star;
	public String getStar() {
		return star;
	}

	public void setStar(String star) {
		this.star = star;
	}
	
	private String userIconUrl;
	public String getUserIconUrl() {
		return userIconUrl;
	}

	public void setUserIconUrl(String userIconUrl) {
		this.userIconUrl = userIconUrl;
	}


	static String sql = null;
	static DBHelper db = null; 
	static ResultSet ret = null;
	
	public String change() throws UnsupportedEncodingException {
		String emailAddress = SessionHelper.session().getAttribute("emailAddress").toString();
		System.out.println(emailAddress+"asdasdasdasdasd");
		String nickname = new String(this.getNickname().getBytes("iso-8859-1"), "utf-8");
		//String sex = request.getparameter("sex");
		String sex = new String(this.getSex().getBytes("iso-8859-1"), "utf-8");
		String intro = new String(this.getIntro().getBytes("iso-8859-1"), "utf-8");
		int babyAge = this.getBabyAge();
		String star = new String(this.getStar().getBytes("iso-8859-1"), "utf-8");
		String userIconUrl = this.getUserIconUrl();

		
		sql = "update user set nickname='"+nickname+"', sex='"+sex+"' , intro='"+intro+"' , babyAge='"+babyAge+"' , star='"+star+"' where emailAddress="+"'"+emailAddress+"'";
		db = new DBHelper(sql);
		
		try{
			db.pst.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		
		}
		
		HashMap userMap = new HashMap();
		userMap.put("nickname", nickname); 
		userMap.put("userIconUrl", userIconUrl);
		userMap.put("sex", sex);
		userMap.put("intro", intro);
		userMap.put("babyAge", babyAge);
		userMap.put("star", star);
		SessionHelper.session().setAttribute("userMap", userMap);

		db.close();
		return "success";
		
		
		
	}
	
	
	

}
