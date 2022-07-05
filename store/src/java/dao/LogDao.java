package dao;

import java.sql.*;
/**
 *
 * @author student
 * Singleton ( Design Pattern )
 */
public class LogDao {
    private static LogDao dao = null;
    private Connection con;
    
    private LogDao() throws ClassNotFoundException, SQLException {        
        Class.forName("org.mariadb.jdbc.Driver");
        // 請勿使用權限過高的帳號　提供網頁使用
        con = DriverManager.getConnection("jdbc:mariadb://127.0.0.1/store", "root", "123456");
    }
    
    // 多人存取　要提供 Thread-Safe --> 效能問題(低)
    // 多連線池 CONNECTION POOL
    public synchronized void insertLog(String url, String ip, long response) throws SQLException {
        String sql = "insert into logs(url,ip,response) values ('"+url+"','"+ip+"',"+response+")";
        System.out.println("sql: " + sql);
        Statement stmt = con.createStatement();
        int count = stmt.executeUpdate(sql);
        
    }
    
    public static LogDao getDefault() throws ClassNotFoundException, SQLException {
        if( dao == null ) {
            dao = new LogDao();
        }
        return dao;
    }
}
