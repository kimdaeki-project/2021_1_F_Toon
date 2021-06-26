<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../fragments/bootstrap.jsp"/>
<title>Insert title here</title>
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/eachEp/star.css">

</head>
<body>
<c:import url="../fragments/header.jsp"/>
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
		<p class="detail_info"><span class="genre">장르 : ${toonVO.genre}</span></p>
		<ul class="btn_group">
		<li><a href="#" title="관심웹툰" class="book_maker on"><span>관심웹툰</span></a></li>
		<li><a href="/toon/eachEpSelect?toonNum=${toonVO.toonNum}&eachEpNum=1" title="첫회보기" class="first"><span>첫회보기</span></a></li>
		</ul>
		</div>
	</div>

	<div class="tit_area">
		<div class="view">
			<h3>${toonVO.eachEpVO['0'].epTitle}</h3>
			<div class="btn_area">
				<c:if test="${toonVO.eachEpVO['0'].epNum!=1}">
				<span class="pre"> 
				<a href="/toon/eachEpSelect?toonNum=${toonVO.toonNum}&eachEpNum=${toonVO.eachEpVO['0'].eachEpNum-1}">이전화</a>
				</span>
				</c:if>
				<span class="next"> 
				<a href="/toon/eachEpSelect?toonNum=${toonVO.toonNum}&eachEpNum=${toonVO.eachEpVO['0'].eachEpNum+1}">다음화</a>
				</span>
			</div>
		</div>
		<div class="vote_lst">
			<dl class="lt">
				<dt>
					<img src="https://ssl.pstatic.net/static/comic/images/migration/detail/txt_point_all.gif"
						width="39" height="11" alt="회별별점">
				</dt>
				<dd class="total">
					<div class="rating_type4" id="topTotalStarPoint">
						<span class="star"><em style="width: 98%">평점</em></span> 
						<span id="topPointTotalNumber"><strong>${toonVO.eachEpVO['0'].epRatingSum/toonVO.eachEpVO['0'].epRatingPerson}</strong></span> 
						<span class="pointTotalPerson">(참여 <em>${toonVO.eachEpVO['0'].epRatingPerson}</em>)</span>
					</div>
				</dd>

				<dt id="topStarLabel">
					<img
						src="https://ssl.pstatic.net/static/comic/images/migration/detail/txt_point_click.gif"
						width="38" height="11" class="starscore_guide_txt" alt="별점주기">
				</dt>
			</dl>
			<dl class="rt">
				<dt>등록일</dt>
				<dd class="date">${toonVO.eachEpVO['0'].epDate}</dd>
			</dl>
		</div>
	</div>	

	<!-- content Img  -->
	<div class="wt_viewer" style="background: #FFFFFF">
	<img src="${toonVO.eachEpVO['0'].epContentImg}" alt="comic content" id="content_image_0"
		oncontextmenu="return false" ondragstart="return false" onselectstart="return false" >
	</div>

	<!-- 리뷰,별점 -->
	<div class="wrap">
		<h2>리뷰</h2>
		
		<div id="rating" class="rating">
			<div class="startRadio">
  				<c:forEach begin="1" end="10" var="i">
  				<label class="startRadio__box">
    			<input type="radio" name="star" id="star${i}" value="${i}">
    			<span class="startRadio__img"><span class="blind">${i}</span></span>
  				</label>
  				</c:forEach>
			</div>
		</div>
		
		<div class="review_contents">
			<div class="warning_msg">5자 이상으로 작성해 주세요.</div>
			<textarea rows="10" id="comments" class="review_textarea"></textarea>
		</div>
		<button id="save">등록</button>
	</div>

	<!-- 댓글 리스트 -->	

	<div id="review_page">
	<table class="table table-hover">
		<c:forEach items="${toonVO.eachEpVO['0'].reviewVO}" var="reviewVO1">
			<tbody>
				<tr>
					<td>${reviewVO1.username}</td>
					<td>${reviewVO1.commentDate}</td>
					<td>${reviewVO1.rating}점</td>
				</tr>
				<tr>
					<td colspan="2">${reviewVO1.comments}</td>
					
					<sec:authorize access="isAnonymous()">
						<td></td>
					</sec:authorize>
					
					<sec:authorize access="isAuthenticated()">
					<sec:authentication property="principal.username" var="loginUser"/>
						<c:if test="${reviewVO1.username == loginUser}">
							<td><button id="delReview">삭제</button></td>
						</c:if>
					</sec:authorize>
				</tr>
			</tbody>
		</c:forEach>
		
	</table>
	
	<div class="paginate">
		 	<ul class="pagination">
	  
	  		<c:if test="${pager.pre}">	
	   		 <li class="page-item"><a class="page-link p" href="#" title="${pager.startNum-1}">Previous</a></li>
	   		</c:if>
	   
	  		<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
	   
	   		<li class="page-item"><a class="page-link p" href="/toon/eachEpSelect?toonNum=${toonVO.toonNum}&eachEpNum=${toonVO.eachEpVO['0'].eachEpNum}&epNum=${toonVO.eachEpVO['0'].epNum}&curPage=${i}" title="${i}">${i}</a></li>
	   		</c:forEach>
	   
	   		 <c:if test="${pager.next}">
	   		 <li class="page-item"><a class="page-link p" href="#" title="${pager.lastNum+1}">Next</a></li>
	   		 </c:if>
	 		 </ul>
		</div>
	</div>	
	
	<input type="hidden" id="toonNum" value="${toonVO.toonNum}">
	<input type="hidden" id="epNum" value="${toonVO.eachEpVO['0'].epNum}">
	<input type="hidden" id="eachEpNum" value="${toonVO.eachEpVO['0'].eachEpNum}">
	

	
	<script type="text/javascript">
	
	var toonNum = $("#toonNum").val();
	var epNum = $("#epNum").val();
	var eachEpNum = $("#eachEpNum").val();
	
	$(function(){	
		$('#save').click(function(){
			var rating =  Number($('#rating').find("input[name='star']:checked").val());
			var comments = $("#comments").val();
			alert("별점, 댓글 등록");
			
			$.ajax({
				type:"POST",
				url:'../review/setReview',
				data:{
					"toonNum":toonNum,
					"epNum":epNum,
					"rating":rating,
					"comments":comments,
					"eachEpNum":eachEpNum
				},
				success:function(result){
					result = Number(result.trim());
					if(result>0){
						alert("댓글을 등록하셨습니다. 등록해 주셔서 감사합니다.");
						$("#review_page").load(location.href=location.href);
						/* $("#review_page").load(window.location.href + "#review_page"); */
					}else{
						alert("등록에 실패하였습니다. 다시 시도해 주세요");
					}
				}
				
			})
		})
	});
	
	$(function(){	
		$('#delReview8').click(function(){
			
			alert("별점, 댓글 등록");
			
			$.ajax({
				type:"POST",
				url:'../review/setReview',
				data:{
					"toonNum":toonNum,
					"epNum":epNum,
					"rating":rating,
					"comments":comments,
					"eachEpNum":eachEpNum
				},
				success:function(result){
					result = Number(result.trim());
					if(result>0){
						alert("댓글을 등록하셨습니다. 등록해 주셔서 감사합니다.");
						$("#review_page").load(location.href=location.href);
						/* $("#review_page").load(window.location.href + "#review_page"); */
					}else{
						alert("등록에 실패하였습니다. 다시 시도해 주세요");
					}
				}
				
			})
		})
	});
	</script>
	
</body>
</html>