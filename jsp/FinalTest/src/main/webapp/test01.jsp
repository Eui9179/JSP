<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test01</title>
</head>
<body>
	<form action="test01_process.jsp" method="post">
		<fieldset>
		<legend>수강신청</legend>
			<p> 학 과 명 : <input type="text" name="apply_class">
			<p> 신청과목1 : <input type="text" name="apply_subject1">
				신청인원 : <input type="number" name="apply_count1">
			<p> 신청과목2 : <input type="text" name="apply_subject2">
				신청인원 : <input type="number" name="apply_count2">
			<p><input type="submit" value="전송">
		</fieldset>
	</form>
</body>
</html>