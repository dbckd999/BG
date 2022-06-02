<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="${patd}/resources/css/myPage.css" />
<link rel="stylesheet" href="${patd}/resources/css/footer.css" />
<link rel="stylesheet" href="${path}/resources/css/headLogo.css" />
<link rel="stylesheet" href="${patd}/resources/css/modal.css" />
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
				<div id="loginWelcome"> ${sessionScope.user_nick}님, 환영합니다. </div>
					<li><a href="/logout"> 로그아웃 </a></li>
					<li><a href="/myPage?user_id=${user_id}"> 마이페이지 </a></li>
				</c:if>
				<c:if test="${sessionScope.user_id eq 'admin'}">
					<li><a href="/admin"> 회원관리 페이지 </a></li>
					<li><a href="/adminRestroom"> 화장실관리 페이지 </a></li>
					<li><a href="/adminInsert"> 화장실추가 페이지 </a></li>
				</c:if>
				<li><a href="/boardList">공지사항</a></li>
			</ul>
		</div>
		<div onclick="history.back();" class="close"></div>
	</div>

	<div class="headMain">

		<h1 class="Logo">
			<a href="/map">BGate</a>
		</h1>
	</div>

	<br>
	<br>

	<div id="titleArea">
		<h1>
			<span id="titleh1">[ 정보 수정 ]</span>
		</h1>
	</div>
	<br>

	<div id=center>
		<div id="centerMain">
			<div id="centerLogo"></div>
			<form action="/memberUpdate" method="post" id="memberUpdateForm"
				name="memberUpdateForm">
				<input type="hidden" name="user_no" value="${dto.user_no}">
				<table id="centertable">
					<tr>
						<th>아이디</th>
						<td><input type="text" name="user_id" id="user_id"
							value="${dto.user_id}" readonly></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="password" id="user_pw" name="user_pw">
						</td>
					</tr>
					<tr>
						<th>비밀번호 확인란</th>
						<td><input type="password" id="user_Rpw" name="user_Rpw">
						</td>
					</tr>
					<tr>
						<th>별명</th>
						<td><input type="text" id="user_nick" name="user_nick"
							value="${dto.user_nick}">
							<button type="button" class="w-btn w-btn-indigo inputSize"
								id="nickCheckBtn">중복확인</button> <br></td>
					</tr>
					<tr>
						<th>주소</th>
						<td>
							<input type="text" id="user_addr" name="user_addr" value="${dto.user_addr}">
							<button type="button" onclick="juso_execDaumPostcode()" class="w-btn w-btn-indigo inputSize">도로명주소 찾기</button>
						</td>
						
					</tr>
					<tr>
						<th>email</th>
						<td><input type="email" id="user_email" name="user_email"
							value="${dto.user_email}" readonly></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" id="memberUpdate"
							value="수정하기"></td>
					</tr>
					<tr>
						<td colspan="2"><input type="button" id="delete" name="delete"
							value="탈퇴하기"></td>
					</tr>
				</table>



				<!-- 모달창 -->
				<div class="black_bg"></div>
				<div class="modal_wrap">

					<div id="delete_cont">
						<div id="deletediv">탈퇴하시겠습니까?</div>
						<button type="button" id="delete_fin" name="delete_fin">
							탈퇴하기</button>
						<button type="button" id="cancel">취소</button>
					</div>
				</div>
			</form>
		</div>
	</div>




	<div id="footer">
		<ul>
			<li>
				<h3>BGate</h3>
			</li>
			<li>문의 사항 <br> 문의: 게시판 혹은 email <br> OPEN : MON-FRI
				09:00-24:00 <br> EVERY WEEKEND, HOLIDAY OFF
			</li>
			<li id="liemail">https://github.com/dbckd999/BG/issues <br>
			</li>
		</ul>
	</div>

	<script src="${path}/resources/js/mypage_modal.js"></script>
	<script src="${path}/resources/js/myPage.js"></script>
	<script src="${path}/resources/js/slide.js"></script>
	<script src="${path}/resources/js/member.js"></script>
	<script src="${path}/resources/js/juso.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</body>
</html>