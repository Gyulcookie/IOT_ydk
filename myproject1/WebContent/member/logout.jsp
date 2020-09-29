<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%
//둘중 하나
session.setAttribute("SESSION_ID", null);
//session.removeAttribute(""); 부분 삭제
session.invalidate(); //전체삭제
%>

<script>
alert("로그아웃되었습니다.");
location="/";			
</script>
