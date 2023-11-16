<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h3>단일 데이터 조회</h3>
<c:set var="dto" value="${dao.selectOne(param.idx) }" />
<ul>
	<li>idx : ${dto.idx }</li>
	<li>userid : ${dto.userid }</li>
	<li>userpw : ${dto.userpw }</li>
	<li>username : ${dto.username }</li>
	<li>joinDate : ${dto.joinDate }</li>
	<li>gender : ${dto.gender }</li>
	<li>profileImg : ${dto.profileImg }</li>
</ul>

</body>
</html>