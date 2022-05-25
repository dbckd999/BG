<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${path}/resources/css/memberInsert.css" />
<link rel="stylesheet" href="${path}/resources/css/slideMenu.css" />
<link rel="stylesheet" href="${path}/resources/css/headLogo.css" />
<link rel="stylesheet" href="${path}/resources/css/footer.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<title>Map</title>
</head>
<body>
	<script src="https://code.jquery.com/jquery-3.6.0.js"
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
		crossorigin="anonymous"></script>
		
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
				<li><a href="/admin"> 회원관리 페이지 </a></li>
				<li><a href="/adminRestroom"> 화장실관리 페이지 </a></li>
				<li><a href="/adminInsert"> 화장실추가 페이지 </a></li>
				</c:if>
				<li><a href="/boardList">게시판</a></li>
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
			<span id="titleh1">[ 회원가입 ]</span>
		</h1>
	</div>
	<br>

	<div id=center>
		<div id="centerMain">
			<div id="centerLogo"></div>
			<form action="/memberInsert" method="post" id="registForm">
				<table id="centertable">
					<tr>
						<th>아이디</th>
						<td><input type="text" id="user_id" name="user_id" onkeydown="fn_press_han(this);">
							<button type="button" class="w-btn w-btn-indigo inputSize" id="idCheckBtn">중복확인</button><br></td>
						<script>
							function fn_press_han(obj) {
								//좌우 방향키, 백스페이스, 딜리트, 탭키에 대한 예외
								if (event.keyCode == 8 || event.keyCode == 9
										|| event.keyCode == 37
										|| event.keyCode == 39
										|| event.keyCode == 46)
									return;
								//obj.value = obj.value.replace(/[\a-zㄱ-ㅎㅏ-ㅣ가-힣]/g, '');
								obj.value = obj.value.replace(/[\ㄱ-ㅎㅏ-ㅣ가-힣]/g,'');
							}
						</script>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="text" id="user_pw" name="user_pw"
							placeholder="비밀번호는 영문자+숫자+특수문자 조합으로 8~20자리 사용해야 합니다."><br></td>
					</tr>

					<tr>
						<th></th>
						<td><input type="text" id="user_Rpw" name="user_Rpw" placeholder="비밀번호 확인"><br></td>
					</tr>

					<tr>
						<th>별명</th>
						<td><input type="text" id="user_nick" name="user_nick">
							<button type="button" class="w-btn w-btn-indigo inputSize" id="nickCheckBtn">중복확인</button><br></td>
					</tr>
					<tr>
						<th>주소</th>
						<td>
						<input type="text" id="user_addr" name="user_addr">
							<button type="button" onclick="juso_execDaumPostcode()" class="w-btn w-btn-indigo inputSize">도로명주소 찾기</button>
						</td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input type="email" id="user_email" name="user_email">
							<button type="button" class="w-btn w-btn-indigo inputSize" id="emailCheckBtn">중복확인</button> <br></td>
			
					<tr>
					 <td colspan="2"><input  type="submit" name="regist" id="regist" value="가입하기"></td>
					</tr>
				</table>
		
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
	
	<script src="${path}/resources/js/member.js"></script>
	<script src="${path}/resources/js/login.js"></script>
	<script src="${path}/resources/js/juso.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>