/*핀 클릭시 상세정보 모달*/

function Info(id) {
var resultID = $('#resultID');
var  result_address_load = $('#result_address_load');	
	alert(id);

	$.ajax({
		url: '/restroomRead',
		type: 'post',
		data: {
			id : id
		},
		success: function(data) {
					
			resultID.val(data.restroom_name);
			result_address_load.val(data.address_load);
		
		
		},
		error: function(request, status, error) {
			console.log(error);
		}
	});

	onClick();
}

function onClick() {
	document.querySelector('.modal_wrapper').style.display = 'block';
	document.querySelector('.black_background').style.display = 'block';
}

function offClick() {
	document.querySelector('.modal_wrapper').style.display = 'none';
	document.querySelector('.black_background').style.display = 'none';
}

document.querySelector('.black_background').addEventListener('click', offClick);
document.querySelector('.modal_close').addEventListener('click', offClick);
