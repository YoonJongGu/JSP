package day07;

public class Main {
	public static void main(String[] args) {
		
		MemberHandler hd = new MemberHandler();
		
		for(Member mb : hd.getList()) {
			System.out.print(mb.getUserid() + " / ");
			System.out.print(mb.getUserpw() + " / ");
			System.out.print(mb.getUsername() + " / ");
			System.out.print(mb.getAge() + " / ");
			System.out.print(mb.getBirth());
			System.out.println();
		}
	}
}
