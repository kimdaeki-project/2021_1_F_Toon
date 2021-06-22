<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div id="review_page">
	<table class="table table-hover">
		<c:forEach items="${toonVO.eachEpVO['0'].reviewVO}" var="reviewVO">
			<tbody>
				<tr>
					<td>${reviewVO.username}</td>
					<td>${reviewVO.commentDate}</td>
					<td>${reviewVO.rating}점</td>
				</tr>
				<tr>
					<td colspan="3">${reviewVO.comments}</td>
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
	   
	   		 <li class="page-item"><a class="page-link p" href="/toon/eachEpSelect?toonNum=${toonVO.toonNum}&eachEpNum=${toonVO.eachEpVO['0'].eachEpNum}&curPage=${i}" title="${i}">${i}</a></li>
	   		</c:forEach>
	   
	   		 <c:if test="${pager.next}">
	   		 <li class="page-item"><a class="page-link p" href="#" title="${pager.lastNum+1}">Next</a></li>
	   		 </c:if>
	 		 </ul>
		</div>
</div>