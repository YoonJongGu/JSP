package singleton;

public class Main {
	public static void main(String[] args) {
		// Test1 타입 (싱글톤이 적용되지 않은 클래스)
		// 생성자를 이용하여 객체를 생성할 수 있고, 매번 다른 객체를 만들어낸다
		Test1 ob1 = new Test1();
		Test1 ob2 = new Test1();
		
		System.out.println("ob1 : " + ob1);		
		System.out.println("ob2 : " + ob2);
		
		// Test2 타입 (싱글톤이 적용된 클래스)
		// 생성자를 이용하여 객체를 생성할 수 없고, 대신 별도의 메서드를 이용하여 하나의 객체만 반환받는다
		
//		Test2 ob3 = new Test2();	// The constructor Test2() is not visible
		Test2 ob3 = Test2.getInstance();
		Test2 ob4 = Test2.getInstance();
		
		System.out.println("ob3 : " + ob3);
		System.out.println("ob4 : " + ob4);
		
		// 싱글톤이 적용되어 있는 다른 클래스
//		Runtime rt = new Runtime();	// The constructor Runtime() is not visible
		Runtime rt1 = Runtime.getRuntime();
		Runtime rt2 = Runtime.getRuntime();
		
		System.out.println("rt1 : " + rt1);
		System.out.println("rt2 : " + rt2);
	}
}
