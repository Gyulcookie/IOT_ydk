<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board detail</title>
</head>
<body>
<hr>
	<input type = "button" value = "글쓰기" onClick="fn_insert_form()">
	<hr>
	
	<table border = "1">
		<tr>
			<th>번호</th>
			<th>등록자</th>
			<th>제목</th>
			<th>작성일</th>
		</tr>
			<tr>
				<td>${boardVO.seq }</td>
				<td>${boardVO.writer }</td>
				<td><a href="board_detail.do?seq=${boardVO.seq}">${boardVO.title }</a></td>
				<td>${boardVO.regdate }</td>
			</tr>
			<tr>
				<td>${boardVO.contet }</td>
			</tr>
			<tr>
				<td colspan="4">
					<a href = "board_updateForm.do?seq=${boardVO.seq }">수정</a>
					<a href = "board_deleteForm.do?seq=${boardVO.seq }">삭제</a>
			</tr>
	</table>
</body>
</html>