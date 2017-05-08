package cn.edu.ccut.helper;
import java.sql.Connection;  
import java.sql.DriverManager;  
import java.sql.PreparedStatement;  
import java.sql.SQLException;  
  
public class DBHelper {  
    public static final String url = "jdbc:mysql://10.73.59.159:3306/EarlyEducation?useUnicode=true&characterEncoding=UTF-8";
    public static final String name = "com.mysql.jdbc.Driver";
    public static final String user = "root";
    public static final String password = "";
 
    public Connection conn = null;
    public PreparedStatement pst = null;

    public DBHelper(String sql) {
        try {
            Class.forName(name); //ָ����������
            conn = DriverManager.getConnection(url, user, password); //��ȡ����
            pst = conn.prepareStatement(sql); //׼��ִ�����
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void close() {
        try {
            this.conn.close();
            this.pst.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
