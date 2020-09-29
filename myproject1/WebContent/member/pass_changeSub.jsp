<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/dbcon.jsp" %>

<%
	String SESSION_ID = (String)session.getAttribute("SESSION_ID");

	if(SESSION_ID == null){
		%>
		alert("로그인을 해주세요.");
		self.close();
		<%
		return;
	}

	String pass1 = request.getParameter("pass1");
	String pass2 = request.getParameter("pass2");
	String pass3 = request.getParameter("pass3");
	
	if(pass1 == null || pass2 == null || pass3 == null){
		%>
		<script>
		alert("잘못된 접근입니다.");
		self.close();
		</script>
		<%
		return;
	}
	if(pass2 != pass3){
		%>
		<script>
		alert("비밀번호를 확인해주세요.");
		history.back();
		</script>
		<%
	}
	
	String sql = "select count(*) cnt from memberinfo"
				+" where userid= '"+SESSION_ID+"'"
				+" and pass = '"+pass1+"'";
	ResultSet rs = stmt.executeQuery(sql);
	int cnt = 0;
	if(rs.next()){
		cnt = rs.getInt("cnt");
	}
	
	if(cnt == 0){
		%>
		<script>
		alert("비밀번호를 확인해주세요.");
		history.back();
		</script>
		<%
		return;
	}
	
	String sql2 = "update memberinfo set "
				+" pass = '"+pass2+"'"
				+" where userid='"+SESSION_ID+"'";
	
	int rs2 = stmt.executeUpdate(sql2);
	
%>
<script>
alert("암호 변경 완료");
self.close();
</script>
