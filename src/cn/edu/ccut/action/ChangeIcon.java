package cn.edu.ccut.action;
import cn.edu.ccut.helper.*;
import java.io.File;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class ChangeIcon extends ActionSupport {
	public String chanIcon() {
		File file ;
		int maxFileSize = 5000 * 1024;
		int maxMemSize = 5000 * 1024;
		String filePath = "/Users/Oneself/Documents/Workspaces/MyEclipse 10/ECE/WebRoot";
		
		// 验证上传内容了类型
		String fileName = null;
		HttpServletRequest request = ServletActionContext.getRequest();
		String contentType = request.getContentType();
		if ((contentType.indexOf("multipart/form-data") >= 0)) {
		
		   DiskFileItemFactory factory = new DiskFileItemFactory();
		   // 设置内存中存储文件的最大值
		   factory.setSizeThreshold(maxMemSize);
		   // 本地存储的数据大于 maxMemSize.
		   factory.setRepository(new File("c:\\temp"));
		
		   // 创建一个新的文件上传处理程序
		   ServletFileUpload upload = new ServletFileUpload(factory);
		   // 设置最大上传的文件大小
		   upload.setSizeMax( maxFileSize );
		   try{ 
		      // 解析获取的文件
		      List fileItems = upload.parseRequest(request);
		
		      // 处理上传的文件
		      Iterator i = fileItems.iterator();
		
		      while ( i.hasNext () ) 
		      {
		         FileItem fi = (FileItem)i.next();
		         if ( !fi.isFormField () )	
		         {
		          // 获取上传文件的参数
		          String fieldName = fi.getFieldName();
		          fileName = fi.getName();
		          boolean isInMemory = fi.isInMemory();
		          long sizeInBytes = fi.getSize();
		          // 写入文件
		          if( fileName.lastIndexOf("\\") >= 0 ){
		           file = new File( filePath , 
		           fileName.substring( fileName.lastIndexOf("\\"))) ;
		          } else {
		           file = new File( filePath ,
		           fileName.substring(fileName.lastIndexOf("\\")+1)) ;
		          }
		          fi.write( file ) ;
		         }
		      }
		   } catch(Exception ex) {
		      System.out.println(ex);
		   }
		} else {
		}

		// 操作数据库
		
		String userIconUrl = "http://10.73.59.159:8080/ECE/" + fileName;
		String sql = "update user set userIconUrl='"+userIconUrl+"' where emailAddress='"+SessionHelper.session().getAttribute("emailAddress")+"'";
		DBHelper db = new DBHelper(sql);
		try{
			db.pst.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		
		}
		
        db.close();
        
        return "success";
	}
}
