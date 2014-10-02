$( document ).ready(function() {
  $(".slideshow").owlCarousel({
    slideSpeed: 300,
    singleItem: true,
    autoPlay: true,

    // Responsive
    responsive: true,
    responsiveRefreshRate : 50,
    responsiveBaseWidth: window,
  });
});


