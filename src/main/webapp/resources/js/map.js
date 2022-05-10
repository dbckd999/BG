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
//updateMyLocation();

var lc;
// create control and add to map
//var lc = L.control.locate().addTo(map);

map.addControl(lc = L.control.locate({
       locateOptions: {
               enableHighAccuracy: true
}}));

// request location update and set location
lc.start();


//아이콘 설정
var leafletIcon = L.icon ({
	iconUrl :  "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png",
	iconSize : [48,70],
	iconAnchor : [22,94],
	popupAnchor : [0,-90]
})


//마커찍기

var popup = L.popup();

function onMapClick(e) {
    popup
        .setLatLng(e.latlng)
        .setContent("You clicked the map at " + e.latlng.toString())
        .openOn(map);
}

var marker = new Array();

/*marker[0] = L.marker([35.86640941204, 128.55946277496], {icon : leafletIcon}).addTo(map);
marker[1] = L.marker([35.866685,	128.558208], {icon : leafletIcon}).addTo(map);
marker[2] = L.marker([35.8663,128.558235], {icon : leafletIcon}).addTo(map);*/

for(var i=0; i<marker.length;i++){
	
}

for(var i = 0; i < marker.length; i++){
	marker[i].bindPopup("<b>마커표시했다.</b><br>여기 정보 넣는다").openPopup();
}




map.on('click', onMapClick);

/*
marker1.bindPopup("<b>마커표시했다.</b><br>여기 정보 넣는다").openPopup();
marker2.bindPopup("<b>마커표시했다.</b><br>여기 정보 넣는다").openPopup();
marker3.bindPopup("<b>마커표시했다.</b><br>여기 정보 넣는다").openPopup();*/




