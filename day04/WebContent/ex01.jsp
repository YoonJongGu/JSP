<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>

<h1>response</h1>
<hr>

<%
	// response의 응답 코드를 404로 설정한다
// 	response.setStatus(404);
// 	response.sendError(405);
	
	// 1) HTTP 응답 코드 (정상 혹은 에러)
	// 2) response body (html 코드)

	// 만약 응답 코드가 300번 대 이면, redirect 형식으로
	// 브라우저에게 다른 주소를 요청하도록 지시할 수 있다
	
// 	리다이렉트의 주소가 상대경로로 작성되면, 현재 서버 내의 다른 문서를 요청하게 된다
// 	response.sendRedirect("ex02.jsp");
	
// 	리다이렉트의 주소가 절대경로로 작성되면, 다른 서버, 다른 도메인의 문서도 요청할 수 있다
	response.sendRedirect("https://www.naver.com");

// 	이미 다른 응답이 컨펌되었다면, 응답에 다른 작업을 수행할 수 없다
//	= 이중으로 응답을 전송할 수 없다
%>

</body>
</html>