<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../css/topMenu.jsp" %>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Score input</title>
<link rel="stylesheet" type="text/css" href="../css/layout.css">
</head>

<body>
	<div class="side"></div>
	<div class="section">
	
	<form name="frm" method="post" action="scoreWriteSave.jsp">
	<table border="1" class="table1">
		<tr>
			<th>아이디</th>
			<td><input type="text" name="userid"></td>
		</tr>
		<tr>
			<th>영어 점수</th>
			<td><input type="text" name="eng"></td>
		</tr>
		<tr>
			<th>국어 점수</th>
			<td><input type="text" name="kor"></td>
		</tr>
		<tr>
			<th>수학 점수</th>
			<td><input type="text" name="math"></td>
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

