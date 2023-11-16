package restaurant;

import java.sql.Date;

//	IDX         NOT NULL NUMBER        
//	CATEGORY    NOT NULL VARCHAR2(20)  
//	STORENAME   NOT NULL VARCHAR2(100) 
//	ADDRESS     NOT NULL VARCHAR2(100) 
//	PHONENUMBER NOT NULL VARCHAR2(100) 
//	PARKING     NOT NULL VARCHAR2(10)  
//	JOINDATE             DATE  

public class RestaurantDTO {
	
	private int idx;
	private String category;
	private String storename;
	private String address;
	private String phonenumber;
	private String parking;
	private Date joindate;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getStorename() {
		return storename;
	}
	public void setStorename(String storename) {
		this.storename = storename;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getParking() {
		return parking;
	}
	public void setParking(String parking) {
		this.parking = parking;
	}
	public Date getJoindate() {
		return joindate;
	}
	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}
	
}
