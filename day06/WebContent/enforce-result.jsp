<%@page import="day06.Weapon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>결과</h1>
<hr>
<%	
	Weapon wp = (Weapon)application.getAttribute("weapon");
	if(wp.getMoney() < wp.getLevel() * wp.getLevel() * 100 || wp.getGoods() < wp.getLevel() * wp.getLevel() * 10) {
		application.removeAttribute("weapon");
%>
	<h3>무기 레벨 : ${level }</h3>
	<h3>자원이 부족합니다</h3>	
	<a href="enforce-form.jsp"><button>돌아가기</button></a>	
<%		
	}
%>

<%
	if(wp.getMoney() >= wp.getLevel() * wp.getLevel() * 100 && wp.getGoods() >= wp.getLevel() * wp.getLevel() * 10) {
%>
	<h3>현재 레벨 : ${level }</h3>
	<h3>다음 레벨 : ${level + 1 }</h3>
	<h3>보유 금액 : ${money }</h3>
	<h3>보유 자원 : ${goods }</h3>
	<h3>성공 여부 : ${result }</h3>
	
	<a href="enforce-action.jsp"><button>강화</button></a>
<% } %>

</body>
</html>