<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01-form.jsp</title>
</head>
<body>

<h1>가위바위보</h1>
<hr>

<form action="ex01-action.jsp" method="POST">
	<label><input type="radio" name="user" value="2">가위</label>
	<label><input type="radio" name="user" value="0">바위</label>
	<label><input type="radio" name="user" value="1">보</label>
	<input type="submit" value="확인">
</form>

</body>
</html>