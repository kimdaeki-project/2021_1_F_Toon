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
             <tr >
             	<td><a class="w" href="/toon/ranking/ranking">조회순&emsp;</a></td>
                <td><a class="w" href="/toon/ranking/rankingAver">별점순</a></td>
             </tr>
           
             </table>
			</div>

	<div class="toon" >

		<div class="rank1">		
			<ul>
				
				<li><img style="float: left; margin: 30px;"width=100px height=100px src="https://ifh.cc/g/UG2lVa.png"></li>
				<li><img style="float: left; margin: 30px;" width=100px height=100px src="https://ifh.cc/g/lBxsAX.png"></li>
				<li><img style="float: left; margin: 30px;"width=100px height=100px src="https://ifh.cc/g/5FmJiz.png"></li>

				<c:forEach items="${rank}" var="rank" begin="0" end="2" >					
					<li style="float: left; margin: 30px;"><a href="/toon/eachEpList?toonNum=${rank.toonNum}">					
					<img width=250px height=250px src=${rank.titleImg}></a><br><br><h2> ${rank.toonTitle}</h2></li>
				</c:forEach >
			</ul>
		</div>
		
		<%-- <div class="rank2" >
			<ul>
				<li style="margin: 0px;"><img width=100px height=100px src="https://ifh.cc/g/lBxsAX.png"></li>
				<c:forEach items="${rank}" var="rank" begin="1" end="1" >					
					<li style="float: left; margin: 90px;"><a href="/toon/eachEpList?toonNum=${rank.toonNum}">
					<img width=250px height=250px src=${rank.titleImg}></a><br><br><h2>2. ${rank.toonTitle}</h2></li>
				</c:forEach >
			</ul>
		</div>
		
		<div class="rank3">
			<ul>
			<li style="margin: 0px;"><img width=100px height=100px src="https://ifh.cc/g/5FmJiz.png"></li>
			<c:forEach items="${rank}" var="rank" begin="2" end="2" >					
					<li style="float: left; margin: 90px;"><a href="/toon/eachEpList?toonNum=${rank.toonNum}">
					<img width=250px height=250px src=${rank.titleImg}></a><br><br><h2>3. ${rank.toonTitle}</h2></li>
				</c:forEach >
			</ul>
		</div> --%>
		
		
		
	<br><br><br><br><br><br>

	<div class="rank4">
	
			<ul>			
				<c:forEach items="${rank}" var="rank" begin="3" end="7" >
					<li style="float: left; margin: 10px;"><a href="/toon/eachEpList?toonNum=${rank.toonNum}">
					<img width=200px height=200px src=${rank.titleImg}></a><br><br><h3> ${rank.toonTitle}</h3></li>
				</c:forEach >
			</ul>
		</div>

<%-- 	<div class="rank5">
	
			<ul>			
				<c:forEach items="${rank}" var="rank" begin="4" end="4" >
					<li style="float: left; margin: 30px;"><a href="/toon/eachEpList?toonNum=${rank.toonNum}">
					<img width=200px height=200px src=${rank.titleImg}></a><br><br><h3>5. ${rank.toonTitle}</h3></li>
				</c:forEach >
			</ul>
		</div>
		<div class="rank6">
	
			<ul>			
				<c:forEach items="${rank}" var="rank" begin="5" end="5" >
					<li style="float: left; margin: 30px;"><a href="/toon/eachEpList?toonNum=${rank.toonNum}">
					<img width=200px height=200px src=${rank.titleImg}></a><br><br><h3>6. ${rank.toonTitle}</h3></li>
				</c:forEach >
			</ul>
		</div>
		<div class="rank7">
	
			<ul>			
				<c:forEach items="${rank}" var="rank" begin="6" end="6" >
					<li style="float: left; margin: 30px;"><a href="/toon/eachEpList?toonNum=${rank.toonNum}">
					<img width=200px height=200px src=${rank.titleImg}></a><br><br><h3>7. ${rank.toonTitle}</h3></li>
				</c:forEach >
			</ul>
		</div>
		<div class="rank8">
	
			<ul>			
				<c:forEach items="${rank}" var="rank" begin="7" end="7" >
					<li style="float: left; margin: 30px;"><a href="/toon/eachEpList?toonNum=${rank.toonNum}">
					<img width=200px height=200px src=${rank.titleImg}></a><br><br><h3>8. ${rank.toonTitle}</h3></li>
				</c:forEach >
			</ul>
		</div> --%>

	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	
		<div class="rank9">	
			<ul>
				<c:forEach items="${rank}" var="rank" begin="8" end="13" >
					<li style="float: left; margin: 20px;"><a href="/toon/eachEpList?toonNum=${rank.toonNum}">
					<img width=150px height=150px src=${rank.titleImg}></a><br><br><h4> ${rank.toonTitle}</h4></li>
				</c:forEach >
			</ul>
		</div>
		
		<br><br><br><br><br><br><br><br><br><br>
		
		<div class="rank9">	
			<ul>
				<c:forEach items="${rank}" var="rank" begin="14" end="20" >
					<li style="float: left; margin: 20px;"><a href="/toon/eachEpList?toonNum=${rank.toonNum}">
					<img width=150px height=150px src=${rank.titleImg}></a><br><br><h4> ${rank.toonTitle}</h4></li>
				</c:forEach >
			</ul>
		</div>
		
		<%-- <div class="rank10">	
			<ul>
				<c:forEach items="${rank}" var="rank" begin="9" end="9" >
					<li style="float: left; margin: 33px;"><a href="/toon/eachEpList?toonNum=${rank.toonNum}">
					<img width=150px height=150px src=${rank.titleImg}></a><br><br><h4>10. ${rank.toonTitle}</h4></li>
				</c:forEach >
			</ul>
		</div>
			<div class="rank11">	
			<ul>
				<c:forEach items="${rank}" var="rank" begin="10" end="10" >
					<li style="float: left; margin: 33px;"><a href="/toon/eachEpList?toonNum=${rank.toonNum}">
					<img width=150px height=150px src=${rank.titleImg}></a><br><br><h4>11. ${rank.toonTitle}</h4></li>
				</c:forEach >
			</ul>
		</div>
			<div class="rank12">	
			<ul>
				<c:forEach items="${rank}" var="rank" begin="11" end="11" >
					<li style="float: left; margin: 33px;"><a href="/toon/eachEpList?toonNum=${rank.toonNum}">
					<img width=150px height=150px src=${rank.titleImg}></a><br><br><h4>12. ${rank.toonTitle}</h4></li>
				</c:forEach >
			</ul>
		</div>
			<div class="rank13">	
			<ul>
				<c:forEach items="${rank}" var="rank" begin="12" end="12" >
					<li style="float: left; margin: 33px;"><a href="/toon/eachEpList?toonNum=${rank.toonNum}">
					<img width=150px height=150px src=${rank.titleImg}></a><br><br><h4>13. ${rank.toonTitle}</h4></li>
				</c:forEach >
			</ul>
		</div>
			<div class="rank14">	
			<ul>
				<c:forEach items="${rank}" var="rank" begin="13" end="13" >
					<li style="float: left; margin: 33px;"><a href="/toon/eachEpList?toonNum=${rank.toonNum}">
					<img width=150px height=150px src=${rank.titleImg}></a><br><br><h4>14. ${rank.toonTitle}</h4></li>
				</c:forEach >
			</ul>
		</div>	
		
		
	<br><br><br><br><br><br><br><br><br><br>
	
	<div class="rank15">	
			<ul>
				<c:forEach items="${rank}" var="rank" begin="14" end="14" >
					<li style="float: left; margin: 33px;"><a href="/toon/eachEpList?toonNum=${rank.toonNum}">
					<img width=150px height=150px src=${rank.titleImg}></a><br><br><h4>15. ${rank.toonTitle}</h4></li>
				</c:forEach >
			</ul>
		</div>
		
		<div class="rank16">	
			<ul>
				<c:forEach items="${rank}" var="rank" begin="15" end="15" >
					<li style="float: left; margin: 33px;"><a href="/toon/eachEpList?toonNum=${rank.toonNum}">
					<img width=150px height=150px src=${rank.titleImg}></a><br><br><h4>16. ${rank.toonTitle}</h4></li>
				</c:forEach >
			</ul>
		</div>
			<div class="rank17">	
			<ul>
				<c:forEach items="${rank}" var="rank" begin="16" end="16" >
					<li style="float: left; margin: 33px;"><a href="/toon/eachEpList?toonNum=${rank.toonNum}">
					<img width=150px height=150px src=${rank.titleImg}></a><br><br><h4>17. ${rank.toonTitle}</h4></li>
				</c:forEach >
			</ul>
		</div>
			<div class="rank18">	
			<ul>
				<c:forEach items="${rank}" var="rank" begin="17" end="17" >
					<li style="float: left; margin: 33px;"><a href="/toon/eachEpList?toonNum=${rank.toonNum}">
					<img width=150px height=150px src=${rank.titleImg}></a><br><br><h4>18. ${rank.toonTitle}</h4></li>
				</c:forEach >
			</ul>
		</div>
			<div class="rank19">	
			<ul>
				<c:forEach items="${rank}" var="rank" begin="18" end="18" >
					<li style="float: left; margin: 33px;"><a href="/toon/eachEpList?toonNum=${rank.toonNum}">
					<img width=150px height=150px src=${rank.titleImg}></a><br><br><h4>19. ${rank.toonTitle}</h4></li>
				</c:forEach >
			</ul>
		</div>
			<div class="rank20">	
			<ul>
				<c:forEach items="${rank}" var="rank" begin="19" end="19" >
					<li style="float: left; margin: 33px;"><a href="/toon/eachEpList?toonNum=${rank.toonNum}">
					<img width=150px height=150px src=${rank.titleImg}></a><br><br><h4>20. ${rank.toonTitle}</h4></li>
				</c:forEach >
			</ul>
		</div>	 --%>
	
	
</body>
</html>