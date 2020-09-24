<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/dbcon.jsp"%>

<%
	String title = request.getParameter("title");
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");
	String content = request.getParameter("content");
	
%>

<%
	if(title == null || pass == null){
		%>
		<script>
		alert("잘못된 접근입니다.");
		location= "../main/main.jsp";
		</script>
		<%
		return;
	}

	title = title.trim();
	pass = pass.trim();
	name = name.trim();
	content = content.trim();
	int len = content.length();
	if( title.equals("") || pass.equals("")){
		%>
		<script>
		alert("제목이나 암호를 확인해주세요.");
		history.back();
		</script>
		<%
		return;
	}
	
	if( len > 4000){
		%>
		<script>
		alert("4000자를 초과하셨습니다.");
		history.back();
		</script>
		<%
		return;
	}
	
	String qry="insert into board1(unq,title,pass,name,content,rdate)"
				+" values(board1_seq.nextval, '"+title+"','"+pass+"','"+name+"','"+content+"',sysdate)";
	int result = stmt.executeUpdate(qry);
	if(result > 0){
		%>
		<script>
		alert("저장 완료");
		location="boardList.jsp";
		</script>
		<%
	}else{
		%>
		<script>
		alsert("저장 실패");
		history.back();
		</script>
<%
	}
	
%>