<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jdbcConnect.MemberDbDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Statement stmt1=null;
Statement stmt2=null;
ResultSet resultSet1=null;
ResultSet resultSet2=null;
MemberDbDTO dbDTO1=new MemberDbDTO();
stmt1=dbDTO1.memberDto();
request.setCharacterEncoding("utf-8");
String userId = request.getParameter("id");
String username = request.getParameter("name");
System.out.println(userId);
if(username!=null&&userId==null){
	resultSet1=stmt1.executeQuery("Select * from memberlist where name='"+username+"';");
	try{
		if(resultSet1.next()){
			out.println(resultSet1.getString(2)+"<p/>");
			out.println("<a href="+"login.jsp>"+"로그인"+"</a>");
		}
		else{
			out.println("해당 이름이 없습니다."+"<p/>");
			out.println("<a href="+"searchID.jsp>"+"아이디 찾기"+"</a>");
		}
	}
	catch(SQLException e) {
	}
}
if(userId!=null&&username==null){
	resultSet2=stmt1.executeQuery("Select * from memberlist where id='"+userId+"';");
	try{
		if(resultSet2.next()){
			out.println(resultSet2.getString(3)+"<p/>");
			out.println("<a href="+"login.jsp>"+"로그인"+"</a>");
		}
		else{
			out.println("해당 아이디가 없습니다."+"<p/>");
			out.println("<a href="+"searchPass.jsp>"+"비밀번호 찾기"+"</a>");
		}
	}
	catch(SQLException e) {
	}
}
%>
</body>
</html>