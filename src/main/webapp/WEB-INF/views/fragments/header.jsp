<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!--================ Start header Top Area =================-->
    <section class="header-top">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-6 col-lg-4">
               
                </div>
                <div class="col-6 col-lg-4 col-md-6 col-sm-6 logo-wrapper">
<!--                     <a href="index.html" class="logo"> -->
<!--                         <img src="images/logo.png" alt=""> -->
<!--                     </a> -->
						<a class="navbar-brand" href="${pageContext.request.contextPath}/"><h2>WEBTOON PAGE</h2></a>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 search-trigger">
                    <div class="right-button">
                        <ul>
                        	<c:if test="${empty member}">        
                            <li><a href="/member/login">Login</a></li>
                            <li><a href="/member/memberJoinCheck">Join</a></li>
                            </c:if>
                            
                            <c:if test="${not empty member}">
                            <li><a href="/member/myPage">MY PAGE</a></li>
                            <li><a href="/member/logout">LOGOUT</a></li>
                            </c:if>
                        </ul>
                        

                    </div>
                </div>
            </div>
        </div>
     
    </section>
    
    <!--================ End header top Area =================-->
    
     <!-- Start header Menu Area -->
    <header id="header" class="header_area">
        <div class="main_menu">
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                        <ul class="nav navbar-nav menu_nav ml-auto mr-auto">
                            <li class="nav-item active"><a class="nav-link" href="/">Home</a></li> 
                            <li class="nav-item"><a class="nav-link" href="/toon/toonDay">요일</a></li> 
                            <li class="nav-item"><a class="nav-link" href="/toon/genre">장르</a></li>    
                         	<li class="nav-item"><a class="nav-link" href="/toon/ranking">랭킹</a></li>
                            <li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">완결</a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item"><a class="nav-link" href="/toon/endKr">가나다</a></li>
                                    <li class="nav-item"><a class="nav-link" href="/toon/endRe">최신</a></li>
                                </ul>
                            </li>     
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </header> 
    
      <div class="search_input" id="search_input_box">
            <div class="container ">
                <form class="d-flex justify-content-between search-inner">
                    <input type="text" class="form-control" id="search_input" placeholder="Search Here">
                    <button type="submit" class="btn"></button>
                    <span class="ti-close" id="close_search" title="Close Search"></span>
                </form>
            </div>
        </div>
    <!-- End header MEnu Area -->