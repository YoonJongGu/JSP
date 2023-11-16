package day09;

public class Member {
	// 자바 빈즈 클래스의 멤버 필드 이름은 input 태그의 name과 일치해야 하며
	// getter/setter도 같은 형식의 이름을 유지해야 한다
	private String userid;	
	private String userpw;
	private String username;
	
	public Member() {}

	public Member(String userid, String userpw, String username) {	
		this.userid = userid;
		this.userpw = userpw;
		this.username = username;
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
	
}
