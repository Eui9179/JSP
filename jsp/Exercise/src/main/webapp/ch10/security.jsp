<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>354 연습문제</title>
</head>
<body>
<%-- 시험 문제 --%>
	<p> 354 연습문제
	<%
		if(request.isUserInRole("admin")){
			response.sendRedirect("success.jsp");
		} else if(request.isUserInRole("role1")){
			response.sendRedirect("success.jsp");
		}
	%>
</body>
</html>