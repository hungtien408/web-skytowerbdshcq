function pageLoad() {
}

(function ($) {
    $(window).load(function () {
        EqualSizer('.tab-tb .item');
        EqualSizer('.library-box');
        EqualSizer('.news-box .item');
        heightnewhot();
        heightview();
    });
    $(window).resize(function () {
        heightnewhot();
        heightview();
    })
    $(function () {
        myfunload();
    });
})(jQuery);
//function===============================================================================================
/*=============================fun=========================================*/
function myfunload() {
    $(".panel-a").mobilepanel();
    $("#menu > li").clone().appendTo($("#menuMobile"));
    $("#menuMobile input").remove();
    $("#menuMobile > li > a").append('<span class="fa fa-chevron-circle-right iconar"></span>');
    $("#menuMobile li li a").append('<span class="fa fa-angle-right iconl"></span>');
    $("#menu li:last-child").addClass("last");
    $("#menu li:first-child").addClass("fisrt");
    $(".nav-tabs li:first-child").addClass("active");
    $(".tab-content .tab-pane:first-child").addClass("active");
   
    jQuery('#menu').superfish({
        animation: { height: 'show' },
        delay: 200
    });
    $(".menu-level").menulevel({
        csscurrent: "active",
        cssicon: true,
        cssdown: "fa fa-caret-down",
        cssup: "fa fa-caret-up"
    });
   
    $('#slider-banner').nivoSlider({
        pauseOnHover: true,
        autoplaySpeed: 4000,
        speed: 1000,
        directionNav: true,
        controlNav:false,
        animSpeed: 1500,
    });

    $(function () {
        $('a[data-modal]').on('click', function () {
            $($(this).data('modal')).modal();
            var modal = $(this).data('modal');
            $(modal+' .sliderGallery .slider-for').slick({
                slidesToShow: 1,
                slidesToScroll: 1,
                arrows: true,
                fade: true,
                asNavFor: modal + ' .sliderGallery .slider-nav'
            });
            $(modal + ' .sliderGallery .slider-nav').slick({
                slidesToShow: 7,
                slidesToScroll: 1,
                asNavFor: modal + ' .sliderGallery .slider-for',
                dots: false,
                arrows: false,
                focusOnSelect: true,
                responsive: [
               {
                   breakpoint: 600,
                   settings: {
                       slidesToShow: 5,
                   }
               },
               {
                   breakpoint: 400,
                   settings: {
                       slidesToShow:3,
                   }
               }
                ]
            });
            return false;
        });
    });

    
   

    $('#sliderUtilities').owlCarousel({
        margin: 25,
        loop: true,
        autoplaySpeed: 4000,
        nav: true,
        autoplay: false,
        autoplayTimeout: 2000,
        autoplayHoverPause: true,
        responsive: {
            0: {
                items: 1
            },
            440: {
                items: 2
            },
            700: {
                items: 3
            },
            1000: {
                items: 3
            },
            1200: {
                items: 3
            },
        }
    });

    mymap();
    myfunsroll();
    menusroll();
}


/*========================================================================*/
function heightnewhot() {
    n = $(".news-img").height();
    $(".news-content").outerHeight(n);
}
function heightview() {
    n = $(".over-img").height();
    $(".over-content").outerHeight(n);
}
function myfunsroll() {
    mysroll();
    $("#sroltop a").click(function () {
        $("html, body").stop(true, true).animate({ scrollTop: 0 }, 500);
        return false;
    });
}
function mysroll() {
    mysrol();
    $(window).scroll(function () {
        mysrol();
    });
}
function mysrol() {
    var topsroll = $(window).scrollTop();
    if (topsroll > 100) {
        $("#sroltop").stop(true, true).animate({ "opacity": 0.8 }, 500);
    } else {
        $("#sroltop").stop(true, true).animate({ "opacity": 0 }, 500);
    }
}

function menusroll() {
    var htop = $("#header").height();
    srollmenu(htop);
    $(window).scroll(function () {
        srollmenu(htop);
    });
}
function srollmenu(htop) {
    if ($(window).scrollTop() > htop) {
        $(".wrapper-menu").addClass("header-sroll");
    } else {
        $(".wrapper-menu").removeClass("header-sroll");
    }
}
/*===============================*/
function mymap() {
    mympp();
    var timeout;
    $(window).resize(function () {
        clearTimeout(timeout);
        setTimeout(function () {
            mympp();
        }, 500);
    });
}
function mympp() {
    $('#mapwrap').remove();
    if ($(window).width() > 320) {
        $('#mapshow').append('<div id="mapwrap"><iframe id="iframe" src="map.aspx" frameborder="0" height="100%" width="100%"></iframe></div>');
    }
}


/*========================================================================*/
function DoEqualSizer(myclass) {
    var heights = $(myclass).map(function () {
        $(this).height('auto');
        return $(this).height();
    }).get(),
    maxHeight = Math.max.apply(null, heights);
    $(myclass).height(maxHeight);
};

function EqualSizer(myclass) {
    $(document).ready(DoEqualSizer(myclass));
    window.addEventListener('resize', function () {
        DoEqualSizer(myclass);
    });
};