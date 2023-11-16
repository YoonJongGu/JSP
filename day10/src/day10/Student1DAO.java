package day10;

// DAO : Data Access Object, 데이터에 접근하는 객체
// DTO : Data Transfer Object, 데이터를 전송하기 위한 객체 (자바 빈즈)

import java.sql.Connection;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.DriverManager;

public class Student1DAO {
	
	private Connection conn;
	private Statement stmt;
	private ResultSet rs;
	
	private final String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
	private final String user = "c##itbank";
	private final String password = "it";
		
	public Student1DAO() {	// DAO 객체를 생성하면 conn이 준비된 상태다 
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);
			
		} catch(SQLException e) {
			System.out.println("DAO 생성자 예외 발생 : " + e);
			
		} catch(ClassNotFoundException e) {
			System.out.println("지정한 클래스를 찾을 수 없습니다 : " + e);
		}		
	}
	
	// 지정한 테이블의 모든 relation을 object로 변환하여 list에 담아서 반환하는 함수
	public ArrayList<Student1> selectList() {
		ArrayList<Student1> list = new ArrayList<Student1>();
		String sql = "select * from student1";
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				Student1 ob = new Student1();
				ob.setName(rs.getString("name"));
				ob.setKor(rs.getInt("kor"));
				ob.setEng(rs.getInt("eng"));
				ob.setMat(rs.getInt("mat"));				
				list.add(ob);
			}
			
		} catch(SQLException e) {
//			e.printStackTrace();
			System.out.println("selectList에서 예외 발생 : " + e);
			
		} finally {
			try { if(rs != null)	rs.close(); }	catch(Exception e) {}
			try { if(stmt != null)	stmt.close(); }	catch(Exception e) {}
			try { if(conn != null)	conn.close(); }	catch(Exception e) {}
			
		}		
		
		return list;
	}
	
}
