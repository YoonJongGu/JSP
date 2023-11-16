<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>
	<% if(request.getMethod().equals("GET")) { %>
	<%	
		int idx = Integer.parseInt(request.getParameter("idx"));
		pageContext.setAttribute("food", hd.getItem(idx));
	%>
	<form method="POST">
		<input type="hidden" name="idx" value="${food.idx }">
		<p>
			<select name="category" required>
				<option value="">== 카테고리 선택 ==</option>
				<option ${food.category == '분식' ? 'selected' : '' }>분식</option>
				<option ${food.category == '야식' ? 'selected' : '' }>야식</option>
				<option ${food.category == '일식' ? 'selected' : '' }>일식</option>
				<option ${food.category == '족발' ? 'selected' : '' }>족발</option>
				<option ${food.category == '중식' ? 'selected' : '' }>중식</option>
				<option ${food.category == '찜' ? 'selected' : '' }>찜</option>
				<option ${food.category == '치킨' ? 'selected' : '' }>치킨</option>
				<option ${food.category == '피자' ? 'selected' : '' }>피자</option>			
			</select>
		</p>
		<p><input type="text" name="storeName" placeholder="가게 이름" value="${food.storeName }" required></p>
		<p><input type="text" name="menuName" placeholder="메뉴 이름" value="${food.menuName }" required></p>
		<p><input type="number" name="price" placeholder="가격" value="${food.price }" min="0" step="100" required></p>
		<p><input type="submit" value="수정"></p>
	</form>
	<% } %>
	
	<% if(request.getMethod().equals("POST")) { %>
	
	<jsp:useBean id="user" class="food.Food" />
	<jsp:setProperty property="*" name="user" />
	
	<h3>${handler.modify(user) >= 0 ? '수정 성공' : '수정 실패' }</h3>
	
	<% } %>	
</section>
</main>

</body>
</html>