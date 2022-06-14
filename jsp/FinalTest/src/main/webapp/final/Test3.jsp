<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function checkValidation(){
		const id = document.getElementById("id").value;
		const pw = document.getElementById("password").value;
		const name = document.getElementById("name").value;
		const email = document.getElementById("email").value;
		
		const patId = /^P/;
		
		const pPw1 = /[0-9]/;
		const pPw2 = /[a-zA-Z]/;
		const pPw3 = /[~!@#/%$<>^&*]/;
		
		const pEmail = /^[0-9a-zA-z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		
		if (id.length == 0){
			alert("아이디를 입력하세요");
			return false;
		}
		if(!patId.test(id)){
			alert("아이디는 P로 시작해야합니다.");
			return false;
		}
		if (pw.length == 0){
			alert("비밀번호를 입력하세요");
			return false;
		} else {
			if(!pPw1.test(pw)|| !pPw2.test(pw)|| !pPw3.test(pw)){
				alert("비밀번호는 반드시 영문 숫자 특수문자를 포함해야합니다.");
				return false
			}
		}
		if (name.length == 0){
			alert("이름를 입력하세요");
			return false;
		}
		if (email.length == 0){
			alert("이메일를 입력하세요");
			return false;
		} else{
			if(!pEmail.test(email)){
				alert("이메일 형식을 확인해 주세요");
				return false;
			}
		}
		document.form.submit();
	}	
</script>
<body style="width:320px">
Home > 프로잭트 회원
<hr>
<fieldset>
	
	<legend>회원 등록</legend>
		<form name="form" action="Test3_insert.jsp">
			<p>아이디:<br>
			<input type="text" name="id" id="id">
			<p>비밀번호:
			<br><input type="password" name="password" id="password">
			<p>이름:
			<br><input type="text" name="name" id="name">
			<p>이메일:
			<br><input type="text" name="email" id="email">
			<p><input type="reset" value="< 다시 작성">
			<input type="button" value="등록하기 >" onclick="checkValidation()">
		</form>
	</fieldset>
</body>
</html>