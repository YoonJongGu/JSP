<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>

<h1>JSP Cookie</h1>
<hr>

<ul>
	<li>HTTP는 한번의 request와 한번의 response 이후 접속이 끊어지는 형태의 통신이다</li>
	<li>따라서, 지속적인 통신이 아니므로, 데이터를 유지할 방법이 필요하다</li>
	<li>특정 데이터를 Server 에 저장하려면 session 을 이용한다</li>
	<li>특정 데이터를 Client 에 저장하려면 cookie 을 이용한다</li>
	<li>cookie 는 특정 데이터를 클라이언트에 저장하는 형식이며, 문자열 기반의 데이터를 저장한다</li>
	<li>JSP에서는 Cookie 클래스를 이용하여 객체를 생성한다. new Cookie(String name, String value)</li>
	<li>서버에서 Cookie를 생성했다면, 클라이언트에게 보내기 위해 response를 이용한다</li>
	<li>클라이언트가 보관하고 있는 쿠키는, 특정 주소로 요청할 때, 요청에 포함하여 서버에게 보낸다</li>
	<li>서버는 클라이언트가 보낸 요청에서 쿠키를 꺼내서 분석하고, 이를 데이터 처리에 활용한다</li>	
</ul>

</body>
</html>