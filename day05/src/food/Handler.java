package food;

import java.util.ArrayList;

public class Handler {
	
	private ArrayList<Food> list = new ArrayList<Food>();
	private int idx = 0;
	
	private int nextIdx() {
		return ++idx;
	}
	
	public Handler() {		
		if(list.isEmpty()) {
			list.add(new Food(nextIdx(), "BBQ", "황금올리브순살", "치킨", 22000));
			list.add(new Food(nextIdx(), "굽네치킨", "굽네 오리지널", "치킨", 20000));
			list.add(new Food(nextIdx(), "죠스떡볶이", "떡볶이 2인세트", "분식", 14000));
			list.add(new Food(nextIdx(), "서울반점", "간짜장", "중식", 11000));
			list.add(new Food(nextIdx(), "원할머니보쌈", "족발+보쌈 세트", "족발", 23000));
		}
	}

	public ArrayList<Food> getList() {
		return list;
	}	
	
	public String test() {
		return "10분간 쉬었다 하겠습니다";
	}
	
	public int insert(Food ob) {
		// 고유번호가 부여되지 않은 상태의 ob
		ob.setIdx(nextIdx());
		list.add(ob);
		return 1;
	}
	
	public int delete(int idx) {
		boolean flag = list.removeIf(food -> food.getIdx() == idx);
		return flag ? 1 : 0;		
	}

	public Food getItem(int idx) {
		Food item = null;
		for(Food f : list) {
			if(f.getIdx() == idx) {
				item = f;
				break;
			}
		}		
		return item;
	}
	
	public int modify(Food f) {		
		// idx가 일치하는 객체의 리스트 상 index를 찾아낸다
		
		int index = -1;
		
		for(int i = 0; i < list.size(); i++) {
			if(list.get(i).getIdx() == f.getIdx()) {
				index = i;
			}
		}
		
		list.set(index, f);	// 찾아낸 index에 새로 전달받은 객체를 덮어쓴다
		return index;			// 수정을 했다면, index의 값은 0보다 클 것이다
	}
}
