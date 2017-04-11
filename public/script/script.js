var giphyKey = "dc6zaTOxFJmzC"

$(document).ready(function(){
  console.log("loaded");
  var $body = $('body');
  var button = $('#click-me');
  // var item = document.querySelectorAll('.item');
  var input = $('#giphy-search');

  // getResults function goes here

  button.click(function() {
  // $(item.empty(''));
  var query = $(input.val());
  console.log(query)
  var getResults = function(query) {
    $.ajax({
    'method': 'GET',
    'url': 'http://api.giphy.com/v1/gifs/search?q=' + query + '&api_key=dc6zaTOxFJmzC&limit=5',
    'success': function(results) {
      // console.log(query);
      // let data = results.data;
      var $results = $('<ul></ul>');
      results.data.forEach(function(result) {
        $item = $('<li></li>');
        $thumbnail = $('<img></img>');
        $description = $('<div></div>');
        $rating = $('<p></p>');
        $type = $('<p></p>');
        $source = $('<p></p>');
        $item.addClass('item');
        $thumbnail.addClass('thumbnail');
        $rating.addClass('rating');
        $type.addClass('type');
        $source.addClass('source');
        $thumbnail.attr('src', result.images.downsized.url);
        $rating.text("rating:" + result.rating);
        $type.text("type:" + result.type);
        $source.text("source:" + result.source);
        $description.append($rating, $type, $source);
        $item.append($description, $thumbnail);
        $results.append($item);
        $body.append($results);
      })
    }
  });
}
  // Event Handlers go here

});

      // This example adds a search box to a map, using the Google Place Autocomplete
      // feature. People can enter geographical searches. The search box will return a
      // pick list containing a mix of places and predicted search terms.

      // This example requires the Places library. Include the libraries=places
      // parameter when you first load the API. For example:
      // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">

});

      function getLocation() {
        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(initMap);
        }


      var map;
      var infowindow;

      function initMap(pos) {
        var pyrmont = {lat: pos.coords.latitude, lng: pos.coords.longitude};

        map = new google.maps.Map(document.getElementById('map'), {
          center: pyrmont,
          zoom: 15
        });

        infowindow = new google.maps.InfoWindow();
        var service = new google.maps.places.PlacesService(map);
        service.nearbySearch({
          location: pyrmont,
          radius: 500,
          type: ['liquor_store']
        }, callback);
      }

      function callback(results, status) {
        if (status === google.maps.places.PlacesServiceStatus.OK) {
          for (var i = 0; i < results.length; i++) {
            createMarker(results[i]);
          }
        }
      }

      function createMarker(place) {
        var placeLoc = place.geometry.location;
        var marker = new google.maps.Marker({
          map: map,
          position: place.geometry.location
        });

        google.maps.event.addListener(marker, 'click', function() {
          infowindow.setContent(place.name);
          infowindow.open(map, this);
        });
      }
    }









// var yelp = "bpZZ3ELX6Y9r3-OWs6eTsA"
// var google = "AIzaSyBzv6GGXlt2wPNoJG8_g5T0AX0Izc8_ajE"
// var googlePlace = "AIzaSyBnk4IcG8MJ0i_rdjSqHvfSzsf0oxhrxO4"
// var key = "AIzaSyDkHjZ8oRPlAJsjAJPm9Fe28cvtBld5A7Y"

// var yelpCall = function() {
//   $.ajax({
//     url: "https://api.yelp.com/v2/search?term=" food&bounds=37.900000,-122.500000|37.788022,-122.399797&limit=3
// "
//     method: "GET",
//     success: function(data) {
//       console.log(data)
//     }
//   })
// }

// yelpCall();

// $(document).ready(function(){
//   $( ".but" ).on( "click", function() {
//   GetRoute();
// })

// var source, destination;
// var directionsDisplay;
// var directionsService = new google.maps.DirectionsService();
// google.maps.event.addDomListener(window, 'load', function () {
//     new google.maps.places.SearchBox(document.getElementById('start'));
//     new google.maps.places.SearchBox(document.getElementById('end'));
//     directionsDisplay = new google.maps.DirectionsRenderer({ 'draggable': true });
// });

// function GetRoute() {
//     var nyc = new google.maps.LatLng(40.730610, -73.935242);
//     var mapOptions = {
//         zoom: 7,
//         center: nyc
//     };

//    map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
//     directionsDisplay.setMap(map);
//     directionsDisplay.setPanel(document.getElementById('dvPanel'));

//    //*********DIRECTIONS AND ROUTE**********************//
//     source = document.getElementById("start").value;
//     destination = document.getElementById("end").value;

//    var request = {
//         origin: source,
//         destination: destination,
//         travelMode: google.maps.TravelMode.BICYCLING
//     };
//     directionsService.route(request, function (response, status) {
//         if (status == google.maps.DirectionsStatus.OK) {
//             directionsDisplay.setDirections(response);
//         }
//     });
//        var geocoder = new google.maps.Geocoder();
//         var address = document.getElementById('start').value;
//         let startLatLng = "";


//        geocoder.geocode({ 'address': address }, function (results, status) {

//            if (status == google.maps.GeocoderStatus.OK) {
//                 var latitude = results[0].geometry.location.lat();
//                 var longitude = results[0].geometry.location.lng();
//                 startLatLng+= latitude + '' + longitude;
//                 console.log(startLatLng);

//            }
//             return startLatLng;
//           });


//        var geocoder = new google.maps.Geocoder();
//         var endadd = document.getElementById('end').value;
//         let endLatLng = "";

//        geocoder.geocode({ 'address': endadd }, function (results, status) {

//            if (status == google.maps.GeocoderStatus.OK) {
//                 var latitude = results[0].geometry.location.lat();
//                 var longitude = results[0].geometry.location.lng();
//                 endLatLng+= latitude + '' + longitude;
//                 console.log(endLatLng);

//            }
//             return endLatLng;

//          });


// // .__proto__.geocode["[[FunctionLocation]]"]

//    //*********DISTANCE AND DURATION**********************//
//     var service = new google.maps.DistanceMatrixService();
//     service.getDistanceMatrix({
//         origins: [source],
//         destinations: [destination],
//         travelMode: google.maps.TravelMode.BICYCLING,
//         unitSystem: google.maps.UnitSystem.METRIC,
//         avoidHighways: false,
//         avoidTolls: false
//     }, function (response, status) {
//         if (status == google.maps.DistanceMatrixStatus.OK && response.rows[0].elements[0].status != "ZERO_RESULTS") {
//             var distance = response.rows[0].elements[0].distance.text;
//             var duration = response.rows[0].elements[0].duration.text;
//             var dvDistance = document.getElementById("dvDistance");
//            dvDistance.innerHTML = "";
//             dvDistance.innerHTML += "Distance: " + distance + "<br />";
//             dvDistance.innerHTML += "Duration:" + duration;

//        } else {
//             alert("Unable to find the distance via road.");
//         }
//     });
// }
