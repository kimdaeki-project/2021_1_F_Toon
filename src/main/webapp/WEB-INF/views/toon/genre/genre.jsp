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
<link rel="stylesheet" href="../../css/genre.css">

</head>
<body>
	<c:import url="../../fragments/header.jsp"></c:import>

	<div class="view_type">	
	<table>
		<tr>
			<td><button type="button" class="btn btn-outline-primary" onclick="location.href='genre'">조회순</button></td>
			<td><button type="button" class="btn btn-outline-info" onclick="location.href='genreRecent'">업데이트순</button></td>
			<td><button type="button" class="btn btn-outline-dark""	onclick="location.href='genreAver'">별점순</button></td>
		</tr>
	</table>
	</div>


	<br>
	<br>
	<br>
	
		<div class="area-heading">
                    <h3> 장르별 웹툰</h3>
                    <p>올 여름을 강타할 짜릿짜릿한 에어컨같은 장르별 웹툰들을 만나보아요:)</p>
                </div>
                
	<div class="toon" align="center">


		<div class="action"> <h1>액션</h1>
		<br>
			<ul>
				<c:forEach items="${action}" var="action">
					<li><a href="/toon/eachEpList?toonNum=${action.toonNum}"><img width=100px height=100px src=${action.titleImg}></a></li>
					<li>${action.toonTitle}</li><p>
				</c:forEach>
			</ul>

		</div>


		<div class="school"> <h1>학원</h1>
		<br>			
			<ul>
				<c:forEach items="${school}" var="school">
					<li><a href="/toon/eachEpList?toonNum=${school.toonNum}"><img width=100px height=100px src=${school.titleImg}></a></li>
					<li>${school.toonTitle}</li><p>
				</c:forEach>
			</ul>
		</div>


		<div class="romance"> <h1>로맨스</h1>
		<br>
			<ul>
				<c:forEach items="${romance}" var="romance">
					<li><a href="/toon/eachEpList?toonNum=${romance.toonNum}"><img width=100px height=100px src=${romance.titleImg}></a></li>
					<li>${romance.toonTitle}</li><p>
				</c:forEach>
			</ul>
		</div>


		<div class="fantasy"> <h1>판타지</h1>
		<br>		
			<ul>
				<c:forEach items="${fantasy}" var="fantasy">
					<li><a href="/toon/eachEpList?toonNum=${fantasy.toonNum}"><img width=100px height=100px src=${fantasy.titleImg}></a></li>
					<li>${fantasy.toonTitle}</li><p>
				</c:forEach>
			</ul>
		</div>


		<div class="thriller"> <h1>스릴러</h1>
		<br>
			<ul>
				<c:forEach items="${thriller}" var="thriller">
					<li><a href="/toon/eachEpList?toonNum=${thriller.toonNum}"><img width=100px height=100px src=${thriller.titleImg}></a></li>
					<li>${thriller.toonTitle}</li><p>
				</c:forEach>
			</ul>
		</div>


		<div class="comedy"> <h1>코메디</h1>
		<br>
			<ul>
				<c:forEach items="${comedy}" var="comedy">
					<li><a href="/toon/eachEpList?toonNum=${comedy.toonNum}"><img width=100px height=100px src=${comedy.titleImg}></a></li>
					<li>${comedy.toonTitle}</li><p>
				</c:forEach>
			</ul>
		</div>

	</div>



</body>
</html>