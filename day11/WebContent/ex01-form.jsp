<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01-form.jsp</title>
</head>
<body>

<h1>Product 테이블 데이터 추가하기</h1>
<hr>

<form method="POST" action="ex01-action.jsp">
	<p><input type="number" name="idx" placeholder="idx"></p>
	<p><input type="text" name="name" placeholder="name"></p>
	<p><input type="number" name="price" placeholder="price"></p>
	<p><input type="text" name="imgPath" placeholder="imgPath"></p>	
	<p><input type="submit" value="추가"></p>
</form>

</body>
</html>