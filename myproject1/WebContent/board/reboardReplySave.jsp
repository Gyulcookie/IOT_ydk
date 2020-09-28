<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/dbcon.jsp"%>

<%
	String title = request.getParameter("title");
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");
	String content = request.getParameter("content");
	String fid = request.getParameter("fid");
	String thread = request.getParameter("thread");
	
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
	
	
	
	String qry2 = "select nvl(max(thread),'0') as thread from reboard where fid='"+fid+"' and thread like '"+thread+"_'";
	ResultSet rs2 = stmt.executeQuery(qry2);
	rs2.next();
	
	String maxThread = rs2.getString("thread");
	
	String myThread="";
	
	if (maxThread.equals("0")){
		myThread = thread + "a";	
	}else{
		char aa= maxThread.charAt(thread.length()-1);
		aa++;
		
		myThread = thread + aa;
	}
	
	String qry="insert into reboard(unq,title,pass,name,content,rdate,fid,thread)"
			+" values(reboard_seq.nextval, '"+title+"','"+pass+"','"+name+"','"+content+"',sysdate, '"+fid+"' , '"+myThread+"') ";
	int result = stmt.executeUpdate(qry);
	if(result > 0){
		%>
	<script>
		alert("저장 완료");
		location="reboardList.jsp";
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