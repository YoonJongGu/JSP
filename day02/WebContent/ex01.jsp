<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
<style>
	table {
		border-collapse: collapse;		 
	}
	td {
		border: 1px solid black;
		padding: 5px 10px;
	}
	h2 {
		background-color: black;
		color: white;
		padding: 5px;
	}
	h2 > span:nth-child(1) { color: red; }
	h2 > span:nth-child(2) { color: orange; }
	h2 > span:nth-child(3) { color: yellow; }
	h2 > span:nth-child(4) { color: lime; }
	h2 > span:nth-child(5) { color: skyblue; }
	h2 > span:nth-child(6) { color: pink; }
</style>
</head>
<body>

<h1>ex01.jsp - request</h1>
<hr>

<h3>클라이언트가 서버에게 보내는 요청을 객체화한 요소. jsp 내장객체 중 하나</h3>
<table>
	<tr>
		<td>메서드</td>
		<td>기능</td>
		<td>값 / 설명</td>
	</tr>
	<tr>
		<td>getParameter(String name)</td>
		<td>사용자가 전달한 특정 파라미터 하나를 가져온다.</td>
		<td><%=request.getParameter("name") %></td>
	</tr>
	<tr>
		<td>getParameterMap()</td>
		<td>사용자가 전달한 모든 파라미터를 map 형태로 가져온다</td>
		<td><%=request.getParameterMap() %></td>
	</tr>
	<tr>
		<td>getParameterValues(String name)</td>
		<td>특정 이름으로 전달된 여러 값을 String[] 형태로 반환한다</td>
		<td><%=request.getParameterValues("name") %></td>
	</tr>
	<tr>
		<td>getRemoteAddr()</td>
		<td>원격지 주소(클라이언트의 주소)를 문자열 형태로 반환</td>
		<td><%=request.getRemoteAddr() %></td>
	</tr>
	<tr>
		<td>getLocalAddr()</td>
		<td>자신의 주고(서버의 주소)를 문자열 형태로 반환</td>
		<td><%=request.getLocalAddr() %></td>
	</tr>
	<tr>
		<td>getContextPath()</td>
		<td>서버에서 웹 문서가 위치하는 경로를 문자열로 반환한다. WebContent</td>
		<td><%=request.getContextPath() %></td>
	</tr>
	<tr>
		<td>getLocalPort()</td>
		<td>서버가 운용중인 포트의 번호를 int형으로 반환한다</td>
		<td><%=request.getLocalPort() %></td>
	</tr>
	<tr>
		<td>getRequestURI()</td>
		<td>요청받은 자원(문서)의 경로를 문자열로 반환한다</td>
		<td><%=request.getRequestURI() %></td>
	</tr>
	<tr>
		<td>getRequestURL()</td>
		<td>요청받은 전체 주소 (프로토콜 + 서버이름 + 서버포트 : URI (contextPath + 파일이름))</td>
		<td><%=request.getRequestURL() %></td>
	</tr>
	<tr>
		<td>getQueryString()</td>
		<td>
			요청받은 쿼리스트링을 문자열로 반환한다. 다듬으면 파라미터가 된다
			<a href="ex01.jsp?name=Messi&age=35"><button>예시</button></a>
		</td>
		<td><%=request.getQueryString() %></td>
	</tr>
	<tr>
		<td>getHeader(String headerName)</td>
		<td>요청 헤더에 담긴 특정 요소를 문자열 형태로 반환한다 (referer는 참조자, 어디에서 왔는가)</td>
		<td><%=request.getHeader("referer") %></td>
	</tr>	
</table>

<h2>
	<span>http</span>://
	<span>localhost</span>:
	<span>8080</span>
	<span>/day02</span>
	<span>/ex01.jsp</span>
	<span>?name=Messi&age=35</span>
</h2>

<h2>
	<span>프로토콜</span>://
	<span>서버이름</span>:
	<span>서버포트</span>
	<span>문서경로</span>
	<span>문서이름</span>
	<span>쿼리스트링</span>
</h2>

</body>
</html>