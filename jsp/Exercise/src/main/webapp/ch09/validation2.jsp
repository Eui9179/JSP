<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="validation2" action="validation2_process.jsp" method="post">
		<p> 아이디 <input type="text" id="id"/>
		<p> 비밀번호 <input type="text" id="passwd"/>
		<p> 비밀번호 확인 <input type="text" id="passwd"/>
		<p> <input type="button" value="전송" onclick="checkPasswd()"/>
	</form>
</body>
</html>