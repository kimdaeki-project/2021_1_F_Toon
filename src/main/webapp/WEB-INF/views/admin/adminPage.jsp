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
    <link rel="shortcut icon" href="../asssets/images/favicon.ico" />
</head>
<body class="header-fixed">
<!-- Header -->
<c:import url="./../fragments/header.jsp"></c:import>
<div class="">
<!-- partial:partials/_sidebar.html -->
  <div class="row">
  	<div class="col-2">
  		<c:import url="./adminNav.jsp"></c:import>
  	</div>
  	<!-- 매출액 -->
    <div class="col-6" id="income-chart-all">
    <!-- 총 매출액 (오늘 수입) -->
    	
	<!-- 총 매출액 (충전)-->
		<h3 class="fs-6"> 매출액 조회하기 월별</h3>
		<div class="card " > 
			<canvas id="totalIncome"></canvas>
		</div>
		<h3 class="fs-6"> 매출액 조회하기 년별</h3>
	    <div class="card " > 
			<canvas id="totalIncome"></canvas>
		</div>
    </div>
    
    <div class="col-4"><!-- 웹툰 별 순위 -->
	  	<h3 class="fs-6"> 웹툰 별 매출액 순위(소장권) </h3>
	    <ul>
	      <li>
	      	<div >
	    	<canvas id="InComeRank">여기에는 웹툰 별 순위 조회하기 (10개 순서 대로)</canvas>
	   		</div>
	      </li>
	    </ul>
    </div>
    
  </div>
</div>

    <!-- chart.js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <!-- 직접 작성한 js  -->
    <script type="text/javascript" src="../js/admin/adminControl.js"></script>
    <!-- graph.js : 통계 관련  -->
    <script type="text/javascript" src="../js/admin/chart.js"></script>
 <!-- endbuild -->
</body>
</html>