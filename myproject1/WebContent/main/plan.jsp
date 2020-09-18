<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ include file="../include/dbcon.jsp" %>

<%
	String pdate = request.getParameter("date");
	String qry = "select title,content from plan where pdate='"+pdate+"'";
	
	ResultSet rs = stmt.executeQuery(qry);
	
	String title = "";
	String content = "";
	String saveUrl ="planSave.jsp";
	String button = "";
	
	if (rs.next()){
		title = rs.getString("title");
		content = rs.getString("content");
		saveUrl = "planUpdate.jsp";
		button="<button type='button' onclick='fn_del()'>삭제</button>";
	}
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Plan</title>
<link rel="stylesheet" type="text/css" href="../css/main.css">
</head>

<script>
	function fn_del(){
		if(confirm("정말 삭제하시겠습니까?")){//확인, 취소 
			location = "planDelete.jsp?pdate=<%=pdate%>";
		}
	}
	function fn_submit() {
		if(document.frm123.pdate.value == ""){
			alert("날짜를 입력해주세요.");
			return false;
		}
		if(document.frm123.title.value == ""){
			alert("제목을입력해주세요.");
			return false;
		}
		document.frm123.submit();
	}
</script>

<body>
	<form name='frm123' method="post"  action="<%=saveUrl%>">
		<table class="table2">
			<colgroup>
				<col width="25%" />
				<col height="75%" />
			</colgroup>
			<tr>
				<th class="td2">날짜</th>
				<td class="td2"><input type='text' name="pdate" value = "<%=pdate%>"></td>
			</tr>
			<tr>
				<th class="td2">제목</th>
				<td class="td2"><input type='text' name="title" value = "<%=title %>">
				
				</td>
			</tr>
			<tr>
				<th class="td2">내용</th>
				<td class="td2"><textarea rows="5" cols="30" name="content"><%=content %></textarea>
				</td>
			</tr>
		</table>
		<div style="width: 380px; text-align: center; margin-top: 5px;">
			<button type="submit" onclick="fn_submit(); return false;">저장</button>
			<button type="reset">취소</button>
			<%=button %>
		</div>
	</form>
</body>
</html>