<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>

<script>
	
	$(function(){
		$("#search_btn").click(function(){
			if($("#dong").val()==""){
				alert("동을 입력해주세요.");
				return false;
			}
			$("#frm").submit();
		});
	});
</script>

<body>

<div style="widht:98%;height:190px;text-align:center;line-height:30px;background-color:yellow;">
동/면/리를 제외하고 이름만 작성해주세요.<br>
<br>
<form name="frm" id="frm" method ="post" action="post2.jsp">
	<input type="text" name="dong" id="dong">(동/면/리)
	<button type="button" id="search_btn">검색</button>
</form>
</div>

</body>
</html>