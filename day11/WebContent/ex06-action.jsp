<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex06-action.jsp</title>
</head>
<body>

<c:if test="${empty param.name or empty param.age }">
	<c:redirect url="ex06-form.jsp" />
</c:if>

<c:if test="${param.age >= 20 }">
	<c:set var="adult" value="성인" />
</c:if>

<c:if test="${param.age < 20 }">
	<c:set var="adult" value="미성년자"></c:set>
</c:if>

<h3>${param.name }의 나이는 ${param.age }살이고, ${adult }입니다</h3>

</body>
</html>