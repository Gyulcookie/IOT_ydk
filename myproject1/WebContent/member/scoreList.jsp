
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
		
	</div>
	<div class="footer"></div>
</body>
</html>

