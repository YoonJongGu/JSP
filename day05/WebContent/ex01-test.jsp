<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01-test.jsp</title>
</head>
<body>

<h1>이전 페이지에서 설정한 attribute 확인</h1>
<hr>

<h3>t1 : <%=pageContext.getAttribute("t1") %></h3>
<h3>t2 : <%=request.getAttribute("t2") %></h3>
<h3>t3 : <%=session.getAttribute("t3") %></h3>
<h3>t4 : <%=application.getAttribute("t4") %></h3>
<hr>
<h3>t1 : ${t1 }</h3>
<h3>t2 : ${t2 }</h3>
<h3>t3 : ${t3 }</h3>
<h3>t4 : ${t4 }</h3>

</body>
</html>