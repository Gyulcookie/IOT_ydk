<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>write2</title>
</head>

<script>

function fn_test(){
	
	if(document.frm.username.value == ""){
		alert("이름을 입력해주세요.");	
		return false;
	}
	document.frm.submit();
}

</script>

<body>

<form name = "frm" method= "post" action = "writeSub2.jsp">
이름 <input type = "text" name = "username"> <br>
생년원일 <select name ="year">
		<%for(int y = 1940;y<=2020;++y) {%>
		<option value=<%=y %>><%=y %>년</option>
		<%
		}
		%>
	</select>
	<select name ="month">
		<%for(int m = 1;m<=12;++m) {%>
		<option value=<%=m %>><%=m %>월</option>
		<%
		}
		%>
	</select>
	<select name ="day">
	<%for(int d = 1;d<=31;++d) {%>
		<option value=<%=d %>><%=d %>일</option>
		<%
		}
		%>
	</select> 
	<br>
연락처 <input type = "text" name = "phone"> <br>
주소 <input type = "text" name = "address"> <br>
<input type = "submit" value = "전송" onclick="fn_test(); return false;">
</form>

</body>
</html>