package test;
import java.sql.*;

public class DBConnection {
	private static Connection con=null;
	private DBConnection() {}
		static {
			try {
				Class.forName(DBInfo.driver);
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}
		public static Connection getCon() {
			try {
				con=DriverManager.getConnection(DBInfo.dbURL,DBInfo.dbUName,DBInfo.dbPword);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return con;
		}
	

}
