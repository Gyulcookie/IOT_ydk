<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/dbcon.jsp" %>

<%
	String a1 = request.getParameter("a1");
	String qry2 = "select a1,a2,a3,a4,a5,a6,a7,a8 from post where a1 = "+a1;
	ResultSet rs2 = stmt.executeQuery(qry2);
	
	String a2="";
	String a3="";
	String a4="";
	String a5="";
	String a6="";
	String a7="";
	String a8="";
	
	if(rs2.next()){
		
		a2 = rs2.getString("a2");
		a3 = rs2.getString("a3");
		a4 = rs2.getString("a4");
		
		if(a5 == null || a5.equals("null"))
			a5 = " ";
		else
			a5 = rs2.getString("a5");
		if(a6 == null || a6.equals("null"))
			a6 = " ";
		else
			a6 = rs2.getString("a6");
		if(a7 == null || a7.equals("null"))
			a7 = " ";
		else
			a7 = rs2.getString("a7");
		if(a8 == null || a8.equals("null"))
			a8 = " ";
		else
			a8 = rs2.getString("a8");
			
	}else{
		%>
		<script>
		alert("다시 시도해주세요.");
		location ="postList.jsp";
		</script>
		<%
	}
%>

<%
	String qry = "select max(a1+1) as postnumber from post";
	ResultSet rs = stmt.executeQuery(qry);
	rs.next();
	int postnumber = rs.getInt("postnumber");

%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우편번호&주소관리 (수정화면)</title>
<link rel="stylesheet" type="text/css" href="../css/main.css">
</head>

<script>
function fn_submit(){
	
	var f = document.frm;
	
	if(f.a1.value ==""){
		alert("우편번호를 입력해주세요.");
		f.a1.focus();
		return false;
	}
	if(f.a1.value.length != 6){
		alert("우편번호를 다시 확인 해주세요.");
		f.a1.focus();
		return false;
	}
	if(f.a2.value == ""){
		alert("시도를 입력해주세요.");
		f.a2.focus();
		return false;
	}
	f.submit()
}
function fn_del(){
	if (confirm("삭제하시겠습니까?")){
		var url = "postDelete.jsp?a1=<%=a1%>";
		location = url;	
	}
}

</script>

<body>

	<form name="frm" method="post" action="postModifySave.jsp">
		<table class="table1">
			<caption>우편번호 등록</caption>
			<colgroup>
				<col width="25%" />
				<col width="*" />
			</colgroup>
			<tr>
				<th class="td1">우편번호</th>
				<td class="td1"><input type="text" name="a1" value="<%=postnumber%>"></td>
			</tr>
			<tr>
				<th class="td1">시도</th>
				<td class="td1"><input type="text" name="a2" value="<%= a2 %>"></td>
			</tr>
			<tr>
				<th class="td1">구군</th>
				<td class="td1"><input type="text" name="a3" value="<%= a3 %>"></td>
			</tr>
			<tr>
				<th class="td1">동면</th>
				<td class="td1"><input type="text" name="a4" value="<%= a4%>"></td>
			</tr>
			<tr>
				<th class="td1">리</th>
				<td class="td1"><input type="text" name="a5" value="<%= a5 %>"></td>
			</tr>
			<tr>
				<th class="td1">도서(섬)</th>
				<td class="td1"><input type="text" name="a6" value="<%= a6 %>"></td>
			</tr>
			<tr>
				<th class="td1">번지</th>
				<td class="td1"><input type="text" name="a7" value="<%= a7 %>"></td>
			</tr>
			<tr>
				<th class="td1">기타(건물명)</th>
				<td class="td1"><input type="text" name="a8" value="<%= a8 %>"></td>
			</tr>
		</table>
		<div style="width: 600px; text-align: center; margin-top: 5px;">
			<button type="submit" onclick="fn_submit(); return false;">저장</button>
			<button type="reset">취소</button>
			<button type="button" onclick="fn_del(); return false;">삭제</button>
			<button type ="button" onclick="location='postList.jsp';">목록</button>
		</div>
	</form>

</body>
</html>