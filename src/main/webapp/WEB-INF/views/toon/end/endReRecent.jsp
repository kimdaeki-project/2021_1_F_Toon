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
    <c:import url="../../fragments/bootstrap.jsp"></c:import>
    <title>WebToon</title>
   
   
    <link rel="stylesheet" href="../../css/header.css">
  
</head>
<body>
	<c:import url="../../fragments/header.jsp"></c:import>


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
	
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="https://ifh.cc/g/EwbQVh.jpg" alt="...">
      <div class="carousel-caption">
        ...
      </div>
    </div>
    <div class="item">
      <img src="https://ifh.cc/g/vJwutX.jpg" alt="...">
      <div class="carousel-caption">
        ...
      </div>
    </div>
    ...
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

	
	<div class="end">
		<c:set var="i" value="0" /> <c:set var="j" value="3" />
	
			<a
				href="${pageContext.request.contextPath}/toon/toonList/end=${rank}">완결</a>
			<ul>
				<c:forEach items="${end}" var="end">
					<li><img width=100px height=100px src=${end.titleImg}>
					</li>
					<li>${end.toonTitle}/${end.nickname}</li>
				</c:forEach>
			</ul>
		</div>
	
	

</body>
</html>