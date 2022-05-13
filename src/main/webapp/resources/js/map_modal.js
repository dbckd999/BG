/*핀 클릭시 상세정보 모달*/

function Info(id) {

	alert(id);

	$.ajax({
		url: '/restroomRead',
		type: 'post',
		data: {
			id: id
		},
		success: function(data) {
			var test = $('#test');
			/*$(".modal_wrapper").modal("show");*/
			console.log(data);

			var arr1 = new Array();
			arr1 = Object.keys(data);

			var arr2 = new Array();
			arr2 = Object.values(data);

			for (var i = 0; i < Object.keys(data).length; i++) {

				var content = '<div>' + arr1[i] + ' : ' + arr2[i] + '</div>';
				test.append(content);
			}






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