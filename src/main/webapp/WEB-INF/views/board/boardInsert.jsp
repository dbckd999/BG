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
<link rel="stylesheet" href="${patd}/resources/css/footer.css" />
<link rel="stylesheet" href="${path}/resources/css/headLogo.css" />
<link rel="stylesheet" href="${path}/resources/css/boardInsert.css" />
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
			<span id="titleh1">[ 게시글 작성 ]</span>
		</h1>
	</div>
	<br>
  
   <div id="center">

	<form action="/boardInsert" id="boardInsertForm" method="post">
		<div>
		
		 <br>	글제목 <br> <input type="text" id="b_title" name="b_title"
				placeholder="글 제목을 적어주세요">
		</div>
		
		<div>
		 <br> 글 내용 <br> <textarea id="b_content" name="b_content" rows="20" cols="30
		" placeholder="글 내용을 적어주세요"></textarea>	
			
		</div>
		
		<div id="div_b_writer">
		작성자 <input type="text" id="b_writer" name="b_writer"value="${sessionScope.user_nick}" readonly="readonly">   
				<button type="submit" id="boardBtn">글쓰기</button>
		</div>
	
		
	</form>
 </div>

	

	<script src="${path}/resources/js/board.js"></script>
		<script src="${path}/resources/js/slide.js"></script>


</body>
</html>