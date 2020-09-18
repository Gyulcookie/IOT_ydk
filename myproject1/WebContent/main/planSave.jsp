<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/dbcon.jsp" %>
<%
	String pdate = request.getParameter("pdate");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	String qry2 = "select count(*) as cnt from plan "+"where pdate = '"+pdate+"'";
	ResultSet rs2 = stmt.executeQuery(qry2);
	rs2.next();
	int cnt = rs2.getInt("cnt");
	
	if(cnt > 0){
		%>
		<script>
		alert("이미 저장된 내용이 있습니다.");
		self.close();
		</script>
		<%
		return;
	}
	
	
	String qry = "insert into plan(pdate,title,content) "+ "values('"+pdate+"','"+title+"','"+content+"')";
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
