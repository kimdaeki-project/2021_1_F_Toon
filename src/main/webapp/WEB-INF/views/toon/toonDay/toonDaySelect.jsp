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
		
		<div class="mon">
		<h2>월요일</h2>
		<br>
			<ul>
			<c:forEach items="${mt}" var="mt">
			<li><a href="/toon/eachEpList?toonNum=${mt.toonNum}">
			<img width=100px height=100px src=${mt.titleImg}></a></li>
			<li>${mt.toonTitle}</li>
			</c:forEach>
			</ul>			
		</div>		
		
		<c:if test="${list.toonDay}=='mon'">
      	 <c:forEach items="${list}" var="list">
          <li><a href="/toon/eachEpList?toonNum=${list.toonNum}"> 
          <img width=100px height=100px src=${mt.titleImg}></a></li>
         <li>${list.toonTitle}</li>
         <p>   
      	 </c:forEach>
		</c:if>
		

	</div>


</body>
</html>