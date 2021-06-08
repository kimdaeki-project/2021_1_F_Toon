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
   
   
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/genre.css">
  
</head>
<body>
	<c:import url="../../fragments/header.jsp"></c:import>

	<div class="view_type">			
             <table>
             <tr >
             	<td><a href="/">조회순</a></td>
             
              <p><td><a href="/">업데이트순</a></td></p>         
                
                <td><a href="/">별점순</a></td>
             </tr>
           
             </table>
			</div>
	<br>
	<br>	

<div class="toon">
		
		
		<div class="action"> <a href="${pageContext.request.contextPath}/toon/toonList/genre=${action}">액션</a>
			<ul>
		<c:forEach items="${action}" var="action">
			<li> <img width=100px height=100px src= ${action.titleImg}> </li>
			<li>${action.toonTitle} /${action.writerID} </li>
		</c:forEach>
		</ul>
		
		</div>
					
		
		<div class="school"> <a href="${pageContext.request.contextPath}/toon/toonList/genre=${school}">학원</a>
	
		</div>	
				
		
		<div class="romance"> <a href="${pageContext.request.contextPath}/toon/toonList/genre=${romance}">로맨스</a>
	
		</div>
				
		
		<div class="fantasy"> <a href="${pageContext.request.contextPath}/toon/toonList/genre=${fantasy}">판타지</a>
		
		</div>		
		
		
		<div class="thriller"> <a href="${pageContext.request.contextPath}/toon/toonList/genre=${thriller}">스릴러</a>
		
		</div>
				
		
		<div class="comedy"> <a href="${pageContext.request.contextPath}/toon/toonList/genre=${comedy}">코미디</a>
		
		</div>
				
	</div>



</body>
</html>