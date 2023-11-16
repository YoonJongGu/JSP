<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>enforce-form.jsp</title>
</head>
<body>

<h1>무기 강화</h1>
<hr>

<form action="enforce-action.jsp">
	<p><input type="text" name="money" placeholder="보유 금액" required></p>
	<p><input type="text" name="goods" placeholder="보유 자원" required></p>
	<input type="submit" value="강화">
</form>

</body>
</html>