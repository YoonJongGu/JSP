package memberManagement;

public class Member {
	
	private String userid;
	private String userpw;
	private String username;
	private int age;
	
	// 더미데이터 생성 용도의 생성자 오버로딩
	public Member(String userid, String userpw, String username, int age) {		
		this.userid = userid;
		this.userpw = userpw;
		this.username = username;
		this.age = age;
	}
	
	//자바 빈즈의 기준을 충족하기 위한 기본 생성자 작성
	public Member() {}
	
	// public getter/setter
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
}
