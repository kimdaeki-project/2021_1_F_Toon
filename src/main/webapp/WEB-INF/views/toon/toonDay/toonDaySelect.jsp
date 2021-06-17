<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- BootStrap -->
<!--     <link rel="icon" href="images/favicon.png" type="image/png">  위에 로고-->
<c:import url="../../fragments/bootstrap.jsp"></c:import>
<title>WebToon</title>


<link rel="stylesheet" href="../../css/header.css">
<link rel="stylesheet" href="../../css/toonDay.css">

</head>
<body>
	<c:import url="../../fragments/header.jsp"></c:import>

	<div class="view_type">
		<table>
			<tr>
				<td ><a class="w" href="/toon/toonDay/toonDay">조회순</a></td>

				<p>
				<td><a class="w" href="/toon/toonDay/toonDayRecent">업데이트순</a></td>
				</p>

				<td><a class="w" href="/toon/toonDay/toonDayAver">별점순</a></td>
			</tr>

		</table>
	</div>
	<br>
	<br>
	<br>

	<div class="toon" align="center">
	 
			
		<!-- 월요일 ------------------------------------------------------>
		<c:if test="${toonVO.toonDay eq '월요일'}">
		<div class="mon">
		<h2>월요일</h2>
		<br>
			<ul>
		<c:forEach items="${mt}" var="mt">
			<li><a href="/toon/eachEpList?toonNum=${mt.toonNum}"> <img width=100px height=100px src=${mt.titleImg}></a></li>
			<li>${mt.toonTitle}</li>
			<p>	
		</c:forEach>
		</ul>
		</div>		
		</c:if>


		<!-- 화요일 ------------------------------------------------------>
		<c:if test="${toonVO.toonDay eq '화요일'}">
		<div class="tue"><h2>화요일</h2>
		<br>
			<ul>
		<c:forEach items="${tt}" var="tt">
			<li><a href="/toon/eachEpList?toonNum=${tt.toonNum}"> <img width=100px height=100px src=${tt.titleImg}></a></li>
			<li>${tt.toonTitle} </li>
						<p>	
		</c:forEach>
		</ul>
		</div>	
		</c:if>
		
		<!-- 수요일 ------------------------------------------------------>
		<c:if test="${toonVO.toonDay eq '수요일'}">
		<div class="wen"><h2>수요일</h2>
		<br>
			<ul>
		<c:forEach items="${wt}" var="wt">
			<li><a href="/toon/eachEpList?toonNum=${wt.toonNum}"> <img width=100px height=100px src=${wt.titleImg}></a></li>
			<li>${wt.toonTitle} </li>
						<p>	
		</c:forEach>
		</ul>
		</div>
		</c:if>
		
		<!-- 목요일 ------------------------------------------------------>
		<c:if test="${toonVO.toonDay eq '목요일'}">
		<div class="the"><h2>목요일</h2>
		<br>
			<ul>
		<c:forEach items="${tt2}" var="tt2">
			<li><a href="/toon/eachEpList?toonNum=${tt2.toonNum}"> <img width=100px height=100px src=${tt2.titleImg}></a></li>
			<li>${tt2.toonTitle}</li>
						<p>	
		</c:forEach>
		</ul>
		</div>
		</c:if>
		
		<!-- 금요일 ------------------------------------------------------>
		<c:if test="${toonVO.toonDay eq '금요일'}">
		<div class="fri"><h2>금요일</h2>
		<br>
			<ul>
		<c:forEach items="${ft}" var="ft">
			<li><a href="/toon/eachEpList?toonNum=${ft.toonNum}"> <img width=100px height=100px src=${ft.titleImg}></a></li>
			<li>${ft.toonTitle} </li>
						<p>	
		</c:forEach>
		</ul>
		</div>
		</c:if>
		
		<!-- 토요일 ------------------------------------------------------>
		<c:if test="${toonVO.toonDay eq '토요일'}">
		<div class="sat"><h2>토요일</h2>
		<br>
			<ul>
		<c:forEach items="${st}" var="st">
			<li><a href="/toon/eachEpList?toonNum=${st.toonNum}"> <img width=100px height=100px src=${st.titleImg}></a></li>
			<li>${st.toonTitle} </li>
						<p>	
		</c:forEach>
		</ul>
		</div>
		</c:if>
		
		<!-- 일요일 ------------------------------------------------------>
		<c:if test="${toonVO.toonDay eq '일요일'}">
		<div class="sun"><h2>일요일</h2>
		<br>
			<ul>
		<c:forEach items="${st2}" var="st2">
			<li><a href="/toon/eachEpList?toonNum=${st2.toonNum}"> <img width=100px height=100px src=${st2.titleImg}></a></li>
			<li>${st2.toonTitle}</li>
						<p>	
		</c:forEach>
		</ul>
		</div>
		</c:if>


	</div>


</body>
</html>