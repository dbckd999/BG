<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://unpkg.com/leaflet@1.8.0/dist/leaflet.css"
	integrity="sha512-hoalWLoI8r4UszCkZ5kL8vayOGVae1oxXe/2A4AO6J9+580uKHDO3JdHb7NzwwzK5xr/Fs0W40kiNHxM9vyTtQ=="
	crossorigin="" />
<script src="https://unpkg.com/leaflet@1.8.0/dist/leaflet.js"
	integrity="sha512-BB3hKbKWOc9Ez/TAwyWxNXeoV9c1v6FIeYiBieIWkpLjauysF18NzgR1MBNBXf8/KABdlkX68nAhlwcDFLGPCQ=="
	crossorigin=""></script>
<link rel="stylesheet" href="${path}/resources/css/map.css" />
<title>Map</title>
</head>
<body>

	<div id="menu">
		 
		
		<div class="close"></div>
	</div>
	
	
	<div class="btn"></div>

	<div class="btn"></div>
	
	
	<div onclick="history.back();" class="page_cover"></div>
	
	<div id="menu">
	   <h2 class="BGateLogo">BGate</h2>
	 <div class="menuList">
	 <ul class="ulmenuList">
          <li> <a href=""> 로그인 </a></li>
          <li> <a href="">회원가입</a></li>
          <li><a href="/myPage">마이페이지</a></li>

		  </ul>
		  </div>
	<div onclick="history.back();" class="close"></div>
	</div>


	<div id="map"> 	
	</div>




	<script src="${path}/resources/js/myPage.js"></script>
</body>
</html>