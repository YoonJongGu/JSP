<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05.jsp</title>
<style>
	div.wrap {
		width: 900px;
		display: flex;
		flex-flow: wrap;
	}
	div.item {
		width: 200px;
		display: flex;
		flex-flow: column;
		margin: 10px;
		padding: 10px;
		border: 1px solid #dadada;
		cursor: pointer;
		text-align: center;
	}
	div.item:hover {
		background-color: #f5f6f7; 
	}
</style>
</head>
<body>

<h1>상품 목록</h1>
<hr>

<jsp:useBean id="dao" class="product.ProductDAO" />

<div class="wrap">
	<c:forEach var="pd" items="${dao.selectList() }">
	<div class="item">
		<div class="img">
			<a href="ex05-detail.jsp?idx=${pd.idx }" title="상세보기">
			<img src="img/${pd.imgPath }" width="150"></a>
		</div>
		<div class="name">${pd.name }</div>
		<div class="price">${pd.price }원</div>
	</div>
	</c:forEach>
</div>

</body>
</html>