<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- BootStrap -->    
	<!--     <link rel="icon" href="images/favicon.png" type="image/png">  위에 로고-->
    <c:import url="./fragments/bootstrap.jsp"></c:import>
    <title>WebToon</title>
   
    <link rel="stylesheet" href="/css/header.css">
    
    <meta charset="UTF-8"> <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<meta http-equiv="X-UA-Compatible" content="ie=edge"> <title>부트스트랩Carousel</title>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
 integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> 
 <style> .carousel-inner > .carousel-item > img{ /* width: 640px; height: 720px; */ } </style>
</head>
<body>
	<c:import url="./fragments/header.jsp"></c:import>
  

 

   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
</script> <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script> 
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script> <script> $('.carousel').carousel({ interval: 2000 //기본 5초 }) </script> 
<div class="container"></div> 
<div id="demo" class="carousel slide" data-ride="carousel">
<div class="carousel-inner"> <!-- 슬라이드 쇼 --> <div class="carousel-item active"> <!--가로--> 
<img class="d-block w-100" src="https://ifh.cc/g/EwbQVh.jpg" alt="First slide"> 
<div class="carousel-caption d-none d-md-block ">  </div> </div> 
<div class="carousel-item"> 
<img class="d-block w-100" src="https://ifh.cc/g/vJwutX.jpg" alt="Second slide"> </div> 
<div class="carousel-item"> 
<img class="d-block w-100" src="https://ifh.cc/g/14MTyP.jpg" alt="Third slide"> </div> 
<!-- / 슬라이드 쇼 끝 --> <!-- 왼쪽 오른쪽 화살표 버튼 --> <a class="carousel-control-prev" href="#demo" data-slide="prev">
 <span class="carousel-control-prev-icon" aria-hidden="true"></span> <!-- <span>Previous</span> --> </a> <a class="carousel-control-next" href="#demo" data-slide="next">
 <span class="carousel-control-next-icon" aria-hidden="true"></span> <!-- <span>Next</span> --> </a> <!-- / 화살표 버튼 끝 --> <!-- 인디케이터 --> 
 <ul class="carousel-indicators">
  <li data-target="#demo" data-slide-to="0" class="active"></li>
   <!--0번부터시작--> <li data-target="#demo" data-slide-to="1"></li> 
   <li data-target="#demo" data-slide-to="2"></li> </ul> <!-- 인디케이터 끝 --> </div>


  
<!-- ================ End footer Area ================= -->
<c:import url="./fragments/footer.jsp"></c:import>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
d
<script src="js/jquery-2.2.4.min.js"></script>
<script src="js/popper.js"></script>
<script src="js/bootstrap.min.js"></script>

<script src="js/stellar.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.ajaxchimp.min.js"></script>
<script src="js/waypoints.min.js"></script>
<script src="js/mail-script.js"></script>
<script src="js/contact.js"></script>
<script src="js/jquery.form.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/mail-script.js"></script>
<script src="js/theme.js"></script>

</body>
</html>