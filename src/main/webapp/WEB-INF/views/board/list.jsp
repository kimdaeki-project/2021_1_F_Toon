<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

<div class="container">
	
			<h2>${board} List</h2>
			<div class="media-content">
      <img class="med-8x6" alt="새해 밤 평면 겨울 크리스마스 손으로 그린 ​​그림 디지털 페인팅 아트 일러스트 블루 포토샵 새해" width="768" height="579" data-id="5744815" data-optimize-for-bots="true" skip_resize="false" srcset="https://cdn.dribbble.com/users/393235/screenshots/5744815/new_year_night_by_www.digital-space.co.jpg?compress=1&amp;resize=300x225 300w, https://cdn.dribbble.com/users/393235/screenshots/5744815/new_year_night_by_www.digital-space.co.jpg?compress=1&amp;resize=400x300 400w, https://cdn.dribbble.com/users/393235/screenshots/5744815/new_year_night_by_www.digital-space.co.jpg?compress=1&amp;resize=600x450 600w, https://cdn.dribbble.com/users/393235/screenshots/5744815/new_year_night_by_www.digital-space.co.jpg?compress=1&amp;resize=800x600 800w" src="https://cdn.dribbble.com/users/393235/screenshots/5744815/new_year_night_by_www.digital-space.co.jpg?compress=1&amp;resize=400x300" sizes="auto">
  </div>
		
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th>NUM</th>
					<th>TITLE</th>
					<th>WRITER</th>
					<th>DATE</th>
					<th>HIT</th>
				</tr>
			</thead>
			
			<tbody>
			<c:forEach items="${list}" var="vo" >
				<tr>
					<td>${vo.num}</td>
					<td><a href="./${board}Select?num=${vo.num}">
					
					<c:catch>
					<c:forEach begin="1" end="${vo.depth}">--</c:forEach>
					</c:catch>
					${vo.title}
					</a></td>
					<td>${vo.writer}</td>
					<td>${vo.regDate}</td>
					<td>${vo.hit}</td>
				</tr>
			</c:forEach>
			</tbody>
		
		</table>
	</div>
	
	<div class="container">
	  <ul class="pagination">
	  
	  <c:if test="${pager.pre}">	
	    <li class="page-item"><a class="page-link p" href="#" title="${pager.startNum-1}">Previous</a></li>
	   </c:if>
	   
	   <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
	   
	    <li class="page-item"><a class="page-link p" href="#" title="${i}">${i}</a></li>
	   </c:forEach>
	   
	    <c:if test="${pager.next}">
	    <li class="page-item"><a class="page-link p" href="#" title="${pager.lastNum+1}">Next</a></li>
	    </c:if>
	  </ul>
	  
	<div class="input-group mt-3 mb-3">
	<form id="frm" action="./${board}List" class="form-inline">
		<input type="hidden" name="curPage" value="1" id="curPage">
	  <div class="input-group-prepend">
	   <select class="form-control" name="kind" id="kind" >
	    <option class="sel">Title</option>
	    <option class="sel">Contents</option>
	    <option class="sel">Writer</option>
	  </select>
	  </div>
	  <input type="text" class="form-control" name="search" id="search" value="${pager.search}" placeholder="">
	    <div class="input-group-append">
	    <button class="btn btn-success" type="submit">Search</button>
	  </div>
	 </form> 
	</div> 
  
  <a href="./${board}Insert" class="btn  btn-primary" role="button">Write</a>
<script type="text/javascript">
	let kind= '${pager.kind}';//Title, Writer, Contents
	$(".sel").each(function() {
		let t = $(this).text();//Title, Writer, Contents
		if(t == kind){
			$(this).prop("selected", true);
		}
	});
	
	$(".p").click(function () {
		let curPage = $(this).attr("title");
		$("#curPage").val(curPage);
		let search= '${pager.search}';
		$("#frm").submit();
		
		
		/* $("#curPage").val(curPage);
		$("#kind").val('${pager.kind}');
		$("#search").val(${pager.search}');
		$("#frm").submit(); */
		
		//location.href="./${board}List?curPage="+curPage+"&kind=${pager.kind}&search=${pager.search}";
		
	});
</script>  
</div>
</body>
</html>