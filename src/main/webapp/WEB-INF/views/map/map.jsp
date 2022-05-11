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
<link rel="stylesheet" href="${path}/resources/css/modal.css" />
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

					<c:if test="${sessionScope.user_id eq 'admin'}">
					<%-- <li><a href="/logout"> 로그아웃 </a></li>
					<li><a href="/myPage?user_id=${user_id}"> 마이페이지 </a></li> --%>
						<li><a href="/admin"> 어드민페이지 </a></li>
					</c:if>
				</ul>
			</div>
			<div onclick="history.back();" class="close"></div>
		</div>
	</div>
	<!-- 지도 -->
	<div id="map"></div>

	<!-- 모달창 -->
	<div class="black_background"></div>
	<div class="modal_wrapper">
		<div class="modal_close">
			<a href="#">close</a>
		</div>

		<div id="more_info"></div>
	</div>
	<script src="${path}/resources/js/info_modal.js"></script>
	<script src="${path}/resources/js/leaflet.js"></script>
	<script src="${path}/resources/js/L.Control.Locate.min.js"></script>
	<script src="${path}/resources/js/map.js"></script>
	<script src="${path}/resources/js/myPage.js"></script>
</body>

</html>