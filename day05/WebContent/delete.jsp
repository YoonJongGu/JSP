<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>	
	<fieldset>
		<legend>삭제</legend>
		<h3>${handler.delete(param.idx) == 1 ? '삭제 성공' : '삭제 실패' }</h3>
	</fieldset>
</section>
</body>
</html>