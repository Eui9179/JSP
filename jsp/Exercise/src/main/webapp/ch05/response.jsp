<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>05</title>
</head>
<body>
	<%
		response.setIntHeader("Refresh", 1);
		Calendar cal = Calendar.getInstance();
		out.print("현재 시간은 "+cal.HOUR+":"+cal.MINUTE+":"+cal.SECOND+"<br>");
	%>
	<a href="response_data.jsp">Google 홈페이지로 이동하기</a>
</body>
</html>