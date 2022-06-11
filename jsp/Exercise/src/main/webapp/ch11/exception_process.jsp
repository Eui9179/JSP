<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exception</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		if (id == null || id.equals("")){
			int i = 1/0;
		}else{
			out.print(id+"<br>");
			out.print(password+"<br>");
		}
		
	%>
</body>
</html>