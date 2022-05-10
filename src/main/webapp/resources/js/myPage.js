$(".btn").click(function(){
	$("#menu").addClass("open");
});

$(".close").click(function() {
	$("#menu").removeClass("open");
});

$(".btn").click(function () {
	$("#menu,.page_cover,html").addClass("open"); 
	window.location.hash = "#open";
});

window.onhashchange = function (){
	if (location.hash != "#open") {
		$("#menu,.page_cover,html").removeClass("open");
	}
	
	
	$('#delete').click(function() {
		user_id = $('#user_id').val();
		$.ajax({
			url: '/memberDelete',
			type: 'post',
			data: {
				user_id: user_id
			},
			success: function(data) {
				if (data != null) {
					alert('회원 탈퇴 가능');
					location.href='/map';
				}
				else{
					alert('회원 탈퇴 불가');
				}
				
			},
			error: function(request, status, error) {
				alert("code:" + request.status + "\n" + "message:"
					+ request.responseText + "\n" + "error:" + error);
			}
		})
		
	})
	
	
	

};

$(function() {

$('#memberUpdate').click(function() {

	   
		user_pw = $('#user_pw').val();
		user_Rpw = $('#user_Rpw').val();
		user_nick = $('#user_nick').val();
		user_email = $('#user_email').val();
		user_addr = $('#user_addr').val();
		registForm = $('#memberUpdateForm').val();


		var pwCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,20}$/;

		if (user_pw == null || user_pw.trim() == "") {
			alert('비밀번호를 입력해주세요');
			return false;
		}

		if (user_Rpw == null || user_Rpw.trim() == "") {
			alert('비밀번호확인을 입력해주세요');
			return false;
		}

		if (user_pw != user_Rpw) {
			alert('비밀번호와 비밀번호 확인란이 일치 하지 않습니다.');
			return false;
		}

		if (!pwCheck.test(user_pw)) {
			alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~20자리 사용해야 합니다.");
			return false;
		}

		if (user_nick == null || user_nick.trim() == "") {
			alert('별명을 입력해주세요');
			return false;
		}

		if (user_addr == null || user_addr.trim() == "") {
			alert('주소를 입력해주세요');
			return false;
		}

		if (id_check == false) {
			alert('아이디 중복체크 버튼을 누르셔야 합니다.');
			return false;
		}

		if (nick_check == false) {
			alert('별명 중복체크 버튼을 누르셔야 합니다.');
			return false;
		}

		if (email_check == false) {
			alert('이메일 중복체크 버튼을 누르셔야 합니다.');
			return false;
		}


		if (nick_check) {
			memberUpdateForm.submit();
		} else {
			memberUpdateForm.reset();
		}


	})
$('#nickCheckBtn').click(function() {
		var user_nick = $('#user_nick').val();
		$.ajax({
			url: "/check_nick",
			type: 'POST',
			data: { user_nick },
			success: function(data) {
				if (data > 0) {
					alert('별명 중복');
				} else {
					alert('별명 사용 가능');
				}
			},
			error: function(request, status, error) {
				console.log("code:" + request.status + "\n" +
					"message:" + request.responseText + "\n" +
					"error:" + error);
			}
		});
		
		
		
	});	

})