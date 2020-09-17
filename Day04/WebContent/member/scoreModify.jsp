<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../css/topMenu.jsp" %>
<%@ include file="../include/dbcon.jsp" %>

<%
	String userid = request.getParameter("userid");
	String qry = "select eng,kor,math from score where userid = '" + userid+"'";
	ResultSet rs = stmt.executeQuery(qry);
	
	int eng;
	int kor;
	int math;
	
	if( rs.next() ){
		eng = rs.getInt("eng");
		kor = rs.getInt("kor");
		math = rs.getInt("math");
	} else{
		%>
		<script>
		alert("다시 시도해주세요.");
		location ="scoreList.jsp";
		</script>
		<%
		return;
	}
	
%>

<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Score Modify</title>
<link rel="stylesheet" type="text/css" href="../css/layout.css">
</head>

<body>
	<div class="side"></div>
	<div class="section">
	
	<form name="frm" method="post" action="scoreModifySave.jsp">
	<table border="1" class="table1">
		<tr>
			<th>아이디</th>
			<td><input type="text" name="userid" value="<%=userid%>" readonly></td>
		</tr>
		<tr>
			<th>영어 점수</th>
			<td><input type="text" name="eng" value="<%=eng%>"></td>
		</tr>
		<tr>
			<th>국어 점수</th>
			<td><input type="text" name="kor" value="<%=kor%>"></td>
		</tr>
		<tr>
			<th>수학 점수</th>
			<td><input type="text" name="math" value="<%=math%>"></td>
		</tr>
	</table>
	
	<div style="text-align:center;margin-top:10px;width:600px;">
		<button type="submit">저장</button>
		<button type="reset">취소</button>
	</div>
	
	</form>
	
	</div>
	<div class="footer"></div>
</body>
</html>

