<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-action.jsp</title>
</head>
<body>


<h1>쿠키 만들기 연습</h1>
<hr>

<h3>입력한 문자열은 ${param.comment } 입니다</h3>
<%
	String comment = request.getParameter("comment");

	// 1) 문자열 값을 이용하여 쿠키를 생성
	// 이때, 생성자에는 쿠키이름과 쿠키값을 차례대로 전달한다
	Cookie cookie = new Cookie("comment", comment);
	
	// 2) 쿠키는 임시 데이터이므로, 영원히 저장될 수 없다
	// 유효시간이 지나면 소멸하게 되어있고, 유효시간의 기본값은 0이다
	// 따라서 반드시, 유효시간을 지정해줘야 한다
	cookie.setMaxAge(60 * 60 * 24);
	
	// 3) 쿠키는 클라이언트에서 저장해야 한다
	// 서버가 클라이언트에게 보내는 response에 적재해두면
	// 클라이언트가 받아서, 쿠키를 보관할 것이다
	// 이후, 다음 요청 시에 쿠키를 지참하여 다시 요청을 보낸다
	response.addCookie(cookie);	
%>
<p>
	<a href="ex02-form.jsp"><button>돌아가기</button></a>
</p>

</body>
</html>