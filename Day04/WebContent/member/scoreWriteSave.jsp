<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/dbcon.jsp" %>

<% 
	String userid = request.getParameter("userid");
	String eng = request.getParameter("eng");
	String kor = request.getParameter("kor");
	String math = request.getParameter("math");
%>


<%
	String qry = "insert into score values('"+userid+"','"+eng+"','"+kor+"','"+math+"')";
	int result = stmt.executeUpdate(qry);

	if(result > 0) {
	%>
		<script>
		alert("저장 완료");
		location="scoreList.jsp";
		</script>
	<% 
	}
	else{
		%>
		<script>
		alert("저장 실패");
		history.back();
		</script>
	<%}
%>
