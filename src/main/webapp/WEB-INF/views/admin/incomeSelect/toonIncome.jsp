<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
   	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

 	<c:import url="../../fragments/bootstrap.jsp"></c:import>
    <title>Admin Page toonIncome</title>
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
                    <div class="col-lg-12 center">
	                <div class="grid">
	                  <p class="grid-header">웹툰 결제 순위 list</p>
	                  <div class="item-wrapper">
	                    <div class="table-responsive">
	                      <table class="table table-hover">
	                        <thead>
	                          <tr>
	                            <th>웹툰명</th>
	                            <th>연재요일</th>
	                            <th>Earnings</th>
	                          </tr>
	                        </thead>
	                        <tbody>
	                        <c:forEach items="${toonSaleVO}" var="toonSaleVO">
	                        	<tr>
	                            <td class="d-flex align-items-center border-top-0">
	                              <img class="profile-img img-sm img-rounded mr-2" src="${toonSaleVO.toonVO.titleImg}" alt="profile image">
	                              <span>${toonSaleVO.toonVO.toonTitle}</span>
	                            </td>
	                            <td>${toonSaleVO.toonVO.toonDay}</td>
	                            <td>${toonSaleVO.sum}</td>
	                          </tr>
	                        </c:forEach>
	                        </tbody>
	                      </table>
	                    </div>
	                  </div>
	                </div>
              	</div>
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
      
      <script src="/js/template.js"></script>
      <!-- chart.js -->
      <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
      <!-- 직접 작성한 js  -->
     <!--  <script type="text/javascript" src="/js/admin/adminControl.js"></script>
      --> 
      <!-- graph.js : 통계 관련  -->
      <script type="text/javascript" src="/js/admin/income.js"></script>
      
  </body>
</html>