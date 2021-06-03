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
    
    <style type="text/css">
     .back {
    	background-image: url('../images/toon-notice5.PNG');
    	background-size : 3000px;
    	border-style: solid;
    	border-color: #98DFFF;
     }
     .select {
     	text-align: center;
     	background-color: #F9FFFF;
     	border-style: solid;
     	border-color: #98DFFF;
     }
     
    </style>

<title></title>

</head>
<body>
<c:import url="../fragments/header.jsp"></c:import>
<div class="back">
<div class="container">


	<h1>공지사항</h1>
	
	<table class="table">
		<thead>
			<tr style="text-align: center;">
	    		<th>작성자 : ${vo.username}</th>
	    		<th>작성일자 : ${vo.createdDate}</th>
	    		<th>조회수 : ${vo.noticeHit}</th>
	    		
			</tr>
			
				<tbody class="select">
				
			<tr>
				<td colspan="2"><h3>${vo.noticeTitle}</h3></td>
				<td colspan="3" style="padding:3em">${vo.noticeContents}</td>
	    	</tr>
	    
		</tbody>
		</thead>
	
	</table>
	<div>
	<c:forEach items="${vo.files}" var="file">
		<a href="../resources/upload/${board}/${file.fileName}">${file.oriName}</a>
	</c:forEach>
	</div>
	
	<a href="./${board}Update?boNum=${vo.boNum}" class="btn btn-danger">수정</a>
	<a href="#" id="del" class="btn btn-info">삭제</a>
	
	
	<c:if test="${board ne 'notice'}">
	<a href="./${board}Reply?boNum=${vo.boNum}" class="btn btn-primary">댓글</a>
	</c:if>
	
	<form action="./${board}Delete" id="frm" method="get">
		<input type="hidden" name="boNum" value="${vo.boNum}">
	</form>
	</div>

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