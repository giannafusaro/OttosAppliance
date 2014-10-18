 # Place all the behaviors and hooks related to the matching controller here.
 # All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http: coffeescript.org/

$(document).ready ->

  #########################################
  #######   Google Map   ##################
  #########################################

  # create a LatLng object containing the coordinate for the center of the map
  latlng = new google.maps.LatLng(37.6132591,-122.4047675)

   # prepare the map properties
  options =
  zoom: 15
  center: latlng
  mapTypeId: google.maps.MapTypeId.ROADMAP
  navigationControl: true
  mapTypeControl: false
  scrollwheel: false
  disableDoubleClickZoom: true
  offsetWidth: true


  # initialize the map object
  map = new google.maps.Map(document.getElementById("google-map"), options)

  # add Marker
  marker1 = new google.maps.Marker(
    position: latlng
    map: map
  )

  # add listener for a click on the pin
  google.maps.event.addListener marker1, "click", ->
    infowindow.open map, marker1
    return


  # add information window
  infowindow = new google.maps.InfoWindow(content: "<div class=\"info\"><strong>Otto's Appliance Service Inc.</strong><br>1663 El Camino Real</div>")
  return

return
