<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<c:import url="./fragments/bootstrap.jsp"></c:import>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a20cd5f8a90665593bce8fe4ee970b80"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">

<title>찾아오시는 길</title>

<style type="text/css">
		.come{
		position: relative;
        left: 850px;
        top: -490px;
		}
		.come2{
		position: relative;
        left: 850px;
        top: -390px;
		}

</style>

</head>
<body>
	
<c:import url="./fragments/header.jsp"></c:import>


<div class="container">
<h2>회사 위치</h2>
<div id="map" style="width:600px;height:500px;"></div>
</div>

<div class="come">
	<h2>오시는 길</h2>
	<p>경기도 고양시 행신동 소원로 157 소만마을 612-1307</p>
</div>

<div class="come2">
	<h2>교통편</h2>
	<p>지하철 : 경의중앙선 행신역 하차(2번 출구) -> 소만 6단지 방향 도보로 7분</p>
	<p>버스 : 행신역 정류장 하차 -> 소만 6단지 방향 도보로 7분</p>
	<p>-버스노선-</p>
	<p>일반 : 11, 72, 97, 850, 82</p>
	<p>좌석 : 85, 870, 921, 871</p>
	<p>마을 : 021, 023, 024A, 024B, 030</p>
</div>

<script type="text/javascript">
	
	getMap(37.612139, 126.834139);
	
	function getMap(lat, lng) {
		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center: new kakao.maps.LatLng(lat, lng), //지도의 중심좌표.
			level: 3 //지도의 레벨(확대, 축소 정도)
		};
		var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	}
	
</script>

<c:import url="./fragments/footer.jsp"></c:import>

</body>
</html>