package day07;

import java.util.ArrayList;

// 상세 기능 및 데이터 유지
// 함수 중심, 데이터를 어떤 방식(method)으로 처리할 것인가?

public class MemberHandler {

	private ArrayList<Member> list = new ArrayList<Member>();
	
	public MemberHandler() {
		setDummy();
	}
	
	// private : 외부에서 호출하는 함수가 아니다 (내부에서만 사용한다)
	// void : 결과를 보고할 필요가 없다. 결과를 반환하여 다른 함수와 연계하지 않는다
	private void setDummy() {
		if(list.isEmpty()) {
			list.add(new Member("test", "1234", "테스트", 99, "1999-01-01"));
			list.add(new Member("dan", "55555", "나단비", 5, "2005-05-05"));
			list.add(new Member("hong", "22", "홍진호", 22, "1988-02-02"));
		}
	}
	
	public int insert(Member ob) {
		if(isDuplicate(ob) == 0) {
			return 0;
		}
		else {
			list.add(ob);
			return 1;
		}
		
	}
	
	public Member login(Member ob) {
		Member login = null;
		// 리스트에서 id와 pw가 일치하는 계정이 있으면 login 변수에 저장한다
		for(Member member : list) {
			if(member.getUserid().equals(ob.getUserid())) {
				if(member.getUserpw().equals(ob.getUserpw())) {
					login = member;
					break;
				}
			}			
		}
		
		return login;
	}
	
	public int modify(Member ob) {
		int index = getIndex(ob);
		
		// 그 위치에 새로운 객체를 덮어씌운다
		if(index >= 0) {		// index 가 -1인데 set을 시도하면 예외 발생 !!
			list.set(index, ob);
		}
		
		return index;	// 실패하면 -1, 0 이상이면 성공
	}
	
	public void delete(String userid) {
		list.removeIf(member -> member.getUserid().equals(userid));
	}
	
	private int isDuplicate(Member ob) {		
		for(Member member : list) {
			if(member.getUserid().equals(ob.getUserid())) {
				return 0;
			}
		}
		return 1;
	}
	
	private int getIndex(Member ob) {
		int index = -1;
		for(int i = 0; i < list.size(); i++) {
			if(list.get(i).getUserid().equals(ob.getUserid())) {
				index = i;
			}
		}
		return index;
	}
	
	public ArrayList<Member> getList() {
		return list;
	}
}
