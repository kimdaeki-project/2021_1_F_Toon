<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<c:import url="./fragments/header.jsp"></c:import>

<div class="container">
	<h1>${board} Select Page</h1>
	<h3>Title : ${vo.title}</h3>
	<h3>Writer : ${vo.writer}</h3>
	<h3>Contents : ${vo.contents}</h3>
	<div>
	<c:forEach items="${vo.boardFiles}" var="file">
		<a href="../resources/upload/${board}/${file.fileName}">${file.origineName}</a>
	</c:forEach>
	</div>
	
	<!-- 댓글 리스트 -->
	<div id="comments" title="${vo.num}">
		
	
	</div>
	
	<div>
		<div class="form-group">
  			<label for="usr">작성자</label>
  			<input type="text" class="form-control" id="writer">
		</div>
	
		<div class="form-group">
  			<label for="comment">내용</label>
  			<textarea class="form-control" rows="5" id="contents"></textarea>
		</div>
		
		<button type="button" class="btn btn-success" id="write">작성</button>
	</div>
	
	
	
	
	<a href="./${board}Update?num=${vo.num}" class="btn btn-danger">수정</a>
	<a href="#" id="del" class="btn btn-info">Delete</a>
	
	
	<c:if test="${board ne 'notice'}">
	<a href="./${board}Reply?num=${vo.num}" class="btn btn-primary">댓글</a>
	</c:if>
	
	<form action="./${board}Delete" id="frm" method="get">
		<input type="hidden" name="num" value="${vo.num}">
	</form>
	

</div>
<script type="text/javascript" src="../resources/js/board/comments.js"></script>
<script type="text/javascript">
	const del = document.getElementById("del");
	const frm = document.getElementById("frm");
	
	del.addEventListener("click", function(){
		let result = confirm("삭제하시겠습니까?");
		
		if(result){
			//frm.method="post";
			frm.setAttribute("method", "post");
			frm.submit();
			//location.href="./${board}Delete?num=${dto.num}";
		}
	});
</script>

</body>
</html>