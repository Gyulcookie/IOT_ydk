<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/dbcon.jsp" %>

<%
	String userid = request.getParameter("userid");
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");
	String birthday = request.getParameter("birthday");
	String gender = request.getParameter("gender");
	String addr = request.getParameter("addr");
	String post = request.getParameter("post");
	String school = request.getParameter("school");
	
	String[] tmp = birthday.split("/");
	
	
	birthday = tmp[2]+"-"+tmp[0]+"-"+tmp[1];
	
	
	String sql = "insert into memberinfo("
			+ "unq, "
			+ "userid, "
			+ "pass, "
			+ "name, "
			+ "birthday, "
			+ "gender, "
			+ "post, "
			+ "addr, "
			+ "school, "
			+ "rdate"
			+") values("
					+ "memberinfo_seq.nextval, "
					+ "'"+userid+"', "
					+ "'"+pass+"', "
					+ "'"+name+"', "
					+ "'"+birthday+"', "
					+ "'"+gender+"', "
					+ "'"+post+"', "
					+ "'"+addr+"', "
					+ "'"+school+"', "
					+ "sysdate"
					+")";
	

	
	int result = stmt.executeUpdate(sql);
	
	if(result > 0){
		%>
		<script>
		alert("저장완료");
		location="login.jsp";
		</script>
		<%
	}else{
		%>
		<script>
		alert("저장실패");
		history.back();
		</script>
		<%
	}
%>