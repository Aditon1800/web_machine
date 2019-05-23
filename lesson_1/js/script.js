$(document).ready(function() {
  "use strict";

  var $slider = $('.js-slider'),
      $offerSlider = $('.js-offersSlider');

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

  var $customOffersBtnNext = $('.js-offersSliderNext'),
      $customOffersBtnPrev = $('.js-offersSliderPrev');

  $offerSlider.slick({
    infinite: true,
    dots: false,
    arrows: true,
    speed: 500,
    slidesToShow: 4,
    slidesToScroll: 1,
    nextArrow: $customOffersBtnNext,
    prevArrow: $customOffersBtnPrev
  });



});