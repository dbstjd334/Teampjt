<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
	<h1>ȸ������ ������</h1>
	
	 <form action="signComplete.jsp">
   
      <fieldset id="regbox">
   
         <legend>ȸ������</legend>
         
         <label for="ids">���̵�</label>
         <input type="text" name="ids"/><br/>

         <label for="pwd">��й�ȣ</label>
         <input type="password" name="pwd"/><br/>
   
         <label for="name">�̸�</label>
         <input type="text" name="name"/>
   
         <div id = input>
            <input type="submit" value="����">
            <input type="reset" value="���"/>
         </div>
         
      </fieldset>
   
   </form>


</body>
</html>