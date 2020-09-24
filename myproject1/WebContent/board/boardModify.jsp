
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
	
	String sql = "select title, name, content from board1 where unq = '"+unq+"'";
	ResultSet rs = stmt.executeQuery(sql);
	
	String name="";
	String title="";
	String content="";
	
	if(rs.next()){
		title = rs.getString("title");
		name = rs.getString("name");
		content = rs.getString("content");
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
	function fn_submit() {
		
		var f = document.frm;
		
		if (f.title.value = "") {
			alert("제목을 입력해주세요."); // 알림창, 경고창
			f.title.focus();
			return false;
		}
		if (f.pass.value = "") {
			alert("암호를 확인해주세요."); // 알림창, 경고창
			f.pass.focus();
			return false;
		}
		f.submit();
	}
	
</script>

<body>

	<form name="frm" method="post" action="boardModifySave.jsp">
		<input type="hidden" name="unq" value="<%=unq%>">
		<div class="side">왼쪽 메뉴</div>
		<div class="section">
			<div>
				<table class="table1">
					<caption>수정 화면</caption>
					<tr>
						<th class="td1">제목</th>
						<td class="td1"><input type="text" name="title" value="<%=title%>"></td>
					</tr>
					<tr>
						<th class="td1">비밀번호</th>
						<td class="td1"><input type="password" name="pass"></td>
					</tr>
					<tr>
						<th class="td1">글쓴이</th>
						<td class="td1"><input type="text" name="name" value="<%=name%>"></td>
					</tr>
					<tr>
						<th class="td1">내용</th>
						<td class="td1"><textarea rows="5" cols="50" name="content" ><%=content %></textarea></td>
					</tr>
				</table>

			</div>
			<div>
				<button type="submit" onclick="fun_submit(); return false; ">저장</button>
				<button type="reset" >취소</button>
			</div>
		</div>
	</form>

	<div class="footer"></div>
</body>
</html>

