package util;

import java.sql.*;
import javax.naming.*;
import javax.sql.DataSource;

public class DBManager {
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	public static Connection getConnection() throws Exception {

		Connection conn = null;

		Context initContext = new InitialContext();
		Context envContext = (Context) initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
		conn = ds.getConnection();

		return conn;
	}

// select를 수행한 후의 리소스 해제 메소드
	public static void close(Connection conn, Statement stmt, ResultSet rs) {
		try {
			if (stmt != null)
				stmt.close();
			if (rs != null)
				rs.close();
			if (conn != null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

// insert, update delete 수행 후 리소스 해제 메소드
	public static void close(Connection conn, Statement stmt) {
		try {
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
