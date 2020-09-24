<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/dbcon.jsp" %>

<%
	String pageNo = request.getParameter("pageNo");
	if(pageNo ==null){
		pageNo="1";
	}
	
	// (n-1)*10 + 1 
	int startNo = (Integer.parseInt(pageNo)-1)*10 +1;
	int endNo = startNo+9;
	
	int before = Integer.parseInt(pageNo) - 1;
	int next = Integer.parseInt(pageNo) +1;
	
%>

<%
	String sql = "select count(*) as total from post";
	ResultSet rs1 = stmt.executeQuery(sql);
	
	int total = 0;
	
	if(rs1.next()){
		total = rs1.getInt("total");
	}
	
	//sql = "select a1,a2,a3,a4,a5,a6,a7,a8 from post "+"order by a1 asc";
	sql = "select p2.* from( "+
		  "		select rownum rn,p1.* from( "+
		  "          select a1,a2,a3,a4,nvl(a5,' ') a5,nvl(a6,' ') a6,nvl(a7,' ') a7,nvl(a8,' ') a8"+
		  "              from post "+ 
		  "                  order by a1 asc) p1 "+
		  "      )p2 "+
		  "          where rn >= "+startNo+" and rn <= "+endNo;
	ResultSet rs2 = stmt.executeQuery(sql);
	
	
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../css/main.css">
<title>우편번호 목록</title>
</head>
<body>

<table class ="table1">
	<tr>
		<th class="td1">번호</th>
		<th class="td1">우편 번호</th>
		<th class="td1">시도</th>
		<th class="td1">구군</th>
		<th class="td1">동면</th>
		<th class="td1">리</th>
		<th class="td1">도서</th>
		<th class="td1">번지</th>
		<th class="td1">기타</th>
	</tr>
	<%
	while( rs2.next()){
		String a1 = rs2.getString("a1");
		String a2 = rs2.getString("a2");
		String a3 = rs2.getString("a3");
		String a4 = rs2.getString("a4");
		String a5 = rs2.getString("a5");
		String a6 = rs2.getString("a6");
		String a7 = rs2.getString("a7");
		String a8 = rs2.getString("a8");
		%>	
		<tr>
			<td class="td1"><%=rs2.getInt("rn") %></td>
			<td class="td1"><a href="postModify.jsp?a1=<%=a1%>"><%=a1%></a></td>
			<td class="td1"><%=a2 %></td>
			<td class="td1"><%=a3 %></td>
			<td class="td1"><%=a4 %></td>
			<td class="td1"><%=a5 %></td>
			<td class="td1"><%=a6 %></td>
			<td class="td1"><%=a7 %></td>
			<td class="td1"><%=a8 %></td>
		</tr>
		<% 
	}
	%>
</table>

<% 
	if(before > 0){
		%>
		<button type="button" onclick="location='postList.jsp?pageNo=<%=before%>'">이전</button>
		<% 	
	}else{
		%>
		<button type="button">이전</button>
		<%
	}
%>
<button type="button" onclick="location='postList.jsp?pageNo=<%=next%>'">다음</button>

</body>
</html>