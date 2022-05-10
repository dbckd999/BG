//cdn으로 불러온 L객체에서 지도 로드.
var map = L.map('map').setView([35.892805, 128.525276], 13);

//주변 화장실을 배열로 담게 됩니다.
var restRooms;

//지도타일 생성
L.tileLayer('https://{s}.tile.jawg.io/jawg-terrain/{z}/{x}/{y}{r}.png?access-token={accessToken}', {
	attribution: '<a href="http://jawg.io" title="Tiles Courtesy of Jawg Maps" target="_blank">&copy; <b>Jawg</b>Maps</a> &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors',
	minZoom: 0,
	maxZoom: 22,
	subdomains: 'abcd',
	accessToken: 'vAMEUGsqvj1NebwCreykRA1ZKXEVzyyRsUX7d0Il5wnGXe2BoJPTtUAVBaTjYGEB'
}).addTo(map);

//지도클릭 이벤트(미사용중)
function onMapClick(e) {
	L.popup()
		.setLatLng(e.latlng)
		.setContent('You clicked the map at ' + e.latlng.toString())
		.openOn(map);
}
//지도 클릭이벤트 등록
//map.on('click', onMapClick);

//현재위치 저장
//var myLocationMarker;

//현재위치 표시버튼 누르면 실시간 업데이트(미사용중)
function updateMyLocation(){
	navigator.geolocation.getCurrentPosition(
		function(location) {
			var latlng = new L.LatLng(location.coords.latitude, location.coords.longitude);
			myLocationMarker = L.marker(latlng).addTo(map);
			map.setView(latlng);
		});
}
//updateMyLocation();

// create control and add to map
//var lc = L.control.locate().addTo(map);
var lc = L.control.locate({
	locateOptions: {
		enableHighAccuracy: true
		, maxZoom: 17
	}
}).addTo(map);

// 현재위치를 불러오고 실시간으로 현위치를 보여줍니다.
lc.start();
map.addControl(lc = L.control.locate({
	locateOptions: {
		enableHighAccuracy: true
	}
}));

var mapMove = ()=>{
	southWest = map.getBounds()._southWest;
	northEast = map.getBounds()._northEast;
	console.log('북동: ', southWest, '\n남서: ', northEast);
	console.log('now loc: ', map.locate()._lastCenter);
	
	east = northEast.lng;
	west = southWest.lng;
	south = southWest.lat;
	north = northEast.lat;
}

var east;	//동
var west;	//서
var south;	//남
var north;	//북

//지도 움직임 이벤트
map.on('moveend', mapMove);

//북동
//lat: 35.85345701141678, lng: 128.54499578475955
//남서
//lat: 35.86853428808735, lng: 128.56817007064822
