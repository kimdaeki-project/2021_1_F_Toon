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

  
    <c:import url="../fragments/bootstrap.jsp"></c:import>
    <title>WebToon</title>
     <!-- header.css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
    <!-- body.css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypage/style.css">

    
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

<c:import url="../fragments/header.jsp"></c:import>
	<div class="page-body">
      <!-- partial:partials/_sidebar.html -->
      <div class="sidebar">
        <div class="user-profile">
          <div class="display-avatar animated-avatar">
            <img class="profile-img img-lg rounded-circle" src="../assets/images/profile/male/image_1.png" alt="profile image">
          </div>
          <div class="info-wrapper">
            <p class="user-name">관리자</p>
            <h6 class="display-income">ADMIN</h6>
          </div>
        </div>
        <ul class="navigation-menu">
          
          <li class="nav-category-divider">Management</li>
          <!-- 작품관리  -->
          <li>
            <a href="#select_toon" data-toggle="collapse" aria-expanded="false">
              <span class="link-title">작품관리</span>
              <i class="mdi mdi-flask2 link-icon"></i>
            </a>
            
            <ul class="collapse navigation-submenu" id="select_toon">
              
              <li>
                <a href="pages/sample-pages/error_2.html" target="_blank">웹툰 수정 승인</a>
              </li>
              
              <li>
                <a href="pages/sample-pages/login_1.html" target="_blank">작품 조회</a>
              </li>
              <li>
                <a href="pages/sample-pages/error_2.html" target="_blank">작품 등록</a>
              </li>
              
            </ul>
          </li>
          
           <li>
            <a href="#sales_inquiry" data-toggle="collapse" aria-expanded="false">
              <span class="link-title">매출관리</span>
              <i class="mdi mdi-clipboard-outline link-icon"></i>
            </a>
             <ul class="collapse navigation-submenu" id="sales_inquiry">
              <li>
                <a href="pages/sample-pages/login_1.html" target="_blank">전체 매출조회</a>
              </li>
              <li>
                <a href="pages/sample-pages/error_2.html" target="_blank">웹툰 별 매출조회</a>
              </li>
            </ul>
          </li>
          
          <li>
            <a href="#payment_manage" data-toggle="collapse" aria-expanded="false">
              <span class="link-title">결제관리</span>
              <i class="mdi mdi-clipboard-outline link-icon"></i>
            </a>
             <ul class="collapse navigation-submenu" id="payment_manage">
              <li>
                <a href="pages/sample-pages/login_1.html" target="_blank">결제내역 조회</a>
              </li>
              <li>
                <a href="pages/sample-pages/error_2.html" target="_blank">환불 관리</a>
              </li>
            </ul>
          </li>
          
          <li>
            <a href="#select_member" data-toggle="collapse" aria-expanded="false">
              <span class="link-title">회원 관리</span>
              <i class="mdi mdi-flask link-icon"></i>
            </a>
            <ul class="collapse navigation-submenu" id="select_member">
              <li>
                <a href="pages/sample-pages/login_1.html" target="_blank">회원 조회</a>
              </li>
              <li>
                <a href="pages/sample-pages/error_2.html" target="_blank">작가 조회</a>
              </li>
              <li>
                <a href="pages/sample-pages/error_2.html" target="_blank">경고 회원 조회</a>
              </li>
            </ul>
          </li>
          
          
          
          
          <li>
            <a href="#payment_manage" data-toggle="collapse" aria-expanded="false">
              <span class="link-title">공지사항,질의응답 관리</span>
              <i class="mdi mdi-chart-donut link-icon"></i>
            </a>
            <ul class="collapse navigation-submenu" id="">
              <li>
                <a href="pages/sample-pages/login_1.html" target="_blank">공지사항</a>
              </li>
              <li>
                <a href="pages/sample-pages/error_2.html" target="_blank">질의응답</a>
              </li>
            </ul>
          </li>
          
        </ul>
        
      </div>
      <!-- navEND -->
      <div id="contents" class="display-income"> 
      	//페이지가 변해요?
      </div>
    </div>
    <!--page body ends -->
    
    <!-- SCRIPT LOADING START FORM HERE /////////////-->
    
    <!-- plugins:js -->
    <script src="../assets/vendors/js/core.js"></script>
    <!-- endinject -->
    <!-- Vendor Js For This Page Ends-->
    <script src="${pageContext.request.contextPath}/assets/vendors/apexcharts/apexcharts.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendors/chartjs/Chart.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/charts/chartjs.addon.js"></script>
    <!-- Vendor Js For This Page Ends-->
    <!-- build:js -->
    <script src="${pageContext.request.contextPath}/assets/js/template.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/dashboard.js"></script>
    <!-- endbuild -->
  </body>

</html>