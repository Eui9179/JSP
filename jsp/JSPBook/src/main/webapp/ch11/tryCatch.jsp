<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		try{
			int i = 1;
			i = 1/0;
			out.println(i);
		} catch(Exception e) {
			out.print("오류 발생: "+e.getMessage());
		}
	%>
</body>
</html>