$(function() {


	var user_id = "";
	var user_pw = "";
	var user_Rpw = "";
	var user_nick = "";
	var user_email = "";
	var user_addr = "";
	var id_check = false;
	var nick_check = false;
	var email_check = false;
	var registForm = "";

	$('#idCheckBtn').click(function() {
		user_id = $('#user_id').val();
		$.ajax({
			url: '/check_id',
			type: 'post',
			data: {
				user_id: user_id
			},
			success: function(data) {
				console.log(data);
				if (data > 0) {
					alert('아이디 중복');
				} else {
					alert('아이디 사용 가능');
					id_check = true;
				}
			},
			error: function(request, status, error) {
				console.log("code:" + request.status + "\n" +
					"message:" + request.responseText + "\n" +
					"error:" + error);
			}
		});
	});

	$('#nickCheckBtn').click(function() {
		var user_nick = $('#user_nick').val();
		$.ajax({
			url: "/check_nick",
			type: 'POST',
			data: { user_nick: user_nick },
			success: function(data) {
				if (data > 0) {
					alert('별명 중복');
				} else {
					alert('별명 사용 가능');
					nick_check = true;
				}
			},
			error: function(request, status, error) {
				console.log("code:" + request.status + "\n" +
					"message:" + request.responseText + "\n" +
					"error:" + error);
			}
		});
	});


	$('#emailCheckBtn').click(function() {
		user_email = $('#user_email').val();
		$.ajax({
			url: '/check_email',
			type: 'post',
			data: {
				user_email: user_email
			},
			success: function(data) {
				console.log(data);
				if (data > 0) {
					alert('이메일 중복');
				} else {
					alert('이메일 사용 가능');
					email_check = true;
				}
			},
			error: function(request, status, error) {
				console.log("code:" + request.status + "\n" +
					"message:" + request.responseText + "\n" +
					"error:" + error);
			}
		});
		
	});

	onClick();
	offClick();

	function onClick() {
		document.querySelector('.modal_wrap').style.display = 'block';
		document.querySelector('.black_bg').style.display = 'block';
	}
	
	function offClick() {
		document.querySelector('.modal_wrap').style.display = 'none';
		document.querySelector('.black_bg').style.display = 'none';
	}

	document.getElementById('delete').addEventListener('click', onClick);
	document.querySelector('#cancel').addEventListener('click', offClick);
	

	$('#delete_fin').click(function() {
		user_id = $('#user_id').val();
		$.ajax({
			url: '/memberDelete',
			type: 'post',
			data: {
				user_id: user_id
			},
			success: function(data) {
				if (data != null) {
					alert('회원 탈퇴 완료');
					location.href = '/map';
				}
				else {
					alert('회원 탈퇴 불가');
				}

			},
			error: function(request, status, error) {
				alert("code:" + request.status + "\n" + "message:"
					+ request.responseText + "\n" + "error:" + error);
			}
		})
	})



	$('#regist').click(function() {

		user_id = $('#user_id').val();
		user_pw = $('#user_pw').val();
		user_Rpw = $('#user_Rpw').val();
		user_nick = $('#user_nick').val();
		user_email = $('#user_email').val();
		user_addr = $('#user_addr').val();
		registForm = $('#registForm').val();


		var pwCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,20}$/;


		if (user_id == null || user_id.trim() == "") {
			alert("아이디 입력");
			return false;
		}

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

		if (user_email == null || user_email.trim() == "") {
			alert('이메일을 입력해주세요');
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


		if (id_check == true && nick_check == true && email_check == true) {
			registForm.submit();
		} else {
			registForm.reset();
		}


	})
	
	$('#memberUpdate').click(function() {

		user_id = $('#user_id').val();
		user_pw = $('#user_pw').val();
		user_Rpw = $('#user_Rpw').val();
		user_nick = $('#user_nick').val();
		user_email = $('#user_email').val();
		user_addr = $('#user_addr').val();
		memberUpdateForm = $('#memberUpdateFrom').val();


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

		if (nick_check == false) {
			alert('별명 중복체크 버튼을 누르셔야 합니다.');
			return false;
		}

		if (id_check == true && nick_check == true && email_check == true) {
			memberUpdateForm.submit();
		} else {
			memberUpdateForm.reset();
		}


	})




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

	$('#cancel')

});







