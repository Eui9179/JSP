<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String userId = request.getParameter("id");
		String userPw = request.getParameter("password");
		
		if (userId.equals("eui") && userPw.equals("eui")){
			Cookie cookieId = new Cookie("userId", userId);
			response.addCookie(cookieId);
			response.sendRedirect("welcome.jsp");
		}
		else {
			out.print("로그인 실패");
		}
	%>
</body>
</html>