<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String birthday = "20100115 20011225 19980505";
String[] array = birthday.split(" ");
%>
<%=array[0] %><br>
<%=array[1] %><br>
<%=array[2] %><br>

<%
for(int i=0;i<3;i++)
{%>
	<% out.print(array[i]);%> <br>
<% }
%>
</body>
</html>