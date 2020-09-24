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
		location="/main/main.jsp";
		</script>
		<%
		return;
	}
	String qry = "select count(*) cnt from board1 where unq = '"+unq+"' and pass = '"+pass+"'";
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
	String sql = "delete from board1 where unq = '"+unq+"'";
	int result = stmt.executeUpdate(sql);
	
	if( result > 0){
		%>
		<script>
		alert("삭제 되었습니다.");
		self.close();
		opener.location="boardList.jsp";
		</script>
		<%
		return;
	}else{
		%>
		<script>
		alert("취소되었습니다.");
		opener.location="boardList.jsp";
		</script>
		<%
	}

%>
