<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03-result.jsp</title>
</head>
<body>

<h1>ex03-result.jsp</h1>
<hr>

<h3><marquee><%=request.getAttribute("msg") %></marquee></h3>

<h3><marquee>${msg }</marquee></h3>

</body>
</html>