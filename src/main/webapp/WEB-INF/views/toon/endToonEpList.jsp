<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- ajax 사용하기 위한 것 -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<c:import url="../fragments/bootstrap.jsp"></c:import>
<title>Insert title here</title>
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/list.css">
</head>
<body>
<c:import url="../fragments/header.jsp"></c:import>

<div id="content" class="webtoon">

	<!-- 웹툰 소개 -->
	<div class="comicinfo">
		<div class="thumb">
			<a href="/toon/eachEpList?toonNum=${toonVO.toonNum}">
				<img src="${toonVO.titleImg}">
				<span class="mask"></span>
				</a>
		</div>
		<div class="detail">
			<h2>${toonVO.toonTitle}
			<span class="wrt_nm">${toonVO.nickname}</span>
			</h2>
			<h2>${toonVO.toonSum}</h2>
		<p class="detail_info"><span class="genre">장르 : ${toonVO.genre}</span>
		<span class="totalRating">웹툰별점 : ${toonVO.ratingSum/toonVO.ratingPerson}</span></p>

		<ul class="btn_group">
		<li><a href="#" title="관심웹툰" class="book_maker on"><span>관심웹툰</span></a></li>
		<li><a href="/toon/eachEpSelect?toonNum=${toonVO.toonNum}&epNum=1" title="첫회보기" class="first"><span>첫회보기</span></a></li>
		</ul>
		</div>
	</div>
	<!-- 웹툰 소장권 충전,form으로 post전송  line:40에 붙여넣기
	${pageContext.request.contextPath}}/point/ticketCharge : post전송-->
	<!--  -->
	<a onclick="clickATag(3, 3);">test link 
		<input name ="epNum" value="3" readonly="readonly"/>
		<input name ="eachEpNum" value="3" readonly="readonly"/>		
	</a>

	<div id="getTicketButton">
	<sec:authorize access="isAuthenticated()"> 
		<form id="goto-ticket" action="${pageContext.request.contextPath}/point/ticketCharge" method="post">
			<span>stock</span>
			<input id="ticket-stock" name="stock" value="${ticketBox.stock}" readonly="readonly"/>
			<span>유저이름</span>
			<input id="user-name" name="username" value="<sec:authentication property="principal.username"/>" readonly="readonly"/>
			<br/><span>보유중 포인트</span><!-- javaScript로 200P 미만인지 검사하고 그 값에 따라서 충전버튼 과 소장권 구매 버튼 활성화 다르게 하기 -->
			<input id="cur-point" name="point" value="<sec:authentication property="principal.point"/>" readonly="readonly"/>
			<br/><span>toonNum</span>
			<input id="toon-num" name="toonNum" value="${toonVO.toonNum}" readonly="readonly"/>
			<br/><span>toonTitle</span>
			<input id ="toon-Title" name="toonTitle" value="${toonVO.toonTitle}" readonly="readonly"/>
			<!-- point가 작은 경우 소장권 버튼 누르면 alert창 나오고 chargePoint페이지로 이동하기 -->
			<button id="chargeTicket" class="" type="submit">소장권 충전하기</button>		
		</form>
	</sec:authorize>	
	</div>

	<!-- 리스트 -->

		<table class="viewList">
		<%-- <caption><span class="blind">회차별 목록</span></caption> --%>
		<col width="99"><col width="*"><col width="141"><col width="76">
		<thead>
		<tr>
			<th scope="col">이미지</th>
			<th scope="col">제목</th>
			<th scope="col">별점</th>
			<th scope="col">등록일</th>
		</tr>			
		</thead>


		<!-- -------------------------유료-------------------------------------- -->

		<tbody>


		<c:forEach items="${toonVO.eachEpVO}" var="eachEpVO" begin="0" end="2">
			<tr>

				<td class="imgalign" >
					<a class="pay" data-toonNum="${toonVO.toonNum}" data-eachEpNum="${eachEpVO.eachEpNum}" >
					<img src="${eachEpVO.epSumImg}"
						title="${eachEpVO.eachEpNum}화" alt="${eachEpVO.eachEpNum}화" width="71" height="41">
						<span class="mask"></span>
					</a>

				</td>
				<td class="title">
				<a onclick="clickATag(${eachEpVO.epNum}, ${eachEpVO.eachEpNum});" class="pay" data-toonNum="${toonVO.toonNum}" data-eachEpNum="${eachEpVO.eachEpNum}" >

				${eachEpVO.eachEpNum}화</a>
				</td>
				<td>
					<div class="rating_type">
						<span class="star"><em>평점</em></span>
						<strong>${eachEpVO.epRatingSum/eachEpVO.epRatingPerson}</strong>
					</div>
				</td>
				<td class="num"><span>${eachEpVO.epDate}</span></td>
			</tr>
		</c:forEach>
		</tbody>

		<!-- -------------------------무료-------------------------------------- -->
		<tbody>
		<c:forEach items="${toonVO.eachEpVO}" var="eachEpVO" begin="3">
			<tr>
				<td class="imgalign" >
				<a href="/toon/eachEpSelect?toonNum=${toonVO.toonNum}&eachEpNum=${eachEpVO.eachEpNum}" >
					<img src="${eachEpVO.epSumImg}"
						title="${eachEpVO.eachEpNum}화" alt="${eachEpVO.eachEpNum}화" width="71" height="41">
						<span class="mask"></span>
				</a>
				</td>
				<td class="title">
				<a href="/toon/eachEpSelect?toonNum=${toonVO.toonNum}&eachEpNum=${eachEpVO.eachEpNum}">
				${eachEpVO.eachEpNum}화</a>
				</td>
				<td>
					<div class="rating_type">
						<span class="star"><em>평점</em></span>
						<strong>${eachEpVO.epRatingSum/eachEpVO.epRatingPerson}</strong>
					</div>
				</td>
				<td class="num"><span>${eachEpVO.epDate}</span></td>
			</tr>
		</c:forEach>
		</tbody>

		</table>



		<div class="paginate">
		 	<ul class="pagination">

	  		<c:if test="${pager.pre}">	
	   		 <li class="page-item"><a class="page-link p" href="#" title="${pager.startNum-1}">Previous</a></li>
	   		</c:if>

	  		<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">

	   		 <li class="page-item"><a class="page-link p" href="/toon/eachEpList?toonNum=${toonVO.toonNum}&curPage=${i}" title="${i}">${i}</a></li>
	   		</c:forEach>

	   		 <c:if test="${pager.next}">
	   		 <li class="page-item"><a class="page-link p" href="#" title="${pager.lastNum+1}">Next</a></li>
	   		 </c:if>
	 		 </ul>
		</div>

</div>

<!--혜린 추가   -->	
<script type="text/javascript" src="../../js/pay/useTicket.js"></script>
<script type="text/javascript" src="../../js/list/list.js"></script>
</body>
</html> 