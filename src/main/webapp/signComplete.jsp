
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>



    
<!DOCTYPE html>
<html>
<head>

<meta charset="EUC-KR">
<title>[ ChanVerse_gr1 ]</title>
</head>
<body>
	<h1>회원 가입이 완료되었습니다</h1>
	<%
		request.setCharacterEncoding("utf-8");
		String userId = request.getParameter("id");
		String userPwd = request.getParameter("pwd");
		String userName = request.getParameter("name");
		
		System.out.println( "Insert진입성공, 전달된 값" );
		

		
		System.out.println(userId);
		System.out.println(userPwd);
		System.out.println(userName);
		
		Connection conn = null;						// Connection :  데이터베이스와 연결한는 객체
		Statement stmt = null;						// Statement : sql구문을 실행하는 클래스, / 스스로 sql구문을 이해하지 못함(해석이나 오류탐지 불가)/ sql관리 ㅇ, 연결정보는 없음

		String url = "jdbc:mariadb://192.168.1.25:3306/db01";
		String id = "root";
		String pw = "1234";

		try {

		Class.forName("org.mariadb.jdbc.Driver");
		conn = DriverManager.getConnection(url, id, pw);	// getConnection: null이 아닌 사용자의 이름또는 암호를 사용하여 getConnection을 호출하면 사용자 이름 및 암호속성이 대체됨
		stmt = conn.createStatement();						// createStatement: 
		System.out.println("접속 성공");
		ResultSet rs = stmt.executeQuery("insert into memberList values(null,'"+userId+"','"+userPwd+"','"+userName+"');");	// executeQuery: 수행결과로 ResultSet 객체의 값을 반환 SELECT절에 사용

		ResultSet rs1 = stmt.executeQuery("select * from memberList;");	// executeQuery: 수행결과로 ResultSet 객체의 값을 반환 SELECT절에 사용
			
		System.out.println( "회원가입 성공" );
		
		
		%>
		<h3>현재 회원 리스트</h3>
		<table border='1' width=400>
		<tr>
		<td>No</td><td>Name</td>
		</tr>
		<%
		while(rs1.next()) {
						            out.println("<tr>"+"<td>"+rs1.getString(1)+"</td>");
						            out.println("<td>"+rs1.getString(2)+"</td>");
								}
		 %>
		 </table>
		<%
		
		}catch (ClassNotFoundException e) {
				System.out.println("드라이버가 없습니다.");
				e.printStackTrace();
			}			
		catch (SQLException e) {
				System.out.println("접속 정보 및 SQL 문제 발생.");
				e.printStackTrace();
			}
		
		
	%>
	
	
	
	<a href="login.jsp">로그인 하러가기</a>
</body>
</html>