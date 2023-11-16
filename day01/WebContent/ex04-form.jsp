<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04-form</title>
</head>
<body>

<h1>사용자 입력받기 (ex04-form)</h1>
<hr>

<!-- form의 내용을 묶어서 ex04-result.jsp 에게 보낸다 -->

<form action="ex04-result.jsp">
	<p><input type="text" name="name" placeholder="이름" required autocomplete="off"></p>
	<p><input type="number" name="age" placeholder="나이" required autocomplete="off"></p>
	<p><input type="submit"></p>
</form>

</body>
</html>