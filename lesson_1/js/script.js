$(document).ready(function() {
  "use strict";


  var $slider = $('.js-slider'),
      $offerSlider = $('.js-offersSlider'),
      $twitSlider = $('.js-twitsSlider'),
      $customOffersBtnNext = $('.js-offersSliderNext'),
      $customOffersBtnPrev = $('.js-offersSliderPrev'),
      $customTwitBtnNext = $('.js-twitSliderNext'),
      $customTwitBtnPrev = $('.js-twitSliderPrev');

  // Top slider
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

  // Offers slider
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

  // Twits slider
  $twitSlider.slick({
    dots: false,
    arrows: true,
    infinite: true,
    speed: 500,
    slidesToShow: 1,
    slidesToScroll: 1,
    vertical: true,
    verticalSwiping: true,
    nextArrow: $customTwitBtnNext,
    prevArrow: $customTwitBtnPrev
  });

  $('[data-type="iframe"]').fancybox({
    iframe : {
      css: {
        maxWidth: '960px',
        maxHeight: '540px'
      }
    }
  });


});