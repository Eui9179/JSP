<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<% if(request.getParameter("result")!=null
			&&request.getParameter("result").equals("fail")){ %>
		<script>
			alert("아이디 혹은 비밀번호를 확인해주세요");
		</script>
	<% 
		}
		Enumeration sessionNames = session.getAttributeNames();
		
		while(sessionNames.hasMoreElements()){
			out.print(sessionNames.nextElement());
		}
	%>
	
	
	<form action="session_process.jsp" method="post">
		<p>아이디: <input type="text" name="id">
		<p>비밀번호: <input type="text" name="password">
		<p><input type="submit" value="전송">
	</form>
</body>
</html>