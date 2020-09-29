
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../css/topMenu.jsp"%>
<%@ include file="../include/dbcon.jsp"%>
<%@ page import="study1.test5"%>


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

	<form name="frm" id="frm" method="post" action="memberWriteSave.jsp">
		<div class="side">왼쪽 메뉴</div>
		<div class="section">
			<div>
				<table class="table1">
					<caption stype="font-size:20pt;">회원 등록 화면</caption>
					<tr>
						<th class="td1">아이디</th>
						<td class="td1"><input type="text" name="userid" id ="userid"></td>
					</tr>
					<tr>
						<th class="td1">비밀번호</th>
						<td class="td1"><input type="password" name="pass" id="pass"></td>
					</tr>
					<tr>
						<th class="td1">이름</th>
						<td class="td1"><input type="text" name="name" id="name"></td>
					</tr>
					<tr>
						<th class="td1">생년월일</th>
						<td class="td1"><input type="text" name="birthday" id="birthday"></td>
					</tr>
					<tr>
						<th class="td1">성별</th>
						<td class="td1">
							<input type="radio" name="gender" value="M">남성
							<input type="radio" name="gender" value="F">여성</td>
					</tr>
					<tr>
						<th class="td1">주소</th>
						<td class="td1"><input type="text" name="post">
							<button type="button" onclick="fn_popup();">우편번호 검색</button> <br> <input
							type="text" name="addr"></td>
					</tr>
					<tr>
						<th class="td1">학력</th>
						<td class="td1"><input type="radio" name="school" value="1">고졸
							<input type="radio" name="school" value="2">대졸 
							<input type="radio" name="school" value="3">대학원졸</td>
					</tr>
				</table>

			</div>
			<div>
				<button type="submit" onclick="fn_submit(); return false; ">등록</button>
				<button type="reset">취소</button>
			</div>
		</div>
	</form>

	<div class="footer"></div>
</body>
</html>

