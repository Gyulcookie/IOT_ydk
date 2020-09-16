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

<form name = "frm" method="post" action = "requsetMethod.jsp">
이름 <input type = "text" name ="name">
전번 <input type = "text" name ="tell">
<input type = "submit" value ="전송">
</form>

<%
	String name = request.getParameter("name");
	String phone = request.getParameter("tell");
%>

<%
if(name != null && phone != null && !name.equals("") && !phone.equals(""))
{%>
	이름[<%=name %>]
	전번[<%=phone %>]
<%}
%>
</body>
</html>