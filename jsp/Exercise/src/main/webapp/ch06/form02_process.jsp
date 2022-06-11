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
	<table border="1">
	<%
		request.setCharacterEncoding("utf-8");
		Enumeration paramNames = request.getParameterNames();
		StringBuffer buffer = new StringBuffer();
		
		while(paramNames.hasMoreElements()){
			String name = (String) paramNames.nextElement();
			String param = request.getParameter(name);
			buffer
				.append("<tr><td>").append(name).append("</td>")
				.append("<td>").append(param).append("</td></tr>");
		}
		out.print(buffer.toString());
	%>
	</table>
</body>
</html>