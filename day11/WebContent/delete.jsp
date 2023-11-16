<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>
	<c:if test="${method == 'GET' }">
		<form method="POST">
			<p><input type="number" name="idx" placeholder="삭제할 상품의 idx를 입력" required autofocus></p>
			<p><input type="submit" value="삭제"></p>
		</form>
	</c:if>
	
	<c:if test="${method == 'POST' }">		
		
		<jsp:useBean id="dao" class="product.ProductDAO" />
		
		<h3>${dao.delete(param.idx) == 1 ? '삭제 성공' : '삭제 실패' }</h3>
		
		<a href="${cpath }/list.jsp"><button>리스트 페이지</button></a>
	</c:if>
</section>
</body>
</html>