package day06;

import java.util.Random;
import java.util.Scanner;

public class RSP {
	
//	private static RSP instance = new RSP();
	
	public String getCPUValue() {
		Random ran = new Random();
		int num = ran.nextInt(3);	// 0	, 1	, 2
									// 바위	, 보	, 가위
		
		String cpu = null;
		switch(num) {
		case 0:		cpu = "바위";		break;
		case 1:		cpu = "보";		break;
		case 2:		cpu = "가위";		break;
		}
		return cpu;
	}
	
	public String getHumValue(int num) {
		String human = null;		
		switch(num) {
		case 0:		human = "바위";		break;
		case 1:		human = "보";		break;
		case 2:		human = "가위";		break;
		}
		return human;		
	}
	
	public String getResult(String cpu, String human) {
		String result = "비겼습니다";	

		if(cpu.equals("가위") && human.equals("바위")) {
			result = "이겼습니다";
		}
		else if(cpu.equals("가위") && human.equals("보")) {
			result = "졌습니다";
		}
		else if(cpu.equals("바위") && human.equals("가위")) {
			result = "졌습니다";
		}
		else if(cpu.equals("바위") && human.equals("보")) {
			result = "이겼습니다";
		}
		else if(cpu.equals("보") && human.equals("가위")) {
			result = "이겼습니다";
		}
		else if(cpu.equals("보") && human.equals("바위")) {
			result = "졌습니다";
		}
		return result;
	}
	
//	public static void main(String[] args) {
//		// Rock, Scissor, Paper
//		Scanner sc = new Scanner(System.in);
//		
//		// 컴퓨터가 준비한 값
//		String cpu = instance.getCPUValue();
//				
//		// 사용자가 입력하는 값
//		System.out.print("0, 1, 2 중 하나를 입력 : ");
//		String human = instance.getHumValue(sc.nextInt());
//		
//		// 연산 및 결과 출력
//		String msg = instance.getResult(cpu, human);
//		System.out.println("CPU : " + cpu);
//		System.out.println("HUMAN : " + human);
//		System.out.println(msg);
//		
//		sc.close();
//	}
}
