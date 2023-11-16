<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ex02.Human" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
</head>
<body>

<h1>EL Tag 사용법</h1>
<hr>

<%
	Human ob1 = new Human("이지은", 30);
	Human ob2 = new Human("홍진호", 41);
	Human ob3 = new Human("임요환", 43);
	Human ob4 = new Human("노홍철", 41);
	Human ob5 = new Human("박명수", 50);
	
	// 자바 객체를 생성했다고, 바로 접근되지 않고, attribute에 저장했을 경우에만 접근할 수 있다
	pageContext.setAttribute("ob1", ob1);
%>

<h3>${ob1 }</h3>
<fieldset>
	<legend>표현식 (expression)</legend>
	<h3>
		<%=((Human)pageContext.getAttribute("ob1")).getName() %>
		의 나이는
		<%=((Human)pageContext.getAttribute("ob1")).getAge() %>
		살 입니다
	</h3>
</fieldset>

<fieldset>
	<legend>EL Tag (Expression Language)</legend>
	<h3>${ob1.name }의 나이는 ${ob1.age }살 입니다</h3>
</fieldset>

<%@ page import="java.util.*" %>
<%
	Human[] arr = { ob1, ob2, ob3, ob4, ob5 };

	List<Human> list = Arrays.asList(arr);
	
	Map<String, Human> map = new HashMap<String, Human>();
	map.put("developer", ob1);
	map.put("operator", ob2);
	map.put("marketter", ob3);
	map.put("director", ob4);
	map.put("engineer", ob5);
	
	pageContext.setAttribute("arr", arr);
	pageContext.setAttribute("list", list);
	pageContext.setAttribute("map", map);
%>

<fieldset>
	<legend>표현식</legend>
	<h3><%=((Human[])pageContext.getAttribute("arr"))[0].getName() %></h3>
	<h3><%=((List<Human>)pageContext.getAttribute("list")).get(2).getName() %></h3>
	<h3><%=((Map<String, Human>)pageContext.getAttribute("map")).get("director").getName() %></h3>
</fieldset>

<fieldset>
	<legend>EL Tag</legend>
	<h3>${arr[1].name }</h3>
	<h3>${list[2].name }</h3>
	<h3>${map['director'].name }</h3>
</fieldset>

<fieldset>
	<legend>EL Tag의 추가 기능</legend>
	<h3>산술 연산, 논리 연산이 가능하다</h3>
	<h3>\${10 + 20 } : ${10 + 20 }</h3>
	<h3>\${10 + 20 == 30 } : ${10 + 20 == 30 }</h3>
	<h3>\${10 + 20 >= 30 } : ${10 + 20 >= 30 }</h3>
	<h3>\${10 + 20 < 30 } : ${10 + 20 < 30 }</h3>
	<h3>주의, EL Tag에서 산술연산을 사용하면 문자열도 숫자로 인식한다</h3>
	<h3>주의, EL Tag에서 문자열 덧셈은 지원하지 않는다</h3>
	<h3>${'10' + '20' }</h3>
	<h3>${"12" + "23" }</h3>
	<h3><%-- ${'Hello' + 'world' } 이렇게 사용하면 안됨 --%></h3>
	<h3>${'Hello' }${'world' }</h3>
	
	<h3>${arr[0].name }님은 ${arr[0].age >= 35 ? '성인' : '미성년자' }입니다</h3>
	<h3>${arr[1].name }님은 ${arr[1].age >= 35 ? '성인' : '미성년자' }입니다</h3>
	<h3>${arr[2].name }님은 ${arr[2].age >= 35 ? '성인' : '미성년자' }입니다</h3>
	<h3>${arr[3].name }님은 ${arr[3].age >= 35 ? '성인' : '미성년자' }입니다</h3>
	<h3>${arr[4].name }님은 ${arr[4].age >= 35 ? '성인' : '미성년자' }입니다</h3>
</fieldset>

</body>
</html>