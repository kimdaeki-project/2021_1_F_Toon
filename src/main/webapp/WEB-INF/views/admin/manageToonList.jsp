<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>관리자전용 작품 페이지</title>

</head>
<body>

	<div class="container">
		<br>
		<h2>
			<p>
				<span
					style="border-radius: 15px 15px 15px 15px; border: 3px solid #b4b4b4; padding: 0.5em 0.6em; color: black; background-color: #dcdcdc;">관리자/공지사항</span>
			</p>
		</h2>
		<br><br>
		<div class="table100 ver5 m-b-110">
			<div class="table100-head">
				<table>
					<thead class="thead">
						<tr class="row100 head">
							<th class="cell100 column2">작품고유번호</th>
							<th class="cell100 column1">제목</th>
							<th class="cell100 column2">장르</th>
							<th class="cell100 column3">작가</th>
							<th class="cell100 column2">작품요약</th>
							<th class="cell100 column5">총 조회수</th>
							<th class="cell100 column2">요일</th>
							<th class="cell100 column2">여부</th>
							<th class="cell100 column2">타이틀이미지</th>
							<th class="cell100 column2">평점</th>
							<th class="cell100 column2">평점(수)</th>
						</tr>
					</thead>

				</table>
			</div>
			<br>
			<div class="table100-body js-pscroll">
				<table>
					<tbody class="tbody">
						<c:forEach items="${manageToonList}" var="vo">
							<tr class="row100 body">
								<td class="cell100 column2">${vo.toonNum}</td>
								<td class="cell100 column1"><a
									href="./manageToonSelect?toonNum=${vo.toonNum}"> ${vo.toonTitle}</a></td>
								<td class="cell100 column2">${vo.genre}</td>
								<td class="cell100 column3">${vo.writerId}</td>
								<td class="cell100 column2">${vo.toonSum}</td>
								<td class="cell100 column2">${vo.totalHit}</td>
								<td class="cell100 column2">${vo.toonDay}</td>
								<td class="cell100 column2">${vo.state}</td>
								<td class="cell100 column2">${vo.titleImg}</td>
								<td class="cell100 column4">${vo.ratingSum}</td>
								<td class="cell100 column5">${vo.ratingPerson}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

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
				<form id="frm" action="./manageToonList" class="form-inline">
					<input type="hidden" name="curPage" value="1" id="curPage">
					<div class="input-group-prepend">
						<select class="form-control" name="kind" id="kind">
							<option class="sel">작가</option>
							<option class="sel">장르</option>
							<option class="sel">요약내용</option>
							<option class="sel">제목</option>
						</select>
					</div>
					&nbsp;&nbsp; <input type="text" class="form-control" name="search"
						id="search" value="${pager.search}" placeholder="입력하세요">
					&nbsp;&nbsp;
					<div class="input-group-append">
						<button class="btn btn-secondary" type="submit">검색</button>
					</div>
				</form>
			</div>
			<a href="./insert" class="btn btn-secondary" role="button">작성</a>
		</div>

	</div>


	<script type="text/javascript">
	let kind= '${pager.kind}';//Title, Writer, Contents
	$(".sel").each(function() {
		let t = $(this).text();//Title, Writer, Contents
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

	
</body>
</html>