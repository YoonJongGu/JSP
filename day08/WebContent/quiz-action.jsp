<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz-action.jsp</title>
</head>
<body>
<%@ page import="day08.Member, java.util.*" %>
<%	
	request.setCharacterEncoding("UTF-8");
	ArrayList<Member> list = new ArrayList<Member>();	
	list.add(new Member("test", "123"));
	list.add(new Member("root", "1"));
	list.add(new Member("admin", "1234"));	
%>
<jsp:useBean id="user" class="day08.Member" />
<jsp:setProperty property="*" name="user" />
<%
	String storeid = request.getParameter("storeid");	
	boolean login = false;
	for(Member m : list) {
		if(m.getUserid().equals(user.getUserid())) {
			if(m.getUserpw().equals(user.getUserpw())) {
				login = true;
				break;
			}
		}
	}
	Cookie cookie = new Cookie("userid", user.getUserid());
	if(login == true && storeid != null) {
		cookie.setMaxAge(60 * 10);				
	}
	else {
		cookie.setMaxAge(0);
	}
	response.addCookie(cookie);
%>
<%
	if(login == true) {
		%>
		<h3>로그인 성공</h3>
		<a href="quiz-form.jsp"><button>홈 화면으로</button></a>
		<%
	}
	else {
		%>
		<h3>로그인 실패</h3>
		<a href="quiz-form.jsp"><button>홈 화면으로</button></a>
		<%
	}	
	
%>
</body>
</html>