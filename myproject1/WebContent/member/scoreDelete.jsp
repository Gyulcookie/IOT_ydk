<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/dbcon.jsp"%>

<%
String userid = request.getParameter("userid");
String qry = "delete from score where userid = '"+userid+"'";
int rs = stmt.executeUpdate(qry);

if(rs>0){
	%>
	<script>
	alert("삭제완료");
	location="scoreList.jsp";
	</script>
	<%
}else{
	%>
	<script>
	alert("삭제실패");
	location="scoreList.jsp";
	</script>
	<%
}
%>