<?php
session_start();
include "database_connection.php";
$sql = "SELECT * FROM shop";
$result = mysqli_query($conn,$sql);
            
$geojson = array(
    "type" => "FeatureCollection",
    "features" => array()
);

while($row = mysqli_fetch_array($result))
{
    $properties = $row;
    
    unset($properties["latitude"]);
    unset($properties["longitude"]);

    $feature = array(
        "type" => "Feature",
        "properties" => $properties,
        "geometry" => array(
            "type" => "Point",
            "coordinates" => array(
                $row["longitude"],
                $row["latitude"]
            )
        )
    );

    array_push($geojson["features"], $feature);

 $shops_array[] = $row;
}


$sql = "SELECT * FROM shop INNER JOIN offer WHERE shop.shop_id=offer.shop_id";
$result = mysqli_query($conn,$sql);

$offers = array(
    "type" => "FeatureCollection",
    "features" => array()
);

if(mysqli_num_rows($result) > 0) 
{
    while($row = mysqli_fetch_array($result))
    {
        $properties = $row;
        
        unset($properties["latitude"]);
        unset($properties["longitude"]);

        $feature = array(
            "type" => "Feature",
            "properties" => $properties,
            "geometry" => array(
                "type" => "Point",
                "coordinates" => array(
                    $row["longitude"],
                    $row["latitude"]
                )
            )
        );

        array_push($offers["features"], $feature);
    }
}

$sql = "SELECT DISTINCT shop.*, category.categ_name
FROM shop
JOIN offer ON shop.shop_id = offer.shop_id
JOIN product ON offer.product_id = product.product_id
JOIN category ON product.category_id = category.id
WHERE category.categ_name = 'Τρόφιμα'";


$result = mysqli_query($conn,$sql);

$trofima = array(
    "type" => "FeatureCollection",
    "features" => array()
);

if(mysqli_num_rows($result) > 0) 
{
    while($row = mysqli_fetch_array($result))
    {
        $properties = $row;
        
        unset($properties["latitude"]);
        unset($properties["longitude"]);

        $feature = array(
            "type" => "Feature",
            "properties" => $properties,
            "geometry" => array(
                "type" => "Point",
                "coordinates" => array(
                    $row["longitude"],
                    $row["latitude"]
                )
            )
        );

        array_push($trofima["features"], $feature);
    }
}

// Execute the SQL query for Ποτά-Αναψυτικά and store the results in $pota
$sql = "SELECT DISTINCT shop.*, category.categ_name
FROM shop
JOIN offer ON shop.shop_id = offer.shop_id
JOIN product ON offer.product_id = product.product_id
JOIN category ON product.category_id = category.id
WHERE category.categ_name = 'Ποτά-Αναψυτικά'";

$result = mysqli_query($conn, $sql);

$pota = array(
    "type" => "FeatureCollection",
    "features" => array()
);

if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_array($result)) {
        $properties = $row;

        unset($properties["latitude"]);
        unset($properties["longitude"]);

        $feature = array(
            "type" => "Feature",
            "properties" => $properties,
            "geometry" => array(
                "type" => "Point",
                "coordinates" => array(
                    $row["longitude"],
                    $row["latitude"]
                )
            )
        );

        array_push($pota["features"], $feature);
    }
}

// Execute the SQL query for Βρεφικά and store the results in $vrefika
$sql = "SELECT DISTINCT shop.*, category.categ_name
FROM shop
JOIN offer ON shop.shop_id = offer.shop_id
JOIN product ON offer.product_id = product.product_id
JOIN category ON product.category_id = category.id
WHERE category.categ_name = 'Βρεφικά'";

$result = mysqli_query($conn, $sql);

$vrefika = array(
    "type" => "FeatureCollection",
    "features" => array()
);

if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_array($result)) {
        $properties = $row;

        unset($properties["latitude"]);
        unset($properties["longitude"]);

        $feature = array(
            "type" => "Feature",
            "properties" => $properties,
            "geometry" => array(
                "type" => "Point",
                "coordinates" => array(
                    $row["longitude"],
                    $row["latitude"]
                )
            )
        );

        array_push($vrefika["features"], $feature);
    }
}

// Execute the SQL query for Καθαριότητα and store the results in $clean
$sql = "SELECT DISTINCT shop.*, category.categ_name
FROM shop
JOIN offer ON shop.shop_id = offer.shop_id
JOIN product ON offer.product_id = product.product_id
JOIN category ON product.category_id = category.id
WHERE category.categ_name = 'Καθαριότητα'";

$result = mysqli_query($conn, $sql);

$clean = array(
    "type" => "FeatureCollection",
    "features" => array()
);

if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_array($result)) {
        $properties = $row;

        unset($properties["latitude"]);
        unset($properties["longitude"]);

        $feature = array(
            "type" => "Feature",
            "properties" => $properties,
            "geometry" => array(
                "type" => "Point",
                "coordinates" => array(
                    $row["longitude"],
                    $row["latitude"]
                )
            )
        );

        array_push($clean["features"], $feature);
    }
}

// Execute the SQL query for Για κατοικίδια and store the results in $pets
$sql = "SELECT DISTINCT shop.*, category.categ_name
FROM shop
JOIN offer ON shop.shop_id = offer.shop_id
JOIN product ON offer.product_id = product.product_id
JOIN category ON product.category_id = category.id
WHERE category.categ_name = 'Για κατοικίδια'";

$result = mysqli_query($conn, $sql);

$pets = array(
    "type" => "FeatureCollection",
    "features" => array()
);

if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_array($result)) {
        $properties = $row;

        unset($properties["latitude"]);
        unset($properties["longitude"]);

        $feature = array(
            "type" => "Feature",
            "properties" => $properties,
            "geometry" => array(
                "type" => "Point",
                "coordinates" => array(
                    $row["longitude"],
                    $row["latitude"]
                )
            )
        );

        array_push($pets["features"], $feature);
    }
}





?> <html>
<head>
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.3.0/dist/leaflet.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/leaflet-search@3.0.2/dist/leaflet-search.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/leaflet.locatecontrol@0.79.0/dist/L.Control.Locate.min.css">
<script src="https://unpkg.com/leaflet@1.3.0/dist/leaflet.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/leaflet-search/3.0.2/leaflet-search.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/leaflet.locatecontrol@0.79.0/dist/L.Control.Locate.min.js" charset="utf-8"></script></head>
    

<body>


<div class="container">
        <button id="profileButton">
            <img id="profileImage" src="pngwing.com.png" alt="Human Figure">
        </button>
    </div>

 <script>
        document.getElementById("profileButton").addEventListener("click", function() {
            window.location.href = "admin_page.php";
        });
    </script>

<div id="map">
</div>
</body>




</html>
<style>
#map{width:100%;height:110vh}
#profileImage {
    width: 50px; 
    height: auto; 
    position: absolute;
    bottom: 20px; 
    right: 20px; 
    z-index: 1000; 
}
</style>
<script>
const shops = <?php echo json_encode($geojson, JSON_NUMERIC_CHECK); ?>;
const shops_sales = <?php echo json_encode($offers, JSON_NUMERIC_CHECK); ?>;
const trofima = <?php echo json_encode($trofima, JSON_NUMERIC_CHECK); ?>;
const pota = <?php echo json_encode($pota, JSON_NUMERIC_CHECK); ?>;
const vrefika = <?php echo json_encode($vrefika, JSON_NUMERIC_CHECK); ?>;
const clean = <?php echo json_encode($clean, JSON_NUMERIC_CHECK); ?>;
const pets = <?php echo json_encode($pets, JSON_NUMERIC_CHECK); ?>;

var marker;


let map = L.map('map').locate({setView: true, maxZoom: 17}).on('locationfound', function(e){ //Arxikopoihsh xarth sto location toy xrhsth alliws an den mporei na to vrei tote emfanizei mhnyma lathoys
            var lat = e.latitude;
            var long = e.longitude; 


        }).on('locationerror', function(e){
            console.log(e);
            alert("Location access denied.");
        });
let osmUrl='https://tile.openstreetmap.org/{z}/{x}/{y}.png';
let osmAttrib='Map data © <a href="https://openstreetmap.org">OpenStreetMap</a> contributors';
let osm = new L.TileLayer(osmUrl, {attribution: osmAttrib});
map.addLayer(osm);

L.control.locate().addTo(map); //Eisagwgi koympioy poy estiazei sto location toy xrhsth 


var shopsLayer = new L.GeoJSON(shops, { //Dhmiourgia markers vasei toy json poy prokyptei apo thn antlhsh dedomenwn katasthmatwn apo th vash
            onEachFeature: function (feature, marker) {
            marker.bindPopup('<h2>'+ feature.properties.name + " " + feature.properties.shop_id);
            
            }
        });

        shopsLayer.addTo(map);





let controlSearch1 = new L.Control.Search({ //Dhmioyrgia toy search bar analoga me to onoma gia kathe stoixeio toy layer poy periexei ta markers katasthmatwn
            position: "topleft",
            layer: shopsLayer,
            propertyName: "name",
            initial: false,
            zoom: 20,
            marker: false
        });



        map.addControl(controlSearch1);


var offerLayer = new L.GeoJSON(shops_sales, { //Me vash to geojson twn katasthmatwn me prosfores ftiakse to marker me diaforetiko xrwma kai diaforetikes epiloges sto popup
            onEachFeature: function (feature, marker) {
            marker.bindPopup('<h2>'+ feature.properties.name + " " + feature.properties.shop_id).setIcon(handColorIcon("red"));
            }
        });

        offerLayer.addTo(map);






var trofimaLayer = new L.GeoJSON(trofima, { //Me vash to geojson twn katasthmatwn me prosfores ftiakse to marker me diaforetiko xrwma kai diaforetikes epiloges sto popup
            onEachFeature: function (feature, marker) {
            marker.bindPopup('<h2>'+ feature.properties.name + " " + feature.properties.shop_id).setIcon(handColorIcon("gold"));
            }
        });
var potaLayer = new L.GeoJSON(pota, { //Me vash to geojson twn katasthmatwn me prosfores ftiakse to marker me diaforetiko xrwma kai diaforetikes epiloges sto popup
            onEachFeature: function (feature, marker) {
            marker.bindPopup('<h2>'+ feature.properties.name + " " + feature.properties.shop_id).setIcon(handColorIcon("gold"));
            }
        });
var vrefikaLayer = new L.GeoJSON(vrefika, { //Me vash to geojson twn katasthmatwn me prosfores ftiakse to marker me diaforetiko xrwma kai diaforetikes epiloges sto popup
            onEachFeature: function (feature, marker) {
            marker.bindPopup('<h2>'+ feature.properties.name + " " + feature.properties.shop_id).setIcon(handColorIcon("gold"));
            }
        });
var cleanLayer = new L.GeoJSON(clean, { //Me vash to geojson twn katasthmatwn me prosfores ftiakse to marker me diaforetiko xrwma kai diaforetikes epiloges sto popup
            onEachFeature: function (feature, marker) {
            marker.bindPopup('<h2>'+ feature.properties.name + " " + feature.properties.shop_id).setIcon(handColorIcon("gold"));
            }
        });
var petsLayer = new L.GeoJSON(pets, { //Me vash to geojson twn katasthmatwn me prosfores ftiakse to marker me diaforetiko xrwma kai diaforetikes epiloges sto popup
            onEachFeature: function (feature, marker) {
            marker.bindPopup('<h2>'+ feature.properties.name + " " + feature.properties.shop_id).setIcon(handColorIcon("gold"));
            }
        });
var fiveLayers = L.layerGroup([trofimaLayer,potaLayer,vrefikaLayer,cleanLayer,petsLayer]);


let controlSearch2 = new L.Control.Search({ //Dhmioyrgia toy search bar analoga me to onoma gia kathe stoixeio toy layer poy periexei ta markers katasthmatwn
            position: "topright",
            layer: fiveLayers,
            propertyName: "categ_name",
            initial: false,
            zoom: 0,
            marker: false
        });




var resetLayersButton = L.control({ position: 'topright' });

resetLayersButton.onAdd = function (map) {
    var button = L.DomUtil.create('button', 'reset-layers-button');
    button.innerHTML = 'Reset Layers';

    button.addEventListener('click', function () {

        fiveLayers.eachLayer(function(layer) {
            map.removeLayer(layer);
        });

        map.addLayer(shopsLayer);
        map.addControl(controlSearch1);
        map.addLayer(offerLayer); 
        map.removeControl(controlSearch2);     
    });

    return button;
};

resetLayersButton.addTo(map);

var categorySearchButton = L.control({ position: 'topright' });

categorySearchButton.onAdd = function (map) {
    var button = L.DomUtil.create('button', 'category-search-button');
    button.innerHTML = 'Category Search';

    button.addEventListener('click', function () {
        map.removeControl(controlSearch1);
        map.removeLayer(shopsLayer);
        map.removeLayer(offerLayer);
        map.addControl(controlSearch2);
        
       
        fiveLayers.eachLayer(function(layer) {
            map.addLayer(layer);
        });
    });



    return button;
};

categorySearchButton.addTo(map);


controlSearch2.on('search:locationfound', function(e) {

 map.removeControl(controlSearch1);
    map.removeLayer(shopsLayer);
    map.removeLayer(offerLayer);


 // Hide all layers in the layer group
    fiveLayers.eachLayer(function(layer) {
        map.removeLayer(layer);
    });

    var categoryName = e.text; // Get the category name from the search result
   



    // Show the layer that matches the category name
    switch (categoryName) {
        case 'Τρόφιμα':
            fiveLayers.addLayer(trofimaLayer);
            break;
        case 'Ποτά-Αναψυτικά':
            fiveLayers.addLayer(potaLayer);
            break;
        case 'Βρεφικά':
            fiveLayers.addLayer(vrefikaLayer);
            break;
        case 'Καθαριότητα':
            fiveLayers.addLayer(cleanLayer);
            break;
        case 'Για κατοικίδια':
            fiveLayers.addLayer(petsLayer);
            break;
        default:
            // Handle the case where the category name is not recognized
            break;
    }
});





       function handColorIcon(color){ //Sinartisi gia thn allagh toy xrwmatos toy marker
            return new L.Icon({
                iconUrl:
                    `https://cdn.rawgit.com/pointhi/leaflet-color-markers/master/img/marker-icon-2x-${color}.png`,
                shadowUrl:
                    'https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/images/marker-shadow.png',
                iconSize: [25, 41],
                iconAnchor: [12, 41],
                popupAnchor: [1, -34],
                shadowSize: [41, 41],
            });
        }</script>


