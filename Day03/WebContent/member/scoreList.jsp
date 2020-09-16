<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String url = "jdbc:oracle:thin:@//localhost:1521/orcl";
	// 드라이버 연결
	Class.forName("oracle.jdbc.OracleDriver");
	// 접속 정보 작성
	Connection con = DriverManager.getConnection(url, "scott", "1234");
	// 접속 인스턴스 생성
	Statement stmt = con.createStatement();
	
	String qry = "select userid,eng,kor,math from score";
	ResultSet rs = stmt.executeQuery(qry);
%>

<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Sample</title>
</head>

<style>
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
		
		<table border="1" width = "600">
			<tr>
				<th>아이디</th>
				<th>영어</th>
				<th>국어</th>
				<th>수학</th>
			</tr>
			<%
				while(rs.next()){
					
					String userid = rs.getString("userid");
					int eng = rs.getInt("eng");
					int kor = rs.getInt("kor");
					int math = rs.getInt("math");%>
					
					<tr>
						<td><%=userid %></td>
						<td><%=eng %></td>
						<td><%=kor %></td>
						<td><%=math %></td>
					</tr>
					
					<%
					
				}
			%>
		</table>
		
	</div>
	<div class="footer"></div>
</body>
</html>

