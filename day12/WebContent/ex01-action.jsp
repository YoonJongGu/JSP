<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01-action.jsp</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="dao" class="member2.MemberDAO" />

<jsp:useBean id="user" class="member2.MemberDTO" />
<jsp:setProperty property="*" name="user" />

<c:set var="row" value="${dao.insert(user) }" />

<h3>${row != 0 ? '성공' : '실패' }</h3>

</body>
</html>