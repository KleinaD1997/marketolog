<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package marketolog-sale
 */

?>
  <footer class="footer wow fadeInUp">
    <div class="container footer">
      <div class="row">
        <div class="col-12 col-md-5 left">
          <img src="<?php bloginfo('template_url')?>/assets/img/main_page_Vector.png" alt="">
        </div>
        <div class="col-12 col-md-5 mt-md-0 mt-5 right ml-lg-auto mx-auto">
          <span class="first-line">Приходите к нам</span>
          <span class="second-line">г. Красноярск, ул. Урицкого, 61 офис 3-44</span>
          <span class="first-line">Звоните нам</span>
          <span class="second-line">+7 (950) 996-69-81</span>
          <span class="first-line">Пишите нам</span>
          <span class="second-line">studio@marketolog.sale</span>
        </div>
      </div>
      <p class="last-line">© Маркетинговое агентство «Инженеры Продаж», 2019</p>
    </div>
  </footer>
<!-- Yandex.Metrika counter 
<script type="text/javascript" >
   (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
   m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})
   (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

   ym(50028346, "init", {
        clickmap:true,
        trackLinks:true,
        accurateTrackBounce:true,
        webvisor:true
   });
</script>
<noscript><div><img src="https://mc.yandex.ru/watch/50028346" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
 /Yandex.Metrika counter -->

<!-- Global site tag (gtag.js) - Google Analytics 
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-125320324-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-125320324-1');
</script>
-->
<?php wp_footer(); ?>
</body>
</html>
