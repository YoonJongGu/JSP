<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="restaurant.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<c:set var="method" value="${pageContext.request.method }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header.jsp</title>
<style>
	a {
		text-decoration: none;
		color: black;
	}
	h1 {
		background-color: #dadada;
		padding: 50px 0px;
		text-align: center;
	}
	nav {
		display: flex;
		justify-content: space-around;
		width: 1500px;
		margin: auto;
		background-color: grey;
		padding: 30px;
	}
	nav > div > a {
		color: white;
		font-weight: bold;
		font-size: 20px;
	}
	section {		
		text-align: center;
		width: 1500px;
		margin: 30px auto;
	}
	table {
		border-collapse: collapse;
		border: 2px solid black;
		margin: 20px auto;
	}
	td, th {
		padding: 10px 20px;
		border: 1px solid grey;	
	}
	table > thead > tr > th:nth-child(8),
	table > thead > tr > th:nth-child(9) {
				
	}	
	table > tbody > tr > td:nth-child(8),
	table > tbody > tr > td:nth-child(9) {
		
	}
	table > tbody > tr:hover > td:nth-child(8),
	table > tbody > tr:hover > td:nth-child(9) {		
		
	}
</style>
</head>
<body>

<header>
	<h1><a href="${cpath }/">나만의 맛집</a></h1>
	<nav>
		<div><a href="${cpath }/list.jsp">목록</a></div>
		<div><a href="${cpath }/add.jsp">추가</a></div>	
	</nav>
</header>