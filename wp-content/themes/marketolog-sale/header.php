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
<!-- Facebook Pixel Code 
<script>
  !function(f,b,e,v,n,t,s)
  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
  n.callMethod.apply(n,arguments):n.queue.push(arguments)};
  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
  n.queue=[];t=b.createElement(e);t.async=!0;
  t.src=v;s=b.getElementsByTagName(e)[0];
  s.parentNode.insertBefore(t,s)}(window, document,'script',
  'https://connect.facebook.net/en_US/fbevents.js');
  fbq('init', '690472421416234');
  fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none"
  src="https://www.facebook.com/tr?id=690472421416234&ev=PageView&noscript=1"
/></noscript>
End Facebook Pixel Code -->
<!--<script type="text/javascript">!function(){var t=document.createElement("script");t.type="text/javascript",t.async=!0,t.src="https://vk.com/js/api/openapi.js?162",t.onload=function(){VK.Retargeting.Init("VK-RTRG-393874-eh6T6"),VK.Retargeting.Hit()},document.head.appendChild(t)}();</script><noscript><img src="https://vk.com/rtrg?p=VK-RTRG-393874-eh6T6" style="position:fixed; left:-999px;" alt=""/></noscript>
-->
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
          <?php
            wp_nav_menu( array(
                'theme_location'  => 'header',
                'menu_id'        => 'primary-menu',
                'depth'           => 2,
                'container'       => false,
                'menu_class'      => 'navbar-nav ml-auto',
                'fallback_cb'     => 'WP_Bootstrap_Navwalker::fallback',
                'walker'          => new WP_Bootstrap_Navwalker()
            ) );
            ?>
        </div>
      </nav>
    </div>
</header>