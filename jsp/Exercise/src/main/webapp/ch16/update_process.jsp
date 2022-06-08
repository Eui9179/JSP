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
		String phone = request.getParameter("phone");
			
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		
		try{
			String sql = "select id, passwd from student where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			
			if (rs.next()){
				int rNum = rs.getInt("num");
				if (num == rNum){
					sql = "update student set phone=? where num=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, phone);
					pstmt.setInt(2, num);
					pstmt.executeUpdate();
					out.println("memeber 테이블을 수정했습니다.");
				}
			}else{
				out.println("member 테이블에 일치하는 아이디가 없습니다.");
			} 
		}catch(SQLException ex){
			out.println("SQLException: "+ex.getMessage());
		}finally{
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if (conn != null) conn.close();
		}
	%>


</body>
</html>