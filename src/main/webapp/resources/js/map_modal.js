/*핀 클릭시 상세정보 모달*/

function Info() {
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
