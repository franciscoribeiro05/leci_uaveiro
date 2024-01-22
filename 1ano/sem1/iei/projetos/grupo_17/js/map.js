//mapa


// map size
const mapDiv = document.getElementById('myMap');
let mapWidth = 0;
let mapHeight = 0;

function mapSize(){
    mapWidth = window.innerWidth;
    mapHeight = window.innerHeight;

    if(mapWidth > 1050){
        mapDiv.style.width = (mapWidth * 0.6) + 'px' ;
        mapDiv.style.height = (mapHeight * 0.6) + 'px';
        mapDiv.style.zIndex = 0;
    } else {
        mapDiv.style.width = (mapWidth * 0.9) + 'px' ;
        mapDiv.style.height = (mapHeight * 0.6) + 'px';
    }
    
}

mapSize();

window.addEventListener('resize', mapSize);

var map = new L.Map("myMap", {center: [40.633258,-8.659097],zoom: 17});
var iconeUA = L.icon({ iconUrl: "images/ua.png" });

var osmUrl="http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png";
var osmAttrib="Map data OpenStreetMap contributors";
var osm = new L.TileLayer(osmUrl, {attribution: osmAttrib});

var pontos = [
    L.marker([40.633258, -8.659097]),
];


for(let i in pontos) {
    pontos[i].addTo(map);
}

var DETI = L.polygon(
    [
        [40.63280324574582, -8.659118056166335],
        [40.63280324574582, -8.65928435312526],
        [40.633067863427605, -8.659295081961318],
        [40.63307193446068, -8.659402370321914],
        [40.63307193446068, -8.659402370321914],
        [40.63313218542286, -8.659416317841535],
        [40.63313218542286, -8.659416317841535],
        [40.63313707070753, -8.659483909541452],
        [40.63308821834199, -8.659494638377511],
        [40.63308821834199, -8.659650206500375],
        [40.63349857705186, -8.659664153856285],
        [40.63350671906524, -8.659492492479332],
        [40.633250245167325, -8.659492492479332],
        [40.633244545761016, -8.659362673824946],
        [40.633191622448614, -8.659357309406914],
        [40.633183480396816, -8.659292936390557],
        [40.633183480396816, -8.659292936390557],
        [40.6332209338765, -8.659287571972529],
        [40.6332209338765, -8.659121275013606]
    ], { color: "black" }).bindPopup("DETI");
DETI.addTo(map);


map.addLayer(osm);

function showCoordinates(e){
    var s = document.getElementById("coordinates");
    s.innerHTML = "Latitude, Longitude = "+e.latlng.lat+", "+e.latlng.lng;
}

L.marker([40.633258, -8.659097], {icon: iconeUA}).bindPopup("LABI@DETI").addTo(map);
