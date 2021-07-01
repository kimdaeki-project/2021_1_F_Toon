<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="layoutTag" tagdir="/WEB-INF/tags"%>[]
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
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reply.css">
    
    <style type="text/css">
     .back {
  
    	border-style: solid;
    	border-color: #98DFFF;
     }
     
     .select {
     	text-align: center;
     	background-color: #F7F7F7;
     	border-style: solid;
     	border-color: #6C7AE0;
     	border-radius: 15px 15px 15px 15px;
     }
     .featurette-divider {
     	background-color : #3c3c3c;
     }
     #file1 {
      	
     	border-style: solid;
     	border-color: #6C7AE0;

     }
     
    </style>

<title></title>

</head>
<body>
<c:import url="../fragments/header.jsp"></c:import>

<div class="container"><br>
	<h2>
			<p>
				<span
					style="border-radius: 15px 15px 15px 15px; border: 3px solid #6C7AE0; padding: 0.5em 0.6em; color: white; background-color: #6C7AE0;"">자유게시판/내용</span>
			</p>
		</h2><br>
	
	<table class="table">
		<thead>
			<tr style="text-align: center;">
				
	    		<th>작성자 : ${vo.username}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;작성일 : ${vo.freeDate}</th>
	    		<th>조회수 : ${vo.freeHit}</th>
	    		
			</tr>
			
				<tbody class="select">
				
			<tr>
			
				<td colspan="2"><h3>${vo.freeTitle}</h3><hr class="featurette-divider">${vo.freeContents}</td>
					
	    	</tr>
	    
		</tbody>
		</thead>
	
	</table>
	
	
	<div id="file1">
	<c:forEach items="${vo.freefiles}" var="file">
		<a href="../upload/${board}/${file.fileName}">&nbsp;${file.oriName}</a>
	</c:forEach>
	</div>
	<br>
	
	<c:if test="${memberVO.username eq vo.username}">
	<a href="./freeUpdate?boNum=${vo.boNum}" class="btn btn-primary">수정</a>
	<a href="#" id="del" class="btn btn-primary">삭제</a>
	</c:if>
	
	<form action="./freeDelete" id="frm" method="get">
		<input type="hidden" name="boNum" value="${vo.boNum}">
	</form>
	</div>
	
	   <!--                     추가                         -->
    <!--  댓글  -->

    <div class="container">
        <label for="commentContents">댓글</label>
        <form name="commentInsertForm">
            <div class="input-group">
               <input type="hidden" name="boNum" id="boNum" value="${vo.boNum}"/>
               <input type="text" class="form-control" id="commentContents" name="commentContents" placeholder="내용을 입력하세요.">
               <span class="input-group-btn">
                    <button class="btn btn-dark" type="button" name="commentInsertBtn">등록</button>
               </span>
              </div>
        </form>
    </div>
    
    <div class="container">
        <div class="commentList"></div>
    </div>
 
<script type="text/javascript" src="../js/board/comment.js"></script>
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

<c:import url="../fragments/footer.jsp"></c:import>
</body>
</html>