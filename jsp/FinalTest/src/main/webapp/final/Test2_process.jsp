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
		Home > �α��� ���� �Ϸ�
		<hr>
		<p>[<%=userId %>] �� ȯ���մϴ�. 
		<hr>
		<form action="logout_process.jsp">
			<input type="submit" value="logout">
		</form>
	</fieldset>
	<%} else {
		out.print("�α��� ����");
	}
	%>
</body>
</html>