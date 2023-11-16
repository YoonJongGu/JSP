<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>
	<c:if test="${method == 'GET' }">
	<jsp:useBean id="dao_search" class="restaurant.RestaurantDAO" />
	<c:set var="dto" value="${dao_search.selectOne(param.idx) }" />
		<form method="POST">
			<input type="hidden" name="idx" value="${dto.idx }">
			<p>
				<select name="category" required>
					<option value="">=== 카테고리를 선택해주세요 ===</option>
					<option value="한식" ${dto.category == '한식' ? 'selected' : '' }>한식</option>
					<option value="중식" ${dto.category == '중식' ? 'selected' : '' }>중식</option>
					<option value="양식" ${dto.category == '양식' ? 'selected' : '' }>양식</option>
					<option value="일식" ${dto.category == '일식' ? 'selected' : '' }>일식</option>
					<option value="기타" ${dto.category == '기타' ? 'selected' : '' }>기타</option>
				</select>
			</p>
			<p><input type="text" name="storename" value="${dto.storename }"></p>
			<p><input type="text" name="address" value="${dto.address }"></p>
			<p><input type="text" name="phonenumber" value="${dto.phonenumber }"></p>
			<p>
				<label><input type="radio" name="parking" value="Y" ${dto.parking == 'Y' ? 'checked' : '' }>Y</label>
				<label><input type="radio" name="parking" value="N" ${dto.parking == 'N' ? 'checked' : '' }>N</label>
			</p>
			<p><input type="submit" value="수정"></p>			
		</form>
	</c:if>
	
	<c:if test="${method == 'POST' }">
		<jsp:useBean id="dao_modify" class="restaurant.RestaurantDAO" />
		<jsp:useBean id="user" class="restaurant.RestaurantDTO" />
		<jsp:setProperty property="*" name="user"/>
		<fieldset>
			<legend>수정</legend>
			<h3>${dao_modify.modify(user) != 0 ? '수정 성공' : '수정 실패' }</h3>
		</fieldset>
	</c:if>
</section>
</body>
</html>