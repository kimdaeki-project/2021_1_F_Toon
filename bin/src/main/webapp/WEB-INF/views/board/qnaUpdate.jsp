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
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
    
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
    	background-image: url('../images/toon-qna1.PNG');
    	background-size : 500px;
    	border-style: solid;
    	border-color: #FFE150;
     }
     #frm {
    	background-color: #F7F7F7;
     	border-style: solid;
     	border-color: #b4b4b4;
     	border-radius: 15px 15px 15px 15px;
     }
     #dd {
     	background-color: #F9FFFF;

     }
	
</style>
</head>
<body>
<c:import url="../fragments/header.jsp"></c:import>

 <div class="container">
 <h2>질문 수정</h2>
  <form id="frm" action="./update" method="post" enctype="multipart/form-data">
  	<input type="hidden" name="boNum" value="${param.boNum}">
    <div class="form-group">
      <label for="username">&nbsp;작성자</label>
      <input type="text" readonly="readonly" value="${vo.username}" class="form-control" id="username" name="username">
    </div>
    
    <div class="form-group">
      <label for="qnaTitle">&nbsp;제목</label>
      <input type="text" class="form-control" id="qnaTitle" name="qnaTitle" value="${vo.qnaTitle}">
    </div>
    
    <div class="form-group">
				<label for="qnaContents">&nbsp;내용</label>
				<textarea class="form-control myCheck" rows="5" id="qnaContents"
					name="qnaContents">${vo.qnaContents}</textarea>
			</div>
    
    <c:forEach items="${vo.files}" var="file">
    	<div>
    		<span id="dd">${file.oriName}</span><span class="fileDelete" title="${file.fileNum}">&emsp;X&emsp;</span><span>&emsp;/&emsp;</span>
    	</div>
    </c:forEach><br>
    
    &nbsp;&nbsp;<input type="button" id="add" value="파일추가" class="btn btn-secondary">
			
	<div id="files" title="${vo.files.size()}"></div><br>
    
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
<script type="text/javascript" src="../js/board/fileAdd.js"></script>
<script type="text/javascript" src="../js/board/qnaSummerFile.js"></script>
<c:import url="../fragments/footer.jsp"></c:import>
</body>
</html>