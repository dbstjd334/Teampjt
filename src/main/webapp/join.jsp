<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

<style type="text/css">

   #regbox{

      width : 300px;

   }

   #regbox label{

      display : block;

      width: 100px;

      float : left;

   }
   
   span{
      display : block;
      font-size : 12px;
   }

   #input{
      display : flex;
      justify-content : center;
      margin-top : 10px;
   
   }
</style>


<title>Insert title here</title>
</head>
<body>
	<h1>회원가입 페이지</h1>
	
	 <form action="signComplete.jsp">
   
      <fieldset id="regbox">
   
         <legend>회원가입</legend>
         
         <label for="ids">아이디</label>
         <input type="text" name="id"/><br/>

         <label for="pwd">비밀번호</label>
         <input type="password" name="pwd"/><br/>
   
         <label for="name">이름</label>
         <input type="text" name="name"/>
   
         <div id = input>
            <input type="submit" value="가입">
            <input type="reset" value="취소"/>
         </div>
         
      </fieldset>
   
   </form>


</body>
</html>