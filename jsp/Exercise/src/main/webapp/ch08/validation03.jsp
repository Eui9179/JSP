<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>validation03</title>
</head>
<script type="text/javascript">
	function checkLogin(){
		var form = document.loginForm;
		if(form.id.value===""){
			form.id.select();
			alert("아이디를 입력해주세요");
			return false;
		}
		if(form.passwd.value===""){
			form.passwd.select();
			alert("비밀번호를 입력하세요");
			return false;
		}
		form.submit()
	}
</script>
<body>
	<form name="loginForm">
			<p>아이디: <input type="text" name="id">
			<p>비밀번호: <input type="text" name="passwd">
			<p><input type="button" value="전송" onclick="checkLogin()">
	</form>
</body>
</html>