<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인 페이지</h1>
	
	
	<form action="checkAccount.jsp">
		아이디 : <input type="text" name="id">
		<br> 
		비밀번호 :<input type="password" name="pwd">
		<br>
		<input type="submit" value="로그인">
		<a href = "join.jsp">회원가입</a>
		<a href="searchID.jsp">아이디 찾기</a>&nbsp;&nbsp;&nbsp;<a href="searchPass.jsp">비밀번호 찾기</a>
	</form>
		<br>
		
		
		<%
		
		%>



	<!-- 지우지마세요 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</body>
</html>