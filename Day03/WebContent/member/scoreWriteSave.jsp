<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userid = request.getParameter("userid");
	String eng = request.getParameter("eng");
	String kor = request.getParameter("kor");
	String math = request.getParameter("math");
%>

<%
	//접속 URL 생성 //   @위치정보:포트번호:DB서비스이름
	
	String url = "jdbc:oracle:thin:@//localhost:1521/orcl";
	// 드라이버 연결
	Class.forName("oracle.jdbc.OracleDriver");
	// 접속 정보 작성
	Connection con = DriverManager.getConnection(url, "scott", "1234");
	// 접속 인스턴스 생성
	Statement stmt = con.createStatement();
%>

<%
	String qry = "insert into score values('"+userid+"','"+eng+"','"+kor+"','"+math+"')";
	int result = stmt.executeUpdate(qry);

	if(result > 0) {
	%>
		<script>
		alert("저장 완료");
		location="scoreList.jsp";
		</script>
	<% 
	}
	else{
		%>
		<script>
		alert("저장 실패");
		history.back();
		</script>
	<%}
%>
