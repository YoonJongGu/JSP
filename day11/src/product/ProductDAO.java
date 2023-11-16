package product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

// Data Access Object : 데이터에 접근하기 위한 객체

public class ProductDAO {

	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private final String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
	private final String user = "c##itbank";
	private final String password = "it";
	
	public ProductDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);
			
		} catch (ClassNotFoundException e) {
			System.out.println("클래스를 불러올 수 없습니다 : " + e);
			
		} catch (SQLException e) {
			System.out.println("연결에 실패했습니다 : " + e);
			
		}		
	}
	
	// DAO 내부에서 연결을 종료하는 용도로만 사용하는 함수, 외부에서 호출할 필요가 없으므로 private
	private void close() {
		try {
			if(rs != null)		rs.close();
			if(pstmt != null)	pstmt.close();
			if(conn != null)	conn.close();
			
		} catch(Exception e) {}
	}
	
	public ArrayList<ProductDTO> selectList() {
		ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
		String sql = "select * from product order by idx";
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				ProductDTO ob = new ProductDTO();
				ob.setIdx(rs.getInt("idx"));
				ob.setName(rs.getString("name"));
				ob.setPrice(rs.getInt("price"));
				ob.setImgPath(rs.getString("imgPath"));
				list.add(ob);
			}
			
		} catch (SQLException e) {			
			System.out.println("SQL 예외 발생 : " + e);
			
		} finally {
			close();
		}
		
		
		return list;
	}
	
	public int insert(ProductDTO ob) {
		int row = 0;
		String sql = "insert into product values (?, ?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, ob.getIdx());
			pstmt.setString(2, ob.getName());
			pstmt.setInt(3, ob.getPrice());
			pstmt.setString(4, ob.getImgPath());
			
//			rs = stmt.executeQuery(sql);			
			row = pstmt.executeUpdate();	// 이미 sql을 전달했기 때문에, 매개변수는 전달없음
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		} finally {
			close();
		}
		
		return row;
	}
	
	public int delete(int idx) {
		int row = 0;
		String sql = "delete from product where idx=" + idx;
		
		try {
			pstmt = conn.prepareStatement(sql);	// 이미 완성된 sql, 추가로 값을 세팅하지 않아도 된다
			row = pstmt.executeUpdate();		// insert/update/delete 모두 executeUpdate()
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		} finally {
			close();
		}
		
		return row;
	}

	public ProductDTO selectOne(int idx) {
		ProductDTO dto = null;
		String sql = "select * from product where idx=" + idx;
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				// rs에 데이터가 있으면 객체를 생성한다
				// rs에 데이터가 없으면 객체를 생성하지 않으므로 null이 반환된다
				dto = new ProductDTO();
				dto.setIdx(rs.getInt("idx"));
				dto.setName(rs.getString("name"));
				dto.setPrice(rs.getInt("price"));
				dto.setImgPath(rs.getString("imgPath"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		} finally {
			close();
		}
		
		return dto;
		
	}

	public int update(ProductDTO ob) {
		int row = 0;
		String sql = "update product set name=?, price=?, imgPath=? where idx=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ob.getName());
			pstmt.setInt(2, ob.getPrice());
			pstmt.setString(3, ob.getImgPath());
			pstmt.setInt(4, ob.getIdx());
			row = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		} finally {
			close();
		}
		
		return row;
	}
}
