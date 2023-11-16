<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01-form.jsp</title>
</head>
<body>

<h1>체크 박스 (같은 이름으로 여러 값이 전달될 경우)</h1>
<hr>

<form action="ex01-result.jsp">
	<h3>구사 가능한 언어를 선택하세요 (중복 선택 가능)</h3>
	<p>
		<label>
			<input type="checkbox" name="language" value="clang">C언어
		</label>
	</p>
	<p>
		<label>
			<input type="checkbox" name="language" value="python">파이썬
		</label>
	</p>
	<p>
		<label>
			<input type="checkbox" name="language" value="java">자바
		</label>
	</p>
	<p>
		<input type="submit">
	</p>
</form>

</body>
</html>