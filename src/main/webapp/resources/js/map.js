var map = L.map('map').setView([35.861509, 128.572311], 13);

//var layer = L.tileLayer(
	//'https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?lang=zh&access_token={accessToken}', {
	//'https://{s}.basemaps.cartocdn.com/rastertiles/voyager/{z}/{x}/{y}.png',{
    //우측하단 설명글
//    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
//    maxZoom: 18,
//    id: 'mapbox/streets-v11',
//    tileSize: 512,
//    zoomOffset: -1,
//    accessToken: 'pk.eyJ1IjoiZGJja2Q5OTkiLCJhIjoiY2wxem80NnU5MDJqOTNwcTR1NXExd3RvcSJ9.SYBe6JfYCNXcWcF7VgYg7A',
//}).addTo(map);

var Jawg_Terrain = L.tileLayer('https://{s}.tile.jawg.io/jawg-terrain/{z}/{x}/{y}{r}.png?access-token={accessToken}', {
	attribution: '<a href="http://jawg.io" title="Tiles Courtesy of Jawg Maps" target="_blank">&copy; <b>Jawg</b>Maps</a> &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors',
	minZoom: 0,
	maxZoom: 22,
	subdomains: 'abcd',
	accessToken: 'vAMEUGsqvj1NebwCreykRA1ZKXEVzyyRsUX7d0Il5wnGXe2BoJPTtUAVBaTjYGEB'
}).addTo(map);

function onMapClick(e) {
    L.popup()
	    .setLatLng(e.latlng)
	    .setContent('You clicked the map at ' + e.latlng.toString())
	    .openOn(map);
}

map.on('click', onMapClick);


$(".btn").click(function() 
{ $("#menu").addClass("open"); }); 

$(".close").click(function() { $("#menu").
removeClass("open"); });

$(".btn").click(function () { $("#menu,.page_cover,html").addClass("open"); 
 window.location.hash = "#open"; }); 
window.onhashchange = function () 
{ if (location.hash != "#open") { 
	 $("#menu,.page_cover,html").removeClass("open");  } };

