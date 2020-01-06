<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>

    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
  <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->
  <style>

    .btn-circle.btn-xl {
      width: 300px;
      height: 300px;
      padding: 5px 5px 5px 5px;
      border-radius: 100%;
      font-size: 24px;
      line-height: 1.33;

    }

    .btn-circle {
      width: 300px;
      height: 300px;
      padding: 0px 0px;
      border-radius: 40px;
      text-align: center;
      font-size: 12px;
      line-height: 1.42857;
      background-color: #E4E4E4;
    }
	body{
		/* background-image:url("../resources/imgs/studymain.webp"); */
		shadow:0 0 10px gray;
		background-repeat : no-repeat;
		background-size: 100%;
	}
  </style>
  </head>
  <body>
    <div class="pos-f-t">
  <div class="collapse" id="navbarToggleExternalContent">
    <div class="bg-dark p-4">
      <h5 class="text-white h4">Collapsed content</h5>
      <span class="text-muted">Toggleable via the navbar brand.</span>
    </div>
  </div>
  <nav class="navbar navbar-dark bg-dark text-white h6 font-weight-bold">공부할 사람 모여라!
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon">
      </span>
    </button>
  </nav>
</div>
<div class="form-group row justify-content-md-center m-5">
  <div class="cols-sm-10 d-block p-5">
    <button id="enroll" type="button" class="btn btn-circle btn-xl"><i class="fa fa-check"></i>
        <h1>스터디등록</h1>
          <h1>바로가기</h1>
    </button>
  </div>
  <div class="cols-sm-10 d-block p-5">
    <button type="button" class="btn btn-circle btn-xl"><i class="fa fa-check"></i>
      <h1>스터디 탐방</h1>
        <h1>바로가기</h1>
    </button>
  </div>
</div>



<!-- Footer -->
<footer class="page-footer font-small cyan darken-3">

  <!-- Footer Elements -->
  <div class="container">

    <!-- Grid row-->
    <div class="row">

      <!-- Grid column -->
      <div class="col-md-12 py-5">
        <div class="mb-5 flex-center">

          <!-- Facebook -->
          <a class="fb-ic">
            <i class="fab fa-facebook-f fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
          </a>
          <!-- Twitter -->
          <a class="tw-ic">
            <i class="fab fa-twitter fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
          </a>
          <!-- Google +-->
          <a class="gplus-ic">
            <i class="fab fa-google-plus-g fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
          </a>
          <!--Linkedin -->
          <a class="li-ic">
            <i class="fab fa-linkedin-in fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
          </a>
          <!--Instagram-->
          <a class="ins-ic">
            <i class="fab fa-instagram fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
          </a>
          <!--Pinterest-->
          <a class="pin-ic">
            <i class="fab fa-pinterest fa-lg white-text fa-2x"> </i>
          </a>
        </div>
      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row-->

  </div>
  <!-- Footer Elements -->
  <div class="mt-10 bg-dark cols-sm-10 d-flex row   justify-content-md-center ">
    <div class=" cols-sm-4 d-flex p-2 control-label d-inline-block text-white h6 font-weight-bold">
    </div>
  <!-- Copyright -->
  <div class=" cols-sm-2 d-flex p-2 d-inline-block  control-label footer-copyright text-center py-3">© SophyWorld
    <a href="https://mdbootstrap.com/education/bootstrap/" class="pl-2"> sophyworld.com</a>
  </div>
</div>
  <!-- Copyright -->


</footer>
<!-- Footer -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		

		$('#enroll').click(function() {
			window.location.href="/study/study_enroll1";
		});
		
		$('#modify').click(function() {
			location.href="/member/modify";
		});
		
	});
</script>	
</body>
</html>
