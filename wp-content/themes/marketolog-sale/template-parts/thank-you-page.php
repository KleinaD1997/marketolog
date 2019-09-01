<?php
/**
 * Template Name: thank-you-page
 */

    get_header();
?>
<link rel="stylesheet" href="<?php bloginfo('template_url')?>/assets/css/main_page.css">
<link rel="stylesheet" href="<?php bloginfo('template_url')?>/assets/css/thankyou.css">
<section id="main" style ="margin-bottom: 40px;">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="thanksanddata">
   					 <img src="<?php bloginfo('template_url')?>/assets/img/thankyou.png">
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-1"></div>
				<div class="col-md-8">
					<h1 class="data">Ваши данные в обработке <br> и они в безопасности.</h1>
				</div>
		</div>
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">
				<p class="welcome">Скоро с Вами свяжется наш специалист по работе с клиентами. А пока, чтобы познакомиться ближе, подписывайтесь на нашу группу VK. Там мы выкладываем интересные кейсы, статьи и знакомим с нашей командой. Будет полезно!</p>
			</div>
		</div>
		<div class="row">
    		<div class="col-md-1"></div>
			<div class="col-md-3">

        		<form action="https://vk.com/salesengineers" style="padding-top:48px;">
                	<button type="submit"  id="justtextclick" class="vkbutton" style="font-weight: bold;"><p id="leaveamess" style="padding-top:13px; font-size: 16px; font-weight: bold; color:#FFF;"><img src="<?php bloginfo('template_url')?>/assets/img/vk-brands.png" width="36px" height="32px">Перейти в группу</p></button>
                </form>
			</div>
			<div class="col-md-3">
        		<a class="athank" href="<?php echo home_url('/');?>">———   Вернуться на главную</a>
			</div>
		</div>
	</div>
</section>
<?php get_footer(); ?>