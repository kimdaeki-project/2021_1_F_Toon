<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 시큐리티 적용하기-->
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
   	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<%--     <c:import url="/fragments/bootstrap.jsp"></c:import> --%>
    <title>Admin Page</title>
    <link rel="stylesheet" href="/css/header.css">
    <!-- plugins:css -->
    <link rel="stylesheet" href="../assets/vendors/iconfonts/mdi/css/materialdesignicons.css">
    <link rel="stylesheet" href="/css/mypage/style.css">
    <!-- Layout style -->
    <link rel="shortcut icon" href="../asssets/images/favicon.ico"/>
</head>

<body class="header-fixed">
<%-- 	<c:import url="../fragments/header.jsp"></c:import>	  --%>
      <nav class="t-header">
        <!-- theader 달기 -->
      </nav>
      <div class="page-body">
          <div class="sidebar">
            <c:import url="./../adminNav.jsp"></c:import>
          </div>
          <div class="page-content-wrapper">
              <div class="page-content-wrapper-inner">
                  <div class="viewport-header">
                      <!-- Page Header Content -->
                  </div>
                  <div class="content-viewport">
                      <!-- Page contents here -->
	                  <!-- 매출액 (충전)-->
					<div class="row" id="income-chart-all">
						<div class="row">
						    <!-- 총 충전 매출액 (오늘 수입) -->
						<div class="card row" > 
							<h5 class="fs-6"> 매출액 조회하기 일별</h5>
							<canvas id="income-today">
							<p>${daySaleVO.date}</p>
							
							</canvas>
						</div>
						    <!-- 총 충전 매출액 (주간 수입) -->
						 <div class="card row"> 
							<h5 class="fs-6"> 매출액 조회하기 월별</h5>
							<canvas id="income-week"></canvas>
						</div>
						</div>
						    <!-- 총 충전 매출액 (년   수입) -->
						<div class="card row" > 
							<h5 class="fs-6"> 매출액 조회하기 년별,가로로 길게</h5>
							<canvas id="income-year"></canvas>
						</div>
					</div>
	                </div><!-- income chart 완료 -->
	                <!-- 매출액 : 웹툰 순위 Top 5 table for Each문 사용하기-->
					<div class="col" id="income-chart-toon">
						<ul class="card">
							<li class="card-body">
							<div class="card">여기에 대충 내용이 있어요</div></li>
						</ul>
					</div>
	              </div>
              <!-- content viewport ends -->
              <footer class="footer">
                  <!-- Footer Element-->
              </footer>
          </div>
          <!-- page content ends -->
      </div>
      <!--page body ends -->
      <!-- plugins:js -->
      <script type="text/javascript" src="vendors/js/core.js"></script>
      <script type="text/javascript" src="vendors/js/vendor.addons.js"></script>
      <!-- endinject -->
      <!-- build:js -->
      <script src="js/template.js"></script>
      <!-- chart.js -->
      <!-- chart.js -->
      <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
      <!-- 직접 작성한 js  -->
      <script type="text/javascript" src="../js/admin/adminControl.js"></script>
      <!-- graph.js : 통계 관련  -->
      <script type="text/javascript" src="../js/admin/chart.js"></script>
  </body>
</html>