<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String name = request.getParameter("username");
String yy = request.getParameter("year");
String mm = request.getParameter("month");
String dd = request.getParameter("day");
String phone = request.getParameter("phone");
String addr = request.getParameter("address");
String birth = yy+"-"+mm+"-"+dd;
%>

<%=name %><br>
<%=birth %><br>
<%=phone %><br>
<%=addr %><br>

<input type = "button" value = "이전화면1" onclick="history.back()"> <br>
<button type = "button" onclick = "history.go(-1)">이전화면2</button>

</body>
</html>