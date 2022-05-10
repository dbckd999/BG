/*핀 클릭시 상세정보 모달*/
/*
window.onload=function() {
	

	function offClick() {
		document.querySelector('.modal_wrapper').style.display = 'none';
		document.querySelector('.black_background').style.display = 'none';
	}

	document.getElementById('moreInfo').addEventListener('click', onClick);
	document.querySelector('.black_background').addEventListener('click', offClick);
	
}*/


function onClick() {
		document.querySelector('.modal_wrapper').style.display = 'block';
		document.querySelector('.black_background').style.display = 'block';
	}
$('#moreInfo').click(function(){
	alert(1);
	onClick();
})
