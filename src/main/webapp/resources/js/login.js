$(".btn").click(function() { $("#menu").addClass("open"); });

$(".close").click(function() {
	$("#menu").
		removeClass("open");
});

$(".btn").click(function() {
	$("#menu,.page_cover,html").addClass("open");
	window.location.hash = "#open";
});
window.onhashchange = function() {
	if (location.hash != "#open") {
		$("#menu,.page_cover,html").removeClass("open");
	}
};

$("#login").click(function() {

	user_id = $('#user_id').val();
	user_pw = $('#user_pw').val();

	if (user_id == null || user_id.trim() == "") {
			alert('아이디를 입력해주세요');
			return false;
		}

	if (user_pw == null || user_pw.trim() == "") {
		alert('비밀번호를 입력해주세요');
		return false;
	}


})
