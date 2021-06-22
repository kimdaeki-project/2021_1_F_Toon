<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- BootStrap -->    
<!--     <link rel="icon" href="images/favicon.png" type="image/png">  위에 로고-->
    <c:import url="../fragments/bootstrap.jsp"></c:import>
    
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypage/style.css">
    
    <style type="text/css">
     .back {

    	border-style: solid;
    	border-color: #98DFFF;
     }
     #frm {
     	background-color: #F7F7F7;
     	border-style: solid;
     	border-color: #b4b4b4;
     	border-radius: 15px 15px 15px 15px;
     }
  
    
    </style>

<title>공지사항 작성</title>


<!-- summernote  -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
<!-- ------------ -->
<style type="text/css">
#sample {
	display: none;
}
</style>

</head>
<body>
	<c:import url="../fragments/header.jsp"></c:import>
	
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

	<div class="container"><br>
	<h2>
			<p>
				<span
					style="border-radius: 15px 15px 15px 15px; border: 3px solid #b4b4b4; padding: 0.5em 0.6em; color: black; background-color: #dcdcdc;">공지사항/작성</span>
			</p>
		</h2><br>
		<form id="frm" action="./manageToonInsert" method="post" enctype="multipart/form-data">
	
			<div class="form-group">
				<label for="noticeKinds">&nbsp;공지종류</label> <input type="text"
					class="form-control myCheck" id="noticeKinds" name="noticeKinds">
			</div>

			<div class="form-group">
				<label for="username">&nbsp;작성자</label> <input type="text"
					readonly="readonly" value="principal.name"
					class="form-control myCheck" id="username" name="username">
			</div>
			<div class="form-group">
				<label for="noticeTitle">&nbsp;제목</label> <input type="text"
					class="form-control myCheck" id="noticeTitle" name="noticeTitle">
			</div>

			<div class="form-group">
				<label for="noticeContents">&nbsp;내용</label>
				<textarea class="form-control myCheck" rows="5" id="noticeContents"
					name="noticeContents"></textarea>
			</div>

			&nbsp;&nbsp;<input type="button" id="add" value="파일추가" class="btn btn-secondary"><br>
			
			<div id="files" title="0"></div><br>

			&nbsp;&nbsp;<input type="button" id="btn" value="등록" class="btn btn-secondary">
		</form>
	</div>
	
	<div id="sample">
		<div class="input-group">
			<div class="custom-file">
				<input type="file"  id="inputGroupFile04"
					class="form-control-file border" name="files">
			</div>
			<div class="input-group-append delete">
				<input class="btn btn-outline-secondary" type="button"
					id="inputGroupFileAddon04" value="Delete">
			</div>
		</div>
	</div>

	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script type="text/javascript" src="../js/board/boardInsert.js"></script>
	<script type="text/javascript" src="../js/board/fileAdd.js"></script>
	<script type="text/javascript" src="../js/board/summerFile.js"></script>
	<c:import url="../fragments/footer.jsp"></c:import>
</body>
</html>
