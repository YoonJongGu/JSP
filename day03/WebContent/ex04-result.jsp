<%@page import="ex04.Menu"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04-result.jsp</title>
</head>
<body>

<%--
		입력되는 파라미터들을 이용하여 하나의 객체를 구성하려면
		[자바 빈즈]를 활용하여 파라미터를 받고, 곧바로 객체 형태로 구성할 수 있다
		
		이때 사용되는 문법은 액션태그 형식을 활용한다
		액션태그 : 형식은 태그이지만, 자바코드가 수행되는 특수한 태그 (xml 기반의 태그)
				JSP에서 java를 모르는 사람도 기능을 사용할 수 있도록 만들어졌다
 --%>
 
 <jsp:useBean id="user" class="ex04.Menu" />
 <%--
 		Menu user = new Menu();	// 기본 생성자를 호출하여 user라는 변수에 저장
  --%>
 
 <jsp:setProperty property="*" name="user" />
 <%--
 		user.setName(request.getParameter("name"));		// String name;
 		user.setPrice(Integer.parseInt(request.getParameter("price")));	// int price;
  --%>
 
 <fieldset>
 	<ul>
 		<li>메뉴 이름 : <%=user.getName() %></li>
 		<li>메뉴 가격 : <%=user.getPrice() %></li>
 	</ul>
 </fieldset>
 
 <%!
 	ArrayList<Menu> list = new ArrayList<Menu>(); 
 %>

<%
	list.add(user);
%>
<p><a href="ex04-form.jsp"><button>돌아가기</button></a></p>
<ol>
	<%-- 스크립틀릿은 나누어서 적어도, 서블릿으로 변환되면서 하나로 합쳐진다 --%>
	<% for(int i = 0; i < list.size(); i++) { %>
	
	<li><%=list.get(i).getName() %>, <%=list.get(i).getPrice() %>원</li>
	
	<% } %>
	
</ol>

</body>
</html>