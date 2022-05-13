$(function() {

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
	document.querySelector('.black_bg').addEventListener('click', offClick);

});


