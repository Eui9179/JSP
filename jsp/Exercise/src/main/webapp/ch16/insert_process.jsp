<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	<% 
		request.setCharacterEncoding("utf-8");
		int num = Integer.parseInt(request.getParameter("num"));
		String depart = request.getParameter("depart");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		
		Statement stmt = null;
		
		PreparedStatement pstmt = null;
		
		try{		
			String sql = "insert into student(num, depart, name, address, phone) value (?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, depart);
			pstmt.setString(3, name);
			pstmt.setString(4, address);
			pstmt.setString(5, phone);
			pstmt.executeUpdate();
			out.println("student 테이블에 삽입 완료했습니다.");
	
		}catch(SQLException ex){
			out.println("SQLException: "+ex.getMessage());
		}finally{
			if(pstmt != null) pstmt.close();
			if (conn != null) conn.close();
		}
	%>

</body>
</html>