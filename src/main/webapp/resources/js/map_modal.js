/*핀 클릭시 상세정보 모달*/

function Info(id) {
	var result_id = $('#result_id');
	var result_restroom_name = $('#result_restroom_name');
	var result_category = $('#result_category');
	var result_address_load = $('#result_address_load');
	var result_is_public_gender = $('#result_is_public_gender');
	var result_address_location = $('#result_address_location');
	var result_c_man_closet = $('#result_c_man_closet');
	var result_c_man_urinal = $('#result_c_man_urinal');
	var result_c_man_disable_person_closet = $('#result_c_man_disable_person_closet');
	var result_c_man_disable_person_urinal = $('#result_c_man_disable_person_urinal');
	var result_c_man_child_closet = $('#result_c_man_child_closet');
	var result_c_man_child_urinal = $('#result_c_man_child_urinal');
	var result_c_woman_closet = $('#result_c_woman_closet');
	var result_c_woman_disable_person_urinal = $('#result_c_woman_disable_person_urinal');
	var result_c_woman_child_closet = $('#result_c_woman_child_closet');
	var result_manage_group_name = $('#result_manage_group_name');
	var result_call_number = $('#result_call_number');
	var result_open_day_info = $('#result_open_day_info');
	var result_installation_date = $('#result_installation_date');

	$.ajax({
		url: '/restroomRead',
		type: 'post',
		data: {
			id: id
		},
		success: function( data) {
			result_id.val(data.id);
			result_restroom_name.val(data.restroom_name);
			result_category.val(data.category);
			result_address_load.val(data.address_load);
			result_address_location.val(data.address_location);
			result_is_public_gender.val(data.is_public_gender);
			result_c_man_closet.val(data.c_man_closet);
			result_c_man_urinal.val(data.c_man_urinal);
			result_c_man_disable_person_closet.val(data.c_man_disable_person_closet);
			result_c_man_disable_person_urinal.val(data.c_man_disable_person_urinal);
			result_c_man_child_closet.val(data.c_man_child_closet);
			result_c_man_child_urinal.val(data.c_man_child_urinal);
			result_c_woman_closet.val(data.c_woman_closet);
			result_c_woman_disable_person_urinal.val(data.c_woman_disable_person_urinal);
			result_c_woman_child_closet.val(data.c_woman_child_closet);
			result_manage_group_name.val(data.manage_group_name);
			result_open_day_info.val(data.open_day_info);
			result_call_number.val(data.call_number);
			result_installation_date.val(data.installation_date);
			$('#infoSlide').css('top', '0%');
			$('.infoClose').click(function(){
			    $('#infoSlide').css('top', '100%');
			});
		},
		error: function(request, status, error) {
			console.log(error);
		}
	});
	//onClick();
}

function onClick() {
	document.querySelector('.modal_wrapper').style.display = 'block';
	document.querySelector('.black_background').style.display = 'block';
}

function offClick() {
	document.querySelector('.modal_wrapper').style.display = 'none';
	document.querySelector('.black_background').style.display = 'none';
}

//document.querySelector('.black_background').addEventListener('click', offClick);
//document.querySelector('.modal_close').addEventListener('click', offClick);