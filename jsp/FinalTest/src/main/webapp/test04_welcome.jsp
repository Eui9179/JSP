<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
	<%
		if(session.getAttribute("userID") == null){
			response.sendRedirect("test04_session_out.jsp");
		}
	%>
	<h4><%= session.getAttribute("userID") %> 님 반갑습니다.</h4>
	<a href="test04_session_out.jsp">로그아웃</a>
</body>
</html>