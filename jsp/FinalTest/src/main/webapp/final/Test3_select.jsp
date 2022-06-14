<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>3</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	
	<table border="1">
		<tr>
			<th>���̵�</th>
			<th>�̸�</th>
			<th>�̸���</th>
		</tr>
		<%
			ResultSet rs = null;
			PreparedStatement pstmt = null;
			
			try{
				String sql = "select * from Test_member";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
				while(rs.next()){
					String id = rs.getString("id");
					String name= rs.getString("name");
					String email = rs.getString("email");
					%>
						<tr>
							<td><%= id %></td>
							<td><%= name %></td>
							<td><%= email %></td>
						</tr>
					<%
					
				}
			} catch(SQLException ex){
				out.print(ex.toString());
			} finally{
				if(rs != null){
					rs.close();
				}
				if (pstmt != null){
					pstmt.close();
				}
			}
		%>
	</table>
	<form action="Test3.jsp">
		<p><input type="submit" value="���ư���">
	</form>
	
	
</body>
</html>