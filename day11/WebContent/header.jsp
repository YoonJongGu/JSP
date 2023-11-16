<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="product.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String method = request.getMethod();
	pageContext.setAttribute("method", method);
%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<%-- pageContext는 다른 내장객체에 접근하는 출발점 역할을 한다 --%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>header.jsp</title>
<style>
	a {
		text-decoration: none;			
	}
	h1 {
		background-color: #dadada;
		padding: 50px;
	}
	h1 > a {
		color: black;
	}
	nav {
		background-color: black;
		width: 1000px;
		margin: auto;
		padding: 30px;
	}
	nav > ul {
		display: flex;
		justify-content: space-around;
		list-style: none;		
	}
	nav > ul > li > a {
		color: white;
		font-size: 20px;
		font-weight: bold;
	}
	section {
		text-align: center;
	}
	table {
		border: 2px solid black;
		border-collapse: collapse;
		margin: 30px auto;
	}
	td, th {
		padding: 10px 20px;
		border: 1px solid grey;
	}
</style>
</head>
<body>

<header>
	<h1><a href="${cpath }/">product CRUD</a></h1><%-- index.jsp --%>
	<nav>
		<ul>
			<li><a href="${cpath }/list.jsp">목록</a></li>
			<li><a href="${cpath }/add.jsp">추가</a></li>
			<li><a href="${cpath }/modify.jsp">수정</a></li>
			<li><a href="${cpath }/delete.jsp">삭제</a></li>			
		</ul>
	</nav>
</header>