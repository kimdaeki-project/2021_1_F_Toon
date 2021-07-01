<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- BootStrap -->    
<!--     <link rel="icon" href="images/favicon.png" type="image/png">  위에 로고-->
    <c:import url="../../fragments/bootstrap.jsp"></c:import>
    <title>WebToon</title>
   
   
    <link rel="stylesheet" href="../../css/header.css">
    <link rel="stylesheet" href="../../css/ranking.css">
  
</head>
<body>
	<c:import url="../../fragments/header.jsp"></c:import>

<div class="view_type">	
	<table>
		<tr>
			<td><button type="button" class="btn btn-outline-primary" onclick="location.href='ranking'">조회순</button></td>
			<td><button type="button" class="btn btn-outline-dark""	onclick="location.href='rankingAver'">별점순</button></td>
		</tr>
	</table>
	</div>


	 <section class="editors_pick area-padding">
        <div class="container">
            <div class="row">
                <div class="area-heading">
                    <h3> Finished</h3>
                    <p>완결 웹툰</p>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-5 col-xl-6">
                    <div class="single-blog">
                        <div class="thumb">
                        <a href="/toon/eachEpList?toonNum=1">
                            <img width=555px height=594px src="../../images/indeximage/sinsin.jpg" alt="">
                            </a>
                        </div>
                        <div class="short_details pad_25 ">
                            <div class="meta-top d-flex">
                                <a style="font-size:30px;" href="/toon/eachEpList?toonNum=1">신의탑</a>
                            </div><br>
                            <a class="d-block" href="single-blog.html">
                                <h4>자신의 모든 것이었던 소녀를 쫓아 탑에 들어온 소년
그리고 그런 소년을 시험하는 탑</h4>
                            </a>
                            
                        </div>
                    </div>    
                </div>
                <div class="col-lg-7 col-xl-6">
                    <div class="single-blog row no-gutters style-four m_b_30">
                        <div class="col-12 col-sm-7">
                            <div class="short_details padd_left_0">
                                <div class="meta-top d-flex">
                                    <a style="font-size:30px;" href="/toon/eachEpList?toonNum=62">호랑이 형님</a>
                                </div><br>
                                <a class="d-block" href="single-blog.html">
                                    <h4 class="font-20">신비한 힘을 가진 아이를 이용하여 세상을 지배하려는 반인반수 흰눈썹!

그리고 얼떨결에 아이의 보호자가 된 괴물호랑이 빠르와 착호갑사 지망생 가우리!
이제 힘을 합쳐 흰눈썹으로부터 아이와 세상을 지켜라!!! </h4>
                                </a>
                                
                            </div>  
                        </div>  
                        <div class="col-12 col-sm-5">
                            <div class="thumb">
                             <a href="/toon/eachEpList?toonNum=62">
                                <img  width=264px height=300px src="../../images/indeximage/tiger.jpg" alt="">
                                </a>
                            </div>
                        </div>
                    </div> 

                    <div class="single-blog row no-gutters style-four">
                        <div class="col-12 col-sm-5">
                            <div class="thumb">
                             <a href="/toon/eachEpList?toonNum=74">
                                <img  width=264px height=300px src="../../images/indeximage/ssa.jpg" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="col-12 col-sm-7">
                            <div class="short_details padd_right_0">
                                <div class="meta-top d-flex">
                                    <a style="font-size:30px;" href="/toon/eachEpList?toonNum=74">싸움독학</a>
                                </div><br>
                                <a class="d-block" href="single-blog.html">
                                    <h4 class="font-20">힘없고 가진거 하나 없이 맞고만 살던 나였는데...
우연히 비밀의 뉴튜브를 발견하게 되고 갑자기 떼돈을 벌었다. </h4>
                                </a>
                                
                            </div>  
                        </div>  
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="addvertise">
                        <a href=""><img src="images/banner/add.jpg" alt=""></a>

                    </div>
                </div>
            </div>
        </div>


		<div class="rank1">		
			<ul>
				
				<c:forEach items="${rank}" var="rank"  >					
					<li style="float: left; margin: 30px;"><a href="/toon/eachEpList?toonNum=${rank.toonNum}">					
					<img width=100px height=100px src=${rank.titleImg}></a><br><br><h5> ${rank.toonTitle}</h5></li>
				</c:forEach >
			</ul>
		</div>
		

	
	
	</section>
	
	
</body>
</html>