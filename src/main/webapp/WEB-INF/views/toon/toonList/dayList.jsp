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
	<link rel="stylesheet" href="../../css/dayList.css">
</head>

<body>
	<c:import url="../../fragments/header.jsp"></c:import>
	
	
	<div class="view_type">			
             <table>
             <tr >
             	<td><a href="/">조회순</a></td>
             
              <p>	<td><a href="/">업데이트순</a></td>    </p>         
                
                <td><a href="/">별점순</a></td>
             </tr>
           
             </table>
			</div>
	
	<br>
	<br>
	<br>
	
	
	
<div class="grid">
	
	<div class="grid-item a">
	
	<table>
	
	<tr align="center"><th><h2>&emsp;&emsp;&emsp;<a href="./toonList/dayList" class="mon" >월요일</a></h2></th><tr>
	
	<tr>
		<td align="center"><img class="img-fluid" src="../../images/webtoon/1mon/sin.jpg" alt="" >

		<p><a href="/">신의탑</a><br> 
		<a href="/">SIU</a></p>
		
		</td>	
	</tr>
	
	
	
	<tr>
		<td align="center"><img class="img-fluid" src="../../images/webtoon/1mon/cham.jpg" alt="">
		<p><a href="/">참교육</a><br> 
		<a href="/"> 채용택/한가람</a></p>
		</td>
		
	</tr>
	
	
	

	
	</table>
	
	</div>


</div>


</body>
</html>