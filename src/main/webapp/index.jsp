<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> 홈 화면 </h1>
	<% String test = "true" ;
	   /* String getSession = (String)session.getAttribute(""); */
	   String getSession = (String)session.getAttribute("login");
		String test1 = "";
	   String test2 = "";
   
	 if( test.equals("true") ){
		%> 
		 <button onclick="location.href='sessionRemove.jsp'">로그아웃</button>
	 <% }else{%>
		 <button onclick="location.href='login.jsp'">로그인</button>
	 <% }%>
	
	
	
	
	
	
	
	
	
	
	
   
   <%
      if (test.equals("true") ){
         test1 = "content.jsp";
      }else{
         test1 = "#";
               
         test2= "onClick=\"alert('로그인이 필요합니다.')\"";
      }
   %>
   

   
      <a href="<%=test1%>"<%=test2 %>>컨텐츠입니다</a>
	
	
	<br>
	

</body>
</html>