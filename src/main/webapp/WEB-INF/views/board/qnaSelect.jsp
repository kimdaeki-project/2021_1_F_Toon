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
    	background-image: url('../images/toon-qna1.PNG');
    	background-size : 500px;
    	border-style: solid;
    	border-color: #FFE150;
     }
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

<div class="container"><br>
	<h2>
		<p>
				<span
					style="border-radius: 15px 15px 15px 15px; border: 3px solid #b4b4b4; padding: 0.5em 0.6em; color: black; background-color: #dcdcdc;">질의응답/내용</span>
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
	
<c:import url="../fragments/footer.jsp"></c:import>
</body>
</html>