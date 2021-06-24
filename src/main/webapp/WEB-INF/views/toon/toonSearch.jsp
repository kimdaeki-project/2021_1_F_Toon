<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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


<div class="view_type">			
             <table>
             <tr >
             	<td><a href="/toon/end/endRe">조회순</a></td>
             
              <p><td><a href="/toon/end/endReRecent">업데이트순</a></td></p>         
                
                <td><a href="/toon/end/endReAver">별점순</a></td>
             </tr>
           
             </table>
			</div>
	<br>
	<br>
	
	<div align="center">
	<ul>
	
		<c:forEach items="${toonSearch}" var="search">		
			<li><a href="/toon/eachEpList?toonNum=${search.toonNum}">
			<img width=100px height=100px src=${search.titleImg}></a></li>
			<li>${search.toonTitle}</li>
			<li>${search.nickname}</li>
			<li>${search.toonSum}</li>
		</c:forEach>
		
		
		
		
		
		
	</ul>
	</div>





</body>
</html>