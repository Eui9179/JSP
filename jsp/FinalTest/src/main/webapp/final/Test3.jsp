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
			alert("���̵� �Է��ϼ���");
			return false;
		}
		if(!patId.test(id)){
			alert("���̵�� P�� �����ؾ��մϴ�.");
			return false;
		}
		if (pw.length == 0){
			alert("��й�ȣ�� �Է��ϼ���");
			return false;
		} else {
			if(!pPw1.test(pw)|| !pPw2.test(pw)|| !pPw3.test(pw)){
				alert("��й�ȣ�� �ݵ�� ���� ���� Ư�����ڸ� �����ؾ��մϴ�.");
				return false
			}
		}
		if (name.length == 0){
			alert("�̸��� �Է��ϼ���");
			return false;
		}
		if (email.length == 0){
			alert("�̸��ϸ� �Է��ϼ���");
			return false;
		} else{
			if(!pEmail.test(email)){
				alert("�̸��� ������ Ȯ���� �ּ���");
				return false;
			}
		}
		document.form.submit();
	}	
</script>
<body style="width:320px">
Home > ������Ʈ ȸ��
<hr>
<fieldset>
	
	<legend>ȸ�� ���</legend>
		<form name="form" action="Test3_insert.jsp">
			<p>���̵�:<br>
			<input type="text" name="id" id="id">
			<p>��й�ȣ:
			<br><input type="password" name="password" id="password">
			<p>�̸�:
			<br><input type="text" name="name" id="name">
			<p>�̸���:
			<br><input type="text" name="email" id="email">
			<p><input type="reset" value="< �ٽ� �ۼ�">
			<input type="button" value="����ϱ� >" onclick="checkValidation()">
		</form>
	</fieldset>
</body>
</html>