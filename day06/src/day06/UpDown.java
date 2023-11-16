package day06;

import java.util.Random;

public class UpDown {
	
	private Random ran = new Random();
	private int count;
	private int answer = ran.nextInt(100) + 1;
	private boolean end;
			
	public String check(int answer, int user) {		
		String compare = "";
		
		count++;
		
		if(user > answer) {
			compare = "down";
		}
		else if(user < answer) {
			compare = "up";
		}
		else {
			compare = "정답입니다";			
			end = true;
		}
		return compare;
	}

	public int getCount() {
		return count;
	}
	
	public void setCount(int count) {
		this.count = count;
	}
	
	public int getAnswer() {		
		return answer;
	}
	
	public boolean isEnd() {
		return end;
	}
}
