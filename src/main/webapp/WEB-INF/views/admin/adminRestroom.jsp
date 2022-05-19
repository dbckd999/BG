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

	<div id="titleArea">
		<h1 id="titleh1">[ 어드민 페이지 ]</h1>
	</div>
	<div id="adminCenter">
		<h1>회원목록</h1>
		<form action="/userDelete" id="userDelete">
			<div>
				아이디 : <input type="text" id="user_id" name="user_id"> <input
					type="submit" value="삭제" id="userDelete" name="userDelete">
			</div>
		</form>
		<table border="1" id="admintable">
			<tr>
				<th>번호</th>
				<th>화장실명</th>
				<th>남대변기</th>
				<th>여-대변기</th>
				<th>개방</th>
				<th>폐쇄</th>
				<th>설치장소</th>
				<th>비상벨여부</th>
				<th>CCTV</th>
				<th>데이터기준일자</th>
				<th>수정</th>
				<th>삭제</th>

			</tr>

			<c:forEach var="list" items="${list}">
				<tr>
					<td>${list.id}</td>
					<td>${list.restroom_name}</td>
					<td>${list.c_man_closet}</td>
					<td>${list.c_woman_closet}</td>
					<td>${list.opening_time}</td>
					<td>${list.closing_time}</td>
					<td>${list.installation_details}</td>
					<td>${list.have_emergency_bell}</td>
					<td>${list.have_entrance_cctv}</td>
					<td>${list.db_update_date}</td>
					<td>수정</td>
					<td>삭제</td>
			</c:forEach>
		</table>

		<div class="search_wrap">
			<div class="search_area">
				<input type="text" name="keyword" value="${pageMaker.cri.keyword }">
				<button>Search</button>
			</div>
		</div>

		<div class="pageInfo_wrap">
			<div class="pageInfo_area">
				<ul id="pageInfo" class="pageInfo">

					<!-- 이전페이지 버튼 -->
					<c:if test="${pageMaker.prev}">
						<li class="pageInfo_btn previous"><a
							href="${pageMaker.startPage-1}">이전</a></li>
					</c:if>
					<!-- 각 번호 페이지 버튼 -->
					<c:forEach var="num" begin="${pageMaker.startPage}"
						end="${pageMaker.endPage}">
						<li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":"" }"><a
							href="${num}">${num}</a></li>
					</c:forEach>

					<!-- 다음페이지 버튼 -->
					<c:if test="${pageMaker.next}">
						<li class="pageInfo_btn next"><a
							href="${pageMaker.endPage + 1 }">다음</a></li>
					</c:if>
				</ul>
			</div>

		</div>


		<form id="moveForm" method="get">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
			<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
		</form>


	</div>

	<script type="text/javascript">
		<c:if test="${msgCheckID==false}">
		alert('없는 아이디입니다.');
		</c:if>
	</script>

	<script src="${path}/resources/js/adminRestRoom.js"></script>
		<script src="${path}/resources/js/slide.js"></script>

</body>
</html>