package day06;

import java.util.Random;

public class Weapon {
		
	private int level;
	private int money;
	private int goods;
	private int percent;
	
	public String doEnforce() {
		Random ran = new Random();
		percent = ran.nextInt(100) + 1;
		if(money < level * level * 100 || goods < level * level * 10) {
			return "실패";
		}
		
		if(level < 5) {
			level++;
			money -= level * level * 100;
			goods -= level * level * 10;
			return "성공";
		}
		else if(level < 10) {
			money -= level * level * 100;
			goods -= level * level * 10;
			if(percent <= 150 - level * 10) {
				level++;				
				return "성공";
			}
		}
		else if(level < 15) {
			money -= level * level * 100;
			goods -= level * level * 10;
			if(percent <= 100 - level * 5) {
				level++;				
				return "성공";
			}
		}
		else if(level < 20) {
			money -= level * level * 100;
			goods -= level * level * 10;
			if(percent <= 70 - level * 3) {
				level++;				
				return "성공";
			}
		}
		else {
			money -= level * level * 100;
			goods -= level * level * 10;
			if(percent <= 30 - level * 1) {
				level++;				
				return "성공";
			}
		}
		
		return "실패";
	}

	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public int getGoods() {
		return goods;
	}
	public void setGoods(int goods) {
		this.goods = goods;
	}
	public int getPercent() {
		return percent;
	}
	public void setPercent(int percent) {
		this.percent = percent;
	}	
}
