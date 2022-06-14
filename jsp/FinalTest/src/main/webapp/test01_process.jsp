<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test01</title>
</head>
<body>
	<h2>수강신청 현황</h2>
	<%
		request.setCharacterEncoding("utf-8");
		String aClass = request.getParameter("apply_class");
		String aSubject1 = request.getParameter("apply_subject1");
		String aSubject2 = request.getParameter("apply_subject2");
		String aCount1 = request.getParameter("apply_count1");
		String aCount2 = request.getParameter("apply_count2");
	%>
	<hr>
	<table border="1" width="80%">
		<tr bgcolor="#ccffaa">
			<th width="30%"> 신청학과 </th>
			<th> 신청 과목 </th>
			<th> 신청 인원</th>
		</tr>
		<tr>
			<td rowspan="2" align="center"><%=aClass %></td>
			<td><%=aSubject1%></td>
			<td align="center"><%=aCount1%></td>
		</tr>
		<tr>
			<td><%=aSubject2%></td>
			<td align="center"><%=aCount2%></td>
		</tr>
	</table>

</body>
</html>