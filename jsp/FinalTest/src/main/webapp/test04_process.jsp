<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<%
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");
		
		if(user_id.equals("admin") && user_pw.equals("admin1234")){
			session.setAttribute("userID", user_id);
			response.sendRedirect("test04_welcome.jsp");
		} else {
			out.println("아이디와 비밀번호를 확인해주세요");
		}
	%>
</body>
</html>