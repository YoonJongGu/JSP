<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04-form.jsp</title>
</head>
<body>

<h1>jsp:useBean (액션태그)</h1>
<hr>

<form action="ex04-result.jsp">
	<p><input type="text" name="name" placeholder="메뉴 이름" required autofocus></p>
	<p><input type="number" name="price" placeholder="메뉴 가격" required></p>
	<p><input type="submit"></p>
</form>

</body>
</html>