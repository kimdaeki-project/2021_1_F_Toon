<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <c:import url="./../fragments/bootstrap.jsp"></c:import>
    <title>WebToon</title>
     <!-- Bootstrap CSS -->
     
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/themify-icons.css">
    <link rel="stylesheet" href="../css/flaticon.css">
    <link rel="stylesheet" href="../css/all.min.css">
    <link rel="stylesheet" href="../css/animate.css">
    <link rel="stylesheet" href="../css/magnific-popup.css">
   
    <!-- main css -->
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/responsive.css">
    
</head>
<body class="header-fixed">
<c:import url="./../fragments/header.jsp"></c:import>
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
          <!-- 새로운 각주  -->
          <li>
            <a href="pages/charts/chartjs.html">
              <span class="link-title">QNA, 공지사항 관리</span>
              <i class="mdi mdi-chart-donut link-icon"></i>
            </a>
          </li>
        </ul>
        
      </div>
      <!-- navEND -->
      <div>
      	<canvas id="myChart"></canvas>
      </div>
    </div>
    <!--page body ends -->
    
    <!-- SCRIPT LOADING START FORM HERE /////////////-->
    
    <!-- plugins:js -->
    
    <!-- chart.js -->
<!--     <script src="https://cdn.jsdelivr.net/npm/chart.js"></script> -->
    <!-- 직접 작성한 js  -->
    <script type="text/javascript" src="../js/admin/adminControl.js"></script>
    <script type="text/javascript" src="../js/admin/chart.js"></script>
 <!-- endbuild -->
</body>
</html>