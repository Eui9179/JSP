import java.sql.*;

public class SqlConn {
	private static Connection conn;
	
	static public Connection getSqlConn() {
		try{
			conn = DriverManager.getConnection(
				"jdbc:mysql://localhost:3307/JSPBookDB?user=root&password=1234"
			);
			
		} catch(SQLException ex){} 
		
		return conn;
	}
}
