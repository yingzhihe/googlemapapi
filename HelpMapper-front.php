<html>

<head>
    <title>Simple goole Map</title>
    <meta name="viewport" content="initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.0.3.js"></script>
    <meta charset="utf-8">
</head>

<body>
    <div id="map-canvas" style="width: 800px; height: 500px;">
    </div>

</body>

</html>
<script type="text/javascript">
var map;
var latlng;
var infowindow;

$(document).ready(function() {
    //get data set from the backend in a json structure
    var data = [{
            "description": "Location A",
            "location": "G133",
            "latitude": "51.066347",
            "longitude": "-114.086621"
        },
        {
            "description": "Location B",
            "location": "MB320",
            "latitude": "51.065453",
            "longitude": "-114.088841"
        }
    ]
    //if backend servie ready
    // $.ajax({ //library for JS help front-end to talk back-end, without having to reload the page
    //   url: "HelpMapper-backend.php",
    //   async: true,
    //   dataType: 'json', // is a language
    //   success: function (data) {
    //     console.log(data);
    //     ViewCustInGoogleMap(data);
    //   }
    // }); 
    // console.log(data);
    ViewCustInGoogleMap(data);
});

function ViewCustInGoogleMap(data) {
    var gm = google.maps; //create instance of google map
    //add initial map option
    var mapOptions = {
        center: new google.maps.LatLng(51.065912, -114.089356), // Coimbatore = (11.0168445, 76.9558321)
        zoom: 16,
        //mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    //bine html tag to show the google map and bind mapoptions
    map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
    //create instance of google information windown
    infowindow = new google.maps.InfoWindow();
    var marker, i;
    // var MarkerImg = "https://maps.gstatic.com/intl/en_us/mapfiles/markers2/measle.png";
    // var MarkerImg2 = "https://maps.gstatic.com/intl/en_us/mapfiles/markers2/measle_blue.png";

    //loop through all the locations and point the mark in the google map
    for (var i = 0; i < data.length; i++) {
        marker = new gm.Marker({
            position: new gm.LatLng(data[i]['latitude'], data[i]['longitude']),
            map: map,
            // icon: MarkerImg
        });

  
        //add info for popup tooltip
        google.maps.event.addListener(
            marker,
            'click',
            (
                function(marker, i) {
                    return function() {
                        infowindow.setContent(data[i]['location'] + data[i]['description']);
                        infowindow.open(map, marker);
                    };
                }
            )(marker, i)

        );
    }

}
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCgDWBXUaAtdpQJ8wjRHzQLUFrIaE3RYG0&sensor=true"
    type="text/javascript"></script>