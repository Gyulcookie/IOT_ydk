<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/dbcon.jsp" %>
<%
	String pdate = request.getParameter("pdate");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	
	String qry = "update plan set title='"+title+"',content='"+content+"' where pdate='"+pdate+"'";
	int result = stmt.executeUpdate(qry);
	if(result > 0){
		%>
		<script>
		alert("저장완료");
		self.close();
		</script>
		<%
	}else{
		%>
		<script>
		alert("저장실패");
		history.back();
		</script>
		<%
	}
%>
