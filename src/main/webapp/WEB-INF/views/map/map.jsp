<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">

<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="${path}/resources/css/leaflet.css" />
<link rel="stylesheet" href="${path}/resources/css/L.Control.Locate.min.css" />
<link rel="stylesheet" href="${path}/resources/css/map.css" />
<title>Map</title>
</head>
<body>

	<div id="menu">
		<div class="close"></div>
	</div>

	<div class="btn"></div>

	<div onclick="history.back();" class="page_cover"></div>

	<div id="menu">
		<h2 class="BGateLogo">BGate</h2>
		<div class="menuList">
			<ul class="ulmenuList">
				<li><a href=""> 로그인 </a></li>
				<li><a href="">회원가입</a></li>
				<li><a href="/myPage">마이페이지</a></li>
			</ul>
		</div>
		<div onclick="history.back();" class="close"></div>
	</div>
	
	<div id="map"></div>
	<script src="${path}/resources/js/leaflet.js"></script>
	<script src="${path}/resources/js/L.Control.Locate.min.js"></script>
	<script src="${path}/resources/js/map.js"></script>
	<script src="${path}/resources/js/myPage.js"></script>
</body>
</html>