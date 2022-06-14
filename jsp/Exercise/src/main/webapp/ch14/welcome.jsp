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
		Cookie[] cookies = request.getCookies();
		
		if(cookies[0].getName() == null){
			response.sendRedirect("cookie_out.jsp");
		}
	%>
	<h2>안녕하세요!</h2>
	<a href="logout.jsp">로그아웃</a>
</body>
</html>