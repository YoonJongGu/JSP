<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03-delete.jsp</title>
</head>
<body>

<%
	Cookie cookie = new Cookie("recent", null);
	
	cookie.setMaxAge(0);
	
	response.addCookie(cookie);
	
	response.sendRedirect("ex03.jsp");
%>

</body>
</html>