<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<jsp:useBean id="user" class="memberManagement.Member" />
<jsp:setProperty property="*" name="user" />

<%
	int row = handler.insert(user);
	String url = (row == 1) ? "list.jsp" : "add.jsp?false=duplicate";
	response.sendRedirect(cpath + "/memberManagement/" + url);
%>

</body>
</html>