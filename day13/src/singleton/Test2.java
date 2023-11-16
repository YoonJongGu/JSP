package singleton;

public class Test2 {	// singleton : 어디서나 오로지 하나의 객체만 참조하게 만드는 디자인 패턴
	
	// static 메서드에서 참조할 수 있어야 하므로, static
	private static Test2 instance = new Test2();
	
	private Test2() {
		// 1) 생성자가 private 이므로, 외부에서는 Test2 타입의 객체를 생성할 수 없다
	}
	
	public static Test2 getInstance() {	// 2) 객체가 없어도 함수를 호출할 수 있어야 하므로 static
		return instance;
	}
}
