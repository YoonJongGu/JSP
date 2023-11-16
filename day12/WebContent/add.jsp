<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>
	<c:if test="${method == 'GET' }">
		<form method="POST">
			<p>
				<select name="category">
					<option value="">=== 카테고리를 선택해주세요 ===</option>
					<option value="한식">한식</option>
					<option value="중식">중식</option>
					<option value="양식">양식</option>
					<option value="일식">일식</option>
					<option value="기타">기타</option>
				</select>
			</p>
			<p><input type="text" name="storename" placeholder="가게 이름"></p>
			<p><input type="text" name="address" placeholder="주소"></p>
			<p><input type="text" name="phonenumber" placeholder="전화번호('-'로 구분)"></p>
			<p>
				<label><input type="radio" name="parking" value="Y">Y</label>
				<label><input type="radio" name="parking" value="N">N</label>
			</p>
			<p><input type="submit" value="추가"></p>			
		</form>
	</c:if>
	
	<c:if test="${method == 'POST' }">
		<jsp:useBean id="dao" class="restaurant.RestaurantDAO" />
		<jsp:useBean id="user" class="restaurant.RestaurantDTO" />
		<jsp:setProperty property="*" name="user"/>
		<fieldset>
			<legend>추가</legend>
			<h3>${dao.insert(user) == 1 ? '추가 성공' : '추가 실패' }</h3>
		</fieldset>
	</c:if>
</section>
</body>
</html>