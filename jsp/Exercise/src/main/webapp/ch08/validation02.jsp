<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script type="text/javascript">
	function checkid(){
		if(document.form.id.value===""){
			alert("아이디를 입력해주세요");
			document.form.id.select();
		}
	}
</script>

<body>
	<form name="form">
		<p>아이디: <input type="text" name="id">
		<input type="submit" value="전송" onclick="checkid()">	
	</form>
</body>
</html>