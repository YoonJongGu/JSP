<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03-form.jsp</title>
</head>
<body>

<h1>데이터 데이터 수정하기 (2)</h1>
<hr>

<jsp:useBean id="dao" class="product.ProductDAO" />
<c:set var="dto" value="${dao.selectOne(param.idx) }" />

<form method="POST" action="ex03-action.jsp">
	<p><input type="number" name="idx" value="${dto.idx }" readonly></p>
	<p><input type="text" name="name" value="${dto.name }"></p>
	<p><input type="number" name="price" value="${dto.price }"></p>
	<p><input type="text" name="imgPath" value="${dto.imgPath }"></p>
	<p><input type="submit" value="수정"></p>
</form>

</body>
</html>