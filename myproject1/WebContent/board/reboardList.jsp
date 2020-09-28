
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../css/topMenu.jsp"%>
<%@ include file="../include/dbcon.jsp"%>

<%
	String pageRq = request.getParameter("page");
if (pageRq == null) {
	pageRq = "1";
}
// total 개수
String qry = "select count(*) total from reboard";
ResultSet rs1 = stmt.executeQuery(qry);
rs1.next();
int total = rs1.getInt("total");
int totalPage = (int) Math.ceil((double) total / 10);

String searchCode = request.getParameter("searchCode");
String searchText = request.getParameter("searchText");

// List 처리
//qry = "select unq,title,name,hits,rdate from board1"
//		+ " order by unq desc";

int startNum = (Integer.parseInt(pageRq) - 1) * 10 + 1;
int endNum = startNum + 9;

String where = "";

if (searchCode != null && searchText != null) {
	where = " where " + searchCode + " like '%" + searchText + "%'";
}

qry = "select b2.* from (" + " select rownum rn, b1.* from (" + " select unq,title,name,hits,rdate,fid,thread" + " from reboard "
		+ where + " order by fid desc, thread asc) b1 ) b2" + " where rn >=" + startNum + " and rn <= " + endNum;
ResultSet rs2 = stmt.executeQuery(qry);
%>

<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>main</title>
<link rel="stylesheet" type="text/css" href="../css/layout.css">
<link rel="stylesheet" type="text/css" href="../css/main.css">
</head>

<style>
.divTable1 {
	position: relative;
	left: 100px;
	width: 600px;
	heidght:50px;
}

.divTable1 {
	position: relative;
	left: 100px;
	width: 600px;
}
</style>
<body>
	
		<div class="side">왼쪽 메뉴</div>
		<div class="section">

			<div class="divTable2" style="margin-top: 40px;">
				<div style="float: left; width: 50%;">
					total :
					<%=total%>개
				</div>
				<div style="float: left; width: 50%; text-align: right;">
					<button type="button" onclick="location='reboardWrite.jsp'">글쓰기</button>
				</div>
			</div>

			<div class="divTable1">

				<form name="searchForm" method="post" action="<%=request.getRequestURI()%>">
					<select name="searchCode">
						<option value="title">제목</option>
						<option value="content">내용</option>
					</select> <input type="text" name="searchText">
					<button type="submit">검색</button>

				</form>

			</div>


			<div class="divTable1" style="margin-top: 40px;">


				<table class="table1">
					<colgroup>
						<col width="10%">
						<col width="45%">
						<col width="15%">
						<col width="15%">
						<col width="15%">
					</colgroup>
					<caption style="font-size:20px;">답변 게시판 목록</caption>
					<tr align="center">
						<th class="td1">번호</th>
						<th class="td1">제목</th>
						<th class="td1">글쓴이</th>
						<th class="td1">등록일</th>
						<th class="td1">조회수</th>
					</tr>
					<%
						String title;
					String name;
					String rdate;
					String hits;
					String unq;
					String thread;
					while (rs2.next()) {
						title = rs2.getString("title");
						name = rs2.getString("name");
						rdate = rs2.getString("rdate");
						hits = rs2.getString("hits");
						unq = rs2.getString("unq");
						thread = rs2.getString("thread");
						rdate = rdate.substring(0, 10);
						int len = thread.length();
					%>

					<tr align="center">
						<td class="td1"><%=unq%></td>
			
						
						<td class="td1" align="left">
						<%
							for(int i =1;i<len;i++){
								out.print("&nbsp;&nbsp;");
							}
							if(len > 1){
								out.println("[re]");
							}
						%>
						<a href="reboardDetail.jsp?unq=<%=unq%>"><%=title%></a></td>
						<td class="td1"><%=name%></td>
						<td class="td1"><%=rdate%></td>
						<td class="td1"><%=hits%></td>
					</tr>
					<%
						}
					%>


				</table>
			</div>
			<div align="center" style="margin-top:20px;">
				<%
					for (int i = 1; i <= totalPage; i++) {
				%>
				<a href="<%=request.getRequestURI() %>?page=<%=i%>"><%=i%></a>
				<%
					}
				%>
			</div>
		</div>
	<div class ="footer"></div>
</body>
</html>

