<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/dbcon.jsp"%>

<%
	String pdate = request.getParameter("pdate");
	String qry = " delete from plan where pdate = '"+pdate+"'";
	
	int result = stmt.executeUpdate(qry);
	if(result > 0){
		%>
		<script>
		alert("삭제완료");
		self.close();
		</script>
		<%
	}else{
		%>
		<script>
		alert("삭제실패");
		history.back();
		</script>
		<%
	}
%>