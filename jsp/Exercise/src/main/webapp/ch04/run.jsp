<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>구구단 출력하기</h2>
<%-- <jsp:forward page="forward.jsp" /> --%>
<%-- <jsp:include page="include.jsp"/> --%>
<jsp:useBean id="gugudan" class="ch04.com.dao.Gugudan" scope="page">
	<%
		for(int i=1;i<10;i++){
			out.print(gugudan.getGugudan(i)+"<br>");
		}
	 %>
</jsp:useBean>


</body>
</html>