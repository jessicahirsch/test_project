var yelp = "bpZZ3ELX6Y9r3-OWs6eTsA"
var google = "AIzaSyBzv6GGXlt2wPNoJG8_g5T0AX0Izc8_ajE"
var googlePlace = "AIzaSyBnk4IcG8MJ0i_rdjSqHvfSzsf0oxhrxO4"

// var yelpCall = function() {
//   $.ajax({
//     url: "https://api.yelp.com/v2/search?term=" food&bounds=37.900000,-122.500000|37.788022,-122.399797&limit=3
// ",
//     method: "GET",
//     success: function(data) {
//       console.log(data)
//     }
//   })
// }

// yelpCall();

var googlePlacesCall = function() {
  $.ajax({
    url: "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=-33.8670522,151.1957362&radius=500&type=restaurant&keyword=cruise&key=AIzaSyBnk4IcG8MJ0i_rdjSqHvfSzsf0oxhrxO4",
    method: "GET",
    success: function(data) {
      console.log(data)
    }
  })
}

googlePlacesCall();
