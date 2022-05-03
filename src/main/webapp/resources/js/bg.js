$(function() {
	countdown();
})

function Timer() {
	setTimeout("locateKap()", 1000);
}
function locateKap() {
	location.replace("map");
}

var cnt = 2;
function countdown() {
	if (cnt == 0) {
		locateKap();
	} else {
		document.all.choonDiv.innerHTML = cnt + "초 후에 이동...";
		setTimeout("countdown()", 1000);
		cnt--;
	}

}



