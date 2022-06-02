<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="${patd}/resources/css/slideMenu.css" />
<link rel="stylesheet" href="${patd}/resources/css/footer.css" />
<link rel="stylesheet" href="${path}/resources/css/headLogo.css" />
<style>
body {
	margin: 0;
}

.wrap_content {
	border: none;
	border-bottom : 1px solid gray;
	padding: 10px;
}

.wrap_boardList {
	width: 100%;
	text-align: center;
}

.modify_wrap {
	display: inline-block;
	float: right;
}

.wrap_title{
	display: inline-block;
}

.board_buttons{
	font-size: 1.5em;
    padding: 20px;
    border: none;
    margin: 5px;
}
</style>
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
		
		</h1>
	</div>
	<br>

	<div class="wrap_content">
		<div class="wrap_title">
			<h1>${dto.b_title}</h1>
			<span>${dto.b_writer} | ${dto.b_regDate}</span>
		</div>
		<c:if test="${sessionScope.user_id == dto.b_writer}">
			<div class="modify_wrap">
				<button class="board_buttons" onclick="location.href='/boardUpdate?b_no=${dto.b_no}'">수정</button>
				<span> | </span>
				<button class="board_buttons" onclick="location.href='/boardDelete?b_no=${dto.b_no}'">삭제</button>
			</div>
		</c:if>
		<hr style="clear: both">
		<div id="content">${dto.b_content}</div>
	</div>
	<br>


	<div class="wrap_boardList">
		<button class="board_buttons" onclick="location.href='/boardList'">목록으로</button>
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
	<script type="text/javascript" src="${path}/resources/js/reply.js"></script>
		<script src="${path}/resources/js/slide.js"></script>

</body>
</html>