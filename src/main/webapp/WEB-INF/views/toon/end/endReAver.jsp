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
  	<link rel="stylesheet" href="../../css/endRe.css">
</head>
<body>
	<c:import url="../../fragments/header.jsp"></c:import>


<div class="view_type">			
             <table>
             <tr >
             	<td><a class="w" href="/toon/end/endRe">조회순</a>&emsp;</td>
             	
             	<td><a class="w" href="/toon/end/endReRecent">업데이트순</a>&emsp;</td>      
                
                <td><a class="w" href="/toon/end/endReAver">별점순</a></td>
             </tr>
           
             </table>
			</div>
		<br><br>
		
		<h1 align="center"> 완결 웹툰 </h1>
		
		<br><br>	
		
	<div class="end">
		<c:set var="i" value="0" /> <c:set var="j" value="3" />			
			<ul>
				<c:forEach items="${end}" var="end">
					<li style="float: left; margin: 30px;"><a href="/toon/endToonEpList?toonNum=${end.toonNum}">
					<img width=150px height=150px src=${end.titleImg}></a><br><br><h3>${end.toonTitle}</h3></li>
				</c:forEach>
			</ul>
	</div>
	
	
<!--혜린 추가   -->	
<script type="text/javascript" src="../../js/pay/useTicket.js"></script>
<script type="text/javascript" src="../../js/list/list.js"></script>
	
</body>
</html>