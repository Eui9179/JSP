<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
	<form action="request01_process.jsp" method="post">
	<fieldset>
	<legend>로그인</legend>
		<p> 아 이 디 &nbsp;: <input type="text" name="id">
		<p> 비밀번호: <input type="password" name="passwd">
		<p> <input type="submit" name="전송">
	</fieldset>
	</form>
</body>
</html>