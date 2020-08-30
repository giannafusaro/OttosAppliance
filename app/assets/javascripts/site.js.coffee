 # Place all the behaviors and hooks related to the matching controller here.
 # All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http: coffeescript.org/



$(document).ready ->

  #########################################
  ######## Fixed Header ##################
  ########################################

  $(window).scroll ->

    if (($('body').hasClass('layout-services') or $('body').hasClass('layout-contact_us')) or $(this).scrollTop() > 529)
      $(".pure-menu-fixed").removeClass "scroll-top"
    else
      $(".pure-menu-fixed").addClass "scroll-top"



  if (($('body').hasClass('layout-services') or $('body').hasClass('layout-contact_us')) or $(this).scrollTop() > 529)
    $(".pure-menu-fixed").removeClass "scroll-top"
  else
    $(".pure-menu-fixed").addClass "scroll-top"
