<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		
		StringBuffer buffer = new StringBuffer();
		buffer.append("아이디: ").append(name).append("<br>")
			.append("주소: ").append(address).append("<br>")
			.append("이메일: ").append(email).append("<br>");		
	%>
	<%= buffer.toString() %>

</body>
</html>