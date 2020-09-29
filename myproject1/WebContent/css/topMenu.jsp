<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String uid = (String)session.getAttribute("SESSION_ID");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>

<script>
	function fn_login(){
		var url = "../member/loginWrite.jsp";
		window.open(url,'login','width=300,height=200');
	}
</script>

<body>

<div class="header">
		<div class="top1"></div>
		<div class="top2">
			<ul>
				<li class="menuLink"><a href="../main/main.jsp">홈</a></li>
				<li class="menuLink"><a href="../board/boardList.jsp">게시판</a></li>
				<li class="menuLink"><a href="../board/reboardList.jsp">답변게시판</a></li>
				<%
				if(uid == null){
					
					%>
					<li class="menuLink"><a href="../member/memberWrite.jsp">회원가입</a></li>
					<li class="menuLink"><a href="javascript:fn_login()">로그인</a></li>
					<%
				}else{
				%>
					<li class="menuLink"><a href="../member/memberModify.jsp">회원정보</a></li>
					<li class="menuLink"><a href="../member/logout.jsp">로그아웃</a></li>
				<%
				}
				%>
				<li class="menuLink"><a href="#">일정관리</a></li>
				<li class="menuLink"><a href="../member/scoreList.jsp">점수관리</a></li>
			</ul>
		</div>
	</div>
</body>
</html>