<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>validation</title>
</head>
<body>
	<script type="text/javascript">
		function checkPasswd(){
			id = document.getElementById("id").value;
			passwd = document.getElementById("passwd").value;
		
			if (id.length == 0){
				alert("아이디를 입력해주세요");
				document.getElementById("id").focus();
				return;
			}
			if (passwd.length == 0){
				alert("비밀번호를 입력해주세요");
				document.getElementById("passwd").focus();
				return;
			}
			
			if (passwd.indexOf(id) > -1){
				alert("비밀번호는 ID를 포함할 수 없습니다.");
				return;
			}
			
			document.validation.submit();
		}
	</script>
	
	<form name="validation" action="validation_process.jsp" method="POST">
		<p>아이디: <input type="text" name="id" id="id">
		<p>비빌번호: <input type="text" name="passwd" id="passwd">
		<p> <input type="button" value="전송" onclick="checkPasswd()">
	</form>

</body>
</html>