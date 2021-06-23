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
    
    
    <style type="text/css">
    
     .select {
     	text-align: center;
     	background-color: #F7F7F7;
     	border-style: solid;
     	border-color: #b4b4b4;
     	border-radius: 15px 15px 15px 15px;
     }
     .featurette-divider {
     	background-color : #3c3c3c;
     }
     #file1 {
     	background-color: #dcdcdc;
     	border-style: solid;
     	border-color: #b4b4b4;
     	border-radius: 15px 15px 15px 15px;
     }
     
    </style>

<title></title>

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
					style="border-radius: 15px 15px 15px 15px; border: 3px solid #b4b4b4; padding: 0.5em 0.6em; color: black; background-color: #dcdcdc;">관리자/질의응답/내용</span>
			</p>
		</h2><br>
	<table class="table">
		<thead>
			<tr style="text-align: center;">
	    		<th>작성일 : ${vo.createdDate}</th>
	    		<th>조회수 : ${vo.qnaHit}</th>
	    		
			</tr>
			
				<tbody class="select">
				
			<tr>
			
				<td colspan="2"><h3>${vo.qnaTitle}</h3><hr class="featurette-divider">${vo.qnaContents}</td>
					
	    	</tr>
	    
		</tbody>
		</thead>
	
	</table>
	
	
	<div id="file1">
	<c:forEach items="${vo.files}" var="file">
		<a href="../upload/${board}/${file.fileName}">${file.oriName}</a>
	</c:forEach>
	</div>
	
	<a href="./qnaUpdate?boNum=${vo.boNum}" class="btn btn-secondary">수정</a>
	
	<a href="#" id="del" class="btn btn-secondary">삭제</a>
	
	<a href="./reply?boNum=${vo.boNum}" class="btn btn-secondary">답변</a>
	
	<form action="./delete" id="frm" method="get">
		<input type="hidden" name="boNum" value="${vo.boNum}">
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