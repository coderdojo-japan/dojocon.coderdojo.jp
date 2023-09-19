jQuery(document).ready(function($){

  var header = $('#header');
  var header_top = header.offset().top;

  $(window).scroll(function () {
    if($(this).scrollTop() > header_top) {
      $("body").addClass("header_fix");
    } else if($(this).scrollTop() < header_top + 60) {
      $("body").removeClass("header_fix");
    };
  });


});