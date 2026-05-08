// var multipleCardCarousel = document.querySelector(
//     "#carouselExampleControls"
// );
// if (window.matchMedia("(min-width: 768px)").matches) {
//     var carousel = new bootstrap.Carousel(multipleCardCarousel, {
//         interval: false,
//     });
//     var carouselWidth = $(".carousel-inner")[0].scrollWidth;
//     var cardWidth = $(".carousel-item").width();
//     var scrollPosition = 0;
//     $("#carouselExampleControls .carousel-control-next").on("click", function() {
//         if (scrollPosition < carouselWidth - cardWidth * 4) {
//             scrollPosition += cardWidth;
//             $("#carouselExampleControls .carousel-inner").animate({ scrollLeft: scrollPosition },
//                 600
//             );
//         }
//     });
//     $("#carouselExampleControls .carousel-control-prev").on("click", function() {
//         if (scrollPosition > 0) {
//             scrollPosition -= cardWidth;
//             $("#carouselExampleControls .carousel-inner").animate({ scrollLeft: scrollPosition },
//                 600
//             );
//         }
//     });
// } else {
//     $(multipleCardCarousel).addClass("slide");
// }

// //   2

// var multipleCardCarousel = document.querySelector(
//     "#carouselExampleControls2"
// );
// if (window.matchMedia("(min-width: 768px)").matches) {
//     var carousel = new bootstrap.Carousel(multipleCardCarousel, {
//         interval: false,
//     });
//     var carouselWidth = $(".carousel-inner")[0].scrollWidth;
//     var cardWidth = $(".carousel-item").width();
//     var scrollPosition = 0;
//     $("#carouselExampleControls2 .carousel-control-next").on("click", function() {
//         if (scrollPosition < carouselWidth - cardWidth * 4) {
//             scrollPosition += cardWidth;
//             $("#carouselExampleControls2 .carousel-inner").animate({ scrollLeft: scrollPosition },
//                 600
//             );
//         }
//     });
//     $("#carouselExampleControls2 .carousel-control-prev").on("click", function() {
//         if (scrollPosition > 0) {
//             scrollPosition -= cardWidth;
//             $("#carouselExampleControls2 .carousel-inner").animate({ scrollLeft: scrollPosition },
//                 600
//             );
//         }
//     });
// } else {
//     $(multipleCardCarousel).addClass("slide");
// }

// var intervalId = window.setInterval(function() {
//     var flexreverse = document.getElementById("flexreverse");
//     var center = document.getElementById("center")
//     var center1 = document.getElementById("center1")

//     if (window.innerWidth < 768) {
//         flexreverse.classList.add("flex-column-reverse");
//         flexreverse.classList.add("text-center");
//         center.classList.add("justify-content-center");
//         center1.classList.add("justify-content-center");
//     } else {
//         flexreverse.classList.remove("flex-column-reverse");
//         flexreverse.classList.remove("text-center");
//         center.classList.remove("justify-content-center");
//         center1.classList.remove("justify-content-center");
//     }
// }, 1000);
// loder
$(window).on('load', function() { // makes sure the whole site is loaded 
    $('#status').fadeOut(); // will first fade out the loading animation 
    $('#preloader').delay(350).fadeOut('slow'); // will fade out the white DIV that covers the website. 
    $('body').delay(350).css({
        'overflow': 'visible'
    });
})
// my script start now
function togglemenue(y) {

y.classList.toggle("change-bar");
let mobilenav = document.getElementById("offcanvasExample");
mobilenav.classList.toggle("showmenues-small");
}

// small dive plus and show submenue
$("document").ready(function() {
$(".individuals").click(function() {
    $("#individuals-maishow").toggle();
    $(".minus1").toggle();
    $("#Business-maishow").hide();
    $("#StartUps-maishow").hide();
    $(".minus2").show();
    $(".minus3").show();

});
// business
$(".Business").click(function() {
    $("#Business-maishow").toggle();
    $("#individuals-maishow").hide();
    $("#StartUps-maishow").hide();
    $(".minus2").toggle();
    $(".minus1").show();
    $(".minus3").show();
});
// staturps
$(".StartUps").click(function() {
    $("#StartUps-maishow").toggle();
    $("#individuals-maishow").hide();
    $("#Business-maishow").hide();
    $(".minus3").toggle();
    $(".minus1").show();
    $(".minus2").show();
});

// individuals inner sub menue
// e-filing
$(".e-filing").click(function() {
    $(".show-efiling").toggle();
    $(".show-Tax-Management").hide();
    $(".show-Investments").hide();
});

// Tax-Management
$(".Tax-Management").click(function() {
    $(".show-Tax-Management").toggle();
    $(".show-efiling").hide();
    $(".show-Investments").hide();
});

// Investments
$(".Investments").click(function() {
    $(".show-Investments").toggle();
    $(".show-efiling").hide();
    $(".show-Tax-Management").hide();
});
});
// support script
function mypoptoggle() {
let showsupport = document.getElementById("showsupport");
showsupport.classList.toggle("showsupportslide");
}

// income tax e-fling script
$(document).ready(function() {
$(".e-filing-toggle-btn").click(function() {
    $("#e-filing-toggle").slideToggle();
    $(".close-noti").slideToggle();
    $(".tab_heading").toggleClass("radiusstyle");
    $(".conainer_tab").toggleClass("contianer-border");

});
$(".taxfilling-contianer").click(function() {
    $("p").show();
});
});
// int the media
function showarticles(){
    let article = document.getElementById("articlstrore");
    article.classList.toggle("show-article-click");
}
function closearticle(){
    let article = document.getElementById("articlstrore");
    article.classList.toggle("show-article-click");  
}

// slick slider  script
$(document).ready(function() {

    $('.responsive').slick({
        dots: true,
        // infinite: true,
        autoplay: true,
        autoplaySpeed: 2500,

        // speed: 1300,
        slidesToShow: 4,
        // slidesToScroll: 1,
        responsive: [{
                breakpoint: 1024,
                settings: {
                    slidesToShow: 3,
                    // slidesToScroll: 3,
                    // infinite: true,
                    dots: true

                }
            }, {
                breakpoint: 768,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    arrows: false
                }
            }, {
                breakpoint: 480,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    arrows: false
                }
            }

        ]
    });

     // brands slider
     $('.multiple-items').slick({
        // infinite: true,
        slidesToShow: 4,
        // slidesToScroll: 1,
        arrows: false,
        dots: false,
        responsive: [{
                breakpoint: 1024,
                settings: {
                    slidesToShow: 3,
                    // slidesToScroll: 3,
                    // infinite: true,
                    dots: false
                }
            }, {
                breakpoint: 768,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    arrows: false,
                    dots: false
                }
            }, {
                breakpoint: 480,
                settings: {
                    slidesToShow: 1,
                    // slidesToScroll: 1,
                    arrows: false,
                    dots: false
                }
            }

        ]
    });
});
   


