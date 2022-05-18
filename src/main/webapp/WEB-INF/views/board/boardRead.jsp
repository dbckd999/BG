<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</head>
<body>
	

	<h1> 글 상세보기 </h1>
	
	글 제목 : ${dto.b_title} <br>
	글 내용 : ${dto.b_content } <br>
	작성자 : ${dto.b_writer } <br>
	작성일 : ${dto.b_regDate } <br>

<c:if test="${sessionScope.user_id == dto.b_writer}">
	<a href="/boardUpdate?b_no=${dto.b_no}"> 수정 </a>
	<a href="/boardDelete?b_no=${dto.b_no}"> 삭제 </a>
</c:if>


	<br>
	<a href="/boardList"> 목록으로 </a>

<script type="text/javascript" src="${path}/resources/js/reply.js"></script>
</body>
</html>