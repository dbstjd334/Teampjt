<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String password = request.getParameter("pwd");


Class.forName("org.mariadb.jdbc.Driver");
System.out.println("mariadb 사용가능");

Connection conn = DriverManager.getConnection("jdbc:mariadb://192.168.1.25:3306/db01","root","1234");

try{
	PreparedStatement stmt = conn.prepareStatement("select * from memberList where id=? and pwd=?"); 

	stmt.setString(1, id);
	stmt.setString(2, password);
	ResultSet resultset=stmt.executeQuery();
	if( resultset.next() ) {
		System.out.println( "로그인성공!" );

		session.setAttribute("login","true");
		session.setMaxInactiveInterval(1000);
		
	}
	else {
		response.sendRedirect("index.jsp");
	}
}
catch(SQLException e) {
}
%>

<h1>로그인이 완료되었습니다</h1>
<button onclick="location.href='index.jsp' ">홈화면으로</button>


</body>
</html>