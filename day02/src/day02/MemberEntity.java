package day02;

public class MemberEntity {
	// entity, 시스템이 유지해야 하는 정보를 관리하는 기능을 전담하는 클래스
	// Java를 이용하는 프로그램에서는 대부분 자바 빈즈 형식으로 관리한다
	// private 멤버 필드, public getter/setter, 기본 생성자(매개변수 X)
	
	private String id;
	private String pw;
	private String name;
	
	public MemberEntity() {
		// 기본 생성자가 있어야 (누구나 쉽게) 객체를 생성할 수 있다
	}
	
	public MemberEntity(String id, String pw, String name) {
		// 매개변수를 받는 생성자는 객체의 초기값을 할당하면서 객체를 생성할 수 있다
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}	
}
