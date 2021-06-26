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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypage/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypage/perfect-scrollbar.css">


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
<title>관리자전용 회차목록 페이지</title>

</head>
<body>
<c:import url="./../fragments/header.jsp"></c:import>

 <div class="row">
  	<div class="col-2">
  		<c:import url="./adminNav.jsp"></c:import>
  	</div>

	<div class="container">
		<br>
		<h2>
			<p>
				<span
					style="border-radius: 15px 15px 15px 15px; border: 3px solid #b4b4b4; padding: 0.5em 0.6em; color: black; background-color: #dcdcdc;">관리자/회차목록</span>
			</p>
		</h2>
		<br><br>
		<div class="table100 ver5 m-b-110">
			<div class="table100-head">
				<table>
					<thead class="thead">
						<tr class="row100 head">
							<th class="cell100 column5">회차번호</th>
							<th class="cell100 column5">작품번호</th>
							<th class="cell100 column5">회차별번호</th>
							<th class="cell100 column5">썸네일이미지</th>
							<th class="cell100 column5">회차제목</th>
							<th class="cell100 column5">날짜</th>
							<th class="cell100 column5">내용이미지</th>
						</tr>
					</thead>

				</table>
			</div>
			<br>
			<div class="table100-body js-pscroll">
				<table>
					<tbody class="tbody">
						<c:forEach items="${manageEachEpList}" var="eachEpVO">
							<tr class="row100 body">
								<td class="cell100 column5">${eachEpVO.epNum}</td>
								<td class="cell100 column5">${eachEpVO.toonNum}</td>
								<td class="cell100 column5">${eachEpVO.eachEpNum}</td>
								<td class="cell100 column5"><img width=50px height=50px src=${eachEpVO.epSumImg}></td>
								<td class="cell100 column5"><a href="./manageEachEpSelect?epNum=${eachEpVO.epNum}">${eachEpVO.epTitle}</a></td>
								<td class="cell100 column5">${eachEpVO.epDate}</td>
								<td class="cell100 column5"><img width=50px height=50px src=${eachEpVO.epContentImg}></td>
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
				<form id="frm" action="./manageEachEpList" class="form-inline">
					<input type="hidden" name="curPage" value="1" id="curPage">
					<div class="input-group-prepend">
						<select class="form-control" name="kind" id="kind">
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
<script type="text/javascript" src="../js/board/perfect-scrollbar.min.js"></script>
	
</body>
</html>