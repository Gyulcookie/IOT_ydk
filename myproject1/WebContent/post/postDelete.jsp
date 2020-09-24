<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/dbcon.jsp"%>

<%
	String a1 = request.getParameter("a1");
	String qry = "delete from post where a1 = '"+a1+"'";
	int rs = stmt.executeUpdate(qry);
	
	if(rs>0){
		%>
		<script>
		alert("삭제완료");
		location="postList.jsp";
		</script>
		<%
	}else{
		%>
		<script>
		alert("삭제실패");
		location="postList.jsp";
		</script>
		<%
	}

%>