<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Calendar" %>

<%
String year = request.getParameter("year");
String month = request.getParameter("month");
%>

<%
Calendar cal = Calendar.getInstance();
int y;
int m;

if( year == null || month == null || year.equals("") || month.equals(""))
{
	y = cal.get(Calendar.YEAR);
	m = cal.get(Calendar.MONTH);
}
else{
	y = Integer.parseInt(year);
	m = Integer.parseInt(month);
}

cal.set(y,m-1,1);
int dayOfweek = cal.get(cal.DAY_OF_WEEK);
int lastday = cal.getActualMaximum(cal.DATE);

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script>
function back()
{
	if( documnet.back.month.value > 1)
	{
		documnet.back.month.value--;
	}else{
		documnet.back.year.value--;
		documnet.back.month.value = 12;
	}
}

function next(){
	if(documnet.back.month.value == 12){
		documnet.back.month.value = 1;
		documnet.back.year.value++;
	}else{
		documnet.back.month.value++;
	}
}

</script>
<body>

<div>
<form name ="frm" method ="post" action ="cal2.jsp">
년<input type = "text" name ="year">
월<input type = "text" name ="month">
<input type = "submit" value ="전송">
</form>
</div>

<div>
<%=y %>년 <%=m %>월
</div>
<table border="1" width = "300">
	<tr>
		<th>일</th>
		<th>월</th>
		<th>화</th>
		<th>수</th>
		<th>목</th>
		<th>금</th>
		<th>토</th>
	</tr>
	<tr align="center" >
	<%
		int count = 0;
		for(int i =1;i<dayOfweek;i++)
		{
			count++;
		%>
			<td></td>
		<%}
		for(int d =1;d<=lastday;d++)
		{
			count++;
		%>
		<td><%=d %></td>
		<%
			if(count%7 == 0){
				out.print("<tr align ='center'></tr>");
			}
		}
	%>
	</tr>
</table>

<form name="back" method="post" action = "cal2.jsp">
	년<text type = "text" name ="year" value=<%=y%>>
	월<text type = "text" name ="month" value =<%=m%>>
	<input type="submit" value ="이전" onclick = "back();">
	<input type="submit" value ="다음 " onclick = "next();">
</form>

</body>
</html>