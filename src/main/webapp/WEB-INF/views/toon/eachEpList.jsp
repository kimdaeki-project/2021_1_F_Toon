<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../fragments/bootstrap.jsp"></c:import>
<title>Insert title here</title>
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/list.css">
</head>
<body>
<c:import url="../fragments/header.jsp"></c:import>
   <br><br>
<div id="content" class="webtoon">

	<!-- 웹툰 이미지 -->
	<div class="comicinfo">
		<div class="thumb">
			<a class="s" style="font-size:25px;" href="/toon/eachEpList?toonNum=${toonVO.toonNum}">
				&nbsp;&nbsp;&nbsp;&nbsp;<img width=180px height=180px src="${toonVO.titleImg}"> &nbsp;&nbsp;${toonVO.toonSum}
				<span class="mask"></span>
			</a>
		</div>
		<br>
		
	<!-- 웹툰 제목과 소개 --> <!-- 관심웹툰과 첫회보기 -->	
		<div class="detail" >
		&nbsp;&nbsp;&nbsp;&nbsp;<h2 align="left">${toonVO.toonTitle} <span class="wrt_nm">${toonVO.nickname}</span></h2>
		&nbsp;&nbsp;&nbsp;&nbsp;<p class="detail_info" style="font-size:20px;">
		<span class="genre">장르 : ${toonVO.genre}</span>&emsp;&emsp;
		<span class="totalRating">별점: ${toonVO.ratingSum/toonVO.ratingPerson}</span>&emsp;&emsp;
		
		<span><button title="관심웹툰"  type="button" class="btn btn-outline-primary" onclick="location.href='toonDay'">관심웹툰</button></span>&emsp;&emsp;
		<span><button title="첫회보기"  type="button" class="btn btn-outline-primary" onclick="location.href='/toon/eachEpSelect?toonNum=${toonVO.toonNum}&epNum=1'">첫화보기</button></span>
		
		
		</div>
	</div>
	
	<%-- <!-- 웹툰 소장권 충전,form으로 post전송  line:40에 붙여넣기
	${pageContext.request.contextPath}}/point/ticketCharge : post전송-->
	<div id="getTicketButton" class="" >
	<sec:authorize access="isAuthenticated()"> 
		<form id="goto-ticket" action="${pageContext.request.contextPath}/point/ticketCharge" method="post">
			<span>유저이름</span>
			<input name="username" value="<sec:authentication property="principal.username"/>" readonly="readonly"/>
			<br/><span>보유중 포인트</span><!-- javaScript로 200P 미만인지 검사하고 그 값에 따라서 충전버튼 과 소장권 구매 버튼 활성화 다르게 하기 -->
			<input name="point" value="<sec:authentication property="principal.point"/>" readonly="readonly"/>
			<br/><span>toonNum</span>
			<input name="toonNum" value="${toonVO.toonNum}" readonly="readonly"/>
			<br/><span>toonTitle</span>
			<input name="toonTitle" value="${toonVO.toonTitle}" readonly="readonly"/>
			<!-- point가 작은 경우 소장권 버튼 누르면 alert창 나오고 chargePoint페이지로 이동하기 -->
			<button id="chargeTicket" class="" type="submit">소장권 충전하기</button>		
		</form>
	</sec:authorize>	
	</div> --%>
	
	<br><br>
	
	
	<!-- 리스트 -->

		<table border="3" align="center" cellpadding="10"  class="viewList"  >
	
		<thead>
		<tr>
			<th scope="col" class="a" ><h2>이미지</h2></th>
			
			<th scope="col" class="b"><h2>제목</h2></th>
			
			<th scope="col" class="c"><h2>별점</h2></th>
			
			<th scope="col" class="d"><h2>등록일</h2></th>
		</tr>			
		</thead>
		
		
		<!-- -------------------------유료-------------------------------------- -->
	
		<tbody style="font-size:30px;">
	

		<c:forEach items="${toonVO.eachEpVO}" var="eachEpVO">
			<tr>
			
				<td class="imgalign"  >
				
					<a  href="/toon/eachEpSelect?toonNum=${toonVO.toonNum}&eachEpNum=${eachEpVO.eachEpNum}&epNum=${eachEpVO.epNum}" class="pay" data-toonNum="${toonVO.toonNum}" data-eachEpNum="${eachEpVO.eachEpNum}" ><br>
					<img src="${eachEpVO.epSumImg}" title="${eachEpVO.eachEpNum}화" alt="${eachEpVO.eachEpNum}화" width="100" height="100">
						<span class="mask"></span>
					</a>
				</td>
				<td class="title">
				
				<a href="/toon/eachEpSelect?toonNum=${toonVO.toonNum}&eachEpNum=${eachEpVO.eachEpNum}&epNum=${eachEpVO.epNum}" class="pay" data-toonNum="${toonVO.toonNum}" data-eachEpNum="${eachEpVO.eachEpNum}" >
				${eachEpVO.epTitle}</a>
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
		 	<ul  class="pagination" >
	  
	  		<c:if test="${pager.pre}">	
	   		 <li class="page-item"><a class="page-link p" href="#" title="${pager.startNum-1}">Previous</a></li>
	   		</c:if>
	   
	  		<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i" >
	   
	   		 <li class="page-item"><a class="page-link p" href="/toon/eachEpList?toonNum=${toonVO.toonNum}&curPage=${i}" title="${i}">${i}</a></li>
	   		</c:forEach>
	   
	   		 <c:if test="${pager.next}">
	   		 <li class="page-item"><a class="page-link p" href="#" title="${pager.lastNum+1}">Next</a></li>
	   		 </c:if>
	 		 </ul>
		</div>

</div>


<script type="text/javascript" src="../../js/pay/goTicketBox.js"></script>
<script type="text/javascript" src="../../js/list/list.js"></script>
</body>
</html>