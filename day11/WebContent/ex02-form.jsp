<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-form.jsp</title>
</head>
<body>

<h1>정수를 전달받아서, 특정 레코드 삭제하기</h1>
<hr>

<form action="ex02-action.jsp">
	<p><input type="number" name="idx" placeholder="idx"></p>
	<p><input type="submit" value="삭제"></p>	
</form>

</body>
</html>