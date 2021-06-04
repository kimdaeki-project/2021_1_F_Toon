<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- jsp page 선언부에 spring message를 사용할 수 있도록 선언 -->
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WebToon Notice List</title>
</head>
<body>

	
	<div class="container">
		<h2>${board}</h2>
		
		<!-- 검색 form -->
		<div class=" d-flex justify-content-start">
			<div class="input-group align-items-center">
				<form id="frm" action="./list" class="form-inline">
					<input type="hidden" name="curPage" value="1" id="curPage">
					<div class="input-group-prepend">
						<select class="form-control" name="kind" id="kind"
							value="${pager.kind}">
							<option class="sel"
								selected="${pager.kind}== 'Title'?true:false">Title</option>
							<option class="sel"
								selected="${pager.kind}=='Contents'?true:false">Contents</option>
							<option class="sel"
								selected="${pager.kind}=='Writer'?true:false">Writer</option>
						</select>
					</div>
					<input type="text" class="form-control" name="search" id="search"
						value="${pager.search}" placeholder="">
					<div class="input-group-append">
						<button class="btn btn-success" type="submit">Search</button>
					</div>
				</form>
			</div>
		</div>
		<!-- 검색 form -->
		
		
		<table class="table">
		  <thead class="thead-dark">
		    <tr>
		      <th scope="col">Num</th>
		      <th scope="col">Title</th>
		      <th scope="col">Writer</th>
		      <th scope="col">Date</th>
		      <th scope="col">Hit</th>
	
		      <!-- <th scope="col">Current</th> -->
		    </tr>
		  </thead>
		  <tbody>
		  <c:forEach = items="${list}" var="vo">
		    <tr>
		      <th scope="row">${vo.num}</th>
		      				          <!--@{ |${board}select| } -->
		      
		      <c:if test="${board != 'notice'}">   			          <!-- paramter 전송 @{URL주소(파라미터명=값, 파라미터명2=값2,...)}  -->
		      <td> 
		     <!--  	<span if="${vo.depth != 0}" each="i : ${#numbers.sequence(1, vo.depth)}" >--</span> -->
		    	<c:catch>
				<c:forEach begin="1" end="${vo.depth}">--</c:forEach>
				</c:catch>
		      	<a href="#" href="./{select(num=${vo.num})}">${vo.title}</a>
		      </td>
		      </c:if>
		      <c:unless="${board != 'notice'}">
		      <td >
		      	<a href="./{select(num=${vo.num})}" >${vo.title}</a>
		      </td>
		      </c:unless>
		      <td>${vo.writer}</td>
		      <td>${vo.regDate}</td>
		      <td>${vo.hit}</td>
		      
		    </tr>
		    </c:forEach>
		   </tbody>
		 </table> 
		 <c:if="${session.member != null}">
		 <div >
		 <c:if="${board =='notice' and session.member.username=='admin'}" >
		 	<a href="#" class="btn btn-primary" href="./insert">WRITE</a>
		 	</c:if>
		 	<c:if="${board !='notice'}">
		 	<a href="#" class="btn btn-primary" href="./insert">WRITE</a>
		 	</c:if>
		 	</c:if>
		 </div>
	</div>
	
	<div class="container d-flex justify-content-center">
		  <ul class="pagination">
		  
		  <c:classappend="${pager.pre? 'disable':'active'}">
		  	<li class="page-item">
		  	<c:if="${pager.pre}">
		  		<a class="page-link pager" href="#" title="${pager.startNum-1}">Previous</a>
		  		</c:if>
		  		<!-- if else ==> if unless 
		  			 unless 사용시에도 조건식은 사용
		  			 if문에 사용한 조건식과동일한 조건식 사용
		  		-->
		  		<c:unless="${pager.pre}">
		  		<span  class="page-link">Previous</span>
				</c:unless>
		  	</c:classappend>
		    <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
	   
	    <li class="page-item"><a class="page-link p" href="#" title="${i}">${i}</a></li>
	   </c:forEach>
	   
	    <c:if test="${pager.next}">
	    <li class="page-item"><a class="page-link p" href="#" title="${pager.lastNum+1}">Next</a></li>
	    </c:if>
		  </ul>
	</div>
	<div class="media-content">
      <img class="med-8x6" alt="새해 밤 평면 겨울 크리스마스 손으로 그린 ​​그림 디지털 페인팅 아트 일러스트 블루 포토샵 새해" width="768" height="579" data-id="5744815" data-optimize-for-bots="true" skip_resize="false" srcset="https://cdn.dribbble.com/users/393235/screenshots/5744815/new_year_night_by_www.digital-space.co.jpg?compress=1&amp;resize=300x225 300w, https://cdn.dribbble.com/users/393235/screenshots/5744815/new_year_night_by_www.digital-space.co.jpg?compress=1&amp;resize=400x300 400w, https://cdn.dribbble.com/users/393235/screenshots/5744815/new_year_night_by_www.digital-space.co.jpg?compress=1&amp;resize=600x450 600w, https://cdn.dribbble.com/users/393235/screenshots/5744815/new_year_night_by_www.digital-space.co.jpg?compress=1&amp;resize=800x600 800w" src="https://cdn.dribbble.com/users/393235/screenshots/5744815/new_year_night_by_www.digital-space.co.jpg?compress=1&amp;resize=400x300" sizes="auto">
  </div>
	
	<!-- footer -->
	<div></div>



</body>
</html>