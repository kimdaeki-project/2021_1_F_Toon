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
	<link rel="stylesheet" href="../css/toonDay.css">
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

	<table class="table">
			<thead class="thead-dark">
				<tr>
					<th>월요일</th>
					<th>화요일</th>
					<th>수요일</th>
					<th>목요일</th>
					<th>금요일</th>
					<th>토요일</th>
					<th>일요일</th>
				</tr>
			</thead>

			<tbody>
			
			<c:forEach items="${list}" var="dto">
					<tr>
					<td></td>
						<td><a href="./${board}Select?num=${dto.num}"> <c:catch>
									<c:forEach begin="1" end="${dto.depth}">--</c:forEach>
								</c:catch> ${dto.title}
						</a></td>
						<td>${toon.toonTitle}</td>
						<td>${toon.writerId}</td>
						
						
						
					</tr>
				</c:forEach>
			</tbody>

		</table>



</body>
</html>