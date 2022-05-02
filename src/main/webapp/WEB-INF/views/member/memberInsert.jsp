<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/resources/css/regist.css">
</head>
<body class="all">
	<div >
		<div class="headMain">
		<div class="Logo">BGate</div>
		</div>
		
		<div class="main">
			<div class="regist">
			<br>
				<h3>회원 가입</h3>
				<form action="/memberInsert" method="post">
				&nbsp; 아이디<br><input type="text" name="user_id">
				&nbsp; 별명<br><input type="text" name="user_nick">
				&nbsp; 비밀번호<br><input type="password" name="user_pw">
				&nbsp; 비밀번호 확인<br><input type="password" name="user_Rpw">
				&nbsp; 이메일<br><input type="email" name="user_email">
				&nbsp; 주소<br><input type="text" name="user_addr">
				<input type="submit" value="가입하기">
				<br>
				</form>
				
			</div>
		</div>
	</div>
</body>
</html>