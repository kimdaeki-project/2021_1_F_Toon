<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!-- Start nav --> 
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
                <a href="${pageContext.request.contextPath}/admin/manageToonList">작품 조회</a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath}/admin/manageToonInsert">작품 등록</a>
              </li>
              
               <li>
                <a href="${pageContext.request.contextPath}/admin/manageEachEpList">회차 조회</a>
              </li>
              
               <li>
                <a href="${pageContext.request.contextPath}/admin/manageEachEpInsert">회차 등록</a>
              </li>
              
              <li>
                <a href="pages/sample-pages/error_2.html" target="_blank">웹툰 수정 승인</a>
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
            <a href="#board_manage" data-toggle="collapse" aria-expanded="false">
              <span class="link-title">공지사항,질의응답 관리</span>
              <i class="mdi mdi-chart-donut link-icon"></i>
            </a>
            <ul class="collapse navigation-submenu" id="board_manage">
              <li>
                <a href="${pageContext.request.contextPath}/admin/manageNoticeList">공지사항</a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath}/admin/manageQnaList">질의응답</a>
              </li>
            </ul>
          </li>
        </ul>
 </div>
 <!-- END nav -->