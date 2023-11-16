<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ex02.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-form.jsp</title>
</head>
<body>

<h1>ex02 - 이미지 업로드</h1>
<hr>

<fieldset>
	<legend>파일 업로드에 사용하는 ContentType</legend>
	<ul>
		<li>text/plain : 단순 텍스트 파일 (*.txt, *.text)</li>
		<li>image/jpeg, image/gif, image/* : 이미지 파일</li>
		<li>text/html : 텍스트 기반 html 파일 (*.html)</li>
		<li>application/zip : zip 형식 압축 파일 (*.zip)</li>
		<li>video/mp4 : mp4 방식의 동영상 파일</li>
	</ul>
</fieldset>

<form action="ex02-action.jsp" method="POST" enctype="multipart/form-data">
	<p><input type="file" name="uploadFile" accept="image/*"></p>
	<p><input type="text" name="name" placeholder="이름"></p>
	<p><input type="submit"></p>
</form>

<c:set var="cpath" value="${pageContext.request.contextPath }" />

<div id="root">
	<div class="wrap" style="display: flex; flex-flow: wrap;">
		
		<c:forEach var="fileName" items="${fileUtil.getList() }">
		<div class="item" style="height: 100px; margin: 10px;">
			<div><img src="${cpath }/upload/${fileName }" height="100"></div>
		</div>
		</c:forEach>
		
	</div>
</div>

</body>
</html>