<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-result.jsp</title>
</head>
<body>

<h1>결과 페이지</h1>
<hr>

<h3>당신이 입력한 값 : ${user }</h3>
<%-- <h3>정답 : ${answer }</h3> --%>
<h3>결과 : ${msg }</h3>
<h3>${msg == '정답입니다' ? count : ''}${msg == '정답입니다' ? '번 만에 성공' : '' }</h3>

<a href="ex02-form.jsp"><button>다시 입력하기</button></a>


</body>
</html>