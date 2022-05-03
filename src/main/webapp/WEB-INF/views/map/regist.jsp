
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>

<link rel="stylesheet" href="${path}/resources/css/slideMenu.css" />
<link rel="stylesheet" href="${path}/resources/css/regist.css" />
<link rel="stylesheet" href="${path}/resources/css/footer.css" />


<title>Map</title>
</head>
<body>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<div id="menu">
		<div class="close"></div>
	</div>
	<div class="btn"></div>
	<div class="btn"></div>
	<div onclick="history.back();" class="page_cover"></div>
	<div id="menu">
		<h2 class="BGateLogo"><a href="/map">BGate</a></h2>
		<div class="menuList">
			<ul class="ulmenuList">
				<li><a href="/login"> 로그인 </a></li>
				<li><a href="/regist">회원가입</a></li>
				<li><a href="/myPage">마이페이지</a></li>
			</ul>
		</div>
		<div onclick="history.back();" class="close"></div>
	</div>

	<div class="headMain">
			<h1 class="Logo"><a href="/map">BGate</a></h1>
	</div>
	<br><br>
	
	<div id="titleArea">
		<h1 id="titleh1">
			[ 회원 가입 ]
		</h1>
	</div>

 
    <div id=center>
  <div id="centerMain"> 
  <div id="centerLogo"> <span id="centerspan"> 기본정보 </span></div> 
     
     <form action="">
     <table id="centertable" >
    
     <tr>
      <th>아이디</th> 
        <td>
        <input type="text" id="user_id" name="user_id">      
        <input type="button" value="중복확인"   id="idBtn" name="idBtn">   
         </td>
        </tr>  
         <tr>
     <th>비밀번호</th> 
        <td>
        <input type="password" id="user_pw" name="user_pw">
         </td>
        </tr>  
         <tr>
     <th>비밀번호 확인란</th> 
        <td>
        <input type="text" id="user_Rpw" name="user_Rpw">
         </td>
        </tr>  
         <tr>
     <th>별명</th> 
        <td>
        <input type="text" id="user_nick" name="user_nick">
        <input type="button" value="중복확인"  id="nickBtn" name="nickBtn">
         </td>
        </tr>  
         <tr>
     <th>주소</th> 
        <td>
        <input type="text" id="user_addr" name="user_addr">
         </td>
        </tr>  
          <tr>
     <th>email</th> 
        <td>
        <input type="email" id="user_email" name="user_email">
         </td>
        </tr>  
          
     
        
     </table> 
       <input type="submit" id="regist" name="regist"  value="회원가입"> 
 
        </form>
  </div>

</div>
	
	
	
	
	
	<<div id=footer>
	<div id="footerMain">
		<ul>
			<li>
				<h3>BGate</h3>
			</li>
			<li id="footerMesege">문의 사항 <br> 문의: 게시판 혹은 email <br> OPEN : MON-FRI
				09:00-24:00 <br> EVERY WEEKEND, HOLIDAY OFF
			</li>
			<li id="liemail">https://github.com/dbckd999/BG/issues <br></li>
		</ul>
	</div>
</div>

	<script src="${path}/resources/js/myPage.js"></script>
</body>
</html>