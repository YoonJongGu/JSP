<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01-insert-form.jsp</title>
</head>
<body>

<h1>member2 추가하기</h1>
<hr>

<form method="POST" action="ex01-action.jsp">
	<p><input type="text" name="userid" placeholder="ID"></p>
	<p><input type="password" name="userpw" placeholder="Password"></p>
	<p><input type="text" name="username" placeholder="Name"></p>
	<p>
		<label><input type="radio" name="gender" value="남성">남성</label>
		<label><input type="radio" name="gender" value="여성">여성</label>
	</p>
	<p><input type="submit"></p>
</form>

</body>
</html>