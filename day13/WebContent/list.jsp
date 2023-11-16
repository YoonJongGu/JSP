<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<table>
	<thead>
		<tr>
			<th>IDX</th>
			<th>USERID</th>
			<th>USERPW</th>
			<th>USERNAME</th>
			<th>JOINDATE</th>
			<th>GENDER</th>
			<th>PROFILEIMG</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="member" items="${dao.selectList() }">
		<tr>
			<td>${member.idx }</td>
			<td>
				<a href="${cpath }/detail.jsp?idx=${member.idx }">${member.userid }</a>
			</td>
			<td>${member.userpw }</td>
			<td>${member.username }</td>
			<td>${member.joinDate }</td>
			<td>${member.gender }</td>
			<td>${member.profileImg }</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
</body>
</html>