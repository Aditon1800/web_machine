$(document).ready(function() {
  "use strict";

  var $slider = $('.js-slider');

  $slider.slick({
    dots: true,
    arrows: false,
    infinite: true,
    speed: 500,
    slidesToShow: 1,
    slidesToScroll: 1,
    vertical: true,
    verticalSwiping: true
  });

});