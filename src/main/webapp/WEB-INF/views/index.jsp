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

   
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="/css/index.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<c:import url="./fragments/header.jsp"></c:import>
 
 <!-- 슬라이드  -->
<h1 align="center">추천 웹툰 </h1>
<div class="w3-container">
</div>
<div class="w3-content" style="max-width:1000px">
  <a class="r" href="/toon/eachEpList?toonNum=1"><img class="mySlides" src="https://ifh.cc/g/KH86Cq.jpg" style="width:90%;display:none"></a>
  <a class="r" href="/toon/eachEpList?toonNum=51"><img class="mySlides" src="https://ifh.cc/g/2BSR3W.jpg" style="width:90%"></a>
  <a class="r" href="/toon/eachEpList?toonNum=62"><img class="mySlides" src="https://ifh.cc/g/SiEi30.jpg" style="width:100%;display:none"></a>

  <div class="w3-row-padding w3-section">
    <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" src="https://ifh.cc/g/KH86Cq.jpg" style="width:100%;cursor:pointer" onclick="currentDiv(1)">
    </div>
    <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" src="https://ifh.cc/g/2BSR3W.jpg" style="width:100%;cursor:pointer" onclick="currentDiv(2)">
    </div>
    <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" src="https://ifh.cc/g/SiEi30.jpg" style="width:100%;cursor:pointer" onclick="currentDiv(3)">
    </div>
  </div>
</div>
<!-- 슬라이드 끝 --> 
<br>
<br>
<br>
<br>
<br>
<br>
 
<!-- 웹툰 페이지 이동 -->

<table align="center">
<tr>
<td><h3>요일별 웹툰</h3><p><a class="d" href="/toon/toonDay/toonDay"> 
<img width=400px height=400px src="https://ifh.cc/g/K7Pxnu.webp"></a></td>
<td><h3>장르별 웹툰</h3><p><a class="g" href="/toon/genre/genre">
<img width=400px height=400px src="https://ifh.cc/g/KLjfiT.jpg"></a></td>
</tr>
</table>
<br>
<br>

<table align="center">
<tr>
<td><h3>랭킹별 웹툰</h3><p><a class="r" href="/toon/ranking/ranking">
<img width=400px height=400px src="https://ifh.cc/g/K7Pxnu.webp"><p></a></td>
<td><h3>완결웹툰</h3><p><a class="e" href="/toon/end/endRe">
<img width=400px height=400px src="https://ifh.cc/g/K7Pxnu.webp"><p></a></td>
</tr>
</table>
<!-- 웹툰 페이지 이동  끝-->

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>


<div class="ind"><h2>툰</h2></a>
		<br>
			<ul>
		<c:forEach items="${in}" var="in">
			<li><a href="/toon/eachEpList?toonNum=${in.toonNum}"> <img width=100px height=100px src=${in.titleImg}></a></li>
			<li>${in.toonTitle}</li>
			<p>	
		</c:forEach>
		</ul>
		</div>



<script src="js/index.js"></script>

<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>


<!-- ================ End footer Area ================= -->
<c:import url="./fragments/footer.jsp"></c:import>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->

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