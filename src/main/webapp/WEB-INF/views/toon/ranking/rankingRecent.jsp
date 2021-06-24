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
             	<td><a href="/toon/ranking/ranking">조회순</a></td>
             
              <p><td><a href="/toon/ranking/rankingRecent">업데이트순</a></td></p>         
                
                <td><a href="/toon/ranking/rankingAver">별점순</a></td>
             </tr>
           
             </table>
			</div>
	<br>
	<br>
	

	
	<div class="rank">
	
			<a href="${pageContext.request.contextPath}/toon/toonList/ranking=${rank}">랭킹</a>
			<ul>
			
				<c:forEach items="${rank}" var="rank" begin="1" end="3" >
					<li style="float: left;"><img width=100px height=100px src=${rank.titleImg}>
					</li>
					<td></td>
					<li style="float: left;">${rank.toonTitle}/${rank.nickname}</li>
				</c:forEach >
			</ul>
		</div>
		
	<br>
	<br>
	<br>	
	<br>
	
	<div class="rank">
	
			<a href="${pageContext.request.contextPath}/toon/toonList/ranking=${rank}"></a>
			<ul>
			
				<c:forEach items="${rank}" var="rank" begin="4" end="8" >
					<li style="float: left;"><img width=100px height=100px src=${rank.titleImg}>
					</li>
					<td></td>
					<li style="float: left;">${rank.toonTitle}/${rank.nickname}</li>
				</c:forEach >
			</ul>
		</div>
	
	<br>
	<br>
	<br>	
	<br>
	
	<div class="rank">
	
			<a href="${pageContext.request.contextPath}/toon/toonList/ranking=${rank}"></a>
			<ul>
			
				<c:forEach items="${rank}" var="rank" begin="9" end="14" >
					<li style="float: left;"><img width=100px height=100px src=${rank.titleImg}>
					</li>
					<td></td>
					<li style="float: left;">${rank.toonTitle}/${rank.nickname}</li>
				</c:forEach >
			</ul>
		</div>
		
	<br>
	<br>
	<br>	
	<br>
	
	<div class="rank">
	
			<a href="${pageContext.request.contextPath}/toon/toonList/ranking=${rank}"></a>
			<ul>
			
				<c:forEach items="${rank}" var="rank" begin="15" end="21" >
					<li style="float: left;"><img width=100px height=100px src=${rank.titleImg}>
					</li>
					
					<li style="float: left;">${rank.toonTitle}/${rank.nickname}</li>
				</c:forEach >
			</ul>
		</div>	
	
</body>
</html>