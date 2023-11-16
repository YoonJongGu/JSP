<%@page import="day03.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page import="day03.Handler"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<style>
	table {
		border-collapse: collapse;		
	}
	td, th {
		border: 1px solid black;
		padding: 5px 10px;
	}
	a {
		text-decoration: none;
		color: inherit;
	}
</style>
</head>
<body>

<h1>도서 관리 프로그램 (GUI, Web)</h1>
<hr>

<%
// 	Handler hd = new Handler();
// 	ArrayList<Book> list = hd.getList();
	
	Handler hd = (Handler)application.getAttribute("handler");
	if(hd == null) {		// 없으면
		hd = new Handler();	// 새로 생성하여
	}	
	application.setAttribute("handler", hd);	// application에 넣어둔다
	
	ArrayList<Book> list = hd.getList();
%>

<nav>
	<ul>
		<li><a href="index.jsp">목록</a></li>
		<li><a href="add.jsp">추가</a></li>
		<li><a href="delete.jsp">삭제</a></li>
	</ul>
</nav>

<table>
	<tr>
		<th>등록번호</th>
		<th>도서명</th>
		<th>가격</th>
		<th>저자</th>
		<th>출판사</th>
	</tr>
	<% for(int i = 0; i < list.size(); i++) { %>
	<tr>
		<td><%=list.get(i).getIdx() %></td>
		<td><%=list.get(i).getName() %></td>
		<td><%=list.get(i).getPrice() %></td>
		<td><%=list.get(i).getAuthor() %></td>
		<td><%=list.get(i).getPublisher() %></td>
	</tr>
	<% } %>
</table>

</body>
</html>