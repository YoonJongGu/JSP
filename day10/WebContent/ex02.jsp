<%@page import="day10.Student1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="day10.Student1DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
<style>
	table {
		border-collapse: collapse;
		border: 2px solid black;		
	}
	thead th {
		background-color: #dadada;
	}
	td, th {
		padding: 10px 20px;
		border: 1px solid grey;
	}
</style>
</head>
<body>

<h1>자바 객체를 이용하여 데이터를 불러오기</h1>
<hr>

<table>
	<thead>
		<tr>
			<th>NAME</th>
			<th>KOR</th>
			<th>ENG</th>
			<th>MAT</th>
		</tr>
	</thead>
	<tbody>
		<%
			Student1DAO dao = new Student1DAO();
			ArrayList<Student1> list = dao.selectList();
			
			for(Student1 st : list) {
				%>
				<tr>
					<td><%=st.getName() %></td>
					<td><%=st.getKor() %></td>
					<td><%=st.getEng() %></td>
					<td><%=st.getMat() %></td>
				</tr>
				<%				
			}
		%>
	</tbody>
</table>

</body>
</html>