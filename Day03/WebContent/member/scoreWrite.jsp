<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Score input</title>
</head>

<style>
body{
	font-size:12px;
	font-family:"맑은 고딕";
	color:#333333
}
.header {
	width: 1000px;
	height: 150px;
	border: 1px solid #cccccc;
	margin-bottom: 10px;
}

.side {
	width: 150px;
	height: 500px;
	border: 1px solid #cccccc;
	float: left;
	margin-right: 10px;
}

.section {
	width: 840px;
	height: 500px;
	border: 1px solid #cccccc;
	float: left;
	margin-bottom: 10px;
}

.footer {
	width: 1000px;
	height: 150px;
	border: 1px solid #cccccc;
	clear: both;
}

.top1 {
	position: relative;
	width: 150px;
	height: 140px;
	border: 1px solid #cccccc;
	margin-top: 3px;
	margin-left: 3px;
	float: left;
}

.top2 {
	width: 830px;
	height: 140px;
	border: 1px solid #cccccc;
	margin-top: 3px;
	margin-left: 162px;
}

a {
	text-decoration: none; 
}

.menuLink {
	position: relative;
	top: 80px;
	left: 20px;
	font-size: 12px;
	background-color: #e4effc;
	float: left;
	line-height: 30px; /* <br> 관련 간격 */
	vertical-align: middle; /* 세로 정렬 */
	text-align: center; /* 좌우 정렬; left, center, right */
	width: 100px;
	list-style: none; /* 항목 앞 dot 관련 */
	border: 1px solid #ffffff;
}

.table1{
	width:600px;
	border:1px solid #cccccc;
}

</style>



<body>
	<div class="header">
		<div class="top1"></div>
		<div class="top2">
			<ul>
				<li class="menuLink"><a href="#">홈</a></li>
				<li class="menuLink"><a href="#">게시판</a></li>
				<li class="menuLink"><a href="#">답변게시판</a></li>
				<li class="menuLink"><a href="#">회원가입</a></li>
				<li class="menuLink"><a href="#">로그인</a></li>
				<li class="menuLink"><a href="#">일정관리</a></li>
				<li class="menuLink"><a href="#">대화방</a></li>
			</ul>
		</div>
	</div>
	<div class="side"></div>
	<div class="section">
	
	<form name="frm" method="post" action="scoreWriteSave.jsp">
	<table border="1" class="table1">
		<tr>
			<th>아이디</th>
			<td><input type="text" name="userid"></td>
		</tr>
		<tr>
			<th>영어 점수</th>
			<td><input type="text" name="eng"></td>
		</tr>
		<tr>
			<th>국어 점수</th>
			<td><input type="text" name="kor"></td>
		</tr>
		<tr>
			<th>수학 점수</th>
			<td><input type="text" name="math"></td>
		</tr>
	</table>
	
	<div style="text-align:center;margin-top:10px;width:600px;">
		<button type="submit">저장</button>
		<button type="reset">취소</button>
	</div>
	
	</form>
	
	</div>
	<div class="footer"></div>
</body>
</html>

