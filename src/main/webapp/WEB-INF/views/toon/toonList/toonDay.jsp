<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- BootStrap -->    
<!--     <link rel="icon" href="images/favicon.png" type="image/png">  위에 로고-->
    <c:import url="../../fragments/bootstrap.jsp"></c:import>
    <title>WebToon</title>
   
	<link rel="stylesheet" href="../css/header.css">
	<link rel="stylesheet" href="../css/toonDay.css">
</head>

<body>
	<c:import url="../../fragments/header.jsp"></c:import>
	
	
	<div class="view_type">			
             <table>
             <tr >
             	<td><a href="/">조회순</a></td>
             
              <p>	<td><a href="/">업데이트순</a></td>    </p>         
                
                <td><a href="/">별점순</a></td>
             </tr>
           
             </table>
			</div>
	
	<br>
	<br>
	<br>
	
<div class="grid">
	
	<div class="grid-item a">
	
	<table>
	
	<tr><th><h2>&emsp;&emsp;&emsp;<a href="./toonList/dayList" class="mon" >월요일</a></h2></th><tr>
	
	<tr>
		<td align="right" ><img class="img-fluid" src="../images/webtoon/1mon/sin.jpg" alt=""  >
		<p><a class="mon1" href="/">신의탑</a><br> 
		<a class="mon1" href="/">SIU</a></p>	

		</td>	
	</tr>
	
	<tr>
		<td align="right" ><img class="img-fluid" src="../images/webtoon/1mon/cham.jpg" alt="">
		<p><a class="mon1" href="/">참교육</a><br> 
		<a class="mon1" href="/"> 채용택/한가람</a></p>
		</td>
		
	</tr>

	
	
	

	
	</table>
	
	</div>



	<div class="grid-item b">
	<table>
	<th><h2>&emsp;&emsp;&emsp;<a href="./toonList/dayList" class="tue">화요일</a></h2></th>
	
	<tr>
		<td align="right"><img class="img-fluid" src="../images/webtoon/2tue/여신.jpg" alt="" >

		<p><a href="/">여신강림</a><br> 
		<a href="/">야옹이</a></p>
		
		</td>	
	</tr>
	
	
	
	<tr>
		<td align="right"><img class="img-fluid" src="../images/webtoon/2tue/바른.jpg" alt="">
		<p><a href="/">바른 연애 길잡이</a><br> 
		<a href="/"> 남수 </a></p>
		</td>
		
	</tr>
	
		
	</tr>
	</table>
	</div>


	<div class="grid-item c">
	<table>
	<th><h2>&emsp;&emsp;&emsp;<a href="./toonList/dayList" class="wen">수요일</a></h2></th>
	
	<tr>
		<td align="right"><img class="img-fluid" src="../images/webtoon/3wen/전지.jpg" alt="" >

		<p><a href="/">전지적 독자 시점</a><br> 
		<a href="/">UMI / 슬리피-C</a></p>
		
		</td>	
	</tr>
	
	
	
	<tr>
		<td align="right"><img class="img-fluid" src="../images/webtoon/3wen/헬퍼.jpg" alt="">
		<p><a href="/">헬퍼 2 : 킬베로스</a><br> 
		<a href="/"> 삭 </a></p>
		</td>
		
	</tr>
	

	</table>
	</div>


	<div class="grid-item d">
	<table>
	<th><h2>&emsp;&emsp;&emsp;<a href="./toonList/dayList" class="thu">목요일</a></h2></th>
	
	<tr>
		<td align="right"><img class="img-fluid" src="../images/webtoon/4the/독립.jpg" alt="" >

		<p><a href="/">독립일기</a><br> 
		<a href="/">자까</a></p>
		
		</td>	
	</tr>
	
	
	
	<tr>
		<td align="right"><img class="img-fluid" src="../images/webtoon/4the/복서.jpg" alt="">
		<p><a href="/">더 복서</a><br> 
		<a href="/"> 정지훈</a></p>
		</td>
		
	</tr>
	

	</table>
	</div>
	
	
	<div class="grid-item e">
	<table>
	<th><h2>&emsp;&emsp;&emsp;<a href="./toonList/dayList" class="fri">금요일</a></h2></th>
	
	<tr>
		<td align="right"><img class="img-fluid" src="../images/webtoon/5fri/스쿨.jpg" alt="" >

		<p><a href="/">갓 오브 하이스쿨</a><br> 
		<a href="/">박용제</a></p>
		
		</td>	
	</tr>
	
	
	
	<tr>
		<td align="right"><img class="img-fluid" src="../images/webtoon/5fri/외모.jpg" alt="">
		<p><a href="/">외모지상주의</a><br> 
		<a href="/"> 박태준</a></p>
		</td>
		
	</tr>
	

	</table>
	</div>
	
	
	<div class="grid-item f">
	<table>
	<th><h2>&emsp;&emsp;&emsp;<a href="./toonList/dayList" class="sat">토요일</a></h2></th>
	
	
	<tr>
		<td align="right"><img class="img-fluid" src="../images/webtoon/6sat/프리.jpg" alt="" >

		<p><a href="/">프리드로우</a><br> 
		<a href="/">전선욱</a></p>
		
		</td>	
	</tr>
	
	
	
	<tr>
		<td align="right"><img class="img-fluid" src="../images/webtoon/6sat/호랑.jpg" alt="">
		<p><a href="/">호랑이형님</a><br> 
		<a href="/"> 이상규</a></p>
		</td>
		
	</tr>
	

	</table>
	</div>
	
	
	<div class="grid-item g">
	<table>
	<th><h2>&emsp;&emsp;&emsp;<a href="./toonList/dayList" class="sun">일요일</a></h2></th>
	
	<tr>
		<td align="right"><img class="img-fluid" src="../images/webtoon/7sun/싸움.jpg" alt="" >

		<p><a href="/">싸움독학</a><br> 
		<a href="/">박태준/김정현</a></p>
		
		</td>	
	</tr>
	
	
	
	<tr>
		<td align="right"><img class="img-fluid" src="../images/webtoon/7sun/영웅.jpg" alt="">
		<p><a href="/">약한 영웅</a><br> 
		<a href="/"> 서패스/김진석</a></p>
		</td>
		
	</tr>
	

	</table>
	</div>
	
</div>


</body>
</html>