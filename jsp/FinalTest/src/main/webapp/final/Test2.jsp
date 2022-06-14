<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Test2</title>
</head>
<body>

<form action="Test2_process.jsp" method="post">
	<fieldset style="width:230px">
		Home > 로그인 폼 화면
		<hr>
		<p>아이디:<br>
		<input type="text" name="id">
		<p>비밀번호:
		<br><input type="password" name="password">
		<p><input type="submit" value="Login"> 
		<input type="reset" value="Cancel">
	</fieldset>
</form>
</body>
</html>