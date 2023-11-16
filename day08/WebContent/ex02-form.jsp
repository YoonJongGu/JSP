<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-form.jsp</title>
</head>
<body>
<%
	String cookieValue = "";
	
	// 클라이언트가 보낸 요청에 여러 쿠키가 포함되어 넘어올 수 있다
	// 단, 첫번째 방문이라면 (혹은 쿠키를 제거했다면) cookies는 null 일 수 있다
	Cookie[] cookies = request.getCookies();
	
	
	for(int i = 0; cookies != null && i < cookies.length; i++) {
		Cookie c = cookies[i];				// i번째 쿠키를 찾아서
		if(c.getName().equals("comment")) {	// 이름이 comment이면
			cookieValue = c.getValue();		// 그 값을 미리 준비한 변수에 저장
			break;
		}
	}
	
	pageContext.setAttribute("comment", cookieValue);
%>

<h1>쿠키 만들기 연습</h1>
<hr>

<form action="ex02-action.jsp">
	<input type="text" name="comment" placeholder="문자열 입력" value="${comment }" autofocus>
	
<%-- 단순히 cookie의 값만 출력을 원한다면 밑의 방식으로 확인이 가능하다 --%>
<%-- <input type="text" name="comment" placeholder="문자열 입력" value="${cookie.comment.value }" autofocus> --%>

	<input type="submit">
	
	<a href="ex02-delete-cookie.jsp"><input type="button" value="쿠키 삭제"></a>
</form>

</body>
</html>