//cdn으로 불러온 L객체에서 지도 로드.
var map = L.map('map').setView([35.892805, 128.525276], 13);
//주변 화장실을 배열로 담게 됩니다.
var restRooms;
//지도타일 생성
var Jawg_Terrain = L.tileLayer('https://{s}.tile.jawg.io/jawg-terrain/{z}/{x}/{y}{r}.png?access-token={accessToken}', {
	attribution: '<a href="http://jawg.io" title="Tiles Courtesy of Jawg Maps" target="_blank">&copy; <b>Jawg</b>Maps</a> &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors',
	minZoom: 0,
	maxZoom: 22,
	subdomains: 'abcd',
	accessToken: 'vAMEUGsqvj1NebwCreykRA1ZKXEVzyyRsUX7d0Il5wnGXe2BoJPTtUAVBaTjYGEB'
}).addTo(map);

//지도클릭 이벤트
function onMapClick(e) {
    L.popup()
	    .setLatLng(e.latlng)
	    .setContent('You clicked the map at ' + e.latlng.toString())
	    .openOn(map);
}
//지도 클릭이벤트 등록
//map.on('click', onMapClick);

//현재위치 저장
var myLocationMarker;

//현재위치 표시버튼 누르면 실시간 업데이트
function updateMyLocation(){
	navigator.geolocation.getCurrentPosition(
		function(location) {
			var latlng = new L.LatLng(location.coords.latitude, location.coords.longitude);
			myLocationMarker = L.marker(latlng).addTo(map);
			map.setView(latlng);
		});
}
updateMyLocation();

// create control and add to map
var lc = L.control.locate().addTo(map);

// request location update and set location
lc.start();