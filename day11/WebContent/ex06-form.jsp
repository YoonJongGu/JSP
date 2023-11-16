<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex06-form.jsp</title>
</head>
<body>

<h1>c:if 사용 연습</h1>
<hr>

<form action="ex06-action.jsp">
	<p><input type="text" name="name" placeholder="이름" required autofocus></p>
	<p><input type="number" name="age" placeholder="나이" min="0" max="150" required></p>
	<p><input type="submit"></p>
</form>

</body>
</html>