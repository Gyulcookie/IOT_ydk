<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String eng = request.getParameter("eng");
String kor = request.getParameter("kor");
String math = request.getParameter("math");
%>
<%=eng%> <br>
<%=kor%> <br>
<%=math %><br>

<%
int sum = Integer.parseInt(eng) + Integer.parseInt(kor) + Integer.parseInt(math);

%>

합 : <%=sum%><br>
평균 : <%=sum/3%>