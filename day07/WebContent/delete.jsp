<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<section>
	${memberhandler.delete(login.userid) }
	<%
		response.sendRedirect(request.getContextPath() + "/logout.jsp");
	%>
</section>
</main>
</body>
</html>