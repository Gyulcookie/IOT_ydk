<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/dbcon.jsp" %>
<%@ include file="../css/topMenu.jsp"%>

<%
	
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");
	String birthday = request.getParameter("birthday");
	String gender = request.getParameter("gender");
	String addr = request.getParameter("addr");
	String post = request.getParameter("post");
	String school = request.getParameter("school");
	
	String[] tmp = birthday.split("/");
	
	
	birthday = tmp[2]+"-"+tmp[0]+"-"+tmp[1];
	
	
// 	String sql = "insert into memberinfo("
// 			+ "unq, "
// 			+ "pass, "
// 			+ "name, "
// 			+ "birthday, "
// 			+ "gender, "
// 			+ "post, "
// 			+ "addr, "
// 			+ "school, "
// 			+ "rdate"
// 			+") values("
// 					+ "memberinfo_seq.nextval, "
// 					+ "'"+pass+"', "
// 					+ "'"+name+"', "
// 					+ "'"+birthday+"', "
// 					+ "'"+gender+"', "
// 					+ "'"+post+"', "
// 					+ "'"+addr+"', "
// 					+ "'"+school+"', "
// 					+ "sysdate"
// 					+")";
	
	String sql = "update memberinfo"
				+" set name = '"+name+"',"
				+" birthday = '"+birthday+"',"
				+" gender = '"+gender+"',"
				+" post = '"+post+"',"
				+" addr = '"+addr+"',"
				+" school = '"+school+"'"
				+" where userid = '"+uid+"'"
				+" and pass = '"+pass+"'";
	
	int result = stmt.executeUpdate(sql);
	
	if(result > 0){
		%>
		<script>
		alert("저장완료");
		location="/";
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