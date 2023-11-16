<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// ex03-action.jsp
	request.setCharacterEncoding("UTF-8");
	
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	String adult = age >= 20 ? "성인" : "미성년자";
	
	// 기능 처리 끝. 화면 출력은 이 페이지에서 처리하고 싶지 않음 (화면과 기능 분리)
	String msg = "%s님은 %d살이고, %s입니다";
	msg = String.format(msg, name, age, adult);
	
	// request에 준비해둔 msg를 적재한다 (저장한다)
	request.setAttribute("msg", msg);
	
	String path = "ex03-result.jsp";	// 결과를 출력할 화면 중심 jsp
	RequestDispatcher rd = request.getRequestDispatcher(path);
	rd.forward(request, response);	// 이동하면서 request를 같이 전달한다
%>
