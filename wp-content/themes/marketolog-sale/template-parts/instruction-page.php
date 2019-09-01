<?php
/**
 * Template Name: instruction-page
 */

    get_header();
?>
<link rel="stylesheet" href="<?php bloginfo('template_url')?>/assets/css/instruction.css">
<section id="lean_overlay" style="margin-bottom: 40px;">
	<div id="popup" style="padding-top:64px;">
		<div class="container">
			<div class="leftpart" >
				<div class="row">
					<div class="marg">
						<div class="col-md-5" style="margin-left:50px">
							<h1><?php the_field('heading_instruction')?></h1>


						</div>
					</div>

				<div class="sending" style="margin-left:50px;">
					<form method="post" action=""> 
						<div class="col-md-5">
							<p>Введите ваше имя:</p><br><input type="text" required name="name" placeholder="например, Иванов Иван" ><br> 
							<p style="padding-top:40px;">Введите ваш номер телефона:</p><br><input required id="enterphone" type="text" name="phone" placeholder="+7(___) ___-____" ><br> 
							<p style="padding-top:40px;">Введите вашу электронную почту:</p><br><input required type="text" name="site" placeholder="например, ivanov@yandex.ru" ><br> 
							<input type="hidden" name="url" value="платформ-инструкция">
								<div class="startpolling">
									<form action="">
										<button type="submit" class="bottom_button" onclick ="yaCounter50028346.reachGoal('platform-instruction')"><p class="start5" style="padding-top:16px; padding-right:100px;" href="static/Instruktsia2.pdf" download="static/img/Instruktsia2.pdf">Скачать инструкцию</p><p class="start6">Скачать инструкцию</p></button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<?php get_footer(); ?>
