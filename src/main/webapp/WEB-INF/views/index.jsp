<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page import = "java.util.Calendar" %>
<%Calendar cal = Calendar.getInstance();%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<c:import url="./fragments/bootstrap.jsp"></c:import>  
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/index.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>

<body>
<c:import url="./fragments/header.jsp"></c:import>
<br>

<div align="center">
	<ul>
		<li>
		<br>
		<h1>
		<%= cal.get(Calendar.YEAR) %>년
		<%= cal.get(Calendar.MONTH)+1 %>월
		<%= cal.get(Calendar.DATE) %>일
		</h1>
		<h1>오늘의 웹툰</h1>
		</li>		
	</ul>
</div>

<!-- 슬라이드  -->
<!-- <h1 align="center" style="font-size:60px;"><img width=60px height=60px src="https://ifh.cc/g/rqDzQL.png"> 추천 웹툰 </h1> -->
<div class="w3-container">
</div>
<div class="w3-content" style="max-width:1000px">
  <a class="r" href="/toon/eachEpList?toonNum=1"><img class="mySlides" src="https://ifh.cc/g/bBaloj.jpg" style="width:100%;" height=600px></a>
  <a class="r" href="/toon/eachEpList?toonNum=51"><img class="mySlides" src="https://ifh.cc/g/SLjxYs.jpg" style="width:100%" height=600px></a>
  <a class="r" href="/toon/eachEpList?toonNum=62"><img class="mySlides" src=https://ifh.cc/g/wu584q.jpg style="width:100%;" height=600px></a>
  	
  <div class="w3-row-padding w3-section">
    <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" src="https://ifh.cc/g/bBaloj.jpg" style="width:100%; cursor:pointer" height=300px onclick="currentDiv(1)">
    </div>
    <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" src="https://ifh.cc/g/SLjxYs.jpg" style="width:100%;cursor:pointer" height=300px onclick="currentDiv(2)">
    </div>
    <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" src="https://ifh.cc/g/wu584q.jpg" style="width:100%;cursor:pointer" height=300px onclick="currentDiv(3)">
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
<td><h3>요일별 웹툰</h3><p><a class="ddd" href="/toon/toonDay/toonDay"> 
<img width=400px height=400px src="https://ifh.cc/g/K7Pxnu.webp"></a></td>
<td><h3>장르별 웹툰</h3><p><a class="ggg" href="/toon/genre/genre">
<img width=400px height=400px src="https://ifh.cc/g/KLjfiT.jpg"></a></td>
</tr>
</table>
<br>
<br>

<table align="center">
<tr>
<td><h3>랭킹별 웹툰</h3><p><a class="rrr" href="/toon/ranking/ranking">
<img width=400px height=400px src="https://ifh.cc/g/K7Pxnu.webp"><p></a></td>
<td><h3>완결웹툰</h3><p><a class="eee" href="/toon/end/endRe">
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


<div><h2>툰</h2>
		<br>
			<ul>
		<c:forEach items="${toonIndex}" var="index">
			<li><a href="/toon/eachEpList?toonNum=${index.toonNum}">
			<img width=100px height=100px src=${index.titleImg}></a></li>
			<li>${index.toonTitle}</li>
			<p>	
		</c:forEach>
		</ul>
		</div>




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


</body>
</html>