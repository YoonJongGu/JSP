<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
</head>
<body>

<h1>forward</h1>
<hr>

<h3>redirect는 클라이언트에게 특정 주소로 이동하도록 지시하는 기법이다</h3>
<h3>forward는 클라이언트의 의도를 무시하고, 서버가 다른 문서를 보여주는 기법이다</h3>
<h3>만약, 서버에서 포워드를 진행했다면, 클라이언트는 포워드되었음을 알아챌 수 없다</h3>

<%
	RequestDispatcher rd = request.getRequestDispatcher("ex02-forward.jsp");
	// 지정한 주소로 포워드할 수 있는 객체를 생성한다
	
	rd.forward(request, response);
	// 클라이언트가 보낸 요청과, 클라이언트에게 보낼 응답을 같이 전송하며 페이지를 이동시킨다
	
	// forward는 클라이언트가 보낸 request를 같이 전달하면 수행한다
	// 따라서, request 객체 내부의 parameter 및 attribute가 유지된다
%>

</body>
</html>