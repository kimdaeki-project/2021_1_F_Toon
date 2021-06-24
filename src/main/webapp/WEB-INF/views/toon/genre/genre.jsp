<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
				<td><a href="/toon/genre/genre">조회순</a></td>

				<p>
				<td><a href="/toon/genre/genreRecent">업데이트순</a></td>
				</p>

				<td><a href="/toon/genre/genreAver">별점순</a></td>
			</tr>

		</table>
	</div>
	<br>
	<br>

	<div class="toon">


		<div class="action">
			<a
				href="${pageContext.request.contextPath}/toon/toonList/genre=${action}">액션</a>
			<ul>
				<c:forEach items="${action}" var="action">
					<li><a href="/toon/eachEpList?toonNum=${action.toonNum}"><img width=100px height=100px src=${action.titleImg}>
					</li>
					<li>${action.toonTitle}/${action.nickname}</li>
				</c:forEach>
			</ul>

		</div>


		<div class="school">
			<a
				href="${pageContext.request.contextPath}/toon/toonList/genre=${school}">학원</a>
			<ul>
				<c:forEach items="${school}" var="school">
					<li><a href="/toon/eachEpList?toonNum=${school.toonNum}"><img width=100px height=100px src=${school.titleImg}>
					</li>
					<li>${school.toonTitle}/${school.nickname}</li>
				</c:forEach>
			</ul>
		</div>


		<div class="romance">
			<a
				href="${pageContext.request.contextPath}/toon/toonList/genre=${romance}">로맨스</a>
			<ul>
				<c:forEach items="${romance}" var="romance">
					<li><a href="/toon/eachEpList?toonNum=${romance.toonNum}"><img width=100px height=100px src=${romance.titleImg}>
					</li>
					<li>${romance.toonTitle}/${romance.nickname}</li>
				</c:forEach>
			</ul>
		</div>


		<div class="fantasy">
			<a
				href="${pageContext.request.contextPath}/toon/toonList/genre=${fantasy}">판타지</a>
			<ul>
				<c:forEach items="${fantasy}" var="fantasy">
					<li><a href="/toon/eachEpList?toonNum=${fantasy.toonNum}"><img width=100px height=100px src=${fantasy.titleImg}>
					</li>
					<li>${fantasy.toonTitle}/${fantasy.nickname}</li>
				</c:forEach>
			</ul>
		</div>


		<div class="thriller">
			<a
				href="${pageContext.request.contextPath}/toon/toonList/genre=${thriller}">스릴러</a>
			<ul>
				<c:forEach items="${thriller}" var="thriller">
					<li><a href="/toon/eachEpList?toonNum=${thriller.toonNum}"><img width=100px height=100px src=${thriller.titleImg}>
					</li>
					<li>${thriller.toonTitle}/${thriller.nickname}</li>
				</c:forEach>
			</ul>
		</div>


		<div class="comedy">
			<a
				href="${pageContext.request.contextPath}/toon/toonList/genre=${comedy}">코미디</a>
			<ul>
				<c:forEach items="${comedy}" var="comedy">
					<li><a href="/toon/eachEpList?toonNum=${comedy.toonNum}"><img width=100px height=100px src=${comedy.titleImg}>
					</li>
					<li>${comedy.toonTitle}/${comedy.nickname}</li>
				</c:forEach>
			</ul>
		</div>

	</div>



</body>
</html>