
//아이콘 설정
var leafletIcon = L.icon({
	iconUrl: "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png",
	iconSize: [48, 70],
	iconAnchor: [22, 94],
	popupAnchor: [0, -90]
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

/*for(var i = 0; i < marker.length; i++){
	marker[i].bindPopup("<b>마커표시했다.</b><br>여기 정보 넣는다").openPopup();
}

map.on('click', onMapClick);*/




$(function() {

	markerShow();
})

function markerShow() {
	
	$(document).ready(function(){
		$("#changeTest").change(function(){
			console.log("값변경테스트 : " + $(this).val());
		})
	})
	$.ajax({
		url: '/markerShow',
		type: 'post',

		success: function(data) {
			$(data).each(function() {
				//console.log('test1값 : ' + this.wgs84_longitude);
				if(diaper_yes){
					
				}else{
				marker.push(L.marker([this.wgs84_latitude, this.wgs84_longitude], { icon: leafletIcon }).addTo(map).bindPopup(this.restroom_name).openPopup());
				}
			})
			console.log('end');
		},
		error: function(request, status, error) {
			alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
		}
	});
};

map.on('click', onMapClick);


