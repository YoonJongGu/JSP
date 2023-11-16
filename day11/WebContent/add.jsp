<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>
	<c:if test="${method == 'GET' }">
		<form method="POST">
			<p><input type="number" name="idx" placeholder="idx" required autofocus></p>
			<p><input type="text" name="name" placeholder="name" required></p>
			<p><input type="number" name="price" placeholder="price" required></p>
			<p><input type="text" name="imgPath" placeholder="imgPath" required></p>
			<p><input type="submit" value="추가"></p>
		</form>
	</c:if>
	
	<c:if test="${method == 'POST' }">
		<jsp:useBean id="user" class="product.ProductDTO" />
		<jsp:setProperty property="*" name="user" />
		
		<jsp:useBean id="dao" class="product.ProductDAO" />
		
		<h3>${dao.insert(user) == 1 ? '추가 성공' : '추가 실패' }</h3>
		
		<a href="${cpath }/list.jsp"><button>리스트 페이지</button></a>
	</c:if>
</section>
</body>
</html>