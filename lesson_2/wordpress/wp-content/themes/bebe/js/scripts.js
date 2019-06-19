"use strict";

/* Background Awesomeness
/* ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## */
jQuery(function($) {
  var $window = $(window);
  var $stars1 = $('#stars1'); // Smaller
  var $stars2 = $('#stars2'); // Bigger
  var $cloud1 = $('#cloud1'); // Cloud Left 1
  var $cloud2 = $('#cloud2'); // Cloud Left 2
  var $cloud3 = $('#cloud3'); // Cloud Left 3
  var $cloud4 = $('#cloud4'); // Cloud Right 1
  var $cloud5 = $('#cloud5'); // Cloud Right 2

  $(window).scroll(function()
  {
      var yPos = -($window.scrollTop());

      // Stars
      $stars1.css({ top: (0   + (yPos / 8)) + 'px' });
      $stars2.css({ top: (0   + (yPos / 3 )) + 'px' });

      // Clouds Left
      $cloud1.css({ top: (10  + (yPos )) + 'px' });
      $cloud2.css({ top: (190 + (yPos )) + 'px' });
      $cloud3.css({ top: (410 + (yPos )) + 'px' });

      // Clouds Right
      $cloud4.css({ top: (0   + (yPos )) + 'px' });
      $cloud5.css({ top: (290 + (yPos )) + 'px' });
  });

  /* Scroll To Top
  /* ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## */
  $("a[href='#top']").click(function() {
      $("html, body").animate({ scrollTop: 0 }, "slow");
      return false;
  });

  /* Drop Menu
  /* ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## */

  $('.ul-drop > li').click(function(){
      $(this).children('ul').toggle({display: "toggle"});
  });

  $('.drop-menu > a').click(function(){
      $(this).parents('div').children('.ul-drop').toggle({display: "toggle"});
  });

  var $slider = $('#slider'),
      $photoGallery = $('#photo-gallery'),
      $aboutSlider = $('#about-slider'),
      $roomSlider = $('#room-slider'),
      $gallerySlider = $('#gallery-slider');

  /* Home
  /* ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## */
  if($slider.length) {
    $slider.flexslider({
        animation: "fade",
        controlNav: false,
        nextText: "",
        prevText: ""
    });
  }

  if($photoGallery.length) {
    $photoGallery.flexslider({
        animation: "slide",
        controlNav: false,
        nextText: "",
        prevText: ""
    });
  }

  /* Init About
  /* ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## */
  if($aboutSlider.length) {
    $aboutSlider.flexslider({
        animation: "fade",
        controlNav: false,
        nextText: "",
        prevText: ""
    });
  }

  /* Init Room
  /* ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## */
  if($roomSlider.length) {
    $roomSlider.flexslider({
        animation: "fade",
        controlNav: false,
        nextText: "",
        prevText: ""
    });
  }

  /* Init Gallery
  /* ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## */
  if($gallerySlider.length) {
    $gallerySlider.flexslider({
        animation: "fade",
        controlNav: true,
        nextText: "",
        prevText: ""
    });
  }
});
