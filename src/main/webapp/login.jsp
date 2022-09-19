<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="EUC-KR">
    <link rel="canonical" href="https://getbootstrap.kr/docs/5.1/examples/modals/">

<title>Insert title here</title>
<!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">


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
    </style>

    
    <!-- Custom styles for this template -->
    <link href="modals.css" rel="stylesheet">
</head>
<body>

		
	
		
		<div class="modal modal-signin position-static d-block bg-secondary py-5" tabindex="-1" role="dialog" id="modalSignin">
  <div class="modal-dialog" role="document">
    <div class="modal-content rounded-5 shadow">
      <div class="modal-header p-5 pb-4 border-bottom-0">
        <!-- <h5 class="modal-title">Modal title</h5> -->
        <h2 class="fw-bold mb-0">Welcome to ChainVerse</h2>
        <button type="button" class="btn-close" data-bs-dismiss="modal" onclick="location.href='index.jsp'" ></button>
      </div>

      <div class="modal-body p-5 pt-0">
        <form action="checkAccount.jsp">
          <div class="form-floating mb-3">
            <input type="text" class="form-control rounded-4" name="id" placeholder="name@example.com">
            <label for="floatingInput">Insert ID</label>
          </div>
          <div class="form-floating mb-3">
            <input type="password" class="form-control rounded-4" name="pwd" placeholder="Password">
            <label for="floatingPassword">Insert Password</label>
          </div>
          <button class="w-100 mb-2 btn btn-lg rounded-4 btn-primary" type="submit">Sign up</button>
          <small class="text-muted">By clicking Sign up, you agree to the terms of use.</small>
          <hr class="my-4">
        </form>
          <h2 class="fs-5 fw-bold mb-3">Or use a third-party</h2>
          <button class="w-100 py-2 mb-2 btn btn-outline-dark rounded-4" onclick="location.href='join.jsp'">
            <svg class="bi me-1" width="16" height="16"><use xlink:href="join.jsp"/></svg>
            join
          </button>
          <button class="w-100 py-2 mb-2 btn btn-outline-primary rounded-4"onclick="location.href='searchID.jsp'">
            <svg class="bi me-1" width="16" height="16"><use xlink:href="searchID.jsp"/></svg>
            Find my Id
          </button>
          <button class="w-100 py-2 mb-2 btn btn-outline-secondary rounded-4" onclick="location.href='searchPass.jsp'">
            <svg class="bi me-1" width="16" height="16"><use xlink:href="searchPass.jsp"/></svg>
            Find my Password
          </button>
      </div>
    </div>
  </div>
</div>

<div class="b-example-divider"></div>
		



	<!-- 지우지마세요 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</body>
</html>