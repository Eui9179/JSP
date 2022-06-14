<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function checkPasswd(){
		const id = document.getElementById("id").value;
		const passwd = document.getElementById("passwd").value;
		const passwdConfirm = document.getElementById("passwdConfirm").value;
		
		const pattern1 = /[0-9]/;
		const pattern2 = /[a-zA-Z]/;
		const pattern3 = /[~!@\#$%<>^&*]/;
		
		if(id.length == 0){
			alert("아이디를 입력해주세요");
			return false;
		}
		if(passwd.length == 0){
			alert("비밀번호를 입력해주세요");
			return false;
		} else {
			if(passwd != passwdConfirm){
				alert("비밀번호가 일치하지 않습니다.");
				return false;
			}
		}
		if(!pattern1.test(passwd) || 
				!pattern2.test(passwd) || 
				!pattern3.test(passwd) || 
				passwd.length < 8 ){
			alert("영문+숫자+특수문자, 8자리이상으로 구성해야합니다.");
			return false;
		}
		document.form.submit();
		
	}
</script>
<body>
	<form name="form" action="test03_process.jsp" method="post" autocomplete="off">
		<table>
			<tr><td>아이디</td><td><input type="text" id="id" name="id"></td>
			<tr><td>비밀번호</td><td><input type="text" id="passwd" name="passwd"></td>
			<tr><td>비밀번호 확인</td><td><input type="text" id="passwdConfirm"></td>
		</table>
		<p><input type="button" value="전송" onclick="checkPasswd()">
	</form>
</body>
</html>