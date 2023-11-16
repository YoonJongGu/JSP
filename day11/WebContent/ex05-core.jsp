<%@page import="product.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05-core.jsp</title>
<style>
	table {
		border: 2px solid black;
		border-collapse: collapse;
	}
	td, th {
		padding: 10px 20px;
		border: 1px solid grey;
	}
</style>
</head>
<body>

<h1>core tag</h1>
<hr>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<table>
	<thead>
		<tr>
			<th>태그</th>
			<th>설명</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>c:set</td>
			<td>scope에 attribute를 선언한다. setAttribute(var, value)</td>
			
			<c:set var="cpath" value="${pageContext.request.contextPath }" scope="page" />
			<c:set var="test2" value="test2" scope="request" />
			<c:set var="test3" scope="session">test3</c:set>
			<c:set var="test4" value="<%=new ProductDTO() %>" scope="application" />
			<jsp:useBean id="test5" class="product.ProductDTO" scope="application" />
			
			<c:set target="${test4 }" property="name" value="신상품" />
			<c:set target="${test5 }" property="name" value="신상품2" />
			<c:set target="${test5 }" property="price" value="15000" />
		</tr>
		
		<tr>
			<td>c:remove</td>
			<td>scope에서 attribute를 제거한다. removeAttribute(var)</td>
		</tr>
		
		<tr>
			<td>c:if</td>
			<td>test의 조건이 참이면 내부 코드를 실행 혹은 출력한다. 조건은 거의 EL태그로 구성한다</td>
			
			<c:if test="${not empty test5 }">
				<h4>test5의 가격 : ${test5.price }</h4>
			</c:if>
			<c:if test="${empty test5 }">
				<h4>객체가 존재하지 않습니다</h4>
			</c:if>				
		</tr>
		
		<tr>
			<td>c:choose, c:when, c:otherwise</td>
			<td>choose 안에서 when의 조건이 참인 경우 해당 내용만 실행한다. otherwise는 else의 역할</td>
			
			<c:choose>
				<c:when test="${empty param.n1 }">
					<h3>n1이 없습니다</h3>
				</c:when>
				<c:when test="${param.n1 % 2 == 0 }">
					<h3>짝수입니다</h3>
				</c:when>
				<c:otherwise>
					<h3>홀수입니다</h3>
				</c:otherwise>
			</c:choose>
		</tr>
		
		<tr>
			<td>c:forEach</td>
			<td>
				items내의 각 값을 var에 저장하여 반복문을 실행한다<br>
				컬렉션 혹은 배열이 없다면, 횟수를 이용하여 반복할 수도 있다
			</td>
			
			<c:forEach var="item" items="${list }">
				<p>${item }</p>
			</c:forEach>
			
			<c:forEach var="i" begin="0" end="5" step="1">
				<p>${i }</p>
			</c:forEach>
		</tr>
		
		<tr>
			<td>c:forToken</td>
			<td>split + for문의 형식</td>
			
			<c:forTokens var="season" items="spring,summer,autumn,winter" delims=",">
				<p>${season }</p>
			</c:forTokens>
		</tr>
		
		<tr>
			<td>c:redirect</td>
			<td>지정한 주소로 리다이렉트한다. response.sendRedirect()와 동일하다</td>
			
			<%--
				<c:redirect url="https://www.naver.com" />
			 --%>
		</tr>
		
		<tr>
			<td>c:out</td>
			<td>out.print()와 동일하다. EL Tag를 사용하면 동일한 효과이다</td>
			<c:out value="${test3 }" />
			${test3 }
		</tr>
	</tbody>
</table>

<h3>${test4.name }</h3>
<h3>${test5.name }</h3>
<h3>${test5.price }</h3>

</body>
</html>