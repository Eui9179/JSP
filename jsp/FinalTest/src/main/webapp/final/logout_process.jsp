<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String session_id = session.getId();
		String userId = (String)session.getAttribute("userID");
		long last_time = session.getLastAccessedTime();
		long start_time = session.getCreationTime();
		long used_time = (last_time - start_time)/1000;
		session.invalidate();
	%>
	<fieldset style="width:230px">
		Home > 세션 삭제 후 로그 아웃
		<hr>
		<p>로그인 접속 시간: <%=used_time %>초 
		<hr>
		<p> <%=userId%>님이 로그아웃 하였습니다.
	</fieldset>
</body>
</html>