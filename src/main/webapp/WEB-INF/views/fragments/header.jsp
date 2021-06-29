<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
 <!--================ Start header Top Area =================-->
    <section class="header-top" >
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-6 col-lg-4">
                    <div class="float-left">
                        <ul class="header_social">

                            <sec:authorize access="hasRole('ROLE_ADMIN')">
                            
                            <li><a href="${pageContext.request.contextPath}/admin/adminPage">ADMIN PAGE</a></li>
                           
                            </sec:authorize>
                        </ul>   
                    </div>
                </div>
                <div class="col-6 col-lg-4 col-md-6 col-sm-6 logo-wrapper">
                  <a  class="navbar-brand" href="${pageContext.request.contextPath}/" >
                  <span style="font-size:50px;" class="link-title">
                  <img width=70px height=70px src="https://ifh.cc/g/7qKyOQ.png">&emsp;STONE TOON</span></a>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 search-trigger">
                    <div class="right-button">
    <ul>
         <sec:authorize access="!isAuthenticated()">       
          <li>
          
            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbardrop"data-toggle="dropdown">
            <span class="link-title"><img width=60px height=60px src="https://ifh.cc/g/qHnCSX.png"></span>
            </a>
             <div class="dropdown-menu"> 
              <a class="dropdown-item" href="/member/login">로그인</a>
              <a class="dropdown-item" href="/member/memberJoinCheck">회원가입</a>
              <a class="dropdown-item" href="/qna/qnaList">고객지원</a>
              </div>
            </ul>
          </li>
        </sec:authorize>
        
                     <sec:authorize access="hasRole('ROLE_MEMBER')">                     
                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbardrop"data-toggle="dropdown">  <sec:authentication property="principal.name"/>님 </a>
                           <div class="dropdown-menu">                          
                           <a class="dropdown-item" href="/member/myPage">MY PAGE</a>
                           <a class="dropdown-item" href="/member/logout" onclick="if(!confirm('정말 로그아웃 하시겠습니까?')){return false;}">로그아웃</a>
                           <a class="dropdown-item" href="${pageContext.request.contextPath}/point/charge">포인트 충전</a> 
                           </div>
                        </li>
                     </sec:authorize>
     </ul>
                        

                    </div>
                </div>
            </div>
        </div>
     
        <div class="search_input" id="search_input_box"> <div class="container"> 
    <form action="/toon/toonSearch" method="get" class="d-flex justify-content-between search-inner"> 
    <input type="text" class="form-control" name="search" id="search" value=""	 placeholder="웹툰/작가 검색"> 
    <input class="btn btn-search" type="submit" value="검색"> </form> </div> </div>
    </section>
    
    <br>
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
                            <li class="nav-item"><a class="nav-link" href="/"><h2 class="aa">HOME</h2></a></li> &emsp;&emsp;&emsp;&emsp;&emsp;
                            <li class="nav-item"><a class="nav-link" href="/toon/toonDay/toonDay"><h2 class="aa">DAY</h2></a></li> &emsp;&emsp;&emsp;&emsp;&emsp;
                            <li class="nav-item"><a class="nav-link" href="/toon/genre/genre"><h2 class="aa">GENRE</h2></a></li>    &emsp;&emsp;&emsp;&emsp;&emsp;
                         	<li class="nav-item"><a class="nav-link" href="/toon/ranking/ranking"><h2 class="aa">RANKING</h2></a></li>&emsp;&emsp;&emsp;&emsp;&emsp;
                           	<li class="nav-item"><a class="nav-link" href="/toon/end/endRe"><h2 class="aa">END</h2></a></li>
                    </div>
                </div>
            </nav>
        </div>
	   <hr style="border:solid 8px gray;">
    </header>

    
    
    
    <!-- End header MEnu Area -->