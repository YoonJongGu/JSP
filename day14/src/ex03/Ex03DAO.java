package ex03;

import java.sql.*;
// 커넥션 풀 (dataSource)
// context.xml
// web.xml
import java.util.ArrayList;

// 싱글톤

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class Ex03DAO {
	
	private static Ex03DAO instance = new Ex03DAO();
	
	public static Ex03DAO getInstance() {
		return instance;
	}
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private DataSource ds;
	private Context init;
	
	private Ex03DAO() {
		try {
			init = new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/oracle");
			String version = getVersion();
			System.out.println(version + "접속됨");
			
		} catch(NamingException e) {
			System.out.println("생성자 예외 : " + e);
		}
	}
	
	private String getVersion() {
		String version = "";
		String sql = "select banner from v$version";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				version = rs.getString("banner");
			}
			
		} catch(SQLException e) {
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
	// DB에 저장된 데이터를 불러와서 리스트로 반환하는 함수
	public ArrayList<Ex03DTO> selectList() {
		ArrayList<Ex03DTO> list = new ArrayList<Ex03DTO>();
		String sql = "select * from uploadTest1 order by idx";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Ex03DTO dto = new Ex03DTO();
				dto.setIdx(rs.getInt("idx"));
				dto.setName(rs.getString("name"));
				dto.setBirthDate(rs.getDate("birthDate"));
				dto.setImgPath(rs.getString("imgPath"));
				list.add(dto);
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
		
		return list;		
	}
	
	// 사용자 입력 데이터를 DB에 저장하는 함수
	public int insert(Ex03DTO dto) {
		int row = 0;
		String sql = "insert into uploadTest1 (name, birthDate, imgPath) values (?, ?, ?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setDate(2, dto.getBirthDate());
			pstmt.setString(3, dto.getImgPath());
			row = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		} finally {
			try {
				if(rs != null)	rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch(Exception e) {}
		}
		
		return row;
	}
}
