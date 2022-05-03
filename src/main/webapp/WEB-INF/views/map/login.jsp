<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
	<link rel="stylesheet" href="${path}/resources/css/login.css" />
<title> 로그인 </title>
</head>
<body>
	
	<div id="menu">
		<div class="close"></div>
	</div>
	<div class="btn"></div>

	<div class="btn"></div>
	<div onclick="history.back();" class="page_cover"></div>
	<div id="menu">
		<div onclick="history.back();" class="close"></div>
	</div>
	
	
	<div id="Logo"> LOGO </div>
	
	<form action="/login" method="post">
		
		<div id="loginForm">
			<h1>로그인 </h1>
			<input type="text" name="user_id" id="user_id" placeholder="아이디"> <br>
			<input type="password" name="user_pw" id="user_pw" placeholder="비밀번호"> <br>
			<input name="loginSub" id="loginSub" type="submit" value="로그인">
		</div>
	</form>
	
	<script src="${path}/resources/js/login.js"></script>
</body>
</html>