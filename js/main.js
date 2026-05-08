// Mobile Click Drop Down
$('.dropnav > a').on('click', function(e) {
    e.preventDefault();
    $(this).parent().toggleClass('active');
});

// Lazy Load Images using Intersection Observer
$(document).ready(function() {
    $('.loader').hide();
});
$("img.lazy").lazyload({ effect: "fadeIn" });


// toggle 
$(".nav-toggle").click(function() {
    $(this).toggleClass("on");
    $("nav").toggleClass("activated");
    $("nav").slideToggle();
});


// Sticy nav bar 
if ($(window).scrollTop() >= 300) {
    $('header').addClass('fixed-header');
} else {
    $('header').removeClass('fixed-header');

};

// Scroll Top
$(window).scroll(function() {
    if ($(this).scrollTop() > 100) {
        $('.scroll_To_Top').fadeIn();
    } else {
        $('.scroll_To_Top').fadeOut();
    }
});
$('.scroll_To_Top').click(function() {
    $('html, body').animate({
        scrollTop: 0
    }, 10);
    return false;
});

// Popup
$("#clickshowpopup").on('click', function() {
    $(".custom-model-main").addClass('model-open');
});
$(".close-btn, .bg-overlay").click(function() {
    $(".custom-model-main").removeClass('model-open');
});


// Individua lServices Popup
// $(document).ready(function() {
     
//     if (window.location.pathname === "/tm360/index.html" || window.location.pathname === "/tm360/") {
//         $(".indiserboxpop").addClass('model-open auto-popup');
//     }

    
//     $("#IndividualServices").on('click', function() {
//         $(".indiserboxpop").addClass('model-open');
//     });

    
//     $(".closebnt").click(function() {
//         $(".indiserboxpop").removeClass('model-open auto-popup');
//     });
// });


$(document).ready(function() {
    // Open popup only when button is clicked
    $("#IndividualServices").on('click', function() {
        $(".indiserboxpop").addClass('model-open');
    });

    // Close popup when close button is clicked
    $(".closebnt").click(function() {
        $(".indiserboxpop").removeClass('model-open');
    });
});
 






// Fixed Popup
$(".fixedbtnclose").click(function() {
    $(".popsectionbe").css("display", "none");
});

// tab how the first tab by default login popup
$('.tabs-stage div').hide();
$('.tabs-stage div:first').show();
$('.tabs-nav li:first').addClass('tab-active');


// Change tab class and display content
$('.tabs-nav a').on('click', function(event) {
    event.preventDefault();
    $('.tabs-nav li').removeClass('tab-active');
    $(this).parent().addClass('tab-active');
    $('.tabs-stage div').hide();
    $($(this).attr('href')).show();
});


/*-- tab --*/
$('#tabs-nav li:first-child').addClass('active');
$('.tab-content').hide();
$('.tab-content:first').show();

// Click function
$('#tabs-nav li').click(function() {
    $('#tabs-nav li').removeClass('active');
    $(this).addClass('active');
    $('.tab-content').hide();

    var activeTab = $(this).find('a').attr('href');
    $(activeTab).fadeIn();
    return false;
});

//  We are Hearing
$(".destctions").hide();
$(".view_destcrtion").on("click", function() {
    $(this).prev('.destctions').slideToggle(100);
    if ($(this).text() == "View Less") {
        $(this).text("Read More");
    }
    if ($(this).text().trim() == "Read More") {
        $(this).text("More Detail");
    } else {
        $(this).text("View Less")
    }
});

// Career pages data pass in from
const buttons = document.querySelectorAll(".aplly_job_sec");
var jobSelectvalue = document.getElementById('Jobpostselecapply');

$(buttons).on("click", function() {
    var pickthevalue = $(this).attr("value")
    jobSelectvalue.querySelector('[selected]').text = pickthevalue;
    document.getElementById("UJOBPOST").focus({
        focusVisible: true
    });
});


// Tab To Scroll
$(document).ready(function() {
    $('.navigation__link').on('click', function(e) {
        e.preventDefault();
        var target = $(this).attr('href');
        $('html, body').animate({
            scrollTop: $(target).offset().top
        }, 600);
        $('.navigation__link').removeClass('active');
        $(this).addClass('active');
    });

    $(window).scroll(function() {
        var scrollDistance = $(window).scrollTop();
        $('.page-section').each(function(i) {
            if ($(this).position().top <= scrollDistance + 1) {
                $('.navigation__link.active').removeClass('active');
                $('.navigation__link').eq(i).addClass('active');
            }
        });
    }).scroll();
});


// Light Box with Gallery
$(document).ready(function() {
    $('.image-popup-vertical-fit').magnificPopup({
        type: 'image',
        mainClass: 'mfp-with-zoom',
        gallery: {
            enabled: true
        },
        zoom: {
            enabled: true,
            duration: 300, // duration of the effect, in milliseconds
            easing: 'ease-in-out', // CSS transition easing function
            opener: function(openerElement) {
                return openerElement.is('img') ? openerElement : openerElement.find('img');
            }
        }
    });
});


// PDF.js script
document.addEventListener('DOMContentLoaded', () => {
    const pdfPaths = [
        '/tm360/images/PDF/RISING-ADVISORY-SERVICES-PRIVATE-LIMITED-ISO-9001.pdf',
        '/tm360/images/PDF/RISING-ADVISORY-SERVICES-PRIVATE-LIMITED-ISO-14001.pdf',
        '/tm360/images/PDF/RISING-ADVISORY-SERVICES-PRIVATE-LIMITED-ISO-27001.pdf'
    ];

    const pdfContainers = [
        document.getElementById('pdfCanvas1'),
        document.getElementById('pdfCanvas2'),
        document.getElementById('pdfCanvas3')
    ];

    const fullScreenBtns = [
        document.getElementById('fullScreenBtn1'),
        document.getElementById('fullScreenBtn2'),
        document.getElementById('fullScreenBtn3')
    ];

    pdfPaths.forEach((pdfPath, index) => {
        // Check if the container element exists
        if (pdfContainers[index]) {
            // Initialize PDF.js
            pdfjsLib.getDocument(pdfPath).promise.then(pdf => {
                // Fetch the first page
                pdf.getPage(1).then(page => {
                    const viewport = page.getViewport({ scale: 1.0 });

                    // Set canvas size only if the container exists
                    pdfContainers[index].width = viewport.width;
                    pdfContainers[index].height = viewport.height;

                    const canvasContext = pdfContainers[index].getContext('2d');

                    // Render the PDF page into the canvas
                    page.render({
                        canvasContext,
                        viewport
                    });

                    // Handle full-screen button
                    fullScreenBtns[index].addEventListener('click', () => {
                        const isFullScreen = document.fullscreenElement || document.mozFullScreenElement || document.webkitFullscreenElement;
                        if (!isFullScreen) {
                            if (pdfContainers[index].requestFullscreen) {
                                pdfContainers[index].requestFullscreen();
                            } else if (pdfContainers[index].mozRequestFullScreen) {
                                pdfContainers[index].mozRequestFullScreen();
                            } else if (pdfContainers[index].webkitRequestFullscreen) {
                                pdfContainers[index].webkitRequestFullscreen();
                            }
                        } else {
                            if (document.exitFullscreen) {
                                document.exitFullscreen();
                            } else if (document.mozCancelFullScreen) {
                                document.mozCancelFullScreen();
                            } else if (document.webkitExitFullscreen) {
                                document.webkitExitFullscreen();
                            }
                        }
                    });
                });
            });
        }
    });
});

// Tax Calculator
$(document).ready(function() {
    $(".tab-link").click(function(e) {
        e.preventDefault();
        $(".tab-link").removeClass("active");
        $(this).addClass("active");
        $(".tab-pane").removeClass("active");
        var tabId = $(this).data("tab");
        $("#" + tabId).addClass("active");
    });
});

// Singup Pages

const tabLinks = document.querySelectorAll('.tab-menu a');
const tabBodies = document.querySelectorAll('.shomabodi');

tabLinks.forEach(tabLink => {
    tabLink.addEventListener('click', function(event) {
        event.preventDefault();
        tabLinks.forEach(link => {
            link.classList.remove('active');
        });
        this.classList.add('active');
        tabBodies.forEach(body => {
            body.classList.remove('active');
        });
        const targetId = this.getAttribute('data-id');
        const targetBody = document.querySelector(`.shomabodi[data-id="${targetId}"]`);
        targetBody.classList.add('active');
    });
});
/*-- Countdown Timer --*/
// Function to start a countdown timer
function startCountdown(targetDate, updateCallback, completionCallback) {
    var timerId = setInterval(function() {
        var now = new Date();
        var difference = targetDate - now;

        if (difference <= 0) {
            clearInterval(timerId);
            if (completionCallback && typeof completionCallback === 'function') {
                completionCallback();
            }
        } else {
            var seconds = Math.floor(difference / 1000);
            var minutes = Math.floor(seconds / 60);
            var hours = Math.floor(minutes / 60);
            var days = Math.floor(hours / 24);

            hours %= 24;
            minutes %= 60;
            seconds %= 60;

            if (typeof updateCallback === 'function') {
                updateCallback(days, hours, minutes, seconds);
            }
        }
    }, 1000);
}

// Example usage:

// Define the target date and time components
var targetDate = new Date('2024-07-31T18:30:00Z');

// Ensure the target date is in the future
if (targetDate <= new Date()) {
    targetDate.setFullYear(targetDate.getFullYear() + 1); // Add one year if target date is in the past
}

// Callback function to update the UI with the remaining time
function updateTimer(days, hours, minutes, seconds) {
    $("#days").text(days);
    $("#hours").text(hours);
    $("#minutes").text(minutes);
    $("#seconds").text(seconds);
}

// Callback function when the countdown completes
function timerComplete() {
    console.log("Timer completed!");
    // Optionally, add any actions to perform when the timer completes
}

// Start the countdown timer
startCountdown(targetDate, updateTimer, timerComplete);



// Prices Tab click to open Accooding
document.addEventListener("DOMContentLoaded", function() {
    const tabResident = document.getElementById("tabResident");
    const tabNRI = document.getElementById("tabNRI");

    const collapseOneEl = document.getElementById("collapseTaxOne");
    const collapseTwoEl = document.getElementById("collapseTaxTwo");

    const sectionResident = document.getElementById("for-resident-indian");
    const sectionNRI = document.getElementById("for-non-resident-indian");

    const collapseOne = new bootstrap.Collapse(collapseOneEl, { toggle: false });
    const collapseTwo = new bootstrap.Collapse(collapseTwoEl, { toggle: false });

    function smoothScrollTo(element) {
        element.scrollIntoView({ behavior: 'smooth', block: 'start' });
    }

    tabResident.addEventListener("click", (e) => {
        e.preventDefault();

        collapseTwo.hide();

        // Jab collapseOne open ho jaye, tab scroll karo
        collapseOne.show();

        // Thoda delay do taki collapse open ho jaye
        setTimeout(() => {
            smoothScrollTo(sectionResident);
        }, 300); // 300ms delay, adjust kar sakte ho

        tabResident.classList.add("active");
        tabNRI.classList.remove("active");
    });

    tabNRI.addEventListener("click", (e) => {
        e.preventDefault();

        collapseOne.hide();

        // Jab collapseTwo open ho jaye, tab scroll karo
        collapseTwo.show();

        setTimeout(() => {
            smoothScrollTo(sectionNRI);
        }, 300); // 300ms delay

        tabNRI.classList.add("active");
        tabResident.classList.remove("active");
    });
});