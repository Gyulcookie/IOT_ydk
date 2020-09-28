<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/dbcon.jsp"%>
<%

	String unq = request.getParameter("unq");
	String pass = request.getParameter("pass");
	
	if(unq == null || pass == null ){
		%>
		<script>
		alert("잘못된 접근입니다.");
		location="/";
		</script>
		<%
		return;
	}
	String qry = "select count(*) cnt from reboard where unq = '"+unq+"' and pass = '"+pass+"'";
	ResultSet rs = stmt.executeQuery(qry);
	rs.next();
	int cnt = rs.getInt("cnt");
	
	if( cnt == 0){
		%>
		<script>
		alert("암호를 다시 설정해주세요.");
		history.go(-1); // == history.back();
		</script>
		<%
		return;
	}
	String qry3 = "select fid, thread thread from reboard where unq = '"+unq+"'";
	ResultSet rs2 = stmt.executeQuery(qry3);
	rs2.next();
	String fid = rs2.getString("fid");
	String thread = rs2.getString("thread");
	
	
	String qry2 = "select count(*) as cnt from reboard where fid ='"+fid+"' and thread like '"+thread+"_'";
	ResultSet rs3 = stmt.executeQuery(qry2);
	rs3.next();
	int cnt_thread = rs3.getInt("cnt");
	
	String sql ="";
	if(cnt_thread == 0){
		sql = "delete from reboard where unq = '"+unq+"'";
	}else{
		sql ="update reboard set title = '게시자에 의한 삭제', content='' where unq = '"+unq+"'";
	}
	int result = stmt.executeUpdate(sql);
	
	if( result > 0){
		%>
		<script>
		alert("삭제 되었습니다.");
		self.close();
		opener.location="reboardList.jsp";
		</script>
		<%
		return;
	}else{
		%>
		<script>
		alert("취소되었습니다.");
		opener.location="reboardList.jsp";
		</script>
		<%
	}

%>
