<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-action.jsp</title>
</head>
<body>

<%@ page import="day06.UpDown" %>
<%	
	
	UpDown ud = (UpDown)application.getAttribute("updown");
	if(ud == null || ud.isEnd()) {
		ud = new UpDown();		
		application.setAttribute("updown", ud);
	}
	int user = Integer.parseInt(request.getParameter("user"));
	String msg = ud.check(ud.getAnswer(), user);
	
	request.setAttribute("user", user);
	request.setAttribute("answer", ud.getAnswer());
	request.setAttribute("msg", msg);
	request.setAttribute("count", ud.getCount());
	
	request.getRequestDispatcher("ex02-result.jsp").forward(request, response);		
%>

</body>
</html>