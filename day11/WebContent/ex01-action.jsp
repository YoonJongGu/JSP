<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01-action.jsp</title>
</head>
<body>

<jsp:useBean id="user" class="product.ProductDTO" />
<jsp:setProperty property="*" name="user" />

<jsp:useBean id="dao" class="product.ProductDAO" />
<h3>${dao.insert(user) == 1 ? '추가성공' : '추가실패' }</h3>

<a href="ex01-form.jsp"><button>돌아가기</button></a>

</body>
</html>