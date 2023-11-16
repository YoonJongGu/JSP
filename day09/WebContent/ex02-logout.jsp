<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-logout.jsp</title>
</head>
<body>

<%--
		main에서 로그아웃 버튼을 통해 로그아웃으로 이동
		현재 세션을 무효화시키고, 다시 로그인 페이지(form)로 이동
 --%>
 
 <%
 	session.invalidate();
 	response.sendRedirect("ex02-form.jsp");
 %>

</body>
</html>