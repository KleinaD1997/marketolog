<?php
	get_header();
?>
<link rel="stylesheet" href="<?php bloginfo('template_url')?>/assets/css/main_page.css">

<main>
    <section class="section-first wow fadeInLeft">
      <div id="particles-js"></div>
      <div class="container">
        <div class="first-content">
          <span class="annotation">Мы - инженеры продаж</span>
          <p class="big-words col-lg-9">Решаем основные задачи интернет-маркетинга:</p>
          <div class="text-wrapper">
            <span class="text active">увеличение вашей прибыли</span>
            <span class="text next-active">увеличение нашей прибыли</span>
            <span class="text">увеличение их прибыли</span>
          </div>
        </div>
      </div>
    </section>

    <section class="section-services">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-12 wow slideInLeft">
            <h2>Наши услуги:</h2>
          </div>
          <div class="col-md-6 col-12 wow slideInRight">
            <ul class="list">
              <li>Создание корпоративных сайтов</li>
              <li>Создание лэндингов</li>
              <li>Контекстная реклама</li>
              <li>SEO-продвижение</li>
              <li>Таргетированная реклама</li>
            </ul>
          </div>
        </div>
        <a href="" class="arrow-8 mx-auto wow fadeInUp d-none d-lg-block"></a>
      </div>
    </section>

    <section class="section-pyramid d-none d-lg-block" id="pyramid">
      <div class="container">
        <div class="row" id="group1">
          <div class="col-6 img-wrap">
            <img src="<?php bloginfo('template_url')?>/assets/img/main_page_Group%202.1.svg">
          </div>
          <div class="text col-6">
            <div class="first-line">
              <span class="number">01</span>
              <p>Используем технологии привлечения клиента:</p>
            </div>
            <ul class="list collapse">
              <?php
              $text_pyr = get_field('text_pyramid_1');
              
              ?>
              <li><?php echo $text_pyr['nesting_1'];?></li>
              <li><?php echo $text_pyr['nesting_2'];?></li>
              <li><?php echo $text_pyr['nesting_3'];?></li>
              <li><?php echo $text_pyr['nesting_4'];?></li>
              <li><?php echo $text_pyr['nesting_5'];?></li>
            </ul>
          </div>
        </div>
        <div class="row" id="group2">
          <div class="col-6 img-wrap">
            <img src="<?php bloginfo('template_url')?>/assets/img/main_page_Group.svg">
          </div>
          <div class="text col-6">
            <div class="first-line">
              <span class="number">02</span>
              <p>Пользователь кликает на объявление</p>
            </div>
            <ul class="list collapse">
             <?php
              $text_pyr = get_field('text_pyramid_2');
              
              ?>
              <li><?php echo $text_pyr['nesting_1'];?></li>
              <li><?php echo $text_pyr['nesting_2'];?></li>
              <li><?php echo $text_pyr['nesting_3'];?></li>
              <li><?php echo $text_pyr['nesting_4'];?></li>
              <li><?php echo $text_pyr['nesting_5'];?></li>
            </ul>
          </div>
        </div>
        <div class="row" id="group3">
          <div class="col-6 img-wrap">
            <img src="<?php bloginfo('template_url')?>/assets/img/main_page_Group-1.svg">
          </div>
          <div class="text col-6">
            <div class="first-line">
              <span class="number">03</span>
              <p>Пользователь попадает на сайт</p>
            </div>
            <ul class="list collapse">
              <?php
              $text_pyr = get_field('text_pyramid_3');
              
              ?>
              <li><?php echo $text_pyr['nesting_1'];?></li>
              <li><?php echo $text_pyr['nesting_2'];?></li>
              <li><?php echo $text_pyr['nesting_3'];?></li>
              <li><?php echo $text_pyr['nesting_4'];?></li>
              <li><?php echo $text_pyr['nesting_5'];?></li>
            </ul>
          </div>
        </div>
        <div class="row" id="group4">
          <div class="col-6 img-wrap">
            <img src="<?php bloginfo('template_url')?>/assets/img/main_page_Group-2.svg">
          </div>
          <div class="text col-6">
            <div class="first-line">
              <span class="number">04</span>
              <p>Пользователь оставляет заявку или звонит</p>
            </div>
            <ul class="list collapse">
              <?php
              $text_pyr = get_field('text_pyramid_4');
              
              ?>
              <li><?php echo $text_pyr['nesting_1'];?></li>
              <li><?php echo $text_pyr['nesting_2'];?></li>
              <li><?php echo $text_pyr['nesting_3'];?></li>
              <li><?php echo $text_pyr['nesting_4'];?></li>
              <li><?php echo $text_pyr['nesting_5'];?></li>
            </ul>
          </div>
        </div>
        <div class="row" id="group5">
          <div class="col-6 img-wrap">
            <img src="<?php bloginfo('template_url')?>/assets/img/main_page_Group-3.svg">
          </div>
          <div class="text col-6">
            <div class="first-line">
              <span class="number">05</span>
              <p>Пользователь покупает</p>
            </div>
            <ul class="list collapse">
              <?php
              $text_pyr = get_field('text_pyramid_5');
              
              ?>
              <li><?php echo $text_pyr['nesting_1'];?></li>
              <li><?php echo $text_pyr['nesting_2'];?></li>
              <li><?php echo $text_pyr['nesting_3'];?></li>
              <li><?php echo $text_pyr['nesting_4'];?></li>
              <li><?php echo $text_pyr['nesting_5'];?></li>
            </ul>
          </div>
        </div>
        <div class="row" id="group6">
          <div class="col-6 img-wrap">
            <img src="<?php bloginfo('template_url')?>/assets/img/main_page_Group-4.svg">
          </div>
          <div class="text col-6">
            <div class="first-line">
              <span class="number">06</span>
              <p>Пользователь покупает второй раз</p>
            </div>
            <ul class="list collapse">
              <?php
              $text_pyr = get_field('text_pyramid_6');
              
              ?>
              <li><?php echo $text_pyr['nesting_1'];?></li>
              <li><?php echo $text_pyr['nesting_2'];?></li>
              <li><?php echo $text_pyr['nesting_3'];?></li>
              <li><?php echo $text_pyr['nesting_4'];?></li>
              <li><?php echo $text_pyr['nesting_5'];?></li>
            </ul>
          </div>
        </div>
      </div>
    </section>

    <section class="section-pyramid-mobile d-block d-lg-none">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-12">
            <a class="first-line" data-toggle="collapse" href="#first" role="button" aria-expanded="false"
              aria-controls="first">
              <span class="number">01</span>
              <p>Используем технологии привлечения клиента:</p>
            </a>
            <ul class="list collapse" id="first">
              <?php
                $text_pyr = get_field('text_pyramid_1');
              ?>
              <li><?php echo $text_pyr['nesting_1'];?></li>
              <li><?php echo $text_pyr['nesting_2'];?></li>
              <li><?php echo $text_pyr['nesting_3'];?></li>
              <li><?php echo $text_pyr['nesting_4'];?></li>
              <li><?php echo $text_pyr['nesting_5'];?></li>
            </ul>
          </div>
          <div class="col-12">
            <a class="first-line" data-toggle="collapse" href="#second" role="button" aria-expanded="false"
              aria-controls="second">
              <span class="number">02</span>
              <p>Пользователь кликает на объявление</p>
            </a>
            <ul class="list collapse" id="second">
              <?php
              $text_pyr = get_field('text_pyramid_2');
              
              ?>
              <li><?php echo $text_pyr['nesting_1'];?></li>
              <li><?php echo $text_pyr['nesting_2'];?></li>
              <li><?php echo $text_pyr['nesting_3'];?></li>
              <li><?php echo $text_pyr['nesting_4'];?></li>
              <li><?php echo $text_pyr['nesting_5'];?></li>
            </ul>
          </div>
          <div class="col-12">
            <a class="first-line" data-toggle="collapse" href="#third" role="button" aria-expanded="false"
              aria-controls="third">
              <span class="number">03</span>
              <p>Пользователь попадает на сайт</p>
            </a>
            <ul class="list collapse" id="third">
              <?php
              $text_pyr = get_field('text_pyramid_3');
              
              ?>
              <li><?php echo $text_pyr['nesting_1'];?></li>
              <li><?php echo $text_pyr['nesting_2'];?></li>
              <li><?php echo $text_pyr['nesting_3'];?></li>
              <li><?php echo $text_pyr['nesting_4'];?></li>
              <li><?php echo $text_pyr['nesting_5'];?></li>
            </ul>
          </div>
          <div class="col-12">
            <a class="first-line" data-toggle="collapse" href="#fourth" role="button" aria-expanded="false"
              aria-controls="fourth">
              <span class="number">04</span>
              <p>Пользователь оставляет заявку или звонит</p>
            </a>
            <ul class="list collapse" id="fourth">
              <?php
              $text_pyr = get_field('text_pyramid_4');
              
              ?>
              <li><?php echo $text_pyr['nesting_1'];?></li>
              <li><?php echo $text_pyr['nesting_2'];?></li>
              <li><?php echo $text_pyr['nesting_3'];?></li>
              <li><?php echo $text_pyr['nesting_4'];?></li>
              <li><?php echo $text_pyr['nesting_5'];?></li>
            </ul>
          </div>
          <div class="col-12">
            <a class="first-line" data-toggle="collapse" href="#fifth" role="button" aria-expanded="false"
              aria-controls="fifth">
              <span class="number">05</span>
              <p>Пользователь покупает</p>
            </a>
            <ul class="list collapse" id="fifth">
              <?php
              $text_pyr = get_field('text_pyramid_5');
              
              ?>
              <li><?php echo $text_pyr['nesting_1'];?></li>
              <li><?php echo $text_pyr['nesting_2'];?></li>
              <li><?php echo $text_pyr['nesting_3'];?></li>
              <li><?php echo $text_pyr['nesting_4'];?></li>
              <li><?php echo $text_pyr['nesting_5'];?></li>
            </ul>
          </div>
          <div class="col-12">
            <a class="first-line" data-toggle="collapse" href="#sixth" role="button" aria-expanded="false"
              aria-controls="sixth">
              <span class="number">06</span>
              <p>Пользователь покупает второй раз</p>
            </a>
            <ul class="list collapse" id="sixth">
              <?php
              $text_pyr = get_field('text_pyramid_6');
              
              ?>
              <li><?php echo $text_pyr['nesting_1'];?></li>
              <li><?php echo $text_pyr['nesting_2'];?></li>
              <li><?php echo $text_pyr['nesting_3'];?></li>
              <li><?php echo $text_pyr['nesting_4'];?></li>
              <li><?php echo $text_pyr['nesting_5'];?></li>
            </ul>
          </div>
        </div>
      </div>
    </section>

    <section class="section-heat">
      <div class="container">
        <div class="wow fadeInLeft">
          <h2>«Утепление» клиента</h2>
          <span class="description">Инструменты, которые вернут и/или «утеплят» клиента:</span>
        </div>
        <div class="row card-row justify-content-center">
          <div class="col-lg-4 col-12 heat-card wow fadeInUp">
            <img src="<?php bloginfo('template_url')?>/assets/img/main_page_heat-card-1.svg" class="position-absolute">
            <div class="text">
              <div class="first-line">
                <span class="number">01</span>
                <span class="card-name">Ретаргетинг</span>
              </div>
              <span class="card-description">РСЯ, КМС, ВК, Insta, ОК</span>
            </div>
          </div>
          <div class="col-lg-4 col-12 heat-card wow fadeInUp" data-wow-delay="200ms">
            <img src="<?php bloginfo('template_url')?>/assets/img/main_page_heat-card-2.svg" class="position-absolute">
            <div class="text">
              <div class="first-line">
                <span class="number">02</span>
                <span class="card-name">Воронки(e-mail, мессенджеры)</span>
              </div>
              <span class="card-description">15 последовательных писем/сообщений</span>
            </div>
          </div>
          <div class="col-lg-4 col-12 heat-card wow fadeInUp" data-wow-delay="400ms">
            <img src="<?php bloginfo('template_url')?>/assets/img/main_page_heat-card-3.svg" class="position-absolute">
            <div class="text">
              <div class="first-line">
                <span class="number">03</span>
                <span class="card-name">Лидмагнит</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="section-map d-none d-lg-block">
      <div class="container position-relative">
        <img src="<?php bloginfo('template_url')?>/assets/img/main_page_map.png" class="map">
        <div class="row first-row">
          <div class="big-card col-lg-7 wow fadeInLeft shadow">
            <h2>Масштабируем на регионы и города</h2>
            <p>— на одном регионе оптимизируем рекламную компанию, выводим экономику в плюс</p>
            <p>— масштабируем рекламные кампании на другие регионы</p>
          </div>
          <a class="case-card offset-lg-1 col-lg-4 mt-lg-5 wow fadeInRight shadow" href="<?php the_field('megapolis_link')?>" id="mega">
            <span class="description">кейс</span>
            <span class="case-name">Мегаполис</span>
          </a>
        </div>
        <div class="row second-row">
          <a class="case-card offset-lg-1 col-lg-4 mt-lg-5 wow fadeInLeft shadow" href="<?php the_field('chpu_link')?>">
            <span class="description">кейс</span>
            <span class="case-name">ЧПУ24</span>
          </a>
        </div>
        <div class="row third-row justify-content-end">
          <a class="case-card col-lg-4 mt-lg-5 wow fadeInRight shadow" href="<?php the_field('NIBK_link')?>">
            <span class="description">кейс</span>
            <span class="case-name">NIBK</span>
          </a>
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
  <script src="<?php bloginfo('template_url')?>/assets/js/simpleParallax.min.js"></script>
  <script src="<?php bloginfo('template_url')?>/assets/js/particles.js"></script>
  <script src="<?php bloginfo('template_url')?>/assets/js/main_page.js"></script>
