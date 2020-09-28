
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../css/topMenu.jsp"%>
<%@ include file="../include/dbcon.jsp"%>

<%
	String unq = request.getParameter("unq");
	if ( unq == null || unq.trim().equals("")){
		%>
		<script>
		alert("잘못된 접근입니다.");
		location("/"); // index 파일
		</script>
		<%
		return;
	}
	
	String qry = "update reboard set hits=hits+1 where unq = '"+unq+"'";
	
	stmt.executeUpdate(qry);
	
	String sql = "select title, name, content, to_char(rdate,'yyyy/mm/dd') as rdate,fid,thread from reboard where unq = '"+unq+"'";
	ResultSet rs = stmt.executeQuery(sql);
	
	String name="";
	String title="";
	String content="";
	String rdate="";
	String fid ="";
	String thread="";
	
	if(rs.next()){
		title = rs.getString("title");
		name = rs.getString("name");
		content = rs.getString("content");
		// \n -> <br>
		if(content!= null){
			content = content.replaceAll("\n","<br>");
		}else{
			content = "";
		}
		rdate = rs.getString("rdate");
		fid = rs.getString("fid");
		thread = rs.getString("thread");
	}
	
%>



<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>main</title>
<link rel="stylesheet" type="text/css" href="../css/layout.css">
<link rel="stylesheet" type="text/css" href="../css/main.css">
</head>

<script>
	function fn_popup(){
		var url = "reboardpassWrite.jsp?unq=<%=unq%>";
		window.open(url,'popup','width=300,height=150');//대상,별칭,팝업창 옵션 
	}
</script>

<body>

	<form name="frm" method="post" action="reboardWriteSave.jsp">
		<div class="side">왼쪽 메뉴</div>
		<div class="section">
			<div style="postion: relative; width: 600px; left: 50px; margin-top: 10px;">
				<table class="table1">
					<caption style="font-size: 20px;">답변 상세 보기</caption>
					<tr>
						<th class="td1">제목</th>
						<td class="td1"><%=title %></td>
					</tr>
					<tr>
						<th class="td1">글쓴이</th>
						<td class="td1"><%=name %></td>
					</tr>
					<tr>
						<th class="td1">등록일</th>
						<td class="td1"><%=rdate %></td>
					</tr>
					<tr>
						<th class="td1">내용</th>
						<td class="td1"><%=content %></td>
					</tr>

				</table>

			</div>
			<div style="postion: relative; width: 600px; left: 50px; margin-top: 10px;" >
				<button type="button" onclick=" location='reboardList.jsp' ">목록</button>
				<button type="button" onclick=" location='reboardReply.jsp?unq=<%=unq %>&fid=<%=fid%>&thread=<%=thread%>'">답변</button>
				<button type="button" onclick=" location='reboardModify.jsp?unq=<%=unq%>'">수정</button>
				<button type="button" onclick="fn_popup(); return false;">삭제</button>
			</div>
		</div>

	</form>

	<div class="footer"></div>
</body>
</html>

