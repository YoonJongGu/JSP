<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>
	<c:if test="${method == 'GET' }">
		<jsp:useBean id="dao_values" class="product.ProductDAO" />
		<c:set var="dto" value="${dao_values.selectOne(param.idx) }" />		
		<form method="POST">
			<p><input type="number" name="idx" value="${dto.idx }" required readonly></p>
			<p><input type="text" name="name" value="${dto.name }" required></p>
			<p><input type="number" name="price" value="${dto.price }" required></p>
			<p><input type="text" name="imgPath" value="${dto.imgPath }" required></p>
			<p><input type="submit" value="수정"></p>
		</form>
	</c:if>
	
	<c:if test="${method == 'POST' }">
		<jsp:useBean id="user" class="product.ProductDTO" />
		<jsp:setProperty property="*" name="user" />
		
		<jsp:useBean id="dao_update" class="product.ProductDAO" />
		
		<h3>${dao_update.update(user) != 0 ? '수정 성공' : '수정 실패' }</h3>
		
		<a href="${cpath }/list.jsp"><button>리스트 페이지</button></a>
	</c:if>
</section>

</body>
</html>