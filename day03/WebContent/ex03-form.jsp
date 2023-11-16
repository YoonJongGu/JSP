<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03-form.jsp</title>
</head>
<body>

<h1>다수의 파라미터 처리하기</h1>
<hr>

<!-- 파라미터를 주소창에 노출시키고 싶지 않으면, method="POST" -->
<!-- POST는 주소창을 통해 전달하지 않으므로, 인코딩 규칙을 지정해서 받아야 한다 -->
<form method="post" action="ex03-result.jsp">
	<p><input type="text" name="id" placeholder="ID"></p>
	<p><input type="password" name="pw1" placeholder="Password"></p>
	<p><input type="password" name="pw2" placeholder="Password"></p>
	<p><input type="text" name="name" placeholder="Name"></p>
	<p><input type="date" name="birth"></p>
	<p><input type="email" name="email" placeholder="foo@bar.com"></p>
	
	<p>
		<label><input type="radio" name="gender" value="mem">남성</label>
		<label><input type="radio" name="gender" value="women">여성</label>
	</p>
	
	<p>
		<label><input type="checkbox" name="hobby" value="sports">스포츠</label>
		<label><input type="checkbox" name="hobby" value="travel">여행</label>
		<label><input type="checkbox" name="hobby" value="reading">독서</label>
		<label><input type="checkbox" name="hobby" value="coding">코딩</label>		
	</p>
	
	<p><input type="submit"></p>
</form>

</body>
</html>