$(document).ready(function() {
  console.log($('hey look, it loaded'))

  handler = Gmaps.build('Google');
  handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
    markers = handler.addMarkers([
      {
        "lat": 32.804371,
        "lng": -79.887905,
        "picture": {
          "url": "https://cdn4.iconfinder.com/data/icons/font-awesome-2/2048/f12a-20.png",
          "width":  36,
          "height": 36
        },
        "infowindow": "Hey There!"
      }
    ]);
    handler.bounds.extendWith(markers);
    handler.fitMapToBounds();
  });
})