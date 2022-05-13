//cdn으로 불러온 L객체에서 지도 로드.
var map = L.map('map').setView([35.892805, 128.525276], 13);

//지도타일 생성
L.tileLayer('https://{s}.tile.jawg.io/jawg-terrain/{z}/{x}/{y}{r}.png?access-token={accessToken}', {
	attribution: '<a href="http://jawg.io" title="Tiles Courtesy of Jawg Maps" target="_blank">&copy; <b>Jawg</b>Maps</a> &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors',
	minZoom: 0,
	maxZoom: 22,
	subdomains: 'abcd',
	accessToken: 'vAMEUGsqvj1NebwCreykRA1ZKXEVzyyRsUX7d0Il5wnGXe2BoJPTtUAVBaTjYGEB'
}).addTo(map);

//현재위치 저장
var myLocationMarker;

// create control and add to map
//var lc = L.control.locate().addTo(map);
var lc = L.control.locate({
	locateOptions: {
		enableHighAccuracy: true
		, maxZoom: 17
	}
});

// 현재위치를 불러오고 실시간으로 현위치를 보여줍니다.
lc.addTo(map).start();

var east;	//동
var west;	//서
var south;	//남
var north;	//북

//지도 움직임 이벤트 함수
var mapMove = () => {
	southWest = map.getBounds()._southWest;
	northEast = map.getBounds()._northEast;
	//console.log('북동: ', southWest, '\n남서: ', northEast);
	//console.log('now loc: ', map.locate()._lastCenter);

	east = northEast.lng;
	west = southWest.lng;
	south = southWest.lat;
	north = northEast.lat;

	myLocationMarker = lc._event.latlng;
	
	callPins(east, west, south, north);
}

//지도 움직임 이벤트 등록
map.on('moveend', mapMove);

//화장실 배열.
var restroomList = new Array();
var markLineList = null;

var polygon = null;
//현 지도의 위치에 있는 화장실 정보를 불러옵니다.
var callPins = (_east, _west, _south, _north) => {
	var southWest = map.getBounds()._southWest;
	var northEast = map.getBounds()._northEast;

	east = northEast.lng;
	west = southWest.lng;
	south = southWest.lat;
	north = northEast.lat;

	myLocationMarker = map.locate()._lastCenter;
	
	removeRestroomList();
	
	$.ajax({
		type: 'post'
		, url: '/showRestrooms2'
		, async: true
		, dataType: 'json'
		, data: {
			"north": _north,
			"south": _south,
			"east": _east,
			"west": _west
		}
		, success: function(data) {
			console.log('콘솔값 확인 : ' + data.length);
			// element -> this로 변경
			$(data).each(function() {

				var day = "";

				if (this.open_day_info != null) {
					day = "<br><h3> 개방요일 : " + this.open_day_info + "'</h3>";
				}

				L.marker([this.wgs84_latitude, this.wgs84_longitude]).addTo(map).bindPopup('<h1>' + this.restroom_name +
					'</h1><br><h3> 남성용 대변기수 : ' + this.c_man_closet + '</h3><br><h3> 여성용 대변기수 : ' + this.c_woman_closet +
					'</h3>' + day +
					'</h3><br><h3> 개방시간 : ' + this.opening_time + '~' + this.closing_time +
					'</h3><br><button onclick="Info(' + this.id + ')" type="button" id="moreInfo_' + this.id +
					'" name="moreInfo">	상세정보보기 </button>').openPopup();
			})
		}
		, error: (request, status, error) => {
			console.log(error);
		}
	});
}

//기존 핀들을 삭제하고 초기화 합니다.
function removeRestroomList(){
	restroomList.forEach(marker=>{
		map.removeLayer(marker);
	});

	restroomList = new Array();
}

//최단거리 화장실 찾고 현위치-화장실 선 긋고 실 거리 표시
function shortestRestroom(_latitude, _longitude) {
	$.ajax({
		type: 'post'
		, url: '/shortestForMe'
		, data: {
			//현위치 위도 경도
			"latitude": _latitude,
			"longitude": _longitude,
		}
		, success: (data) => {
			console.log(data);
		}
		, error: (request, status, error) => {
			console.log(error);
		}
	});
}
//lat lon 1: 나의 위치
//lat lon 2: 목표 위치
function calcDistance(lat1, lon1, lat2, lon2) {
	var EARTH_R, Rad, radLat1, radLat2, radDist;
	var distance, ret;

	EARTH_R = 6371000.0;
	Rad = Math.PI / 180;
	radLat1 = Rad * lat1;
	radLat2 = Rad * lat2;
	radDist = Rad * (lon1 - lon2);

	distance = Math.sin(radLat1) * Math.sin(radLat2);
	distance = distance + Math.cos(radLat1)
		* Math.cos(radLat2)
		* Math.cos(radDist);
	ret = EARTH_R * Math.acos(distance);

	var rtn = Math.round(Math.round(ret) / 1000);

	console.log(rtn);

	rtn = (rtn <= 0) ? (Math.round(ret) + " m") : (rtn + " km");
		//return rtn;
	return Math.round(ret); 
}

//최단거리 화장실 핀을 반환합니다.
function shortestRestroom_js(_myLocationMarker, _restroomList) {
	var shortestRestroomLength = 100;
	var shortestRestroomIndex;

	for (var index = 0; index < _restroomList.length; index++) {
		let len = Math.sqrt(Math.pow(_myLocationMarker.lat - _restroomList[index].getLatLng().lat, 2)
			+ Math.pow(_myLocationMarker.lng - _restroomList[index].getLatLng().lng, 2));

		if (shortestRestroomLength > len) {
			shortestRestroomLength = len;
			shortestRestroomIndex = index;
			//console.log("index: ", index);
		}
	}
	return _restroomList[shortestRestroomIndex];
}

//두 좌표간 거리를 km로 변환합니다.	
function getDistanceFromLatLonInKm(name, lat1, lon1, lat2, lon2) {
	var R = 6371; // Radius of the earth in km
	var dLat = deg2rad(lat2 - lat1);  // deg2rad below
	var dLon = deg2rad(lon2 - lon1);
	var a =
		Math.sin(dLat / 2) * Math.sin(dLat / 2) +
		Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) *
		Math.sin(dLon / 2) * Math.sin(dLon / 2);
	var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
	var d = (R * c) * 1000; // Distance in km
	if (d < 1000) {
		alert('"' + name + '"까지의 직선 거리는[' + Math.round(d) + 'm] 입니다.');
	} else {
		alert('"' + name + '"까지의 직선 거리는[' + (d/1000).toFixed(1) + 'km] 입니다.');
	}
	return d;
}

function deg2rad(deg) {
	return deg * (Math.PI / 180)
}

//현위치부터 목표 마크까지 줄을 긋습니다.
var markLine;
function setMarkLine(singMark){
	markLine = L.polygon([
		[myLocationMarker.lat,myLocationMarker.lng],
		[singMark._latlng.lat,singMark._latlng.lng]
	]).addTo(map);
}

function removeMarkLine(){
	if(markLine != null){
		map.removeLayer(markLine)
	}
}

var aRestroomPhin = null;
function shortestRestroomdrawLine(){
	aRestroomPhin = shortestRestroom_js(lc._event.latlng, restroomList);
	removeMarkLine();
	setMarkLine(aRestroomPhin);
}
