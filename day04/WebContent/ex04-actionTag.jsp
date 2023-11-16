<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	ex04-actionTag.jsp
 --%>

<jsp:include page="ex04-header.jsp" />

<h3>actionTag를 이용한 include입니다</h3>
<%
	String name = "actionTag에서 새로 만든 name";
%>
<marquee><%=name %></marquee>

</body>
</html>