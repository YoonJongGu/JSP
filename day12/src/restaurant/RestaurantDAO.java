package restaurant;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class RestaurantDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private final String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
	private final String user = "c##itbank";
	private final String password = "it";
	
	public RestaurantDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}		
	}
	
	private void close() {
		try {
			if(rs != null)		rs.close();
			if(pstmt != null)	pstmt.close();
			if(conn != null)	conn.close();
		} catch (Exception e) {	}
	}

	public RestaurantDTO selectOne(int idx) {
		RestaurantDTO dto = null;
		String sql = "select * from restaurant where idx=" + idx;
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				dto = new RestaurantDTO();
				dto.setIdx(rs.getInt("idx"));
				dto.setCategory(rs.getString("category"));
				dto.setStorename(rs.getString("storename"));
				dto.setAddress(rs.getString("address"));
				dto.setPhonenumber(rs.getString("phonenumber"));
				dto.setParking(rs.getString("parking"));
				dto.setJoindate(rs.getDate("joindate"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		} finally {
			close();
		}
		
		return dto;
	}	
	
	public ArrayList<RestaurantDTO> selectList() {
		ArrayList<RestaurantDTO> list = new ArrayList<RestaurantDTO>();
		String sql = "select * from restaurant order by idx";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				RestaurantDTO dto = new RestaurantDTO();
				dto.setIdx(rs.getInt("idx"));
				dto.setCategory(rs.getString("category"));
				dto.setStorename(rs.getString("storename"));
				dto.setAddress(rs.getString("address"));
				dto.setPhonenumber(rs.getString("phonenumber"));
				dto.setParking(rs.getString("parking"));
				dto.setJoindate(rs.getDate("joindate"));
				list.add(dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		} finally {
			close();
		}
		
		return list;
		
	}

	public int insert(RestaurantDTO ob) {
		int row = 0;
		String sql = "insert into restaurant (category, storename, address, phonenumber, parking)" + 
				" values (?, ?, ?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ob.getCategory());
			pstmt.setString(2, ob.getStorename());
			pstmt.setString(3, ob.getAddress());
			pstmt.setString(4, ob.getPhonenumber());
			pstmt.setString(5, ob.getParking());
			row = pstmt.executeUpdate();
			
		} catch (SQLException e) {			
			e.printStackTrace();
			
		} finally {
			close();
		}
		
		return row;
	}

	public int modify(RestaurantDTO ob) {
		int row = 0;
		String sql = "update restaurant set category=?, storename=?, address=?, phonenumber=?, parking=? where idx=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ob.getCategory());
			pstmt.setString(2, ob.getStorename());
			pstmt.setString(3, ob.getAddress());
			pstmt.setString(4, ob.getPhonenumber());
			pstmt.setString(5, ob.getParking());
			pstmt.setInt(6, ob.getIdx());
			row = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		} finally {
			close();
		}
		
		return row;
	}
		
	public int delete(int idx) {
		int row = 0;
		String sql = "delete from restaurant where idx=" + idx;
		
		try {
			pstmt = conn.prepareStatement(sql);
			row = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		} finally {
			close();
		}		
		
		return row;
	}

}
