
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../css/topMenu.jsp"%>
<%@ include file="../include/dbcon.jsp"%>
<%@ page import="study1.test5"%>

<%
	if(uid == null){
		%>
		<script>
		alert("로그인 후 이용해주세요.");
		history.back();
		</script>
		<%
		return;
	}
	String sql = "select name, gender, to_char(birthday,'mm/dd/yyyy') as birthday, nvl(post,' ') post, nvl(addr,' ') addr, school, rdate" 
				+ " from memberinfo"
				+ " where userid='"+uid+"'";
	ResultSet rs = stmt.executeQuery(sql);
	
	String name="";
	String gender="";
	String birthday="";
	String post="";
	String addr="";
	String school="";
	String rdate="";
	
	if(rs.next()){
		name = rs.getString("name").trim();
		gender = rs.getString("gender").trim();
		birthday = rs.getString("birthday").trim();
		post = rs.getString("post").trim();
		addr = rs.getString("addr").trim();
		school = rs.getString("school").trim();
		rdate = rs.getString("rdate").trim();
	}
	
%>

<!doctype html>
<html lang="en">
<head>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">


<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="../js/script.js"></script>


<script>
	$( function() {
	  $( "#birthday" ).datepicker({
	    changeMonth: true,
	    changeYear: true
    	});
	} );
	
	function fn_popup(){
		var url = "post1.jsp";
		window.open(url,'post','width=400,height=200');
	}
	
 
</script>
<meta charset="UTF-8">
<title>main</title>
<link rel="stylesheet" type="text/css" href="../css/layout.css">
<link rel="stylesheet" type="text/css" href="../css/main.css">
</head>



<body>

	<form name="frm" id="frm" method="post" action="memberModifySave.jsp">
		<div class="side">왼쪽 메뉴</div>
		<div class="section">
			<div>
				<table class="table1">
					<caption stype="font-size:20pt;">회원 등록 화면</caption>
					<tr>
						<th class="td1">아이디</th>
						<td class="td1"><input type="text" name="userid" id ="userid" value="<%=uid%>"></td>
					</tr>
					<tr>
						<th class="td1">비밀번호</th>
						<td class="td1"><input type="password" name="pass" id="pass"></td>
					</tr>
					<tr>
						<th class="td1">이름</th>
						<td class="td1"><input type="text" name="name" id="name" value="<%=name%>"></td>
					</tr>
					<tr>
						<th class="td1">생년월일</th>
						<td class="td1"><input type="text" name="birthday" id="birthday" value="<%=birthday%>"></td>
					</tr>
					<tr>
						<th class="td1">성별</th>
						<td class="td1">
							<%
							if(gender.equals("M")){
								%>
								<input type="radio" name="gender" value="M" checked>남성
								<input type="radio" name="gender" value="F">여성
								<%								
							}else if(gender.equals("F")){
								%>
								<input type="radio" name="gender" value="M">남성
								<input type="radio" name="gender" value="F" checked>여성
								<%
							}else{
								%>
								<input type="radio" name="gender" value="M">남성
								<input type="radio" name="gender" value="F">여성
								<%
							}
							%>
						</td>
					</tr>
					<tr>
						<th class="td1">주소</th>
						<td class="td1"><input type="text" name="post value="<%=post%>" >
							<button type="button" onclick="fn_popup();">우편번호 검색</button> <br> <input
							type="text" name="addr" value="<%=addr%>"></td>
					</tr>
					<tr>
						<th class="td1">학력</th>
						<td class="td1">
							<input type="radio" name="school" value="1" <%if(school.equals("1")) out.print("checked"); %>>고졸
							<input type="radio" name="school" value="2" <%if(school.equals("2")) out.print("checked"); %>>대졸 
							<input type="radio" name="school" value="3" <%if(school.equals("3")) out.print("checked"); %>>대학원졸
						</td>
					</tr>
				</table>

			</div>
			<div>
				<button type="submit" onclick="fn_submit(); return false; ">수정</button>
				<button type="reset">취소</button>
			</div>
		</div>
	</form>

	<div class="footer"></div>
</body>
</html>

