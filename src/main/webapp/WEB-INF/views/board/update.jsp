<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	#sample {
		display: none;
	}
</style>
</head>
<body>
<c:import url="./fragments/header.jsp"></c:import>
 
 <div class="container">
 <h2>${board} Update form</h2>
  <form id="frm" action="./update" method="post" enctype="multipart/form-data">
  	<input type="hidden" name="boNum" value="${param.boNum}">
    <div class="form-group">
      <label for="username">작성자</label>
      <input type="text" readonly="readonly" value="${vo.username}" class="form-control" id="username" name="username">
    </div>
    <div class="form-group">
      <label for="noticeTitle">제목</label>
      <input type="text" class="form-control" id="noticeTitle" name="noticeTitle" value="${vo.noticeTitle}">
    </div>
    
    <div class="form-group">
      <label for="noticeContents">내용</label>
      <textarea class="form-control" rows="5" id="noticeContents" name="noticeContents">${vo.noticeContents}</textarea>
    </div>
    
    <c:forEach items="${vo.boardFiles}" var="file">
    	<div>
    		<span>${file.oriName}</span><span class="fileDelete" title="${file.fileNum}">X</span>
    	</div>
    </c:forEach>
    
    <input type="button" id="add" value="ADD" class="btn btn-danger">
			
	<div id="files" title="${vo.boardFiles.size()}"></div>
    
    <input type="submit" id="btn" value="UPDATE" class="btn btn-primary">
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

<script type="text/javascript" src="../resources/js/board/boardUpdate.js"></script>
<script type="text/javascript" src="../resources/js/board/fileAdd.js"></script>
<!-- <script type="text/javascript" src="../resources/js/insertCheck.js"></script> -->
</body>
</html>