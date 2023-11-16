<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<%
	String userid = request.getParameter("userid");
	Member m = handler.find(userid);
%>

<section>
	<h3>회원 정보 수정</h3>
	
	<form action="update-result.jsp" method="post">
		<p><%=userid %></p>
		<p><input type="hidden" name="userid" value="<%=m.getUserid() %>" required></p>
		<p><input type="password" name="userpw" placeholder="<%=m.getUserpw() %>" required></p>
		<p><input type="text" name="username" placeholder="<%=m.getUsername() %>" required></p>		
		<p><input type="number" name="age" placeholder="<%=m.getAge() %>" required></p>
		<p><input type="submit" value="수정"></p>
	</form>
</section>
</body>
</html>