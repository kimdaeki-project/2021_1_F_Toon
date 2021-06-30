<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- BootStrap -->    
<!--     <link rel="icon" href="images/favicon.png" type="image/png">  위에 로고-->
    <c:import url="../fragments/bootstrap.jsp"></c:import>
    
   	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
   	
   	<!-- plugins:css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendors/iconfonts/mdi/css/materialdesignicons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypage/style.css">
<!-- Layout style -->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/asssets/images/favicon.ico" />
   	
   
<title>Insert title here</title>

<!-- summernote  -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
<!-- ------------ -->

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
        background-color: #F7F7F7;
     	border-style: solid;
     	border-color: #b4b4b4;
     	border-radius: 15px 15px 15px 15px;
     }
     #dd {
     	background-color: #b4b4b4;
     }
	
</style>
</head>
<body>
<c:import url="../fragments/header.jsp"></c:import>

<div class="row">
  	<div class="col-2">
  		<c:import url="./adminNav.jsp"></c:import>
  	</div>

 <div class="container"><br>
 <h2>
			<p>
				<span
					style="border-radius: 15px 15px 15px 15px; border: 3px solid #b4b4b4; padding: 0.5em 0.6em; color: black; background-color: #dcdcdc;">공지사항/수정</span>
			</p>
		</h2><br>
  <form id="frm" action="./manageEachEpUpdate" method="post" enctype="multipart/form-data">
  	<input type="hidden" name="epNum" value="${param.epNum}">
  	
  	<div class="form-group">
      <label for="toonTitle">&nbsp;회차별번호</label>
      <input type="number" class="form-control" id="eachEpNum" name="eachEpNum" value="${eachEpVO.eachEpNum}">
    </div>
  	
  	<div class="form-group">
	<label for="epSumImg">&nbsp;썸네일이미지</label>
	<textarea class="form-control myCheck" rows="5" id="epSumImg" name="epSumImg">${eachEpVO.epSumImg}</textarea>
	</div>
  	
    <div class="form-group">
    <label for="epTitle">&nbsp;회차제목</label>
    <input type="text"  class="form-control" id="epTitle" name="epTitle" value="${eachEpVO.epTitle}">
    </div>
    
    <div class="form-group">
	<label for="epContentImg">&nbsp;내용이미지</label>
	<textarea class="form-control myCheck" rows="5" id="epContentImg" name="epContentImg">${eachEpVO.epContentImg}</textarea>
	</div>
    
    &nbsp;&nbsp;<input type="submit" id="btn" value="수정" class="btn btn-secondary">
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

<script type="text/javascript" src="../js/board/boardUpdate.js"></script>
<script type="text/javascript" src="../js/board/eachEpSummerFile.js"></script>
<script type="text/javascript">
const btn = document.getElementById("btn");

btn.addEventListener("click", function(){
	let result = confirm("수정하시겠습니까?");
	
	if(result){
		
		frm.setAttribute("method", "post");
		frm.submit();
		
	}
});
</script>
</body>
</html>