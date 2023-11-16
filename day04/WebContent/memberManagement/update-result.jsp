<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<jsp:useBean id="user" class="memberManagement.Member" />
<jsp:setProperty property="*" name="user" />

<%	
	handler.update(user);
	response.sendRedirect(cpath + "/memberManagement/list.jsp");
%>

</body>
</html>