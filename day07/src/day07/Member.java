package day07;

// 단일 데이터의 구성을 자바 빈즈로 나타내기
// 변수 중심, 값을 저장하는 것이 주 목적이다

public class Member {

	private String userid;
	private String userpw;
	private String username;
	private int age;
	private String birth;	// yyyy-MM-dd
	
	public Member() {}	
	
	public Member(String userid, String userpw, String username, int age, String birth) {		
		this.userid = userid;
		this.userpw = userpw;
		this.username = username;
		this.age = age;
		this.birth = birth;
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
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	
}
