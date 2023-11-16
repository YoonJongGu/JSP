<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-form.jsp</title>
</head>
<body>

<h1>UpDown Game</h1>
<hr>

<form action="ex02-action.jsp">
	<h3>1에서 100까지의 숫자 중 원하는 숫자 입력</h3>
	<p><input type="text" name="user" required></p>
	<input type="submit" value="확인">
</form>

</body>
</html>