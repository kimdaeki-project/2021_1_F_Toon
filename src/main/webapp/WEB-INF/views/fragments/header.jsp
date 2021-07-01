<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
 <!--================ Start header Top Area =================-->
    <section class="header-top">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-6 col-lg-4" >
                    <div>
                        <ul>
                        	
                            <li class="wong">
                            <a href="${pageContext.request.contextPath}/notice/noticeList">
                            <img src="${pageContext.request.contextPath}/images/notice.png"></a></li>
                          
                            <li class="wong">
                            <a href="${pageContext.request.contextPath}/qna/qnaList">
                            <img src="${pageContext.request.contextPath}/images/QnA.png"></a></li>

	                        <li class="wong">
	                        <a href="${pageContext.request.contextPath}/point/charge">
                            <img src="${pageContext.request.contextPath}/images/charge1.png"></a></li>
                         	
                         	</ul> 
   
                    </div>
                </div>
                
                <sec:authorize access="hasRole('ROLE_ADMIN')">
                            
                            <li><a href="${pageContext.request.contextPath}/admin/adminPage">ADMIN PAGE</a></li>
                           
                            </sec:authorize>
                
                <div class="col-6 col-lg-4 col-md-6 col-sm-6 logo-wrapper">
<!--                     <a href="index.html" class="logo"> -->
<!--                         <img src="images/logo.png" alt=""> -->
<!--                     </a> -->
                  <a href="${pageContext.request.contextPath}/">
                  <span class="link-title"><img src="${pageContext.request.contextPath}/images/wongtoon.jpg"></span></a>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 search-trigger">
                    <div class="right-button">
                        <ul>
					<%-- 로그인 전 --%>
                     <sec:authorize access="!isAuthenticated()">
                     <span class="link-title"><img width=30px height=30px
												src="${pageContext.request.contextPath}/images/wong1.jpg"></span>
                            <li><a href="/member/login">Login</a></li>
                            <li><a href="/member/memberJoinCheck">Join</a></li>
                            </sec:authorize>
                            
						<%--   로그인 후 --%>
			<sec:authorize access="hasRole('ROLE_MEMBER')">
                  <header id="header" class="header_area">
				<div class="main_menu">

					<nav class="navbar navbar-expand-lg navbar-light">
						<div class="container">
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#navbarSupportedContent"
								aria-controls="navbarSupportedContent" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse offset"
								id="navbarSupportedContent">
								<ul class="nav navbar-nav menu_nav ml-auto mr-auto">
									
										<li class="nav-item submenu dropdown">
										<span class="link-title"><img width=30px height=30px
												src="${pageContext.request.contextPath}/images/wong1.jpg"></span>
											<a href="#" class="nav-link dropdown-toggle"
											data-toggle="dropdown" role="button" aria-haspopup="true"
											aria-expanded="false" id="navbardrop" data-toggle="dropdown"><sec:authentication
													property="principal.name" />님 환영합니다:)</a>
											<ul class="dropdown-menu">
												<li class="nav-item"><a class="nav-link"
													href="/member/myPage">MY PAGE</a></li>
												<li class="nav-item"><a class="nav-link"
													href="/member/logout"
													onclick="if(!confirm('정말 로그아웃 하시겠습니까?')){return false;}">Logout</a></li>
												<li class="nav-item"><a class="nav-link"
													href="${pageContext.request.contextPath}/point/charge">Point
														Charge</a></li>
											</ul></li>
								</ul>
							</div>
						</div>
					</nav>
				</div>
			</header>
									</sec:authorize>
<%--                             </c:if> --%>
                        </ul>
                        

                    </div>
                </div>
            </div>
        </div>
    <div class="search_input" id="search_input_box"> <div class="container "> 
    <form action="/toon/toonSearch" method="get" class="d-flex justify-content-between search-inner"> 
    <input type="text" class="form-control" name="search" id="search" value=""    placeholder="Search Toon or Writer"> 
    <input class="btn btn-search" type="submit" value="검색"> </form> </div> </div>
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
                     <li class="nav-item active"><a class="nav-link" href="/" style="font-size:20px;">Home</a></li> &emsp;&emsp;&emsp;
                            <li class="nav-item"><a class="nav-link" href="/toon/toonDay/toonDay" style="font-size:20px;">Day</a></li> &emsp;&emsp;&emsp;
                            <li class="nav-item"><a class="nav-link" href="/toon/genre/genre" style="font-size:20px;">Genre</a></li>&emsp;&emsp;&emsp;
                            <li class="nav-item"><a class="nav-link" href="/toon/ranking/ranking" style="font-size:20px;">Ranking</a></li>&emsp;&emsp;&emsp;
                            <li class="nav-item"><a class="nav-link" href="/toon/end/endRe" style="font-size:20px;">Finished</a></li>                                
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <!-- End header MEnu Area -->