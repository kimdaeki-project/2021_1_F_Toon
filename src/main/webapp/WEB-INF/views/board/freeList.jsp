<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Required meta tags -->

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- BootStrap -->
<!--     <link rel="icon" href="images/favicon.png" type="image/png">  위에 로고-->
<c:import url="../fragments/bootstrap.jsp"></c:import>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/header.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/board/main.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/board/util.css">

<style type="text/css">
.thead {
	text-align: center;
	font-weight: bold;
	background-color: #dcdcdc;
}

.tbody {
	text-align: center;
}

.back {
	border-style: solid;
	border: 1px solid #b4b4b4;
	border-radius;
}
</style>
<title>자유게시판</title>

</head>
<body>
<c:import url="../fragments/header.jsp"></c:import>
  		
	<div class="container">
		<br>
		<h2>
			<p>
				<span
					style="border-radius: 15px 15px 15px 15px; border: 3px solid #6C7AE0; padding: 0.5em 0.6em; color: white; background-color: #6C7AE0;">자유게시판</span>
			</p>
		</h2>
		<br><br>
		<div class="table100 ver1 m-b-110">
			<div class="table100-head">
				<table>
					<thead class="thead">
						<tr class="row100 head">
							<th class="cell100 column1">제목</th>
							<th class="cell100 column2">작성자</th>
							<th class="cell100 column3">작성일</th>
							<th class="cell100 column4">조회수</th>
						</tr>
					</thead>

				</table>
			</div>
			<br>
			<div class="table100-body js-pscroll">
				<table>
					<tbody class="tbody">
						<c:forEach items="${freeList}" var="vo">
							<tr class="row100 body">
								<td class="cell100 column1"><a
									href="./freeSelect?boNum=${vo.boNum}"> ${vo.freeTitle}</a></td>
								<td class="cell100 column2">${vo.username}</td>
								<td class="cell100 column3">${vo.freeDate}</td>
								<td class="cell100 column4">${vo.freeHit}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				</div>

			</div>
			<ul class="pagination">

				<c:if test="${pager.pre}">
					<li class="page-item"><a class="page-link p" href="#"
						title="${pager.startNum-1}">이전</a></li>
				</c:if>

				<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">

					<li class="page-item"><a class="page-link p" href="#"
						title="${i}">${i}</a></li>
				</c:forEach>

				<c:if test="${pager.next}">
					<li class="page-item"><a class="page-link p" href="#"
						title="${pager.lastNum+1}">다음</a></li>
				</c:if>
			</ul>

			<div class="input-group mt-3 mb-3">
				<form id="frm" action="./freeList" class="form-inline">
					<input type="hidden" name="curPage" value="1" id="curPage">
					<div class="input-group-prepend">
						<select class="form-control" name="kind" id="kind">
							<option class="sel">제목</option>
							<option class="sel">작성자</option>
						</select>
					</div>
					&nbsp;&nbsp; <input type="text" class="form-control" name="search"
						id="search" value="${pager.search}" placeholder="입력하세요">
					&nbsp;&nbsp;
					<div class="input-group-append">
						<button class="btn btn-primary" type="submit">검색</button>
					</div>
				</form>
			</div>
			<a href="./freeInsert" class="btn btn-primary" role="button">작성</a>
		</div>

	</div>

	<script type="text/javascript">
	let kind= '${pager.kind}';
	$(".sel").each(function() {
		let t = $(this).text();
		if(t == kind){
			$(this).prop("selected", true);
		}
	});
	
	$(".p").click(function () {
		let curPage = $(this).attr("title");
		$("#curPage").val(curPage);
		let search= '${pager.search}';
		$("#frm").submit();

	});
	
</script>

<c:import url="../fragments/footer.jsp"></c:import>	
</body>
</html>