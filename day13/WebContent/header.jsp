<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member2.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<c:set var="dao" value="${MemberDAO.getInstance() }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
<style>
	table {
		border-collapse: collapse;
		border: 2px solid black;
		margin: auto;
	} 
	td, th {
		border: 1px solid grey;
		padding: 10px 20px;
		text-align: center;
	}
</style>
</head>
<body>

<header>
	<h1><a href="${cpath }/list.jsp">회원 목록</a></h1>
	<hr>
</header>