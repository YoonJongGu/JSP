<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-delete-cookie.jsp</title>
</head>
<body>

<%
	// 삭제하려면 쿠키와 같은 이름으로 쿠키 객체를 생성
	Cookie cookie = new Cookie("comment", null);

	//쿠키의 유효시간을 0으로 설정하면 해당 쿠키가 삭제된다
	cookie.setMaxAge(0);
	
	// 설정한 쿠키를 반드시 response에 추가해야 한다
	response.addCookie(cookie);
	
	// 다시 원래 페이지로 이동 (클라이언트가 새로운 요청을 보낼 때 적용된다)
	response.sendRedirect("ex02-form.jsp");
%>

</body>
</html>