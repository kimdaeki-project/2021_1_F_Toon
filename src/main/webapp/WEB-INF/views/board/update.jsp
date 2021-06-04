<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
<title>Insert title here</title>

<style type="text/css">
	#sample {
		display: none;
	}
	
	 .back {
    	background-image: url('../images/toon-notice5.PNG');
    	background-size : 6000px;
    	border-style: solid;
    	border-color: #98DFFF;
     }
     #frm {
     	background-color: #F9FFFF;
     	border-style: solid;
     	border-color: #98DFFF;
     }
     #dd {
     	background-color: #F9FFFF;

     }
	
</style>
</head>
<body>
<c:import url="../fragments/header.jsp"></c:import>
 <div class="back">
 <div class="container">
 <h2>공지사항 수정</h2>
  <form id="frm" action="./update" method="post" enctype="multipart/form-data">
  	<input type="hidden" name="boNum" value="${param.boNum}">
    <div class="form-group">
      <label for="username">작성자</label>
      <input type="text" readonly="readonly" value="${vo.username}" class="form-control" id="username" name="username">
    </div>
    <div class="form-group">
      <label for="noticeKinds">공지종류</label>
      <input type="text" class="form-control" id="noticeKinds" name="noticeKinds" value="${vo.noticeKinds}">
    </div>
    
    <div class="form-group">
      <label for="noticeTitle">제목</label>
      <input type="text" class="form-control" id="noticeTitle" name="noticeTitle" value="${vo.noticeTitle}">
    </div>
    
    <div class="form-group">
      <label for="noticeContents">내용</label>
      <textarea class="form-control" rows="5" id="noticeContents" name="noticeContents">${vo.noticeContents}</textarea>
    </div>
    
    <c:forEach items="${vo.files}" var="file">
    	<div>
    		<span id="dd">${file.oriName}</span><span class="fileDelete" title="${file.fileNum}"><button class="btn btn-danger">X</button></span>
    	</div>
    </c:forEach><br>
    
    <input type="button" id="add" value="ADD" class="btn btn-secondary">
			
	<div id="files" title="${vo.files.size()}"></div><br>
    
    <input type="submit" id="btn" value="UPDATE" class="btn btn-secondary">
  </form>
</div>
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

<script type="text/javascript" src="../js/board/boardUpdate.js"></script>
<script type="text/javascript" src="../js/board/fileAdd.js"></script>

</body>
</html>