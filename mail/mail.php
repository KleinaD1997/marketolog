<?php
// Кому отправляем
$to = 'ootpravka@inbox.ru';
  
// Тема письма
$subject = 'Пришла заявка!';
// Передаем данные!
$name = $_POST['name'];
$phone = $_POST['phone'];
$site = $_POST['site'];
$text = $_POST['message'];
$utm = $_SERVER['HTTP_REFERER'];
$ip_address = $_SERVER['REMOTE_ADDR'];
$browser_user = $_SERVER['HTTP_USER_AGENT'];

// Само сообщение
$message = "Заявка с формы!\n \n 
Имя: $name \n
Телефон: $phone \n 
Сайт: $site \n 
Сообщение: $text \n
Заявка пришла с:  $utm \n
ip-address: $ip_address \n
Браузер клиента: $browser_user \n
";
  
// Загружаем только ядро WordPress
define( 'WP_USE_THEMES', false );
require( '../wp-load.php' );
  
// Отправляем письмо
$sent_message = wp_mail( $to, $subject, $message );
 
if ( $sent_message ) {
    // Если сообщение успешно отправилось
    echo "<script>window.location = 'http://marketolog.loc/%D1%81%D0%BF%D0%B0%D1%81%D0%B8%D0%B1%D0%BE/'</script>";
} else {
    // Ошибки при отправке
    echo 'Где-то ты лоханулся знатно!';
}