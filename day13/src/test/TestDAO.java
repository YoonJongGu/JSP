package test;

import java.sql.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class TestDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private Context init;
	private DataSource ds;
	
	public TestDAO() {
		try {
			init = (Context) new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/oracle");
			
		} catch (Exception e) {
			System.err.println("TestDAO 생성자 예외 : " + e);
			
		} finally {
			try {
				if(conn != null) conn.close();
			} catch(Exception e) {}
		}
	}
	
	// 접속한 DB의 버전정보를 불러오는 함수
	public String getVersion() {
		String version = null;
		String sql = "select banner from v$version";
		
		try {
			conn = ds.getConnection();	// dataSource에서 connection을 요청하여 받는다
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				version = rs.getString("banner");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch(Exception e) {}
		}		
		return version;
	}	
	
	// 접속한 DB의 오늘 날짜를 불러오는 함수
	public Date getSysDate() {
		Date sysdate = null;
		String sql = "select sysdate from dual";
		
		try {
			conn = ds.getConnection();	// dataSource에서 connection을 요청하여 받는다
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				sysdate = rs.getDate("sysdate");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch(Exception e) {}
		}
		return sysdate;
	}
	
}
