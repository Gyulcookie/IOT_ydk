<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stringTest1</title>
</head>
<body>
<% 
String str1 = "first string";
String str2 = "First string";
out.print(str1+"<br>");
out.print(str2+"<br>");
%>
<%=str1%><br>
<%=str2 %><br>
<%=str1.length() %>, <%=str2.length() %><br>
<%=str1.charAt(6) %><br>
<%=str1.indexOf("first") %> <br>
<%=str1.indexOf("s") %> <br>

<%= str1.substring(6,12) %> <br>
<%= str1.substring(6) %> <br>
<%=str1.equals(str2) %><br>


<% String address = " 123456 대구시 수성구 ";%>

<%= address.length() %> <br>
<%= address.substring(0, 7) %><br>
<%= address.substring(8) %><br>
<% 
if ( address.indexOf("대구") == -1 )
		out.print("false");
else
	out.print("true");
%> <br>

</body>
</html>