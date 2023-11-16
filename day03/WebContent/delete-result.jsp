<%@page import="day03.Handler"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%		
	Handler hd = (Handler)application.getAttribute("handler");	// handler를 불러와서	
	int idx = Integer.parseInt(request.getParameter("idx"));	// 사용자가 전달한 번호를 저장하고
	int row = hd.delete(idx);									// 삭제의 결과를 정수로 받고
	String msg = row == 1 ? "삭제되었습니다" : "도서가 존재하지 않습니다";
	// 결과에 따라 출력할 메시지를 문자열에 저장	
%>

<div style="width: 300px; margin: auto; border: 3px solid red; padding: 20px;">
	<h3><%=msg %></h3>
	<a href="index.jsp"><button>목록으로</button></a>
</div>