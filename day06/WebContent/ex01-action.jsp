<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01-action.jsp</title>
</head>
<body>

<%@ page import="day06.RSP" %>
<%	
	RSP rsp = new RSP();

	int num = Integer.parseInt(request.getParameter("user"));	
	String user = rsp.getHumValue(num);
	
	String cpu = rsp.getCPUValue();
	
	String msg = rsp.getResult(cpu, user);
	
	request.setAttribute("cpu", cpu);
	request.setAttribute("user", user);
	request.setAttribute("msg", msg);
	
	request.getRequestDispatcher("ex01-result.jsp").forward(request, response);
%>

</body>
</html>