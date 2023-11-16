<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01-form.jsp</title>
</head>
<body>

<h1>JSP 파일 업로드 기초</h1>
<hr>

<form method="POST" enctype="multipart/form-data" action="ex01-action.jsp">
	<p><input type="text" name="name" placeholder="이름"></p>
	<!-- HTML 의 input type="file" 의 경우에는 보안상의 문제로 value 를 작성할 수 없게 되어있다 -->
	<p><input type="file" name="uploadFile"></p>
	<p><input type="submit"></p>
</form>

<ol>
	<li>form에서 method를 지정하지 않으면 기본값은 GET</li>
	<li>GET에서는 입력값을 쿼리스트링 형태로 전달한다 (ex01-action.jsp?name=이지은&age=30)</li>
	<li>파일은 문자열로 표현할 수 없으므로, GET이 아닌 POST를 사용해야 한다</li>
	<li>POST로 전송하면, 쿼리스트링 대신 form-data를 별도의 영역으로 전송한다</li>
	<li>이때에도, 전달하는 주 내용은 글자이고, 데이터를 묶는 방식은 x-www-form-urlencoded 이다</li>
	<li>파일을 전송하기 위해서는 데이터 묶음 방식을 multipart/form-data 로 변경하여 전송한다</li>
	<li>다른 input 요소와 달리 type="file" 이면 value를 지정할 수 없다</li>
</ol>

</body>
</html>