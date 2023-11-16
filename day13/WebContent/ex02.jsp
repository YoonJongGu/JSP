<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
</head>
<body>

<h1>singleton 객체를 생성하기</h1>
<hr>

<h3>1) 기본 생성자가 private 이므로, jsp:useBean을 사용할 수 없다</h3>
<%-- <jsp:useBean id="test" class="singleton.Test2" /> --%>

<h3>2) 기본 생성자가 아닌 형태로 객체를 생성하기 위해, jstl core를 이용한다</h3>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="singleton.Test2" %>
<c:set var="t1" value="${Test2.getInstance() }" />
<h3>t1 : ${t1 }</h3>

<h3>3) static 메서드는 클래스를 통하여 호출하므로, EL에서 반드시 첫글자를 대문자로 작성한다</h3>
<c:set var="t2" value="${Test2.getInstance() }" />
<h3>t2 : ${t2 }</h3>

<fieldset>
	<legend>오라클 계정이 잠겼을 경우 (account locked)</legend>
	<p>[root@localhost ~]# su - oracle</p>
	<p>[oracle@localhost ~]# . oraenv</p>
	<p>[oracle@localhost ~]# sqlplus / as sysdba</p>
	<p>sql> alter user c##itbank account unlock;</p>
	<p>sql> exit</p>
</fieldset>
</body>
</html>