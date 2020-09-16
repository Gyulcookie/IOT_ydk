<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String name = request.getParameter("name");
	String addr = request.getParameter("address");
	String[] pet = request.getParameterValues("pet");
%>
<%=name %><br>
<%=addr %><br>
<%for(int i = 0;i<pet.length;i++){
	if(pet[i].isEmpty()){
		continue;
	}
	else%>
		<%=pet[i] %>
		<% 
}
%>
</body>
</html>