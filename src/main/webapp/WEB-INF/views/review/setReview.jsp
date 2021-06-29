<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<c:forEach items="${result}" var="reviewVO1">
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
					<td><button id="delReview" title="${reviewVO1.revNum}"
							value="${reviewVO1.revNum}">삭제</button></td>
				</c:if>
			</sec:authorize>
		</tr>
	</tbody>
</c:forEach>
