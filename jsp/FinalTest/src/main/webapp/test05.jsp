<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Database</title>
</head>
<body>
HOME > 기부금
	<hr>
	<form action="test05_insert.jsp" name="donation_insert" method="post">
		<fieldset style="width:230px">
			<legend>기부금 납입</legend><p>
			아이디: <br>
			<input type="text" size="16" name="userid"><br><br>
			
			이&nbsp;&nbsp;&nbsp;름: <br>
			<input type="text" size="16" name="username"><br><br>
			
			기부금액: <br>
			<input type="number" size="30" name="donation"><br>
			<hr>
			<input type="reset" value="다시작성하기">
			<input type="submit" value="기부하기">
			<br><br>
		</fieldset>
	</form>
</body>
</html>