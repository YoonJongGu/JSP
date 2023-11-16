<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add.jsp</title>
<style>
	table {
		border-collapse: collapse;		
	}
	td, th {
		border: 1px solid black;
		padding: 5px 10px;
	}
	a {
		text-decoration: none;
		color: inherit;
	}
</style>
</head>
<body>

<h1>도서 관리 프로그램 (GUI, Web)</h1>
<hr>

<nav>
	<ul>
		<li><a href="index.jsp">목록</a></li>
		<li><a href="add.jsp">추가</a></li>
		<li><a href="delete.jsp">삭제</a></li>
	</ul>
</nav>

<form method="post" action="add-result.jsp">
	<p><input type="text" name="name" placeholder="도서 이름" required autofocus></p>
	<p><input type="number" name="price" placeholder="가격" required></p>
	<p><input type="text" name="author" placeholder="저자" required></p>
	<p><input type="text" name="publisher" placeholder="출판사" required></p>
	<p><input type="submit" value="등록"></p>
</form>

</body>
</html>