<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>

<h1>session</h1>
<hr>

<h3>클라이언트 마다 서로 다른 정보를 저장할 수 있는 서버 저장소</h3>
<h3>서버에 접속한 클라이언트의 수 만큼 세션을 생성해야 할 수도 있다</h3>
<h3>세션에 유효시간을 설정하여 일정 시간 이후 자동으로 로그아웃을 구현할 수 있다</h3>
<h3>서버에는 다수의 세션이 있어서, 이를 구분하기 위한 id가 있다</h3>

<hr>

<h3>1) 세션 ID : <%=session.getId() %></h3>
<h3>2) 쿠키에 저장된 세션 ID : ${cookie.JSESSIONID.value }</h3>
<h3>3) 세션 생성 시간 : <%=session.getCreationTime() %></h3>
<h3>4 )세션 마지막 사용 시간 : <%=session.getLastAccessedTime() %></h3>
<h3>4 - 3) <%=(session.getLastAccessedTime() - session.getCreationTime()) / 1000 %></h3>
<h3>세션 최대 유지 시간 : <%=session.getMaxInactiveInterval() %></h3>

<%
	Cookie cookie = new Cookie("JSESSIONID", session.getId());
	cookie.setMaxAge(60);
	response.addCookie(cookie);
%>

<a href="ex01-invalidate.jsp"><button>세션 제거 (로그아웃)</button></a>
</body>
</html>