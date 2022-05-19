<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="${patd}/resources/css/slideMenu.css" />
<link rel="stylesheet" href="${patd}/resources/css/footer.css" />
<link rel="stylesheet" href="${patd}/resources/css/admin.css" />
<link rel="stylesheet" href="${path}/resources/css/headLogo.css" />

<title>Map</title>
</head>
<body>


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
					<li><a href="/logout"> 로그아웃 </a></li>
					<li><a href="/myPage?user_id=${user_id}"> 마이페이지 </a></li>
				</c:if>
				<c:if test="${sessionScope.user_id eq 'admin'}">
					<li><a href="/admin"> 어드민페이지 </a></li>
							<li><a href="/admininsert"> 어드민페이지 </a></li>
				</c:if>
			</ul>
		</div>
		<div onclick="history.back();" class="close"></div>
	</div>

	<div class="headMain">
		<h1 class="Logo">
			<a href="/map">BGate</a>
		</h1>
	</div>

	<div id="titleArea">
		<h1 id="titleh1">[ 어드민 페이지 ]</h1>
	</div>
	<div id="adminCenter">
		<h1>화장실 추가</h1>
    </div>
    
     <div>
		<form id="moveForm" method="get">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
        <input type="hidden" name="amount" value="${pageMaker.cri.amount }"> 
		</form>


	</div>


    
    <form action="adminInsert" id="r_Insert_Form" name="r_Insert_Form" method="post">
    <table>
    <tr>
    <td>화장실 종류</td>
    <td><input type="text" id="category" name="category" placeholder="공중화장실 or 개방화장실"></td>
    </tr>
    
    <tr>
    <td>화장실 명</td>
    <td><input type="text" id="restroom_name" name="restroom_name"></td>
    </tr>
    
    <tr>
    <td>도로명 주소</td>
    <td><input type="text" id="address_load" name="address_load"></td>
    </tr>
    
    <tr>
    <td>지번 주소</td>
    <td><input type="text" id="address_location" name="address_location"></td>
    </tr>
    
    <tr>
    <td>남녀 공용 화장실 여부</td>
    <td><input type="text" id="is_public_gender" name="is_public_gender" placeholder="공용 : 0, 공용아님 : 1"></td>
    </tr>
    
    <tr>
    <td>남성용 대변기수</td>
    <td><input type="text" id="c_man_closet" name="c_man_closet"></td>
    </tr>
    
    <tr>
    <td>남성용 소변기수</td>
    <td><input type="text" id="c_man_urinal" name="c_man_urinal"></td>
    </tr>
    
    <tr>
    <td>남성용 장애인용대변기수</td>
    <td><input type="text" id="c_man_disable_person_closet" name="c_man_disable_person_closet"></td>
    </tr>
    
    <tr>
    <td>남성용-장애인용소변기수</td>
    <td><input type="text" id="c_man_disable_person_urinal" name="c_man_disable_person_urinal"></td>
    </tr>
    
    <tr>
    <td>남성용-어린이용대변기수</td>
    <td><input type="text" id="c_man_child_closet" name="c_man_child_closet"></td>
    </tr>
    
    <tr>
    <td>남성용-어린이용소변기수</td>
    <td><input type="text" id="c_man_child_urinal" name="c_man_child_urinal"></td>
    </tr>
    
    <tr>
    <td>여성용-대변기수</td>
    <td><input type="text" id="c_woman_closet" name="c_woman_closet"></td>
    </tr>
    
    <tr>
    <td>여성용-장애인용대변기수</td>
    <td><input type="text" id="c_woman_disable_person_urinal" name="c_woman_disable_person_urinal"></td>
    </tr>
    
    <tr>
    <td>여성용-어린이용대변기수</td>
    <td><input type="text" id="c_woman_child_closet" name="c_woman_child_closet"></td>
    </tr>
    
    <tr>
    <td>관리기관명</td>
    <td><input type="text" id="manage_group_name" name="manage_group_name"></td>
    </tr>
    
    <tr>
    <td>전화번호</td>
    <td><input type="text" id="call_number" name="call_number" placeholder="' - ' 미포함으로 저장합니다."></td>
    </tr>
    
    <tr>
    <td>개방 요일</td>
    <td><input type="text" id="open_day_info" name="open_day_info"></td>
    </tr>
    
    <tr>
    <td>개방시간</td>
    <td><input type="text" id="opening_time" name="opening_time" placeholder="00:00:00"></td>
    </tr>
    
    <tr>
    <td>폐쇄시간</td>
    <td><input type="text" id="closing_time" name="closing_time" placeholder="00:00:00"></td>
    </tr>
    
    <tr>
    <td>설치연월</td>
    <td><input type="text" id="installation_date" name="installation_date"></td>
    </tr>
    
    <tr>
    <td>WGS84위도</td>
    <td><input type="text" id="wgs84_latitude" name="wgs84_latitude" placeholder="(WGS84는 좌표계 중 하나). 소수점 8자리 가로"></td>
    </tr>
    
    <tr>
    <td>WGS84경도</td>
    <td><input type="text" id="wgs84_longitude" name="wgs84_longitude" placeholder="세로"></td>
    </tr>
    
    <tr>
    <td>화장실소유구분</td>
    <td><input type="text" id="owner_name_group" name="owner_name_group" placeholder="소유 단체 혹은 개인"></td>
    </tr>
    
    <tr>
    <td>화장실설치장소유형</td>
    <td><input type="text" id="installation_details" name="installation_details" placeholder="설치 된 장소 간략설명"></td>
    </tr>
    
    <tr>
    <td>오물처리방식</td>
    <td><input type="text" id="sewage_care_processing" name="sewage_care_processing" placeholder="수거식=푸세식"></td>
    </tr>
    
    <tr>
    <td>비상벨설치여부</td>
    <td><input type="text" id="have_emergency_bell" name="have_emergency_bell" placeholder="있음 : 0, 없음 : 1"></td>
    </tr>
    
    <tr>
    <td>비상벨설치장소</td>
    <td><input type="text" id="emergency_bell_location" name="emergency_bell_location"></td>
    </tr>
    
    <tr>
    <td>화장실입구CCTV설치유무</td>
    <td><input type="text" id="have_entrance_cctv" name="have_entrance_cctv" placeholder="있음 : 0, 없음 : 1"></td>
    </tr>
    
    <tr>
    <td>기저귀교환대유무</td>
    <td><input type="text" id="have_diaper_switchboard" name="have_diaper_switchboard" placeholder="있음 : 0, 없음 : 1"></td>
    </tr>
    
    <tr>
    <td>기저귀교환대장소: 있다면 써 넣을곳.</td>
    <td><input type="text" id="diaper_switchboard_location" name="diaper_switchboard_location"></td>
    </tr>
    
    <tr>
    <td>리모델링연월</td>
    <td><input type="text" id="remodeling_date" name="remodeling_date"></td>
    </tr>
    
    <tr>
    <td>데이터기준일자: 공공데이터포털에서 추가된 날짜</td>
    <td><input type="text" id="db_update_date" name="db_update_date"></td>
    </tr>
    
    </table>
    
    <input type="submit" id="regist" name="regist" value="화장실 추가하기">
	</form>
	<script src="${path}/resources/js/admin.js"></script>
	<script src="${path}/resources/js/mypage_modal.js"></script>
</body>
</html>