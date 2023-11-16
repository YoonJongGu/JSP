package member2;

import java.sql.Date;

//	IDX        NOT NULL NUMBER        
//	USERID     NOT NULL VARCHAR2(100) 
//	USERPW     NOT NULL VARCHAR2(255) 
//	USERNAME   NOT NULL VARCHAR2(100) 
//	JOINDATE            DATE          
//	GENDER              VARCHAR2(20)  
//	PROFILEIMG          VARCHAR2(255) 

public class MemberDTO {
	private int idx;
	private String userid;
	private String userpw;
	private String username;
	private Date joinDate;
	private String gender;
	private String profileImg;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Date getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getProfileImg() {
		return profileImg;
	}
	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}	
	
}
