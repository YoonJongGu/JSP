<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>enforce-action.jsp</title>
</head>
<body>

<%@ page import="day06.Weapon" %>
<%
	Weapon wp = (Weapon)application.getAttribute("weapon");
	if(wp == null) {
		wp = new Weapon();
		wp.setMoney(Integer.parseInt(request.getParameter("money")));
		wp.setGoods(Integer.parseInt(request.getParameter("goods")));
		application.setAttribute("weapon", wp);	
	}	
	
	String result = wp.doEnforce();
	int level = wp.getLevel();
	int money = wp.getMoney();
	int goods = wp.getGoods();
	
	request.setAttribute("result", result);
	request.setAttribute("level", level);
	request.setAttribute("money", money);
	request.setAttribute("goods", goods);
	
	request.getRequestDispatcher("enforce-result.jsp").forward(request, response);
%>

</body>
</html>