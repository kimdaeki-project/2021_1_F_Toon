<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../fragments/bootstrap.jsp"></c:import>
<title>Insert title here</title>
<link rel="stylesheet" href="../css/header.css">

<!-- plugins:css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendors/iconfonts/mdi/css/materialdesignicons.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/mypage/style.css">
<!-- Layout style -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/asssets/images/favicon.ico" />

<style type="text/css">
.webtoon {
	text-align: center;
	position: relative;
	left: 300px;
}
.text {
	 background-color: #F7F7F7;
     border-style: solid;
     border-color: #b4b4b4;
     border-radius: 15px 15px 15px 15px;
     color: black;
    
}
</style>

</head>
<body>
<c:import url="../fragments/header.jsp"></c:import>
	<div class="row">
		<div class="col-2">
			<c:import url="./adminNav.jsp"></c:import>
		</div>

		<div id="content" class="webtoon">

			<!-- 웹툰 소개 -->
			<div class="container">
				<br>
				<h2>
					<p>
						<span
							style="border-radius: 15px 15px 15px 15px; border: 3px solid #b4b4b4; padding: 0.5em 0.6em; color: black; background-color: #dcdcdc;">관리자/회차</span>
					</p>
				</h2>
				<br> <a href="/toon/eachEpList?epNum=${eachEpVO.epNum}">
					<img src="${eachEpVO.epSumImg}">
				</a> <br><br>
				
				<div class="text">
				<br>
				<h2>${eachEpVO.epTitle}<hr class="featurette-divider"></h2>
				
				<p><img src="${eachEpVO.epContentImg}"></p>
				
				</div>
				<br>
				<a href="./manageEachEpUpdate?epNum=${eachEpVO.epNum}" class="btn btn-secondary">수정</a>
				
				<a href="#" id="del" class="btn btn-secondary">삭제</a>
				
				<form action="./manageEachEpDelete" id="frm" method="get">
				<input type="hidden" name="epNum" value="${eachEpVO.epNum}">
				</form>

			</div>


		</div>
<script type="text/javascript">
	const del = document.getElementById("del");
	const frm = document.getElementById("frm");
	
	del.addEventListener("click", function(){
		let result = confirm("삭제하시겠습니까?");
		
		if(result){
		
			frm.setAttribute("method", "post");
			frm.submit();
	    
		}
	});
</script>
		
</body>
</html>