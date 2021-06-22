<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../fragments/bootstrap.jsp"></c:import>
<title>Insert title here</title>
<link rel="stylesheet" href="../css/header.css">
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
			<p><h2>${toonVO.toonSum}</h2></p>
		<p class="detail_info"><span class="genre">장르 : ${toonVO.genre}</span>
		<span class="totalRating">웹툰별점 : ${toonVO.ratingSum/toonVO.ratingPerson}</span></p>
		
		<ul class="btn_group">
		<li><a href="#" title="관심웹툰" class="book_maker on"><span>관심웹툰</span></a></li>
		<li><a href="/toon/eachEpSelect?toonNum=${toonVO.toonNum}&epNum=1" title="첫회보기" class="first"><span>첫회보기</span></a></li>
		
		</div>
	</div>
	
	<!-- 리스트 -->

		<table cellpadding="0" cellspacing="0" class="viewList">
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
		
		
		<tbody>
		
			<tr>
				<td class="imgalign">
					<a href="/toon/eachEpSelect?toonNum=${toonVO.toonNum}&eachEpNum=${eachEpVO.eachEpNum}">
					  
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
		
		</tbody>
		
		
		
		<tbody>
		<h1>${memberVO.username}</h1>
		<c:forEach items="${toonVO.eachEpVO}" var="eachEpVO">
			<tr>
				<td class="imgalign">
					<a href="/toon/eachEpSelect?toonNum=${toonVO.toonNum}&eachEpNum=${eachEpVO.eachEpNum}">
					  
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

</body>
</html>