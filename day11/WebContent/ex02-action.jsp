<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-action.jsp</title>
</head>
<body>

<jsp:useBean id="dao" class="product.ProductDAO" />

<h3>${dao.delete(param.idx) == 1 ? '삭제성공' : '삭제실패' }</h3>

<a href="ex02-form.jsp"><button>돌아가기</button></a>

</body>
</html>