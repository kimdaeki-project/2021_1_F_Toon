<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
   	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <c:import url="../fragments/bootstrap.jsp"></c:import>
    <title>Admin Page</title>
  
    <link rel="stylesheet" href="/css/header.css">
    <!-- plugins:css -->
    <link rel="stylesheet" href="../assets/vendors/iconfonts/mdi/css/materialdesignicons.css">
    <link rel="stylesheet" href="/css/mypage/style.css">
    <!-- Layout style -->
    <link rel="shortcut icon" href="../asssets/images/favicon.ico"/>
</head>

<body>
	<!-- Header -->
	<c:import url="../fragments/header.jsp"></c:import>	
	<div class="">
	<!-- partial:partials/_sidebar.html -->
  	<div class="row page-body">
  		<div class="col-2"> <c:import url="./adminNav.jsp"></c:import> </div>
  	 <!-- partial -->
  	<div class="page-content-wrapper">
  	 	<!-- 매출액 (충전)-->
	    <div class="col" id="income-chart-all">
	    <div class="row">
	    <!-- 총 충전 매출액 (오늘 수입) -->
		    <div class="card row" > 
				<h5 class="fs-6"> 매출액 조회하기 일별</h5>
				<canvas id="income-today"></canvas>
			</div>
	    <!-- 총 충전 매출액 (주간 수입) -->
	    	<div class="card row"> 
				<h5 class="fs-6"> 매출액 조회하기 월별</h5>
				<canvas id="income-week"></canvas>
			</div>
	    </div>
	    <!-- 총 충전 매출액 (년   수입) -->
		   <div class="card" > 
			    <h5 class="fs-6"> 매출액 조회하기 년별</h5>
				<canvas id="income-year"></canvas>
			</div>
		</div>
		<!-- 매출액 : 웹툰 순위 Top 5 -->
		<div class="col-6" id="income-chart-toon">
			 <div class="card">
			</div>
		</div>
  	 </div>
  	
  </div>
</div>

   
    <script src="../assets/vendors/js/core.js"></script>
    <script src="../assets/vendors/apexcharts/apexcharts.min.js"></script>
    <script src="../assets/vendors/chartjs/Chart.min.js"></script>
    <script src="../assets/js/charts/chartjs.addon.js"></script>
    <script src="../assets/js/template.js"></script>
    <script src="../assets/js/dashboard.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript" src="../js/mypage.js"></script>
    
     <!-- chart.js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <!-- 직접 작성한 js  -->
    <script type="text/javascript" src="../js/admin/adminControl.js"></script>
    <!-- graph.js : 통계 관련  -->
    <script type="text/javascript" src="../js/admin/chart.js"></script>
    
 <!-- endbuild -->
</body>

</html>