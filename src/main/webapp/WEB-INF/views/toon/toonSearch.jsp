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
    <c:import url="../fragments/bootstrap.jsp"></c:import>
    <title>WebToon</title>
   
   
    <link rel="stylesheet" href="../css/header.css">
  
</head>
<body>
	<c:import url="../fragments/header.jsp"></c:import>

	<br><br>
	<h1  align="center">검색 결과</h1>
	<br><br>
	
	<div align="center">
	<ul>
	
		<c:forEach items="${toonSearch}" var="search">		
			<li style="float: left; margin: 50px;">
			<a href="/toon/eachEpList?toonNum=${search.toonNum}">
			<img width=100px height=100px src=${search.titleImg}></a>
			<br><br><h3>${search.toonTitle}<br> ${search.nickname}</h3></li>
			
		</c:forEach>
		
	</ul>
	</div>





</body>
</html>