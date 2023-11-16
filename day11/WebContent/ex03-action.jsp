<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03-action.jsp</title>
</head>
<body>

<jsp:useBean id="user" class="product.ProductDTO" />
<jsp:setProperty property="*" name="user" />

<jsp:useBean id="dao" class="product.ProductDAO" />

<h3>${dao.update(user) != 0 ? '수정성공' : '수정실패' }</h3>

<a href="ex03.jsp"><button>돌아가기</button></a>

</body>
</html>