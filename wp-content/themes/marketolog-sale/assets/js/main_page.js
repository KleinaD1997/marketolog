$(document).ready(function () {
  pyramid();
  let image = document.getElementsByClassName('map');
  new simpleParallax(image, {
    scale: 1.4,
    overflow: true,
  });
  setInterval(() => changeWord(), 3000);
});

let $root = $('html, body');

/**
 * Эта функция анимирует смену слов на первой секции
 */
function changeWord() {
  let words = $('.section-first .text-wrapper .text');

  for (let i = 0; i < words.length; i++) {
    if (words.eq(i).hasClass('active')) {
      words.eq(i).removeClass('active');
      words.eq((i + 1) % words.length).removeClass('next-active');
      words.eq((i + 1) % words.length).addClass('active');
      words.eq((i + 2) % words.length).addClass('next-active');
      break;
    }
  }
}

$(window).resize(function () {
  pyramid();
});

$(window).scroll(function () {
  pyramid();
});


/**
 * Функция сдвига пунктов пирамидки
 */
let lastClick = -1;

$('.text').click(function () {
  let $parent = $(this).parent();
  let rows = $('.section-pyramid .container .row');
  let row = $parent;
  let index = row.index();
  $('.list.collapse').collapse('hide');
  for (let i = 0; i < rows.length; i++) {
    rows.eq(i).removeClass('translate');
  }
  $parent.find('.list').collapse('toggle');
  for (let i = index; i < rows.length; i++) {
    rows.eq(i).addClass('translate');
  }

  if (index == lastClick) {
    for (let i = index; i < rows.length; i++) {
      rows.eq(i).removeClass('translate');
    }
    lastClick = -1;
    return;
  }

  lastClick = index;
});

/**
 * Стрелочка прокрутки пирамидки
 */

$('.arrow-8').click((e) => {
  e.preventDefault();
  let section = $('.section-pyramid');
  let sectionHeight = section.innerHeight();
  console.log(sectionHeight);

  $root.animate({
    scrollTop: sectionHeight + $(window).height() / 1.5
  }, 4000);
});

/**
 * Ограничение значения в интервале
 * @param {значение} val 
 * @param {минимум} min 
 * @param {максимум} max 
 */
function clamp(val, min, max) {
  return val > max ? max : val < min ? min : val;
}

/**
 * Функция, которая делает пирамидку
 */
function pyramid() {
  let scrollPos = $(window).scrollTop();
  let section = $('.section-pyramid');
  let sectionTop = section.offset().top;

  let rows = $('.section-pyramid .container .row');
  let offset = section.height() / rows.length / 1.5;

  if (scrollPos + $(window).height() >= (section.innerHeight() + sectionTop)) {

    for (let i = 0; i < rows.length; i++) {
      let pos = clamp(((scrollPos - sectionTop) - offset * i - 75 * i), 0, offset - 75 * i);
      let goUp = $(window).height() - (section.innerHeight() + sectionTop - scrollPos);
      rows.eq(i).css({
        'opacity': 1,
        'top': (pos - goUp) + 'px'
      });

    }
  } else if (scrollPos >= sectionTop - 100) {
    for (let i = 0; i < rows.length; i++) {
      let pos = clamp(((scrollPos - sectionTop) - offset * i - 75 * i), 0, offset - 75 * i);
      rows.eq(i).css({
        'opacity': pos / (offset - 75 * i),
        'top': pos + 'px'
      });

    }
  } else {
    for (let i = 0; i < rows.length; i++) {
      rows.eq(i).css({
        'opacity': 0
      });
    }
  }


}

/**
 * Блок с карусельками
 */
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

/**
 * Настройки Партикля
 */
particlesJS("particles-js", {
  "particles": {
    "number": {
      "value": 100,
      "density": {
        "enable": true,
        "value_area": 1000
      }
    },
    "color": {
      "value": ["#808080", "#808080", "#808080", "#808080"]
    },

    "shape": {
      "type": "circle",
      "stroke": {
        "width": 0,
        "color": "#fff"
      },
      "polygon": {
        "nb_sides": 5
      },
    },
    "opacity": {
      "value": 0.6,
      "random": false,
      "anim": {
        "enable": false,
        "speed": 1,
        "opacity_min": 0.1,
        "sync": false
      }
    },
    "size": {
      "value": 4,
      "random": true,
      "anim": {
        "enable": false,
        "speed": 40,
        "size_min": 0.1,
        "sync": false
      }
    },
    "line_linked": {
      "enable": true,
      "distance": 120,
      "color": "#ffffff",
      "opacity": 0.4,
      "width": 1
    },
  },
  "interactivity": {
    "detect_on": "canvas",
    "events": {
      "onhover": {
        "enable": true,
        "mode": "grab"
      },
      "onclick": {
        "enable": false
      },
      "resize": true
    },
    "modes": {
      "grab": {
        "distance": 140,
        "line_linked": {
          "opacity": 1
        }
      },
      "bubble": {
        "distance": 400,
        "size": 40,
        "duration": 2,
        "opacity": 8,
        "speed": 3
      },
      "repulse": {
        "distance": 200,
        "duration": 0.4
      },
      "push": {
        "particles_nb": 4
      },
      "remove": {
        "particles_nb": 2
      }
    }
  },
  "retina_detect": true
});