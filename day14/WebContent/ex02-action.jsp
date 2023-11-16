<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ex02.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-action.jsp</title>
</head>
<body>

<jsp:useBean id="fileUtil" class="ex02.FileUtil" scope="application" />

<c:set var="dto" value="${fileUtil.getDTO(pageContext.request) }" />

<h3>${dto.uploadFile }</h3>
<c:redirect url="ex02-form.jsp" />

</body>
</html>