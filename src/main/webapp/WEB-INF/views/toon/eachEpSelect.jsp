<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../fragments/bootstrap.jsp"/>
<title>Insert title here</title>
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/eachEp/star.css">
<style>
#left-box {
    width: 100px;
/*   	background-color: red; */
    float: left;
}
#center-box {
    text-align: center;
/*     background-color: yellow; */
    margin: 0 auto;
}
#right-box {
    width: 100px;
/*     background-color: blue; */
    float: right;
    text-align: right;
}
</style>

</head>
<body>
<c:import url="../fragments/header.jsp"/>

<div>
    <div id='left-box'>
		 <c:if test="${toonVO.eachEpVO['0'].eachEpNum!=1}">
               <span class="pre"> 
               <a href="/toon/eachEpSelect?toonNum=${toonVO.toonNum}&eachEpNum=${toonVO.eachEpVO['0'].eachEpNum-1}&epNum=${toonVO.eachEpVO['0'].epNum-1}">이전화</a>
               </span>
            </c:if>	
	</div>    
    <div id='right-box'>
    		<c:if test="${toonVO.eachEpVO['0'].eachEpNum<pager.maxEp}">
               <span class="next"> 
               <a href="/toon/eachEpSelect?toonNum=${toonVO.toonNum}&eachEpNum=${toonVO.eachEpVO['0'].eachEpNum+1}&epNum=${toonVO.eachEpVO['0'].epNum+1}">다음화</a>
               </span>
            </c:if></div>   
    <div id='center-box'>


    <table width="70%">
    <tr>
    	<td rowspan="4" align="right">
    		<div class="thumb">
       		  <a href="/toon/eachEpList?toonNum=${toonVO.toonNum}">
         	   <img src="${toonVO.titleImg}" width=260px height=230px>
        	    <span class="mask"></span>
        	  </a>
     	 	</div> 
      	</td>
      	
    	<td><h2>${toonVO.toonTitle} / <span class="wrt_nm">${toonVO.nickname}</span> </h2></td>
    </tr>
    
    <tr>
    	<td><h4>요약 : ${toonVO.toonSum} </h4></td>
    </tr>
    
     <tr>
    	<td><h4>장르 : ${toonVO.genre}</h4></td>
    </tr>
  
  	 <tr>
    	<td>
    	
    	<a href="#" title="관심웹툰" class="book_maker on" id="check_favorite">
         	<c:choose>
	      		<c:when test="${empty favorToon}">
	     		 	<button class="like btn-outline-info">관심웹툰등록</button>
	      		</c:when>
	      		<c:otherwise>
	      			<button class="like btn-info">관심웹툰해제</button>
	      		</c:otherwise>
	     	</c:choose>
		 </a> 
		 
		 <a href="/toon/eachEpSelect?toonNum=${toonVO.toonNum}&eachEpNum=1&epNum=1" title="첫회보기" class="first"><button class="btn-outline-primary">첫회보기</button></a>
		 <a href="/toon/eachEpList?toonNum=${toonVO.toonNum}" title="목록보기" class="backToTheList"><button class="btn-outline-secondary">목록보기</button></a>
		 
		 </td>
    </tr>
  	
    </table>

    
     <!-- 웹툰 소개 -->





   <div class="tit_area">
      <div class="view">
         <h3>${toonVO.eachEpVO['0'].epTitle}</h3>
         <div class="btn_area">
            <c:if test="${toonVO.eachEpVO['0'].eachEpNum!=1}">
               <span class="pre"> 
               <a href="/toon/eachEpSelect?toonNum=${toonVO.toonNum}&eachEpNum=${toonVO.eachEpVO['0'].eachEpNum-1}&epNum=${toonVO.eachEpVO['0'].epNum-1}">이전화</a>
               </span>
            </c:if>
            <c:if test="${toonVO.eachEpVO['0'].eachEpNum<pager.maxEp}">
               <span class="next"> 
               <a href="/toon/eachEpSelect?toonNum=${toonVO.toonNum}&eachEpNum=${toonVO.eachEpVO['0'].eachEpNum+1}&epNum=${toonVO.eachEpVO['0'].epNum+1}">다음화</a>
               </span>
            </c:if>
         </div>
      </div>
      <div class="vote_lst">
         <dl class="lt">
            <dt>
               <img src="https://ssl.pstatic.net/static/comic/images/migration/detail/txt_point_all.gif" width="39" height="11" alt="회별별점">
            </dt>
            <dd class="total">
               <div class="rating_type4" id="topTotalStarPoint">
                  <span class="star"><em style="width: 98%">평점</em></span> 
                  <span id="topPointTotalNumber"><strong><fmt:formatNumber value="${toonVO.eachEpVO['0'].epRatingSum/toonVO.eachEpVO['0'].epRatingPerson}" pattern=".00"/></strong></span> 
                  <span class="pointTotalPerson">(참여 <em>${toonVO.eachEpVO['0'].epRatingPerson}</em>)</span>
               </div>
            </dd>

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
      <h2>별점 & 댓글</h2>
      
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
         <div class="warning_msg">별점과 댓글 모두 입력해주세요.</div>
         <textarea rows="10" id="comments" class="review_textarea" ></textarea>
      </div>
      <input type="button" id="save2" value="등록">
   </div>

   <!-- 댓글 리스트 -->   

   <div id="review_page">
   <table class="table table-hover reviewList">
	 <c:forEach items="${toonVO.eachEpVO['0'].reviewVO}" var="reviewVO1">
    	<thead class="A simple light list group item">
				<tr>
					<th scope="col">작성자</th>
					<th scope="col">작성날짜</th>
					<th scope="col">평점</th>
					<th scope="col">내용</th>	
				</tr>
		</thead>
	 </c:forEach>
		
      <c:forEach items="${toonVO.eachEpVO['0'].reviewVO}" var="reviewVO1">
         <tbody>
            <tr>
               <td>${reviewVO1.username}</td>
               <td>${reviewVO1.commentDate}</td>
               <td>${reviewVO1.rating}점</td>
               <td colspan="2">${reviewVO1.comments}</td>
               
               <sec:authorize access="isAnonymous()">
                  <td></td>
               </sec:authorize>
               
               <sec:authorize access="isAuthenticated()">
               <sec:authentication property="principal.username" var="loginUser"/>
                  <c:if test="${reviewVO1.username == loginUser}">
                     <td><button class="delReview" title="${reviewVO1.revNum}" value="${reviewVO1.revNum}">삭제</button></td>
                  </c:if>
               </sec:authorize>
            </tr>
           
         </tbody>
      </c:forEach>
      
   </table>

   <c:if test="${toonVO.eachEpVO['0'].reviewVO['0']!=null}">
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
   </c:if>
   
   </div>   
   
   <input type="hidden" id="toonNum" value="${toonVO.toonNum}">
   <input type="hidden" id="epNum" value="${toonVO.eachEpVO['0'].epNum}">
   <input type="hidden" id="eachEpNum" value="${toonVO.eachEpVO['0'].eachEpNum}">
	<sec:authorize access="isAuthenticated()">
        <sec:authentication property="principal.username" var="loginUser"/>
        <input type="hidden" id="username" value="${loginUser}">
	</sec:authorize>

   <script type="text/javascript" src="../js/toon/favoriteToon.js"></script>
   <script type="text/javascript" src="../js/toon/reviews.js"></script>
    
    
    
    </div>
</div>

  
   
</body>
</html>