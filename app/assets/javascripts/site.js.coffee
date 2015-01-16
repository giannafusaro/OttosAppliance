 # Place all the behaviors and hooks related to the matching controller here.
 # All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http: coffeescript.org/

$(document).ready ->

  ##########################
  ####### Skrollr.js ########
  ##########################
  s = skrollr.init(render: (data) ->
    #Debugging - Log the current scroll position.
    #console.log(data.curTop);
  )
  console.log(s)
  


  #########################################
  ######## Fixed Header ##################
  ########################################

  $(window).scroll ->
    if $(this).scrollTop() > 529
      $(".pure-menu-fixed").removeClass "scroll-top"
    else
      $(".pure-menu-fixed").addClass "scroll-top"



  if $(this).scrollTop() > 529
    $(".pure-menu-fixed").removeClass "scroll-top"
  else
    $(".pure-menu-fixed").addClass "scroll-top"



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


  # add information window
  infowindow = new google.maps.InfoWindow(content: "<div class=\"info\"><a href=\"https://www.google.com/maps/dir/''/otto's+appliance+service,+inc.,+el+camino+real,+millbrae,+ca/@37.613286,-122.4390378,13z/data=!3m1!4b1!4m8!4m7!1m0!1m5!1m1!1s0x808f77777340c3f5:0x8e9e9781e1a01fb4!2m2!1d-122.404705!2d37.613291\"><strong>Otto's Appliance Service, Inc.</strong></a><br/>1663 El Camino Real</div>")
  infowindow.open map, marker1
