<?php
/**
 * Template Name: contact-page
 */

    get_header();
?>
<link rel="stylesheet" href="<?php bloginfo('template_url')?>/assets/css/contacts.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">

<section id="block-card" class="block-card">
    <div class="container">
        <div class="row">
            <div class="col-xl-1"></div>
                <div class="col-xl-6">
                    <div class="block-info">
                        <p>
                            <span class = "nTime">09:00-20:00</span><br>
                            <span class = "nTag">Офис</span><br>
                            <span class ="nAdr"><a href = "https://2gis.ru/krasnoyarsk/geo/985798073651789%2C92.875178%2C56.009314?queryState=center%2F92.875639%2C56.009615%2Fzoom%2F18" target="_blank">660049, г. Красноярск<br>
                                ул. Урицкого, 61 (офис 3-44)</a></span><br>
                            <span class ="nTel"><a href = "tel:+79509966981">+7(950)996-69-81</a></span><br>
                            <span class ="nMail"><a href = "mailto:studio@marketolog.sale">studio@marketolog.sale</a></span><br>
                            <span class ="nIcon"><a href ="tg://resolve?domain=markelov_artym"><i class="fab fa-telegram-plane fa-2x"></i></a><a href ="https://vk.me/id.markelov.artym"><i class="fab fa-vk fa-2x"></i></a><a href ="https://www.messenger.com/t/100025957095058"><i class="fab fa-facebook-f fa-2x"></i></a><a href ="viber://chat?number=+79509860065"><i class="fab fa-viber fa-2x"></i></a><a href ="whatsapp://send?phone=79509860065"><i class="fab fa-whatsapp fa-2x"></i></a><a href ="skype:markelov.artym"><i class="fab fa-skype fa-2x"></i></a></span><br>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<div id="map"><script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3Af3ac546ec327e35d5caa7ebfcdc091b0e5af5e92e7f96f4e8c344a1502dbde1c&amp;width=100%25&amp;height=500&amp;lang=ru_RU&amp;scroll=true"></script></div>
<?php get_footer(); ?>