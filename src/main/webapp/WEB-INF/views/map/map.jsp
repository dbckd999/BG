<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">

<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="${path}/resources/css/leaflet.css" />
<link rel="stylesheet"
	href="${path}/resources/css/L.Control.Locate.min.css" />
<link rel="stylesheet" href="${path}/resources/css/map.css" />
<link rel="stylesheet" href="${path}/resources/css/slideMenu.css" />
<title>Map</title>
</head>
<body>


	<!-- 좌측상단 메뉴 아이콘 -->
	<div class="btn"></div>
	<!--  슬라이드 메뉴 -->
	<div id="menu">
		<div class="close"></div>
	</div>
	<div onclick="history.back();" class="page_cover"></div>
	<div id="menu">
		<h2 class="BGateLogo">BGate</h2>
		<div class="menuList">
			<ul class="ulmenuList">
				<c:if test="${empty sessionScope.user_id}">
					<li><a href="/login"> 로그인 </a></li>
					<li><a href="/memberInsert">회원가입</a></li>
				</c:if>

				<c:if test="${not empty sessionScope.user_id}">
					<li><a href="/logout"> 로그아웃 </a></li>
					<li><a href="/myPage?user_id=${user_id}"> 마이페이지 </a></li>
				</c:if>
			</ul>
		</div>
		<div class="btn"></div>
		<div onclick="history.back();" class="page_cover"></div>

		<div id="menu">
			<h2 class="BGateLogo">
				<a href="/map">BGate</a>
			</h2>
			<div class="menuList">
				<ul class="ulmenuList">
					<c:if test="${empty sessionScope.user_id}">
						<li><a href="/login"> 로그인 </a></li>
						<li><a href="/memberInsert">회원가입</a></li>
					</c:if>
					
					<c:if test="${not empty sessionScope.user_id}">
						<li><a href="/logout"> 로그아웃 </a></li>
						<li><a href="/myPage?user_id=${user_id}"> 마이페이지 </a></li>
					</c:if>
				</ul>
			</div>
			<div onclick="history.back();" class="close"></div>
		</div>
	</div>

	<!-- 지도 -->
	<div id="map"></div>

	<!-- 지도 위 ui -->
	<!-- 1. n미터 리스트 제작(최초기준은 1000미터) -->
	<!-- 2. 1키로미터 반경 원 띄우기 -->
	<script>
	function measure(lat1, lon1, lat2, lon2){  // generally used geo measurement function
	    const R = 6378.137; // Radius of earth in KM
	    var dLat = lat2 * Math.PI / 180 - lat1 * Math.PI / 180;
	    var dLon = lon2 * Math.PI / 180 - lon1 * Math.PI / 180;
	    var a = Math.sin(dLat/2) * Math.sin(dLat/2) +
	    Math.cos(lat1 * Math.PI / 180) * Math.cos(lat2 * Math.PI / 180) *
	    Math.sin(dLon/2) * Math.sin(dLon/2);
	    var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
	    var d = R * c;
	    return d * 1000; // meters
	}
	
	</script>

	<script src="${path}/resources/js/leaflet.js"></script>
	<script src="${path}/resources/js/L.Control.Locate.min.js"></script>
	<script src="${path}/resources/js/map.js"></script>
	<script src="${path}/resources/js/myPage.js"></script>
</body>
</html>