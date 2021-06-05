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
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/all.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
   
    <!-- main css -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
    
    <style type="text/css">
     .back {
    	background-image: url('../images/toon-notice5.PNG');
    	background-size : 3000px;
    	border-style: solid;
    	border-color: #98DFFF;
     }
     #frm {
     	background-color: #F9FFFF;
     	border-style: solid;
     	border-color: #98DFFF;
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
<div class="back">
	<div class="container">
		<h2>공지사항작성</h2>
		<form id="frm" action="./insert" method="post" enctype="multipart/form-data">
	
			<div class="form-group">
				<label for="noticeKinds">공지종류</label> <input type="text"
					class="form-control myCheck" id="noticeKinds" name="noticeKinds">
			</div>
	
			<div class="form-group">
				<label for="username">작성자</label> <input type="text"
					readonly="readonly" value="${member.username}"
					class="form-control myCheck" id="username" name="username">
			</div>
			<div class="form-group">
				<label for="noticeTitle">제목</label> <input type="text"
					class="form-control myCheck" id="noticeTitle" name="noticeTitle">
			</div>

			<div class="form-group">
				<label for="contents">내용</label>
				<textarea class="form-control myCheck" rows="5" id="contents"
					name="noticeContents"></textarea>
			</div>

			<input type="button" id="add" value="ADD" class="btn btn-danger">
			
			<div id="files" title="0"></div>

			<input type="button" id="btn" value="WRITE" class="btn btn-primary">
		</form>
	</div>
	
	</div> <!-- 작성란까지 css 일단 파일부분이 안나와서 뺴고나옴 -->
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


	<script type="text/javascript" src="../js/board/boardInsert.js"></script>
	<script type="text/javascript" src="../js/board/fileAdd.js"></script>
	<script type="text/javascript" src="../js/board/summerFile.js"></script>
	
</body>
</html>
