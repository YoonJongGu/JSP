<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="food.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	pageContext.setAttribute("cpath", request.getContextPath());
	
	Handler hd = (Handler)application.getAttribute("handler");
	if(hd == null) {
		hd = new Handler();
		application.setAttribute("handler", hd);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header.jsp</title>
<style>
	header, nav, main, aside, section {
		margin: 0;
		padding: 0;
	}
	header {
/* 		background-color: salmon; */
	}
	main {
		display: flex;
		width: 900px;
		margin: auto;	
	}
	aside {
		width: 20%;		
		background-color: lightgoldenrodyellow;
	}
	section {
		width: 80%;
/* 		background-color: skyblue; */
	}
	a {
		text-decoration: none;
		color: inherit;
	}
	a:hover {
		text-decoration: underline;
	}
	h1, h2, h3, h4, h5, h6 {
		margin: 0;
		padding: 0;
	}
	
	table {
		border-collapse: collapse;
/* 		width: 600px; */
		margin: 20px auto;
	}
	thead th {
		background-color: black;
		color: white;
		padding: 5px 10px;
	}
	tbody td {
		padding: 5px 10px;
	}
	tbody td:first-child {
		text-align: center;
	}
	tbody > tr:hover {
		background-color: #f5f6f7;
		cursor: pointer;
	}
	tbody > tr > td:nth-child(5),
	tbody > tr > td:nth-child(6) {
/* 		display: none; */
		visibility: hidden;
	}
	tbody > tr:hover > td:nth-child(5),
	tbody > tr:hover > td:nth-child(6) {
		visibility: visible;
	}
</style>
</head>
<body>

<header>
	<h1><a href="${cpath }">나만의 배달 목록</a></h1>
</header>

<main>
	<aside>
		측면
		<nav>
			<ul>
				<li><a href="${cpath }/list.jsp">목록</a></li>
				<li><a href="${cpath }/add.jsp">추가</a></li>
			</ul>
		</nav>
	</aside>