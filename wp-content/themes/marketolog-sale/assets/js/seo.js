//==============num-counter===========
var show = true;
var countbox = ".half-round";
$(window).on("scroll load resize", function () {
    if (!show) return false; // Отменяем показ анимации, если она уже была выполнена
    var w_top = $(window).scrollTop(); // Количество пикселей на которое была прокручена страница
    var e_top = $(countbox).offset().top; // Расстояние от блока со счетчиками до верха всего документа
    var w_height = $(window).height(); // Высота окна браузера
    var d_height = $(document).height(); // Высота всего документа
    var e_height = $(countbox).outerHeight(); // Полная высота блока со счетчиками
    if (w_top + 500 >= e_top || w_height + w_top == d_height || e_height + e_top < w_height) {
        $(document).ready(function () {
            $('.fiftyone-num-animate').spincrement({
                thousandSeparator: "",
                duration: 4000
            });
        });
        show = false;
    }
});


//============cards================

let countReviews = $('#review-carousel .carousel-item').length;
let currentIndexReview = $('#review-carousel .carousel-item.active').index() + 1;

let $carousel = $('.cases-carousel').flickity({
    "freeScroll": false,
    "pageDots": false,
    "prevNextButtons": false,
    "cellSelector": '.carousel-cell',
    "initialIndex": 1
});

let $carouselArt = $('.articles-carousel').flickity({
    pageDots: false,
    prevNextButtons: false,
    cellSelector: '.carousel-cell'
});

$(document).ready(function () {
    currentIndexReview = $('#review-carousel .carousel-item.active').index() + 1;
    $('.number-reviews').html('<span>' + '0' + currentIndexReview + '</span>' + '/' + '0' + countReviews);
});

$('#review-carousel').on('slid.bs.carousel', function () {
    currentIndexReview = $('#review-carousel .carousel-item.active').index() + 1;
    $('.number-reviews').html('<span>' + '0' + currentIndexReview + '</span>' + '/' + '0' + countReviews);
});

$('#prev').on('click', function () {
    $carousel.flickity('previous');
});

$('#next').on('click', function () {
    $carousel.flickity('next');
});
