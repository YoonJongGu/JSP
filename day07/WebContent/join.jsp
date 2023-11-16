<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>
	<% if(request.getMethod().equals("GET")) { %>
	<form method="POST">
		<p><input type="text" name="userid" placeholder="ID" autofocus required></p>
		<p><input type="password" name="userpw" placeholder="Password" required></p>
		<p><input type="text" name="username" placeholder="이름" required></p>
		<p><input type="number" name="age" placeholder="나이" required></p>
		<p><input type="date" name="birth" placeholder="생년월일(yyyy-MM-dd)" required></p>
		<p><input type="submit" value="가입"></p>
	</form>
	<% } %>
	<% if(request.getMethod().equals("POST")) { %>
	<jsp:useBean id="user" class="day07.Member" />
	<jsp:setProperty property="*" name="user" />
		<%			
			if(memberhandler.insert(user) == 1) {
				response.sendRedirect("list.jsp");
			}
			if(memberhandler.insert(user) == 0) {
		%>
			<h3>가입 실패</h3>
			<p><a href="join.jsp"><button>돌아가기</button></a></p>
		<% } %>
	<% } %>
</section>
</main>
</body>
</html>