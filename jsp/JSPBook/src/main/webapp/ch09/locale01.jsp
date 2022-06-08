<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.text.NumberFormat" %>
<%@page import="java.text.DateFormat" %>
<%@page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Locale test</title>
</head>
<body>
	<h2>현재 로케일의 국가, 날짜, 통화</h2>
	<%
		Locale locale = request.getLocale();
		Date currentDate = new Date();
		DateFormat dateFormat = DateFormat.getDateInstance(DateFormat.FULL,
				locale);
		NumberFormat numberFormat = NumberFormat.getNumberInstance(locale);
	%>
	
	<p> 국가: <%=locale.getDisplayCountry() %>
	<p> 날짜: <%=dateFormat.format(currentDate)%>
	<p> 숫자(12345.67): <%=numberFormat.format(12345.67) %>

</body>
</html>