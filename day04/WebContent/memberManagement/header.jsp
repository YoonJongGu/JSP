<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="memberManagement.*" %>
<% 
	request.setCharacterEncoding("UTF-8");
	String cpath = request.getContextPath();
	// 문서 최상위 경로 (WebContent)에 접근할 수 있는 주소
	
	Handler handler = (Handler)application.getAttribute("handler");
	if(handler == null) {
		handler = new Handler();
		application.setAttribute("handler", handler);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberManagement</title>
<style>
	body {
		margin: 0;
		padding: 0;
	}
	a {
		text-decoration: none;
		color: inherit;
	}
	a:hover {
		text-decoration: underline;
	}
	header {
		background-color: #f5f6f7;
		padding: 20px;	
	}
	h1 {
		margin: 0;
		text-align: center;
	}
	nav {		
		width: 900px;
		margin: 20px auto;
	}
	nav > ul {
		display: flex;
		width: 100%;
		justify-content: space-around;
		list-style: none;
		padding: 0;
	}
	nav > ul > li {
		font-size: 20px;
		font-weight: bold;
	}
	section {
		width: 900px;
		margin: 0 auto;
		padding: 20px;		
	}
	table {
		border-collapse: collapse;
		width: 800px;
		margin: 20px auto;
	}
	th, td {
		padding: 5px 10px;
		border: 1px solid black;
	}
	button {
		display: block;
		margin: auto;
	}
	
	.false {
		border: 2px solid red;
	}
</style>
</head>
<body>

<header>
	<h1><a href="<%=cpath %>/memberManagement/">memberManagement</a></h1>
	
	<nav>
		<ul>
			<li><a href="<%=cpath %>/memberManagement/list.jsp">목록</a></li>
			<li><a href="<%=cpath %>/memberManagement/add.jsp">추가</a></li>
			<li><a href="<%=cpath %>/memberManagement/delete.jsp">삭제</a></li>			
			<li><a href="<%=cpath %>/memberManagement/update.jsp">수정</a></li>			
		</ul>
	</nav>
</header>
