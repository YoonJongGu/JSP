<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.multipart.FileRenamePolicy"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01-action.jsp</title>
</head>
<body>

<h1>전송받은 파일을 처리하기</h1>
<hr>

<ol>
	<li>JSP에서 파일을 전달받으면, 일반 parameter로 처리할 수 없다 (반환형이 String)</li>
	<li>JSP 내장객체 request에서는 파일을 처리하는 함수가 준비되어 있지 않다</li>
	<li>파일 처리를 위한 별도의 라이브러리를 가져와서 처리한다 (com.oreilly.servlet)</li>
	<li></li>
</ol>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%
	// 내장객체 request로는 파일을 처리할 수 없어서, MultipartRequest 타입의 객체로 변환한다
	// 생성자 매개변수에 기존 request를 전달해야 한다
	
	String saveDirectory = application.getRealPath("upload");
	int maxPostSize = 1024 * 1024 * 20;
	String encoding = "UTF-8";
	FileRenamePolicy namePolicy = new DefaultFileRenamePolicy();
	
	File dir = new File(saveDirectory);
	if(dir.exists() == false) {
		dir.mkdirs();
	}
	
	MultipartRequest mpRequest = new MultipartRequest(
				request,		// 파일이 담겨있는 기존의 요청
				saveDirectory,	// 파일을 저장할 경로 (폴더 / 디렉토리)
				maxPostSize,	// 업로드 허용 최대 용량
				encoding,		// 파일 이름에 대한 인코딩 규칙				
				namePolicy		// 중복된 이름이 있을 경우 새로 이름을 지어주는 정책
			);
	
	// MultipartRequest 의 객체를 생성하는것 만으로, 파일 업로드는 끝난다
	// 파일의 추가정보를 확인하고 싶다면, 메서드를 이용하여 확인할 수 있다
	
	// request.getParameter(String name) => mpRequest.getFile(String name)
	// java.lang.String 				 => java.io.File
	
	String name = mpRequest.getParameter("name");		// input type="text" 의 값(String)
	File uploadFile = mpRequest.getFile("uploadFile");	// input type="file" 의 값(File)
	String fileName = uploadFile.getName();				// file의 원래 이름 (String)
	// 파일은 웹 서버 혹은 별도의 서버에 저장하지만, DB에는 파일의 이름을 문자열로 기록해야 하기 때문에
	// 파일도 확보해야 하고, 파일 이름도 확보해야 한다
	
	// request 내장객체에서는 getParameter("name") 을 호출해도, 값은 받을 수 없다
	String _name = request.getParameter("name");
%>

<h3><%=mpRequest.getFile("uploadFile") %></h3>
<h3><%=mpRequest.getContentType("uploadFile") %></h3>
<h3><%=mpRequest.getOriginalFileName("uploadFile") %></h3>
<h3>name : <%=name %></h3>
<h3>_name : <%=_name %></h3>

</body>
</html>