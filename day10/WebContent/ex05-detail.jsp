<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05-detail.jsp</title>
</head>
<body>

<h1>${param.idx }번 상품 상세보기</h1>
<hr>

<jsp:useBean id="dao" class="product.ProductDAO" />
<c:set var="pd" value="${dao.selectOne(param.idx) }" />

<div class="item">
	<div class="img">			
		<img src="img/${pd.imgPath }" width="500">
	</div>
	<div class="name">${pd.name }</div>
	<div class="price">${pd.price }원</div>
</div>

</body>
</html>