<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package marketolog-sale
 */

?>
<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
  <meta charset="<?php bloginfo( 'charset' ); ?>">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <?php wp_head(); ?>
  <script>
    wow = new WOW({
      mobile: false
    })
    wow.init();
  </script>
</head>
<body>
  <header>
    <div class="container">
      <nav class="navbar navbar-expand-lg wow fadeInDown" data-wow-duration="1s" data-wow-delay="200ms">
        <a href="<?php echo home_url('/');?>" class="navbar-brand">
          <img src="<?php bloginfo('template_url')?>/assets/img/main_page_Union.svg" alt="">
        </a>
        <button class="navbar-toggler" data-target="#my-nav" data-toggle="collapse" aria-controls="my-nav"
          aria-expanded="false" aria-label="Toggle navigation">
          <svg width="22" height="22" viewBox="0 0 22 20" fill="none" xmlns="http://www.w3.org/2000/svg">
            <circle cx="20" cy="2" r="2" fill="white" />
            <circle cx="20" cy="10" r="2" fill="white" />
            <circle cx="20" cy="18" r="2" fill="white" />
            <circle cx="11" cy="2" r="2" fill="white" />
            <circle cx="11" cy="10" r="2" fill="white" />
            <circle cx="11" cy="18" r="2" fill="white" />
            <circle cx="2" cy="2" r="2" fill="white" />
            <circle cx="2" cy="10" r="2" fill="white" />
            <circle cx="2" cy="18" r="2" fill="white" />
          </svg>
        </button>
        <div id="my-nav" class="collapse navbar-collapse">
          <ul class="navbar-nav ml-auto">
            <!-- <li class="nav-item">
              <a class="nav-link" href="#">Услуги и продукты</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Контакты</a>
            </li>
            <li class="nav-item phone">
              <a class="nav-link" href="#">+7 (950) 996-69-81</a>
            </li> -->
            <?php wp_nav_menu( array(
                        'theme_location'  => 'header',
                        'menu'            => '',
                        'container'       => false,
                        'menu_сlass'      => 'navbar-nav mr-auto',
                        'echo'            => true,
                        'fallback_cb'     => 'wp_page_menu',
                        'before'          => '',
                        'after'           => '',
                        'link_before'     => '',
                        'link_after'      => '',
                        'items_wrap'      => '%3$s',
                        'depth'           => 0,
                        'walker'          => '',
                      ) ); ?>
          </ul>
        </div>
      </nav>
    </div>
</header>