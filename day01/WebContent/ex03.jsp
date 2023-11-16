<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03.jsp</title>
</head>
<body>

<h1>JSP에서 사용자의 입력 받기</h1>
<hr>

<form>
	<p>
		<input type="text" name="name" placeholder="이름을 입력하세요">
	</p>
	<p>
		<input type="number" name="age" placeholder="나이를 입력하세요">
	</p>
	<p>
		<input type="submit" value="제출">
		<!-- <a> 태그와 마찬가지로, 새로운 요청을 만들어내는 태그이다 -->
		<!-- <form>태그 내부 input요소들을 지정한 페이지로 보내면서 요청한다 -->
	</p>
</form>

<%
	String name = request.getParameter("name");	// <input name="name">
	String age = request.getParameter("age");	// <input name="age">
	
	if(name != null && age != null) {
		String text = "%s님의 나이는 %s살 입니다";
		text = String.format(text, name, age);
		out.print("<h3>" + text + "</h3>");
	}
%>



</body>
</html>