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
		String userId = (String)session.getAttribute("userID");
		if (userId == null){
			response.sendRedirect("session_out.jsp");
		}
		
	%>
	<h2>안녕하세요! <%=userId%></h2>
	<a href="logout.jsp">로그아웃</a>
</body>
</html>