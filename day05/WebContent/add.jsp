<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>
	<% if(request.getMethod().equalsIgnoreCase("GET")) { %>
	
	<form method="POST">
		<p>
			<select name="category" required>
				<option value="">== 카테고리 선택 ==</option>
				<option>분식</option>
				<option>야식</option>
				<option>일식</option>
				<option>족발</option>
				<option>중식</option>
				<option>찜</option>
				<option>치킨</option>
				<option>피자</option>			
			</select>
		</p>
		<p><input type="text" name="storeName" placeholder="가게 이름" required></p>
		<p><input type="text" name="menuName" placeholder="메뉴 이름" required></p>
		<p><input type="number" name="price" placeholder="가격" min="0" step="100" required></p>
		<p><input type="submit" value="추가"></p>
	</form>
	
	<% } %>
	
	<% if(request.getMethod().equalsIgnoreCase("POST")) { %>
	
	<jsp:useBean id="user" class="food.Food" scope="page" />
	<jsp:setProperty property="*" name="user" />
	<h3>${handler.test() }</h3>
	
	${handler.insert(user) }
	
	<% } %>
</section>
</main>
</body>
</html>