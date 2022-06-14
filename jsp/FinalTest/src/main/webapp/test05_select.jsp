<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Database</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	<table border="1" >
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>기부금</th>
		</tr>
		<%
			ResultSet rs = null;
			PreparedStatement pstmt = null;
			
			try{
				String sql = "select * from test_board";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
				while(rs.next()){
					String id = rs.getString("id");
					String name= rs.getString("name");
					String dona= rs.getString("donation");
					%>
					<tr>
						<td><%=id %></td>
						<td><%=name %></td>
						<td><%=dona %></td>
					</tr>
					<%
				}
			}catch (SQLException ex){
				out.print("데이터베이스 오류");
				out.print(ex.toString());
			} finally{
				if(rs!=null){
					rs.close();
				}
				if (pstmt != null){
					pstmt.close();
				}
			}
		%>
	</table>
</body>
</html>