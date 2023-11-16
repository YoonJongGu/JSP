<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ include file="header.jsp" %>


	<ol>
	<%	
		for(Member member : memberhandler.getList()) {
			pageContext.setAttribute("member", member);	// 현재 페이지에서만 참조하면 되니까 pageContext
	%>
		<!-- 스크립틀릿을 중간에 한번 끊었다가 다시 열어주어도 된다 -->
		<li>
			${member.userid } / 
			${member.userpw } / 
			${member.username } / 		
			${member.age } / 
			${member.birth }
		</li>
	<% } %>		
	</ol>
</main>
</body>
</html>