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
    
    <style type="text/css">
     .back {
    	background-image: url('../images/toon-notice5.PNG');
    	background-size : 6000px;
    	border-style: solid;
    	border-color: #98DFFF;
     }
     .select {
     	text-align: center;
     	background-color: #F9FFFF;
     	border-style: solid;
     	border-color: #98DFFF;
     }
     .featurette-divider {
     	background-color : #3c3c3c;
     }
     #file1 {
     	background-color : #F0FFF0;
     	border-style: solid;
     	border-color: #98DFFF;
     }
     
    </style>

<title></title>

</head>
<body>
<c:import url="../fragments/header.jsp"></c:import>
<div class="back">
<div class="container"><br>
	<h2><p><span style="border-radius: 15px 15px 15px 0; border: 3px solid #98DFFF; 
		padding: 0.5em 0.6em; color: black; background-color:#EBFBFF; ">공지사항/내용</span></p></h2><br>
	
	<table class="table">
		<thead>
			<tr style="text-align: center;">
	    		<th>작성일 : ${vo.createdDate}</th>
	    		<th>조회수 : ${vo.noticeHit}</th>
	    		
			</tr>
			
				<tbody class="select">
				
			<tr>
			
				<td colspan="2"><h3>${vo.noticeTitle}</h3><hr class="featurette-divider">${vo.noticeContents}</td>
					
	    	</tr>
	    
		</tbody>
		</thead>
	
	</table>
	
	
	<div id="file1">
	<c:forEach items="${vo.files}" var="file">
		<a href="../upload/${board}/${file.fileName}">${file.oriName}</a>
	</c:forEach>
	</div>
	 
	<a href="./update?boNum=${vo.boNum}" class="btn btn-secondary">수정</a>
	<a href="#" id="del" class="btn btn-secondary">삭제</a>
	
	
	<form action="./delete" id="frm" method="get">
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
<c:import url="../fragments/footer.jsp"></c:import>
</body>
</html>