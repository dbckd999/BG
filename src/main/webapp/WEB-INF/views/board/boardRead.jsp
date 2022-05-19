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
<style>
body{
	margin: 0;
}

.wrap_content{
	border: 1px solid gray;
	padding: 10px;
}

.wrap_boardList{
	width: 100%;
	text-align: center;
}

.modify_wrap{
	display: inline-block;
	float: right;
}

</style>
</head>
<body>
	<div class="wrap_content">
		<h1>${dto.b_title}</h1>
		<span>${dto.b_writer} | ${dto.b_regDate}</span>
		<c:if test="${sessionScope.user_id == dto.b_writer}">
		<div class="modify_wrap">
			<button onclick="location.href='/boardUpdate?b_no=${dto.b_no}'">수정</button>
			<span> | </span>
			<button onclick="location.href='/boardDelete?b_no=${dto.b_no}'">삭제</button>
		</div>
		</c:if>
		<hr>
		${dto.b_content}
	</div>
	
	<br>
	
	<div class="wrap_boardList">
		<button onclick="location.href='/boardList'">목록으로</button>
	</div>
	<script type="text/javascript" src="${path}/resources/js/reply.js"></script>

</body>
</html>