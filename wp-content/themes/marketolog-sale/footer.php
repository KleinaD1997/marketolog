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


<!-- Modal -->
<div class="modal fade" id="ModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <!-- <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5> -->
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="section-contact">
          <div class="container">
            <div class="row">
              <div class="col-11 col-lg-5 left">
                <div>
                  <h1>Свяжитесь с нами</h1>
                  <p>Мы проведем аудит вашего сайта и перезвоним в ближайшее время</p>
                  <a href="tel:+7(397)205-32-32"><span>+7 (397) 205-32-32</span></a>
                  <a href="mailto:studio@marketolog.sale"><span>studio@marketolog.sale</span></a>
                </div>
              </div>
              <div class="col-11 offset-lg-1 col-lg-5 right">
                <form method="post" action="/mail/mail.php">
                  <div class="form-group">
                    <label for="name-input">Введите ваше имя:</label>
                    <input type="text" name = "name" class="form-control" id="name-input" aria-describedby="emailHelp"
                      placeholder="например, Иван Иванов">
                  </div>
                  <div class="form-group">
                    <label for="phone-input">Введите ваш номер телефона:</label>
                    <input type="tel" name="phone" class="form-control" id="phone-input" aria-describedby="emailHelp"
                      placeholder="+7 (___) __-__">
                  </div>
                  <div class="form-group">
                    <label for="page-input">Вставьте ссылку на ваш сайт:</label>
                    <input type="text" class="form-control" name = "site" id="page-input" aria-describedby="emailHelp"
                      placeholder="например, apple.com">
                  </div>
                  <div class="form-group">
                    <label for="message-input">Введите ваше сообщение (необязательно):</label>
                    <textarea rows="4" name = "message" class="form-control" id="message-input" aria-describedby="emailHelp"
                      placeholder="Текст сообщения"></textarea>
                  </div>
                  <button type="submit" class="btn-main col-sm-8 col-12 d-block">Отправить заявку</button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- End Modal -->
<?php wp_footer(); ?>
</body>
</html>
