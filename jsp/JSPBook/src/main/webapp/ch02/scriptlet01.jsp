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
		// 	int a = 2;
		// 	int b = 3;
		// 	out.println("a + b = "+ a+b);
		for(int i=0; i<100; i ++){	
			if(i %2 == 0){
				out.println(i + "<br>");
			}
		}
	%>
</body>
</html>