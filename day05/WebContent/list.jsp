<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<section>
	<table>
		<thead>
			<tr>
				<th>카테고리</th>
				<th>가게이름</th>
				<th>메뉴이름</th>
				<th>가격</th>
			</tr>
		</thead>
		<tbody>
			<% 				
				for(Food food : hd.getList()) { 
				pageContext.setAttribute("food", food);
			%>
				<tr>					
					<td>
						<img src="${cpath }/img/${food.category }.png" width="75px">					
					</td>
					<td>${food.storeName }</td>
					<td>${food.menuName }</td>
					<td>${food.price }원</td>
					<td><a href="${cpath }/modify.jsp?idx=${food.idx }"><button>수정</button></a></td>
					<td><a href="${cpath }/delete.jsp?idx=${food.idx }"><button>삭제</button></a></td>					
				</tr>				
			<% } %>
		</tbody>
	</table>
</section>
</main>
</body>
</html>