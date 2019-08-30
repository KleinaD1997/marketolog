<?php
/**
 * Template Name: context-page
 */

    get_header();
?>
<link rel="stylesheet" href="<?php bloginfo('template_url')?>/assets/css/context.css">
  <main>
    <section class="section-plane wow fadeInLeft">
      <div class="container-fluid px-0">
        <div class="row">
          <div class="container">
            <div class="row">
              <div class="col-12 col-lg-8">
                <h1>Настройка и ведение контекстной рекламы в Яндекс и Google</h1>
              </div>
            </div>
            <div class="row">
              <p class="col-lg-4 col-12 pr-0">Чтобы получить персональное коммерческое предложение пройдите опрос</p>
            </div>
            <div class="row">
              <button class="btn-main col-lg-4 col-12">Начать опрос</button>
            </div>
          </div>
          <img src="<?php bloginfo('template_url')?>/assets/img/plane.png" alt="" class="plane offset-2 offset-lg-5 col-lg-8 col-12 wow fadeInUp"
            data-wow-delay='1s'>
        </div>
      </div>
    </section>
    <section class="section-work wow fadeInRight">
      <div class="container-fluid">
        <div class="container">
          <div class="row">
            <h1 class="d-lg-none mx-auto">Как мы работаем?</h1>
            <div class="col-6 big-text h-100 d-none d-lg-block">
              Как мы<br> работа<br>ем?
            </div>
            <div class="offset-lg-5 col-lg-7 col-10 data">
              <div id="carousel" class="carousel slide" data-interval="false">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <h2><?php the_field('heading_slider_1')?></h2>
                    <p><?php the_field('text_slider_1')?></p>
                  </div>
                  <div class="carousel-item">
                    <h2><?php the_field('heading_slider_2')?></h2>
                    <p><?php the_field('text_slider_2')?></p>
                  </div>
                  <div class="carousel-item">
                    <h2><?php the_field('heading_slider_3')?></h2>
                    <p><?php the_field('text_slider_3')?></p>
                  </div>
                  <div class="carousel-item">
                   <h2><?php the_field('heading_slider_4')?></h2>
                    <p><?php the_field('text_slider_4')?></p>
                  </div>
                  <div class="carousel-item">
                    <h2><?php the_field('heading_slider_5')?></h2>
                    <p><?php the_field('text_slider_5')?></p>
                  </div>
                </div>
                <div class="arrows d-flex flex-row">
                  <button class="arrow left-arrow" href="#carousel" role="button" data-slide="prev">
                    <svg width="25" height="19" viewBox="0 0 25 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                      <path d="M10.3028 18.1233L1.88055 9.70844M1.88055 9.70844L10.3028 1.29359M1.88055 9.70844H24.3398"
                        stroke="white" stroke-width="1.5" />
                    </svg>
                  </button>
                  <button class="arrow right-arrow" href="#carousel" role="button" data-slide="next">
                    <svg width="25" height="19" viewBox="0 0 25 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                      <path d="M14.6938 18.1232L23.116 9.70832M23.116 9.70832L14.6938 1.29347M23.116 9.70832H0.656738"
                        stroke="white" stroke-width="1.5" />
                    </svg>
                  </button>
                </div>
                <div class="number">
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="position-absolute d-none d-lg-block offset-3 col-9 bg-block">
        </div>
      </div>
    </section>
    <section class="section-scale wow fadeIn">
      <div class="container">
        <div class="row">
          <div class="col-10 col-lg-7 text-box">
            <h2>Работаем на масштаб</h2>
            <p>На одном регионе оптимизируем рекламную кампанию, выводим экономику в плюс. Масштабируем рекламные
              кампании на другие регионы.</p>
          </div>
        </div>
      </div>
    </section>
    
<!-- Кейсы -->
<?php 
$posts = get_posts( array(
  'post_type' => 'cases' ,
  'posts_per_page' => 10,
) );
 if($posts):
?>

    <section class="section-cases position-relative">
      <div class="container">
        <div class="cases-topic wow fadeInUp">Кейсы</div>
      </div>
      <div class="cases-carousel wow fadeInUp" data-wow-duration="1.5s">
        <?php foreach ($posts as $post): ?>
        <div class="carousel-cell  col-lg-4 col-10 col-md-6" style = "background: url('<?php the_field('background_image')?>') no-repeat;background-size: cover;background-position: bottom;">
          <div class="card-inner">
            <h2><?= $post->post_title ?></h2>
            <a href="<?php the_field('link_to_site')?>" class="top-link">перейти на сайт</a>
            <p class="d-none d-sm-block"><?= $post->post_content ?></p>
            <p class="d-block d-sm-none"><?= $post->post_content ?></p>
            <div class="row">
              <div class="col-5 col-md-4 pr-0">
                <span class="num"><?php the_field('number_of_leads_per_month')?></span>
                <span class="desc">Количество лидов/месяц</span>
              </div>
              <div class="col-7 col-md-7 pr-0">
                <span class="num"><?php the_field('lead_cost')?> <span class="rub">руб</span></span>
                <span class="desc">Стоимость лида</span>
              </div>
              <div class="w-100"></div>
              <div class="col-4">
                <span class="num"><?php the_field('site_conversion')?>%</span>
                <span class="desc">Конверсия сайта</span>
              </div>
            </div>
            <a href="<?php the_field('link_to_case')?>" class="a-btn">Смотреть кейс</a>
          </div>
      </div>
     <?php endforeach; ?>
         <div class="arrows d-flex flex-row">
          <button class="arrow left-arrow" id="prev">
            <svg width="25" height="19" viewBox="0 0 25 19" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M10.3028 18.1233L1.88055 9.70844M1.88055 9.70844L10.3028 1.29359M1.88055 9.70844H24.3398"
                stroke="white" stroke-width="1.5" />
            </svg>
          </button>
          <button class="arrow right-arrow" id="next">
            <svg width="25" height="19" viewBox="0 0 25 19" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M14.6938 18.1232L23.116 9.70832M23.116 9.70832L14.6938 1.29347M23.116 9.70832H0.656738"
                stroke="white" stroke-width="1.5" />
            </svg>
          </button>
        </div>
    </section>
<?php endif;?>
<!-- Кейсы закончились  -->

  <!-- Отзывы -->
<?php 
$posts = get_posts( array(
  'post_type' => 'reviews' ,
  'posts_per_page' => 10,
) );
 if($posts):
?>
    <section class="section-reviews wow fadeInRight">
      <h1>Отзывы</h1>
      <div class="container-fluid">
        <div class="row">
          <div class="offset-1 col-10 col-sm-11 review">
            <div id="review-carousel" class="carousel slide" data-interval="false">
              <div class="carousel-inner">
                <?php $i = 0; foreach ($posts as $post): ?>
                <div class="carousel-item <?php if(!$i) echo 'active'?>">
                  <p><?= $post->post_content ?></p>
                  <div class="media">
                    <img src="<?php the_field('avatar_reviews')?>" class="mr-3 d-none d-sm-block" alt="...">
                    <div class="media-body">
                      <h5 class="mt-0">— <?php the_field('author_reviews')?></h5>
                      <?php the_field('position_reviews')?>
                    </div>
                  </div>
                  <a href="<?php the_field('link_to_reviews')?>" class="a-btn d-none d-sm-block">Смотреть полный отзыв</a>
                </div>
               <?php $i++; endforeach; ?>
              </div>
              <div class="arrows d-flex flex-row">
                <button class="arrow left-arrow" href="#review-carousel" role="button" data-slide="prev">
                  <svg width="25" height="19" viewBox="0 0 25 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M10.3028 18.1233L1.88055 9.70844M1.88055 9.70844L10.3028 1.29359M1.88055 9.70844H24.3398"
                      stroke="white" stroke-width="1.5" />
                  </svg>
                </button>
                <button class="arrow right-arrow" href="#review-carousel" role="button" data-slide="next">
                  <svg width="25" height="19" viewBox="0 0 25 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M14.6938 18.1232L23.116 9.70832M23.116 9.70832L14.6938 1.29347M23.116 9.70832H0.656738"
                      stroke="white" stroke-width="1.5" />
                  </svg>
                </button>
              </div>
              <div class="number-reviews">
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
<?php endif;?>
<!-- Отзывы закончились -->
    <section class="section-articles wow fadeInUp">
      <div class="container">
        <h1 class="header">Читайте статьи по теме</h1>
      </div>
      <div class="container d-none d-sm-block">
        <div class="row">
          <div class="col-10 col-lg-4">
            <a href="" class="card-inner">
              <span class="top-line">Введение</span>
              <h5>Что такое контекстная реклама?</h5>
              <span class="a-btn">Читать статью</span>
            </a>
          </div>
          <div class="col-lg-4 col-10">
            <a href="" class="card-inner">
              <span class="top-line">Хорошо и плохо</span>
              <h5>Почему контекстная реклама не работает?</h5>
              <span class="a-btn">Читать статью</span>
            </a>
          </div>
          <div class="col-lg-4 col-10">
            <a href="" class="card-inner">
              <span class="top-line">Наш опыт</span>
              <h5>Какая контекстная реклама работает?</h5>
              <span class="a-btn">Читать статью</span>
            </a>
          </div>
        </div>
      </div>
      <div class="articles-carousel d-block d-sm-none">
        <a href="" class="carousel-cell col-8">
          <span class="top-line">Введение</span>
          <h5>Что такое контекстная реклама?</h5>
          <span class="a-btn">Читать статью</span>
        </a>
        <a href="" class="carousel-cell col-8">
          <span class="top-line">Хорошо и плохо</span>
          <h5>Почему контекстная реклама не работает?</h5>
          <span class="a-btn">Читать статью</span>
        </a>
        <a href="" class="carousel-cell col-8">
          <span class="top-line">Наш опыт</span>
          <h5>Какая контекстная реклама работает?</h5>
          <span class="a-btn">Читать статью</span>
        </a>
      </div>
    </section>
    <section class="section-contact">
      <div class="container">
        <div class="row">
          <div class="col-11 col-lg-5 left">
            <div class="wow fadeInLeft">
              <h1>Свяжитесь с нами</h1>
              <p>Мы проведем аудит вашего сайта и перезвоним в ближайшее время</p>
              <a href="tel:+7(397)205-32-32"><span>+7 (397) 205-32-32</span></a>
              <a href="mailto:studio@marketolog.sale"><span>studio@marketolog.sale</span></a>
            </div>
          </div>
          <div class="col-11 offset-lg-1 col-lg-5 right">
            <form method="post">
              <div class="form-group wow fadeInRight" data-wow-delay="100ms">
                <label for="name-input">Введите ваше имя:</label>
                <input type="text" class="form-control" id="name-input" aria-describedby="emailHelp"
                  placeholder="например, Иван Иванов">
              </div>
              <div class="form-group wow fadeInRight" data-wow-delay="200ms">
                <label for="phone-input">Введите ваш номер телефона:</label>
                <input type="tel" class="form-control" id="phone-input" aria-describedby="emailHelp"
                  placeholder="+7 (___) __-__">
              </div>
              <div class="form-group wow fadeInRight" data-wow-delay="300ms">
                <label for="page-input">Вставьте ссылку на ваш сайт:</label>
                <input type="text" class="form-control" id="page-input" aria-describedby="emailHelp"
                  placeholder="например, apple.com">
              </div>
              <div class="form-group wow fadeInRight" data-wow-delay="400ms">
                <label for="message-input">Введите ваше сообщение (необязательно):</label>
                <textarea rows="4" class="form-control" id="message-input" aria-describedby="emailHelp"
                  placeholder="Текст сообщения"></textarea>
              </div>
              <button type="submit" class="btn-main col-sm-8 col-12 d-block wow fadeInRight"
                data-wow-delay="600ms">Отправить заявку</button>
            </form>
          </div>
        </div>
      </div>
    </section>
  </main>
<?php get_footer(); ?>
<script src="<?php bloginfo('template_url')?>/assets/js/context.js"></script>