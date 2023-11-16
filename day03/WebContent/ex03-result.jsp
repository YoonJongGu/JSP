<%@page import="java.util.Set"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03-result.jsp</title>
<style>
	table {
		border-collapse: collapse;
	}
	td, th {
		border: 1px solid black;
		padding: 5px 10px;
	}
</style>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");
	// 1) 파라미터는 request 객체에서 꺼내온다
	// 2) request의 method가 POST이기 때문에, 글자 인코딩 규칙이 지정되지 않으면 한글이 깨진다
	// 3) 파라미터를 꺼내기 전에 먼저 인코딩 규칙을 설정해주어야 한다

	Map<String, String[]> map = request.getParameterMap();
	// 이름과 값이 1:1일 수도 있지만, request.getParameterValues() 와 같이 값이 여러개일 수도 있다
	// 파라미터의 name은 String, value는 String[] 로 처리한다
	
	out.print("<table>");
	out.print("	<tr>");
	out.print("		<th>Name</th>");
	out.print("		<th>Value</th>");
	out.print("	</tr>");
	out.print("	<tr>");
	
	Set<String> keySet = map.keySet();
	
	for(String key : keySet) {
		out.print("<tr>");
		out.print("<td>" + key + "</td>");		
		String[] values = map.get(key);
		out.print("<td>");
		
		for(int i = 0; i < values.length; i++) {
			out.print(values[i]);
			out.print(i == values.length - 1 ? "</td>" : ", ");
		}
		out.print("</tr>");
	}
	out.print("</table>");	
%>

<h3>두번째 스크립틀릿</h3>

<%
	// 스크립틀릿은 따로 열어도, 서블릿으로 변환되는 과정에서 합쳐진다
	// 파라미터를 이용하여 개발자가 별도로 만든 값을 처리할 경우
	
	String pw1 = request.getParameter("pw1");
	String pw2 = request.getParameter("pw2");
	boolean isPasswordCorrect = pw1.equals(pw2);
	
	// 개발자가 만들어서 넣는 모든 유형의 자바 객체는 attribute 로 처리한다
	// 내장객체.setAttribute(String name, Object o);
	request.setAttribute("isPasswordCorrect", isPasswordCorrect);
%>

<h3>비밀번호가 일치하는가 : <%=request.getAttribute("isPasswordCorrect") %></h3>
<h3>비밀번호가 일치하는가 : ${isPasswordCorrect }</h3>

</body>
</html>