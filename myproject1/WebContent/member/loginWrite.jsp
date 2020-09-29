<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.js">
</script>
</head>

<script>
	$(function(){
		$("#login_btn").click(function(){
			var userid = $("#userid").val().trim();
			var pass = $("#pass").val().trim();
			if(userid == ""){
				alert("아이디를 입력해주세요.");
				$("#userid").focus();
				return false;
			}
			if(pass == ""){
				alert("비밀번호를 입력해주세요.");
				$("#pass").focus();
				return false;
			}
			$("frm").submit();
		});
	});
</script>

<body>

<div style="width:98%; height:190px;background-color:yellow;align-text:center;line-height:30px;">

<form name="frm" id="frm" method="post" action="loginSub.jsp">
	<br>
	아이디 <input type="text" name = "userid" id ="userid">
	<br>
	암호 <input type="password" name = "pass" id="pass"> 
	<br>
	<button type="submit" id ="login_btn">로그인</button>
	<br>
</form>

</div>
</body>
</html>