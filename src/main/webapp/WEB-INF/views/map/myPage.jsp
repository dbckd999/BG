
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>

<link rel="stylesheet" href="${path}/resources/css/map.css" />
<link rel="stylesheet" href="${path}/resources/css/myPage.css" />
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
				<li><a href=""> 로그인 </a></li>
				<li><a href="">회원가입</a></li>
				<li><a href="/myPage">마이페이지</a></li>
			</ul>
		</div>
		<div onclick="history.back();" class="close"></div>
	</div>

	<div class="headMain">
		<div class="header">
			<h1 class="Logo">BGate</h1>
		</div>
	</div>


	<br>
	<br>
	<div id="titleArea">
		<h1>
			<span id="titleh1">[ 회원 정보 수정 ]</span>
		</h1>
	</div>
	<br>

	<div id="center">
		<div id="center1">
			<h1>기본정보</h1>
		</div>
		<table id="centertable">
			<tr>
			   <th>아이디</th>
				<td> <input type="text" id="bg_id"></td>
			</tr>
			<tr>
			<th>비밀번호</th>
				<td >  <input type="text" id="bg_pw">  </td>
			</tr>

			<tr>
			<th>별명</th>
				<td>  <input type="text" id="bg_nick"></td>
			</tr>
			
			<tr>
			<th>주소</th>
			<td> <input type="text" id="bg_address"></td>
			</tr>
			
			<tr>
			<th>이메일</th>
			<td>  <input type="email" id="bg_email">	</td>
			</tr>
		
            

		</table>

	</div>


	<script src="${path}/resources/js/myPage.js"></script>
</body>
</html>