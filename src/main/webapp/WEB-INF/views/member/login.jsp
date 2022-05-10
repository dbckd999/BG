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

<link rel="stylesheet" href="${path}/resources/css/slideMenu.css" />
<link rel="stylesheet" href="${path}/resources/css/login.css" />
<link rel="stylesheet" href="${path}/resources/css/footer.css" />
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
					<li><a href="/myPage"> 마이페이지 </a></li>
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
	<br>
	<br>

	<div id="titleArea">
		<h1 id="titleh1">[ 로그인 ]</h1>
	</div>

	<div id=center>
		<div id="centerMain">
			<div id="centerLogo"></div>

			<form action="login" method="Post" id="loginForm" name="loginForm">
				<table id="centertable">

					<tr>

						<td><input type="text" id="user_id" name="user_id"
							placeholder="아이디"></td>
					</tr>
					<tr>

						<td><input type="password" id="user_pw" name="user_pw"
							placeholder="패스워드"></td>
					</tr>

				</table>
				<input type="submit" id="login" name="login"
					class="w-btn w-btn-indigo inputSize" value="로그인하기">

			</form>
		</div>
		<input type="button" id="regist" name="regist" value="회원가입"
			onclick="location.href='/memberInsert'">

	</div>
	<div id=footer>
		<div id="footerMain">
			<ul>
				<li>
					<h3>BGate</h3>
				</li>
				<li id="footerMesege">문의 사항 <br> 문의: 게시판 혹은 email <br>
					OPEN : MON-FRI 09:00-24:00 <br> EVERY WEEKEND, HOLIDAY OFF
				</li>
				<li id="liemail">https://github.com/dbckd999/BG/issues <br></li>
			</ul>
		</div>
	</div>

	<script type="text/javascript">
		<c:if test="${msgID==false}">
		alert('없는 아이디입니다.');
		</c:if>

		<c:if test="${msgPW==false}">
		alert('비밀번호가 다릅니다.');
		</c:if>
	</script>

	<%-- <script src="${path}/resources/js/myPage.js"></script> --%>
	<script src="${path}/resources/js/login.js"></script>
</body>
</html>