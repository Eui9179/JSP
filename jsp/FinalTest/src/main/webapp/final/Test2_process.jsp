<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String userId = request.getParameter("id");
		String password = request.getParameter("password");
		if (userId.equals("admin") && password.equals("admin1234")){
			session.setAttribute("userID", userId);
	%>
	<fieldset style="width:230px">
		Home > 로그인 접속 완료
		<hr>
		<p>[<%=userId %>] 님 환영합니다. 
		<hr>
		<form action="logout_process.jsp">
			<input type="submit" value="logout">
		</form>
	</fieldset>
	<%} else {
		out.print("로그인 실패");
	}
	%>
</body>
</html>