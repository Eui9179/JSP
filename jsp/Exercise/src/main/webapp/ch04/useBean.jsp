<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request">
		<p> 아이디: <%=person.getName() %>
		<p> 나 이: <%=person.getAge() %>
	</jsp:useBean>

</body>
</html>