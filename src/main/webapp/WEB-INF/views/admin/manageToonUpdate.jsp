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
  <form id="frm" action="./manageToonUpdate" method="post" enctype="multipart/form-data">
  	<input type="hidden" name="toonNum" value="${param.toonNum}">
  	
  	<div class="form-group">
      <label for="toonTitle">&nbsp;제목</label>
      <input type="text" class="form-control" id="toonTitle" name="toonTitle" value="${toonVO.toonTitle}">
    </div>
  	
  	<div class="form-group">
      <label for="genre">&nbsp;장르</label>
      <input type="text" class="form-control" id="genre" name="genre" value="${toonVO.genre}">
    </div>
  	
    <div class="form-group">
    <label for="writerID">&nbsp;작가</label>
    <input type="text"  class="form-control" id="writerID" name="writerID" value="${toonVO.writerID}">
    </div>
    
    <div class="form-group">
	<label for="toonSum">&nbsp;작품요약</label>
	<textarea class="form-control myCheck" rows="5" id="toonSum" name="toonSum">${toonVO.toonSum}</textarea>
	</div>
    
    <div class="form-group">
    <label for="toonDay">&nbsp;요일</label>
    <input type="text" class="form-control" id="toonDay" name="toonDay" value="${toonVO.toonDay}">
    </div>
    
    <div class="form-group">
	<label for="titleImg">&nbsp;타이틀이미지</label>
	<textarea class="form-control myCheck" rows="5" id="titleImg" name="titleImg">${toonVO.titleImg}</textarea>
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
	</div>

<script type="text/javascript" src="../js/board/boardUpdate.js"></script>
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