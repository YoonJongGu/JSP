<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>
	<script>
		const login = ${empty login}	// true of false
		
		if(login) {
			alert('먼저 로그인 한 이후 이용할 수 있습니다')
			location.href = '${cpath}/login.jsp'
			// <a href=""> 와 비슷하다. 사용자가 직접 클릭하지 않아도 곧바로 이동한다
		}
	</script>
	
<%-- 
		스크립트에 의해 다른 페이지로 이동하지 않았다면 로그인이 되어있다는 이야기
		현재 로그인한 계정의 정보를 table 태그를 이용하여
		왼쪽에는 속성, 오른쪽에는 값을 출력하세요
 --%>
 	<table border="1" cellpadding="10" cellspacing="0">
 		<tr>
 			<td>userid</td>
 			<td>${login.userid }</td>
 		</tr>
 		<tr>
 			<td>userpw</td>
 			<td>${login.userpw }</td>
 		</tr>
 		<tr>
 			<td>username</td>
 			<td>${login.username }</td>
 		</tr>
 		<tr>
 			<td>age</td>
 			<td>${login.age }</td>
 		</tr>
 		<tr>
 			<td>birth</td>
 			<td>${login.birth }</td>
 		</tr> 		
 	</table> 
 	<p>
	 	<a href="${cpath }/modify.jsp"><button>정보 수정</button></a>
		<a href="${cpath }/delete.jsp"><button>회원 탈퇴</button></a>
	</p>
</section>
</main>
</body>
</html>