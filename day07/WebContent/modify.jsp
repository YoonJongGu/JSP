<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>
	<% if(request.getMethod().equals("GET")) { %>
	<form method="POST">
	<table border="1" cellpadding="10" cellspacing="0">
 		<tr>
 			<td>userid</td>
 			<td><input type="hidden" name="userid" value="${login.userid }">${login.userid }</td>
 		</tr>
 		<tr>
 			<td>userpw</td>
 			<td><input type="password" name="userpw" required></td>
 		</tr>
 		<tr>
 			<td>username</td>
 			<td><input type="text" name="username" value="${login.username }" required></td>
 		</tr>
 		<tr>
 			<td>age</td>
 			<td><input type="number" name="age" value="${login.age }" required></td>
 		</tr>
 		<tr>
 			<td>birth</td>
 			<td><input type="date" name="birth" value="${login.birth }" required></td>
 		</tr> 		
 	</table>
 	<p><input type="submit" value="정보 수정"></p>
 	</form>
 	<% } %>
 	<% if(request.getMethod().equals("POST")) { %>
 	<jsp:useBean id="user" class="day07.Member" />
 	<jsp:setProperty property="*" name="user" />
 		<% if(memberhandler.modify(user) == -1) { %>
 		<fieldset>
 			<legend>수정</legend>
 			<p>수정 실패</p>
 		</fieldset>
 		<a onclick="history.href()"><button>뒤로 가기</button></a>
 		<%
 			}
 			else {
 				response.sendRedirect(request.getContextPath() + "/logout.jsp");
 				// 정보가 수정되어서 세션의 정보와 실제 저장된 정보가 맞지 않는다
 				// 강제 로그아웃 시킨 후 다시 확인하도록 유도한다
 			}
 		%>
 	<% } %> 
</section>
</main>
</body>
</html>