<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String unq = request.getParameter("unq");

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form name = "frm" method ="post" action="reboardDelete.jsp">
		<input type="hidden" name="unq" value="<%=unq %>">
		<div style ="position:relative;width:100%;text-align:center;vertical-align:middle;">
			암호 <input type="password" name="pass" >
			<button type="submit">전송</button>
		</div>
	</form>

</body>
</html>