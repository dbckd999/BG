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
<link rel="stylesheet" href="${path}/resources/css/headLogo.css" />
<link rel="stylesheet" href="${path}/resources/css/board.css" />
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
			<span id="titleh1">[ 공지사항 및 업데이트 ]</span>
		</h1>
	</div>
	<br>





	<div id="boardCenter">
		
		
		<table  id="boardtable">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th >작성자</th>
				<th >등록시간</th>
					</tr>




			<c:forEach var="list" items="${list}">
				<tr>
					<td>${list.b_no}</td>
					<td>${list.b_title}</td>
					<td>${list.b_writer}</td>
					<td><fmt:formatDate value="${list.b_regDate}"
							pattern="yyyy-MM-dd" /></td>
				
				</tr>
			</c:forEach>
		</table>
	
		 
	</div>
	
	<div id="boardWrite">
	<form action="/boardInsert" id="boardInsertForm"> <input id="bwBtn" type="submit" value="글쓰기"> </form>
</div>

		  <div class="pageInfo_wrap" >
        <div class="pageInfo_area">
        <ul id="pageInfo" class="pageInfo">
   
     <!-- 이전페이지 버튼 -->
                <c:if test="${pageMaker.prev}">
                    <li class="pageInfo_btn previous"><a href="${pageMaker.startPage-1}">이전</a></li>
                </c:if>
          <!-- 각 번호 페이지 버튼 -->
                <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
                    <li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":"" }"><a href="${num}">${num}</a></li>
                </c:forEach>

                <!-- 다음페이지 버튼 -->
                <c:if test="${pageMaker.next}">
                    <li class="pageInfo_btn next"><a href="${pageMaker.endPage + 1 }">다음</a></li>
                </c:if> 
        </ul>
        </div>
        
    </div>
    
    
		<form id="moveForm" method="get">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
        <input type="hidden" name="amount" value="${pageMaker.cri.amount }"> 
		</form>



	<div id="footer">
		<ul>
			<li>
				<h3>BGate</h3>
			</li>
			<li>문의 사항 <br> 문의: 게시판 혹은 email <br> OPEN : MON-FRI
				09:00-24:00 <br> EVERY WEEKEND, HOLIDAY OFF
			</li>
			<li id="liemail">https://github.com/dbckd999/BG/issues <br>
				<!-- 			</li> -->
		</ul>
	</div>
	<script src="${path}/resources/js/slide.js"></script>
	<script src="${path}/resources/js/board.js"></script>
</body>
</html>