<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Test1 Process</title>
</head>
<body>
Home > Personal Information Inquiry
<hr>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("p_id");
	String pw = request.getParameter("p_pw");
	String name = request.getParameter("p_name");
	String choice = request.getParameter("choice");
	String p1 = request.getParameter("phone1");
	String p2 = request.getParameter("phone2");
	String p3 = request.getParameter("phone3");
	String gender = request.getParameter("gender");
	String hobby[] = request.getParameterValues("hobby");
	String introduction = request.getParameter("Introduction");
	String hobbies = "";
	for(int i=0; i<hobby.length; i++){
		hobbies += hobby[i]+" ";
	}
%>
<table border="1" width="80%" >
	<tr align="left">
		<th bgcolor="#ccffaa">아이디</th>
		<td><%=id %></td>
		<th bgcolor="#ccffaa">비밀번호</th>
		<td><%=pw %></td>
	</tr>
	<tr align="left">
		<th bgcolor="#ccffaa">이름</th>
		<td><%=name %></td>
		<th bgcolor="#ccffaa">성별</th>
		<td><%=gender %></td>
	</tr>
	<tr align="left" >
		<th bgcolor="#ccffaa">연락처</th>
		<td colspan="3"><% out.print(choice+" "+p1+"-"+p2+"-"+p3); %></td>
	</tr>
	<tr align="left">
		<th bgcolor="#ccffaa">취미</th>
		<td colspan="3"><% out.print(hobbies); %></td>
	</tr>
	
</table>
<p> 본인 소개: <%=introduction %>
</body>
</html>