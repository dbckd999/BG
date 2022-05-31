<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="${path}/resources/css/leaflet.css" />
<link rel="stylesheet" 	href="${path}/resources/css/L.Control.Locate.min.css" />
<link rel="stylesheet" href="${path}/resources/css/map.css" />
<link rel="stylesheet" href="${path}/resources/css/slideMenu.css" />
<link rel="stylesheet" href="${path}/resources/css/modal.css" />
<link rel="stylesheet" href="${path}/resources/css/mapComment.css" />
<title>Map</title>
</head>
<body>
	<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
	<!-- 메뉴바 슬라이드 -->
	<div id="menu">
		<div class="close"></div>
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
					<div id="loginWelcome"> ${sessionScope.user_nick}님, 환영합니다. </div>
					<li><a href="/logout"> 로그아웃 </a></li>
					<li><a href="/myPage?user_id=${user_id}"> 마이페이지 </a></li>
				</c:if>
				<c:if test="${sessionScope.user_id eq 'admin'}">
					<li><a href="/admin"> 회원관리 페이지 </a></li>
					<li><a href="/adminRestroom"> 화장실관리 페이지 </a></li>
					<li><a href="/adminInsert"> 화장실추가 페이지 </a></li>
				</c:if>
				<li><a href="/boardList">게시판</a></li>
			</ul>
		</div>
		<div onclick="history.back();" class="close"></div>
	</div>
	<!-- 메뉴바 슬라이드 fin -->
	
	<!-- 지도 -->
	<div id="map"></div>
	
	<!-- 화장실 상세정보 슬라이드 -->
	<div id="infoSlide">
		<button class="infoClose">닫기</button>
		<ul id="restroomInfo">
			<li>화장실 종류	<br><input type="text" id="result_category" readonly>  </li>  
			<li>화장실명	 <br><input type="text" id="result_restroom_name" readonly></li>
			<li>소재지도로명주소 <br>	<input type="text" id="result_address_load" readonly></li>
			<li>소재지지번주소	<br><input type="text" id="result_address_location" readonly></li>
			<li>남녀공용화장실여부 	<br><input type="text" id="result_is_public_gender" readonly></li>
			<li>대변기수	<br> <input type="text" id="result_c_man_closet" readonly></li>
			<li>소변기수	<br> <input type="text" id="result_c_man_urinal"readonly> </li>
			<li>남성용-장애인용대변기수<br>	<input type="text" id="result_c_man_disable_person_closet" readonly></li>
			<li>남성용-장애인용소변기수<br>	<input type="text" id="result_c_man_disable_person_urinal" readonly></li>
			<li>남성용-어린이용대변기수<br>	<input type="text" id="result_c_man_child_closet" readonly></li>
			<li>남성용-어린이용소변기수<br>	 <input type="text" id="result_c_man_child_urinal" readonly></li>
			<li>여성용-대변기수<br> 	<input type="text" id="result_c_woman_closet" readonly></li>
			<li>여성용-장애인용대변기수<br> 	<input type="text" id="result_c_woman_disable_person_urinal" readonly></li>
			<li>여성용-어린이용대변기수<br>  <input type="text" id="result_c_woman_child_closet" readonly></li>
			<li>관리기관명<br> <input type="text" id="result_manage_group_name" readonly></li>
			<li>전화번호	<br><input type="text" id="result_call_number" readonly></li>
		    <li>개방 요일<br> <input type="text" id="result_open_day_info" readonly></li>
			<li>설치연월	ㅁ<br> <input type="text" id="result_installation_date" readonly></li>
		</ul>
	</div>
	
	<div class="black_background"></div>
	<div class="cmt_modal_wrap">
		<div class="modal_close">
			<a id="cmt_modal_close" href="#">close</a>
		</div>
		<c:if test="${not empty sessionScope.user_id}">
<!-- 		댓글창 -->
		<div>
			<!-- 화장실번호, 유저번호, 댓글 -->
				<span><c:out value="${user_id}"></c:out></span><br>
				<input type="hidden" name="c_user_no" value="${user_no}" />
				<textarea class="cmt_area" id="cmt_content" style="margin-left:1px;"></textarea>
				<button onclick="groupingInsertRestroomComment()">댓글 입력</button>
			
		</div>
		
		</c:if>
		<c:if test="${empty sessionScope.user_id}">
		<span>===로그인 후 댓글작성이 가능합니다.===</span>
		</c:if>
		<table id="restroom_comment_modal"></table>
	</div>
	<script src="${path}/resources/js/map_modal.js"></script>
	<script src="${path}/resources/js/leaflet.js"></script>
	<script src="${path}/resources/js/L.Control.Locate.min.js"></script>
	<script src="${path}/resources/js/map.js"></script>
	<script src="${path}/resources/js/mapComment.js"></script>
	<script src="${path}/resources/js/slide.js"></script>
</body>
</html>