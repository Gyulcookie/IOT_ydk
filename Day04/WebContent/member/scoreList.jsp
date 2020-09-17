
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/dbcon.jsp" %>
<%@ include file="../css/topMenu.jsp" %>
<%
	String qry = "select userid,eng,kor,math from score";
	ResultSet rs = stmt.executeQuery(qry);
%>

<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Score list</title>
<link rel="stylesheet" type="text/css" href="../css/layout.css">
</head>

<body>
	
	<div class="side"></div>
	<div class="section">
		<div style ="width:600px;text-align:right;margin-bottom:5px;margin-top:5px;">
			<button type="button" onClick="location='scoreWrite.jsp'">글쓰기</button>
		</div>
		<table border="1" width = "600">
			<tr>
				<th>아이디</th>
				<th>영어</th>
				<th>국어</th>
				<th>수학</th>
				<th>삭제</th>
			</tr>
			<%
				while(rs.next()){
					
					String userid = rs.getString("userid");
					int eng = rs.getInt("eng");
					int kor = rs.getInt("kor");
					int math = rs.getInt("math");%>
					
					<tr>
						<td><a href="scoreModify.jsp?userid=<%=userid%>"><%=userid %></td>
						<td><%=eng %></td>
						<td><%=kor %></td>
						<td><%=math %></td>
						<td><a href="scoreDelete.jsp?userid=<%=userid%>">del</a></td>
					</tr>
					
					<%
				}
			%>
		</table>
		
	</div>
	<div class="footer"></div>
</body>
</html>

