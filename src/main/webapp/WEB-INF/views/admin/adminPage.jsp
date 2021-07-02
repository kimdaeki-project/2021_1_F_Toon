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
	<c:import url="../fragments/header.jsp"></c:import>	 
      <nav class="t-header">
        <!-- theader 달기 -->
      </nav>
      <div class="page-body">
          <div class="sidebar">
            <c:import url="./adminNav.jsp"></c:import>
            
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
		            <div class="col-md-6">
		              <div class="grid">
		                <div class="grid-body">
		                  <h2 class="grid-title">일별 매출액</h2>
		                  <div class="item-wrapper">
		                    <canvas id="income-today" width="600" height="400"></canvas>
		                  </div>
		                </div>
		              </div>
		            </div>
		             <div class="col-md-6">
		              <div class="grid">
		                <div class="grid-body">
		                  <h2 class="grid-title">주별 매출액</h2>
		                  <div class="item-wrapper">
		                    <canvas id="income-week" width="600" height="400"></canvas>
		                  </div>
		                </div>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-6">
		              <div class="grid">
		                <div class="grid-body">
		                  <h2 class="grid-title">월별 매출액</h2>
		                  <div class="item-wrapper">
		                    <canvas id="income-month" width="1200" height="400"></canvas>
		                  </div>
		                </div>
		              </div>
		            </div>
	              </div>
	                <!-- 매출액 : 웹툰 순위 Top 5 table for Each문 사용하기-->
	                <div class="col" id="income-chart-toon">
					<ul class="card">
						<li class="card-body">
						<div class="card">답 5까지 게시</div></li>
					</ul>
				  </div>
			</div>
			
			<div>
              <!-- content viewport ends -->
              <footer class="footer"> <!-- Footer Element-->
              </footer>
          </div>
          <!-- page content ends -->
      </div>
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
  </body>
</html>