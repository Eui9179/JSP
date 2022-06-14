<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>선택한 과일</h2>
<%
	request.setCharacterEncoding("utf-8");
	String[] paramValues = request.getParameterValues("fr");
	for(int i=0;i<paramValues.length;i++){
		out.print(paramValues[i]+" ");
	}
%>
</body>
</html>