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
		Home > ���� ���� �� �α� �ƿ�
		<hr>
		<p>�α��� ���� �ð�: <%=used_time %>�� 
		<hr>
		<p> <%=userId%>���� �α׾ƿ� �Ͽ����ϴ�.
	</fieldset>
</body>
</html>