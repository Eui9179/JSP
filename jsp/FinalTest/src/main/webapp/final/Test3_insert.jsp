<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pass = request.getParameter("password");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		 PreparedStatement pstmt = null;
		
		try{
			String sql = "insert into Test_member(id, pass, name, email) values(?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,id);
			pstmt.setString(2,pass);
			pstmt.setString(3,name);
			pstmt.setString(4,email);
			pstmt.executeUpdate();
			
 			response.sendRedirect("Test3_select.jsp");

		} catch(SQLException ex){
			out.print(ex.toString());
		} finally{
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
	
	%>
</body>
</html>