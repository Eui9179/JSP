<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Database</title>
</head>
<body>
<%@ include file="dbconn.jsp" %>

<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("userid");
	String username = request.getParameter("username");
	String dona = request.getParameter("donation");
	
	PreparedStatement pstmt = null;
	
	try{
		String sql = "insert into test_board(id, name, donation) values(?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,id);
		pstmt.setString(2,username);
		pstmt.setInt(3, Integer.parseInt(dona));
		pstmt.executeUpdate();
		
		response.sendRedirect("test05_select.jsp");
		
	} catch(SQLException ex){
		out.println("테이블 삽입을 실패했습니다");
		out.print(ex.toString());
	} finally{
		if(pstmt != null) pstmt.close();
		if(conn!= null) conn.close();
	}
	
%>

</body>
</html>