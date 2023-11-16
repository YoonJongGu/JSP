<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>

<jsp:useBean id="dao" class="test.TestDAO" />

<h1>ConnectionPool Test(1)</h1>
<hr>

<h3>접속한 DB version : ${dao.getVersion() }</h3>
<h3>오늘 날짜 : ${dao.getSysDate() }</h3>

</body>
</html>