<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz-result.jsp</title>
</head>
<body>
<%--
	quiz-form.jsp에서 넘어온
	파라미터를 <table>태그를 이용하여 각각 출력
 --%>
 
 <%
 	String id = request.getParameter("id");
 	String pw = request.getParameter("pw");
 	String name = request.getParameter("name");
 	String birth = request.getParameter("year") + "-" + request.getParameter("month") + "-" + request.getParameter("day");
 	String gender = request.getParameter("gender");
 	String email = request.getParameter("email"); 	
 	String phone = request.getParameter("phone2");
 %>
 
 <h1>회원정보</h1>
 
 <table border="1" cellpadding="10" cellspacing="0">
	<tr>
		<th>아이디</th>
		<td><%=id %></td>
	</tr>
	<tr>
		<th>패스워드</th>
		<td><%=pw %></td>
	</tr>
	<tr>
		<th>이름</th>
		<td><%=name %></td>
	</tr>
	<tr>
		<th>생년월일</th>
		<td><%=birth %></td>
	</tr>
	<tr>
		<th>성별</th>
		<td><%=gender %></td>
	</tr>
	<tr>
		<th>이메일</th>
		<td><%=email %></td>
	</tr>
	<tr>
		<th>전화번호</th>
		<td><%=phone %></td>
	</tr>
</table>

</body>
</html>