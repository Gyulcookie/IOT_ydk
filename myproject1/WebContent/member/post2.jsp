<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/dbcon.jsp" %>

<%
	String dong = request.getParameter("dong");
	
	String sql = "select '['||a1||'] '||a2||' '||a3||' '||a4||' '||a5||' '||a6||' '||a7||' '||a8 as address from post"
			+" where a4 like '%"+dong+"%'"
			+" or a5 like '%"+dong+"%'";
	
	ResultSet rs = stmt.executeQuery(sql);
			
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script>

	$(function(){
		$("#action_btn").click(function(){
			var addr = $("#address").val();
			var post = "123456";
			var address = "서울시 강남구 서초동 12";
			
			post = addr.substring(1,7);
			address = addr.substring(9).trim();
			
			
			opener.frm.post.value = post;
			opener.frm.addr.value = address;
			self.close();
		});
	});

</script>

<body>

	<select name = "address" id ="address">
		<%
		while(rs.next()){
			String address = rs.getString("address");
			%>
			<option value="<%=address%>"><%=address %></option>
			<%
		}
		%>
	</select>
	<br>
	
	<button type="button" id = "action_btn" onclick="">적용</button>

</body>
</html>