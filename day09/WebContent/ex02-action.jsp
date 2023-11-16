<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="day09.Member , java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-action.jsp</title>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");
	ArrayList<Member> list = new ArrayList<Member>();	
	list.add(new Member("test", "1234", "테스트"));
	list.add(new Member("admin", "123", "어드민"));
	list.add(new Member("root", "1", "관리자"));
%>

<%--
		form에서 입력받은 데이터로 로그인을 판별하여 세션에 저장
		필요하다면 쿠키도 활영하여 처리함
		성공하면 main으로 이동
		실패하면 form으로 다시 이동
		
		자동로그인에 체크했다면 현재 세션의 id를 쿠키에 저장(24시간)
 --%>
 
 <jsp:useBean id="user" class="day09.Member" />
 <jsp:setProperty property="*" name="user" />
 
 <%
 	// 로그인에 성공한 객체를 반환하도록 만들자
 	// boolean 만 반환하면, 성공 실패는 판별할 수 있으나, 어느 계정인지 확인할 수 없다
 	Member login = null;
 	for(Member m : list) {
 		if(m.getUserid().equals(user.getUserid())) {
 			if(m.getUserpw().equals(user.getUserpw())) { 				
 				login = m;
 				session.setAttribute("login", login);
 				break;
 			}
 		}
 	} 	
 %>
 
 <% 
 	if(login != null && request.getParameter("autologin") != null) {
//  		Cookie cookie = new Cookie("JSESSIONID", login.getUserid());
 		Cookie cookie = new Cookie("JSESSIONID", session.getId());
 		cookie.setMaxAge(60 * 60 * 24);
 		response.addCookie(cookie);
 	} 	
 %>
 
 <%
 	if(login != null) {  		
 		response.sendRedirect("ex02-main.jsp");
 	}
 	else {
 		response.sendRedirect("ex02-form.jsp");
 	}
 %>

</body>
</html>