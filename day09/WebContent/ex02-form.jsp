<%@page import="day09.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-form.jsp</title>
</head>
<body>

<%
	// 쿠키를 이용하여 이전에 사용했던 세션을 불러오는 과정 (deprecated)
	Cookie[] cookies = request.getCookies();
	for(int i = 0; cookies != null && i < cookies.length; i++) {
		Cookie cookie = cookies[i];
		if(cookie.getName().equals("JSESSIONID")) {
			System.out.println("1)" + session.getId());
			System.out.println("2)" + cookie.getValue());
// 			session = session.getSessionContext().getSession(cookie.getValue());
// 			System.out.println("2)" + session.getId());
		}
	}
	HttpSession newSession = request.getSession();
	/*
		Returns the current session associated with this 
 		request, or if the request does not have a session, creates one.
	*/
	System.out.println();
%>

<%
	Member login = (Member)session.getAttribute("login");
	// 만약 세션쿠키가 있고, 아이디가 일치하는 세션이 서버에 남아있다면
	// 자동으로 해당 세션을 불러온 상태이다
	if(login != null) {
		response.sendRedirect("ex02-main.jsp");
		return;	// 현재 실행중인 함수를 종료하는 제어문
				// 스크립틀릿은 서블릿의 service() 메서드 내부이기 때문에 사용 가능
	}
%>

<h1>세션쿠키를 활용한 자동 로그인</h1>
<hr>

<form method="POST" action="ex02-action.jsp">
	<p><input type="text" name="userid" placeholder="ID" required autofocus></p>
	<p><input type="password" name="userpw" placeholder="Password" required></p>
	<p>
		<label>
			<input type="checkbox" name="autologin">자동 로그인
		</label>
	</p>
	<p><input type="submit" value="로그인"></p>
</form>

</body>
</html>