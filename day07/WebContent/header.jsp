<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="day07.*, java.util.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	pageContext.setAttribute("cpath", request.getContextPath());
	
	MemberHandler memberhandler = (MemberHandler)application.getAttribute("memberhandler");	
	if(memberhandler == null) {
		memberhandler = new MemberHandler();
		application.setAttribute("memberhandler", memberhandler);
	}
%>
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
	a:hover {
		text-decoration: underline;
	}
	main {
		display: flex;
		width: 1000px;
		margin: auto
	}
	main > nav {
		background-color: lightgrey;
		width: 20%;
	}
	section {
		padding: 10px;
	}
	ul {
		list-style: none;
	}
</style>
</head>
<body>

<header>
	<h1><a href="${cpath }">회원관리</a></h1>
	
	<div align="right">
		<h4>${not empty login ? login.username : null }</h4>
	</div>
	
	<hr>
</header>

<main>	
	<nav>
		<ul>
			<li><a href="${cpath }/list.jsp">회원목록 / 검색</a></li>
			
			<li><a href="${cpath }/${empty login ? 'login.jsp' : 'logout.jsp' }">
			
				${empty login ? '로그인' : '로그아웃' }</a></li>
				
			<li><a href="${cpath }/join.jsp">회원가입</a></li>
			<li><a href="${cpath }/mypage.jsp">마이페이지</a></li>
		</ul>
	</nav>
	