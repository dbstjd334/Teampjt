<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[ ChanVerse_gr1 ]</title>
	<!-- 지우지마세요 -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
 </head>
<style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
    </style>

<body>
<header>
  <div class="collapse bg-dark" id="navbarHeader">
    <div class="container">
      <div class="row">
        <div class="col-sm-8 col-md-7 py-4">
          <h4 class="text-white">About</h4>
          <p class="text-muted"> "Chainverse", which combines Metaverse and Chain Block, is a new business model in the 4th industrial age.</p>
        </div>
        <div class="col-sm-4 offset-md-1 py-4">
          <h4 class="text-white">Contact</h4>
          <ul class="list-unstyled">
            <li><a href="#" class="text-white">Follow on Twitter</a></li>
            <li><a href="#" class="text-white">Like on Facebook</a></li>
            <li><a href="#" class="text-white">Email me</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="navbar navbar-dark bg-dark shadow-sm">
    <div class="container">
      <a href="#" class="navbar-brand d-flex align-items-center">
        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" aria-hidden="true" class="me-2" viewBox="0 0 24 24"><path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"/><circle cx="12" cy="13" r="4"/></svg>
        <strong>CHAINVERSE</strong>
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    </div>
  </div>
</header>
	
	
	<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp">chainverse</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        
        <li class="nav-item">
        <% String test = "true" ;
	   /* String getSession = (String)session.getAttribute(""); */
	   System.out.println( session.getAttribute("login") );
	   String gs = (String)session.getAttribute("login");
	   
		String test1 = "";
	   String test2 = "";
   
	 if( gs != null ){
		%> 
          <a class="nav-link" href="sessionRemove.jsp">LOGOUT</a>
	 <% }else{%>
          <a class="nav-link" href="login.jsp">LOGIN</a>
	 <% }%>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
	

	
	
	
	
   <%
      if ( gs != null ){
         test1 = "content.jsp";
      }else{
         test1 = "#";
               
         test2= "onClick=\"alert('로그인이 필요합니다.')\"";
      }
   %>





	<div class="row">
		<div class="col-lg-3 col-md-6">
			<div class="card" style="width: 18rem;">
				<img src="https://p4.wallpaperbetter.com/wallpaper/229/361/142/lion-simple-background-minimalism-monochrome-wallpaper-preview.jpg" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">LEE</h5>
					<p class="card-text">청춘의 더운지라 있는 그것은 있는가? 커다란 원대하고, 어디 가슴에 그와 대고, 얼마나 철환하였는가? 가는 천자만홍이 없으면, 품에 아름답고 만천하의 소담스러운 듣는다. 대중을 인생의 되려니와, 크고 커다란 별과 얼음 싸인 쓸쓸하랴? 하여도 눈에 불어 피고 있는가? 밝은 품었기 것은 더운지라 이상이 사막이다.</p>
					<a href="<%=test1%>" <%=test2%>" class="btn btn-primary">기사 읽기</a>
				</div>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="card" style="width: 18rem;">
				<img src="https://i.pinimg.com/564x/7e/2e/55/7e2e55a38885bfe567085239eeeba9a1.jpg" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">KO</h5>
					<p class="card-text">청춘의 더운지라 있는 그것은 있는가? 커다란 원대하고, 어디 가슴에 그와 대고, 얼마나 철환하였는가? 가는 천자만홍이 없으면, 품에 아름답고 만천하의 소담스러운 듣는다. 대중을 인생의 되려니와, 크고 커다란 별과 얼음 싸인 쓸쓸하랴? </p>
					<a href="<%=test1%>" <%=test2%>" class="btn btn-primary">기사 읽기</a>
				</div>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="card" style="width: 18rem;">
				<img src="https://scontent-ssn1-1.xx.fbcdn.net/v/t1.6435-9/115928511_2801445246626315_6041884504448514548_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=9267fe&_nc_ohc=rMrSeay4WlsAX96iSdQ&_nc_ht=scontent-ssn1-1.xx&oh=00_AT-Fgn0tnBG_PbC4-6ze1xj0QanaIei1z3rttkZpWZGVkQ&oe=634C2541" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">HONG</h5>
					<p class="card-text">청춘의 더운지라 있는 그것은 있는가? 커다란 원대하고, 어디 가슴에 그와 대고, 얼마나 철환하였는가? 가는 천자만홍이 없으면, 품에 아름답고 만천하의 소담스러운 듣는다. 대중을 인생의 되려니와, 크고 커다란 별과 얼음 싸인 쓸쓸하랴? 하여도 눈에 불어 피고 있는가? 밝은 품었기 것은 더운지라 이상이 사막이다.</p>
					<a href="<%=test1%>" <%=test2%>" class="btn btn-primary">기사 읽기</a>
				</div>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="card" style="width: 18rem;">
				<img src="https://post-phinf.pstatic.net/MjAyMTAxMjFfMTA3/MDAxNjExMTk2ODM3NzU4.er3X53Mr5Zcn0ynp1B5QAIWeyjwgk9T-1cSC7Tgqe14g.cLCKopgCQAUtv9y2wMvX1hxLlN1cZTezylgCCppn0X8g.PNG/%EA%B6%8C%EC%A0%95%EC%97%B4_10cm_playlist.png?type=w1200" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">NAM</h5>
					<p class="card-text">청춘의 더운지라 있는 그것은 있는가? 커다란 원대하고, 어디 가슴에 그와 대고, 얼마나 철환하였는가? 가는 천자만홍이 없으면, 품에 아름답고 만천하의 소담스러운 듣는다. 아기다리고기다리던방학</p>
					<a href="<%=test1%>" <%=test2%>" class="btn btn-primary">기사 읽기</a>
				</div>
			</div>
		</div>
	</div>


	<br>


	<!-- 지우지마세요 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</body>
</html>