//활성화
function aRestroomComment(restroomNo){
	$('.black_background').css('display', 'block');
	$('.cmt_modal_wrap').css('display', 'block');
	showRestroomComments(restroomNo)
}

//비활성화
function cmtModalClose(){
	$('.black_background').css('display', 'none');
	$('.cmt_modal_wrap').css('display', 'none');
}

$('#cmt_modal_close').click(cmtModalClose);
$('.black_background').click(cmtModalClose);

function showRestroomComments(restroomNo){
	$.ajax({
		url: '/showRestroomComments'
		, type: 'get'
		, data: {'c_restroom_no':restroomNo}
		, success: function(data){
			var result = "";
			$(data).each(function(cmt){
				result += "<tr>"
						+ "<td>" + this.c_id + "</td>"
						+ "<td>"+ this.c_comment +"</td>"
						+ "<td><a onclick='deleteComment("+ this.c_no + ',' + restroomNo +")'>삭제</a></td>"
						+ "</tr>";
			})
			result += "</tr><input type=hidden name=c_restroom_no value='"+ restroomNo +"'>";
			$('table[id=restroom_comment_modal]').html(result);
		}
		, error: function(request, status, error) {
				alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
		}
	});
};

function deleteComment(c_no, restroomNo){
	$.ajax({
		url: '/deleteRestroomComment'
		, type: 'post'
		, data: {'c_no':c_no}
		, success: function(){
			showRestroomComments(restroomNo);
		}
		, error: function(request, status, error) {
				alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
		}
	});
}

function groupingInsertRestroomComment(){
	var c_restroom_no = $('input[name="c_restroom_no"]').attr('value');
	var c_user_no = $('input[name="c_user_no"]').attr('value');
	var cmt_content = $('textarea[id="cmt_content"]').val();
	
	if(cmt_content.trim() === ""){
		return;
	}
	
	insertRestroomComment(c_restroom_no, c_user_no, cmt_content);
}

function insertRestroomComment(c_restroom_no, c_user_no, c_comment){
	console.log(c_restroom_no, c_user_no, c_comment);
	$.ajax({
		url: '/insertRestroomComment'
		, type: 'post'
		, data: {c_restroom_no: c_restroom_no
			, c_user_no: c_user_nof
			, c_comment: c_comment}
		, success: function(){
			$('textarea[id="cmt_content"]').val('');
			showRestroomComments(c_restroom_no);
		}
		, error: function(request, status, error) {
			alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
		}
	});
}
