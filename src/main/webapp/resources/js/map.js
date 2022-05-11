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
var mapMove = ()=>{
	southWest = map.getBounds()._southWest;
	northEast = map.getBounds()._northEast;
	//console.log('북동: ', southWest, '\n남서: ', northEast);
	//console.log('now loc: ', map.locate()._lastCenter);
	
	east = northEast.lng;
	west = southWest.lng;
	south = southWest.lat;
	north = northEast.lat;
	
	myLocationMarker = map.locate()._lastCenter;
}

//지도 움직임 이벤트 등록
map.on('moveend', mapMove);

//화장실 배열.
var restroomList = new Array();

//현 지도의 위치에 있는 화장실 정보를 불러옵니다.
var callPins = (_east, _west, _south, _north)=>{
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
		, success: (data)=>{
			console.log('len: ', data.length);
			data.forEach(element=>{
				restroomList.push(L.marker([element.wgs84_latitude, element.wgs84_longitude]).addTo(map).bindPopup("<h1>"+element.restroom_name+"</h1><br><h3>"+element.opening_time+"~"+element.closing_time+"</h3><br><input type='button' value='상세정보보기'></button>"));
			});
		}
		, error: (request, status, error)=>{
			console.log(error);
		}
	});
	
	//가장 가까운 화장실 쿼리해야됨
	//calcDistance(myLocationMarker.lat, myLocationMarker.lng, 
}

//callPins 호출 시 모든 핀을 없엘 필요가 있다. 그냥 불러오면 같은핀이 겹침
var removeRestroomList = ()=>{
	restroomList.forEach(marker=>{
		map.removeLayer(marker);
	});
	
	restroomList = new Array();
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
	distance = distance	+ Math.cos(radLat1)
						* Math.cos(radLat2)
						* Math.cos(radDist);
	ret = EARTH_R * Math.acos(distance);
	
	var rtn = Math.round(Math.round(ret) / 1000);
	
	console.log(rtn);
	
	rtn = (rtn <= 0)?(Math.round(ret) + " m"):(rtn+" km")

	//return rtn;
	return Math.round(ret);
}