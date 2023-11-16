<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04.jsp</title>
<style>
	.ad {
		width: 300px;
		height: 400px;
		background-color: #f5f6f7;
		margin: 150px auto;
		display: flex;
		flex-flow: column;
		justify-content: center;
		align-items: center;
		border: 2px solid black;
		border-radius: 25px;
		box-shadow: 20px 20px 20px grey;
	}
	.ad > .background {
		position: fixed;
		width: 100%;
		height: 150%; 
		background-color: rgba(0, 0, 0, 0.2);
		z-index: -1;
	}
	.hidden {
		display: none;
	}
	.root {
		position: absolute;
		top: 100px;
	}
</style>
</head>
<body>
<%
	String blockOneDay = request.getParameter("blockOneDay");

	if(blockOneDay != null) {	// 무엇이 되었든, 값이 있다면 체크한것으로 간주함
		Cookie cookie = new Cookie("block", "true");
		cookie.setMaxAge(60 * 60 * 24);	// 초 * 분 * 시간
		response.addCookie(cookie);
		response.sendRedirect("ex04.jsp");
	}
%>

<h1><a href="ex04.jsp">쿠키가 있으면 광고를 띄우지 않기</a></h1>
<hr>

<div class="ad ${cookie.block.value or param.close ? 'hidden' : '' }">
	<div class="background"></div>
	<h4>금주의 이벤트 상품 !!</h4>
	<img src="img/4.jpg" width="200px">
	<form>
		<p>
		<label>
			<input type="checkbox" name="blockOneDay">1일간 표시하지 않습니다
			<!--
				input의 type이 checkbox이면, value를 지정하지 않았을 경우
				체크했을때의 value는 on이다
				
				<input type="checkbox" name="blockOneDay" value="on">
			 -->
		</label>
		<input type="hidden" name="close" value="true">
		<input type="submit" value="닫기">
		</p>
	</form>
</div>

<div class="root">
	본문 내용...
</div>

</body>
</html>