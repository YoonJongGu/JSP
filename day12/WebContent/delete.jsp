<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>
	<jsp:useBean id="dao" class="restaurant.RestaurantDAO" />
	<fieldset>
		<legend>삭제</legend>
		<h3>${dao.delete(param.idx) == 1 ? '삭제 성공' : '삭제 실패' }</h3>
	</fieldset>
</section>
</body>
</html>