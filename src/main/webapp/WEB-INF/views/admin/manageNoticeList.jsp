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
<title>관리자전용 공지사항 페이지</title>

</head>
<body>

<div class="page-body">
      <!-- partial:partials/_sidebar.html -->
      <div class="sidebar">
        <div class="user-profile">
          <div class="display-avatar animated-avatar">
            <img class="profile-img img-lg rounded-circle" src="../assets/images/profile/male/image_1.png" alt="profile image">
          </div>
          <div class="info-wrapper">
            <p class="user-name">관리자</p>
            <h6 class="display-income">ADMIN</h6>
          </div>
        </div>
        <ul class="navigation-menu">
          
          <li class="nav-category-divider">Management</li>
          <!-- 작품관리  -->
          <li>
            <a href="#select_toon" data-toggle="collapse" aria-expanded="false">
              <span class="link-title">작품관리</span>
              <i class="mdi mdi-flask2 link-icon"></i>
            </a>
            
            <ul class="collapse navigation-submenu" id="select_toon">
              
              <li>
                <a href="pages/sample-pages/error_2.html" target="_blank">웹툰 수정 승인</a>
              </li>
              
              <li>
                <a onclick="toonPage()">작품 조회</a>
              </li>
              <li>
                <a href="pages/sample-pages/error_2.html" target="_blank">작품 등록</a>
              </li>
              
            </ul>
          </li>
          
           <li>
            <a href="#sales_inquiry" data-toggle="collapse" aria-expanded="false">
              <span class="link-title">매출관리</span>
              <i class="mdi mdi-clipboard-outline link-icon"></i>
            </a>
             <ul class="collapse navigation-submenu" id="sales_inquiry">
              <li>
                <a href="pages/sample-pages/login_1.html" target="_blank">전체 매출조회</a>
              </li>
              <li>
                <a href="pages/sample-pages/error_2.html" target="_blank">웹툰 별 매출조회</a>
              </li>
            </ul>
          </li>
          
          <li>
            <a href="#payment_manage" data-toggle="collapse" aria-expanded="false">
              <span class="link-title">결제관리</span>
              <i class="mdi mdi-clipboard-outline link-icon"></i>
            </a>
             <ul class="collapse navigation-submenu" id="payment_manage">
              <li>
                <a href="pages/sample-pages/login_1.html" target="_blank">결제내역 조회</a>
              </li>
              <li>
                <a href="pages/sample-pages/error_2.html" target="_blank">환불 관리</a>
              </li>
            </ul>
          </li>
          
          <li>
            <a href="#select_member" data-toggle="collapse" aria-expanded="false">
              <span class="link-title">회원 관리</span>
              <i class="mdi mdi-flask link-icon"></i>
            </a>
            <ul class="collapse navigation-submenu" id="select_member">
              <li>
                <a href="pages/sample-pages/login_1.html" target="_blank">회원 조회</a>
              </li>
              <li>
                <a href="pages/sample-pages/error_2.html" target="_blank">작가 조회</a>
              </li>
              <li>
                <a href="pages/sample-pages/error_2.html" target="_blank">경고 회원 조회</a>
              </li>
            </ul>
          </li>
          
          
          
          
          <li>
            <a href="#board_manage" data-toggle="collapse" aria-expanded="false">
              <span class="link-title">공지사항,질의응답 관리</span>
              <i class="mdi mdi-chart-donut link-icon"></i>
            </a>
            <ul class="collapse navigation-submenu" id="board_manage">
              <li>
                 <a onclick="noticePage()">공지사항</a>
              </li>
              <li>
                 <a onclick="qnaPage()">질의응답</a>
              </li>
            </ul>
          </li>
          
        </ul>
        
      </div>

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
							<th class="cell100 column2">공지종류</th>
							<th class="cell100 column1">제목</th>
							<th class="cell100 column3">작성자</th>
							<th class="cell100 column4">작성일</th>
							<th class="cell100 column5">조회수</th>
						</tr>
					</thead>

				</table>
			</div>
			<br>
			<div class="table100-body js-pscroll">
				<table>
					<tbody class="tbody">
						<c:forEach items="${manageNoticeList}" var="vo">
							<tr class="row100 body">

								<td class="cell100 column2">${vo.noticeKinds}</td>
								<td class="cell100 column1"><a
									href="./manageSelect?boNum=${vo.boNum}"> ${vo.noticeTitle}</a></td>
								<td class="cell100 column3">${vo.username}</td>
								<td class="cell100 column4">${vo.createdDate}</td>
								<td class="cell100 column5">${vo.noticeHit}</td>
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
				<form id="frm" action="./manageNoticeList" class="form-inline">
					<input type="hidden" name="curPage" value="1" id="curPage">
					<div class="input-group-prepend">
						<select class="form-control" name="kind" id="kind">
							<option class="sel">공지종류</option>
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