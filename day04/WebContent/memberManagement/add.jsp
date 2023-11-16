<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>
	<h3>회원 추가</h3>
	
	<form action="add-action.jsp" method="post">
		<p>
			<input class="<%=request.getParameter("false") != null ? "false" : "" %>"
				   type="text" name="userid" placeholder="ID" required>
		</p>
		<p><input type="password" name="userpw" placeholder="Password" required></p>
		<p><input type="text" name="username" placeholder="Name" required></p>
		<p><input type="number" name="age" placeholder="Age" required></p>
		<p><input type="submit" value="가입신청"></p>
	</form>
</section>

</body>
</html>