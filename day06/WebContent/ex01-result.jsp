<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01-result.jsp</title>
</head>
<body>

<h1>가위 바위 보 결과</h1>
<hr>

<h3>당신이 선택한 값 : ${user }</h3>
<h3>컴퓨터가 선택한 값 : ${cpu }</h3>
<h3>${msg }</h3>

<a href="ex01-form.jsp"><button>한판 더 하기 !!</button></a>

</body>
</html>