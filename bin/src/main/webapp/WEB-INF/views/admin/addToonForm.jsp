<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- security 설정 가져오기 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>ADMIN PAGE</title>
	<!-- main css -->
	<link rel="stylesheet" href="../css/bootstrap.css">
	<link rel="stylesheet" href="../css/themify-icons.css">
	<link rel="stylesheet" href="../css/flaticon.css">
	<link rel="stylesheet" href="../css/all.min.css">
	<link rel="stylesheet" href="../css/animate.css">
	<link rel="stylesheet" href="../css/magnific-popup.css">
	<link rel="stylesheet" href="../css/style.css">
<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    
</head>
<body class="header-fixed">
<c:import url="./../fragments/header.jsp"></c:import>
<!-- ADD TOON  Form-->
<!-- body-->
<div class="container">
  <div class="row justify-content-md-center">
    <div class="col-3"></div><!-- 1colEND -->
    <div class="col-6">
    	<p class="fs-1 text-start"> Toon Add Form</p>
    	<div id="">
    		<form class="" action="" method="post">
    			<!-- 웹툰 제목,작가(기존에 있는 작가 찾아서 등록함)추가   -->
    			<!-- 웹툰 썸네일 이미지 등록-->
    			<!-- 연재 요일과 연재기간 설정(공개일~ 완결 기간) -->
    			<!-- -->
    			<div class="card"></div>
    			<!-- 웹툰 썸네일 이미지 -->
    			<!--  -->
    			<div class="">
    				<button class="btn btn-outline-primary">웹툰 등록</button>
    			</div>
    		</form>
    	</div>
    </div><!-- 2colEND -->
    	<div class="col-3"></div> <!-- 3colEND -->
  	</div>
</div>

<!-- script -->
<script type="text/javascript" src="../js/admin/tooncheck.js"></script>

</body>
</html>