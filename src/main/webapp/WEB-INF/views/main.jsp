<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/resources/css/menu.css">
</head>
<body>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

	<div id="menu">
		<div class="close"></div>
	</div>
	<div class="btn"></div>
	<div onclick="history.back();" 
	class="page_cover"></div> <!-- 메뉴 영역 밖을 누르면 닫히는 기능을 가진다. --> 
	<div id="menu">  <!-- 메뉴 영역 --> 
	<div onclick="history.back();" class="close"></div> <!-- 닫기 버튼이다. 뒤로가기 버튼과 같은 기능을 가진다. -->
	<ul>
		<li>a</li>
		<li>b</li>
		<li>c</li>	
	</ul> 
	</div>
	




	<script type="text/javascript" src="${path}/resources/js/bg.js"></script>
</body>
</html>