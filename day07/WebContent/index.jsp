<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>
	<table border="1" cellpadding="10" cellspacing="0">
		<tr>
			<td>\${empty ob }</td>
			<td>${empty ob }</td>
			<td>attribute ob가 null이면 true</td>
		</tr>
		<tr>
			<td>\${not empty ob }</td>
			<td>${not empty ob }</td>
			<td>attribute ob가 null이 아니면 true</td>
		</tr>
	</table>
</section>
</main>
</body>
</html>