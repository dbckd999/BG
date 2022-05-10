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
	<div class="btn"></div>
	<div onclick="history.back();" class="page_cover"></div>
	<div id="menu">
		<h2 class="BGateLogo">BGate</h2>
		<div class="menuList">
			<ul class="ulmenuList">
				<li><a href="/login"> 로그인 </a></li>
				<li><a href="/memberInsert">회원가입</a></li>
				<li><a href="/myPage">마이페이지</a></li>
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
<<<<<<< HEAD
	
	
	<div id="adminCenter">
<h1>회원목록</h1>
<table border="1" id="admintable">
=======
>>>>>>> refs/remotes/origin/LSJ

	<h1>회원목록</h1>
	<table border="1">

<<<<<<< HEAD
 
  <c:forEach var="list" items="${list }">
   <tr>
 <td  >${list.user_no}</td>
  <td > ${list.user_id}</td>
 <td > ${list.user_nick}</td>
 <td>${list.user_addr}</td>
 <td><fmt:formatDate value="${list.user_regDate}" pattern="yyyy-MM-dd"/></td>
  <td><a href="/adminDelete?user_no=${list.user_no}" id="confirmStart">삭제</a></td>
  
 
 </tr>
  
  </c:forEach>
 
 
 
 </table>
 </div>
	
	<script src="${path}/resources/js/admin.js"></script>
=======
		<tr>
			<td>회원번호</td>
			<td>회원아이디</td>
			<td>회원별명</td>
			<td>회원주소</td>
			<td>회원가입일</td>
			<td>삭제하기</td>

		</tr>

		<c:forEach var="list" items="${list }">
			<tr>
				<td>${list.user_no}</td>
				<td>${list.user_id}</td>
				<td>${list.user_nick}</td>
				<td>${list.user_addr}</td>
				<td><fmt:formatDate value="${list.user_regDate}"
						pattern="yyyy-MM-dd HH:mm:ss" /></td>
				<td><a href="/adminDelete?user_no=${list.user_no}">삭제</a></td>

			</tr>

		</c:forEach>

	</table>



>>>>>>> refs/remotes/origin/LSJ
</body>
</html>