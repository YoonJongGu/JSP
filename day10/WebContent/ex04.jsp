<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04.jsp</title>
<style>
	table {
		border-collapse: collapse;
		border: 2px solid black;		
	}
	thead th {
		background-color: #dadada;
	}
	td, th {
		padding: 10px 20px;
		border: 1px solid grey;
	}
</style>
</head>
<body>

<h1>상품 목록</h1>
<hr>

<form>
	<p>
		<input type="search" name="keyword" placeholder="검색" autocomplete="off" autofocus>
		<input type="submit" value="검색">
	</p>
</form>

<jsp:useBean id="dao" class="product.ProductDAO" />
<table>
	<thead>
		<tr>
			<th>IDX</th>
			<th>NAME</th>
			<th>PRICE</th>
			<th>IMGPATH</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="pd" items="${empty param.keyword ? dao.selectList() : dao.selectListByName(param.keyword) }">
		<tr>
			<td>${pd.idx }</td>
			<td>${pd.name }</td>
			<td>${pd.price }</td>
			<td>${pd.imgPath }</td>
		</tr>
	</c:forEach>
	</tbody>
</table>

</body>
</html>