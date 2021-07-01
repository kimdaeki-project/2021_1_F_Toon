<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<div id="review_page">
	<table class="table table-hover reviewList">
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
						<sec:authentication property="principal.username" var="loginUser" />
						<c:if test="${reviewVO1.username == loginUser}">
							<td><button class="delReview" title="${reviewVO1.revNum}"
									value="${reviewVO1.revNum}">삭제</button></td>
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
					<li class="page-item"><a class="page-link p"
						href="/toon/eachEpSelect?toonNum=${toonVO.toonNum}&eachEpNum=${toonVO.eachEpVO['0'].eachEpNum}&epNum=${toonVO.eachEpVO['0'].epNum}&curPage=${pager.curPage-1}"
						title="${pager.startNum-1}">Previous</a></li>
				</c:if>

				<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">

					<li class="page-item"><a class="page-link p"
						href="/toon/eachEpSelect?toonNum=${toonVO.toonNum}&eachEpNum=${toonVO.eachEpVO['0'].eachEpNum}&epNum=${toonVO.eachEpVO['0'].epNum}&curPage=${i}"
						title="${i}">${i}</a></li>
				</c:forEach>

				<c:if test="${pager.next}">
					<li class="page-item"><a class="page-link p"
						href="/toon/eachEpSelect?toonNum=${toonVO.toonNum}&eachEpNum=${toonVO.eachEpVO['0'].eachEpNum}&epNum=${toonVO.eachEpVO['0'].epNum}&curPage=${pager.curPage+1}"
						title="${pager.lastNum+1}">Next</a></li>
				</c:if>
			</ul>
		</div>
	</c:if>

</div>