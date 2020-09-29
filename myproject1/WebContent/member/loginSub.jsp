<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/dbcon.jsp"%>

<%
	String userid = request.getParameter("userid");
	String pass = request.getParameter("pass");
	
	if(userid == null || pass == null){
		%>
		<script>
		alert("비정상적인 접근입니다.");
		location="/";
		</script>
		<%
		return;
	}
	
	//아이디, 패스워드 존재여부 체크 -> 개수 출력
	
	String sql1 = "select count(*) cnt from memberinfo"
				+" where userid = '"+userid+"'"
				+" and pass='"+pass+"'";
	ResultSet rs1 = stmt.executeQuery(sql1);
	rs1.next();
	int cnt = rs1.getInt("cnt");
	
	
	if(cnt ==0){
		%>
		<script>
		alert("존재 하지 않는 id입니다.");
		history.back();
		</script>
		<%
		return;
	}
	
	
	session.setAttribute("SESSION_ID",userid);
	
%>
<script>
alert("<%=userid%>님 환영합니다.");
self.close();
opener.location="/";
</script>