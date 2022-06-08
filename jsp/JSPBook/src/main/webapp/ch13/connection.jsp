<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Database SQL</title>
</head>
<body>
	<%
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/JSPBookDB?user=root&password=1234");
			out.println("Connection success");
	
		} catch (SQLException ex) {
			out.println("Connection fail");
		} finally {
			if (conn != null)
				conn.close();
		}
	%>
</body>
</html>