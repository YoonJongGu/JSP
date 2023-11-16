<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.removeAttribute("login");
	// 1) 세션에서 지정한 속성(attribute)을 제거한다
	
	session.invalidate();
	// 2) 현재 세션을 폐기한다 (다음 요청에서 새로운 세션을 발급받는다)

	response.sendRedirect(request.getContextPath());
%>

</body>
</html>