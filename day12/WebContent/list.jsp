<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>
	<table>
		<thead>
			<tr>
				<th>IDX</th>
				<th>CATEGORY</th>
				<th>STORENAME</th>
				<th>ADDRESS</th>
				<th>PHONENUMBER</th>
				<th>PARKING</th>
				<th>JOINDATE</th>
				<th>MODIFY</th>
				<th>DELETE</th>
			</tr>			
		</thead>
		<jsp:useBean id="dao" class="restaurant.RestaurantDAO" />
		<tbody>
		<c:forEach var="dto" items="${dao.selectList() }">
			<tr>
				<td>${dto.idx }</td>
				<td>${dto.category }</td>
				<td>${dto.storename }</td>
				<td>${dto.address }</td>
				<td>${dto.phonenumber }</td>
				<td>${dto.parking }</td>
				<td>${dto.joindate }</td>
				<td><a href="${cpath }/modify.jsp?idx=${dto.idx }"><button>수정</button></a></td>
				<td><button class="deleteBtn" idx="${dto.idx }" storename="${dto.storename }">삭제</button></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</section>
<script>
	function deleteHandler() {
		const idx = this.getAttribute('idx')
		const storename = this.getAttribute('storename')
		const flag = confirm(storename + ' 맛집을 리스트에서 삭제하시겠습니까?')
		
		if(flag) {
			location.href = '${cpath}/delete.jsp?idx=' + idx
		}
	}

	const btnList = document.querySelectorAll('.deleteBtn')
	
	btnList.forEach(btn => btn.addEventListener('click', deleteHandler))
</script>
</body>
</html>