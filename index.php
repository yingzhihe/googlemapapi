<html>
  <head>
    <title>Simple Map</title>
    <meta name="viewport" content="initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
	<script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.0.3.js"></script>
    <meta charset="utf-8">
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
    



  </head>
  <body>
    <div id="map"></div>
    
  </body>
</html>
<script type="text/javascript">
  var map;
  function getData() {
      console.log('test');
    $.ajax({
    url: "get_locations.php",
    async: true,
    dataType: 'json',
    success: function (data) {
      console.log(data);
      //load map
      init_map(data);
    }
  });  
  }
  
  function init_map(data) {
      console.log('praveen');
      console.log(data[0]['lat']);
        var map_options = {
            zoom: 14,
            center: new google.maps.LatLng(data[0]['lat'], data[0]['lon'])
          }
        map = new google.maps.Map(document.getElementById("map"), map_options);
       marker = new google.maps.Marker({
            map: map,
            position: new google.maps.LatLng(data[0]['lat'], data[0]['lon'])
        });
        infowindow = new google.maps.InfoWindow({
            content: data[0]['address']
        });
        google.maps.event.addListener(marker, "click", function () {
            infowindow.open(map, marker);
        });
        infowindow.open(map, marker);
    }
    
    
 </script>
 <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBfcwVTCwWTisOjujfp98wN4pUxVvk6P2o&callback=getData" async defer></script>  

