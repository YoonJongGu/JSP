package memberManagement;

import java.util.ArrayList;

public class Handler {
	
	private ArrayList<Member> list = new ArrayList<Member>();
	
	public ArrayList<Member> getList() { return list; }
	
	public void setDummy() {
		if(list.isEmpty()) {	// list의 size가 0이면 추가
			list.add(new Member("test", "1234", "테스트", 20));
			list.add(new Member("itbank", "it", "아이티뱅크", 30));
			list.add(new Member("admin", "1", "관리자", 40));
		}				
	}

	private boolean isDuplicate(Member ob) {		
		for(Member m : list) {
			if(m.getUserid().equals(ob.getUserid())) {
				return true;
			}
		}
		return false;
	}
	
	public int insert(Member ob) {
		if(isDuplicate(ob) == true) {	// 만약, ob가 중복이면			
			return 0;					// 추가하지 않고, 0을 반환하면서 함수 종료
		}
		boolean flag = list.add(ob); 
		return flag ? 1 : 0;
	}
	
	public void delete(String userid) {
		list.removeIf(m -> m.getUserid().equals(userid));
		
//		for(Member mem : list) {
//			if(mem.getUserid().equals(userid)) {
//				list.remove(mem);
//				return;
//			}
//		}
	}
	
	public Member find(String userid) {
		for(Member m : list) {
			if(m.getUserid().equals(userid)) {
				return m;
			}
		}
		return null;
	}
	
	public void update(Member ob) {		
		for(Member m : list) {
			if(m.getUserid().equals(ob.getUserid())) {				
				m.setUserpw(ob.getUserpw());
				m.setUsername(ob.getUsername());
				m.setAge(ob.getAge());
				return;
			}
		}
	}
}
