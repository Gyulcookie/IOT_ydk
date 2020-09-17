<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/dbcon.jsp" %>

<%
String userid = request.getParameter("userid");
String eng = request.getParameter("eng");
String kor = request.getParameter("kor");
String math = request.getParameter("math");

String qry = "update score set eng="+eng+", kor="+kor+", math = " +math+" where userid = '"+userid+"'";
int result = stmt.executeUpdate(qry);

if(result >0){
	%>
	<script>
	alert("수정완료");
	location("scoreList.jsp");
	</script>
	<%
}else{
	%>
	<script>
	alert("수정실패");
	location("scoreList.jsp");
	</script>
	<%
}
%>