<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'marketolog' );

/** Имя пользователя MySQL */
define( 'DB_USER', 'root' );

/** Пароль к базе данных MySQL */
define( 'DB_PASSWORD', '' );

/** Имя сервера MySQL */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**phpmailer*/

// Имя пользователя для SMTP авторизации
define( 'SMTP_USER', 'daniel@marketolog.sale' );  
// Пароль пользователя для SMTP авторизации
define( 'SMTP_PASS', '19AaZ9bJ' );
// Хост почтового сервера
define( 'SMTP_HOST', 'smtp.mail.ru' );
// Обратный Email
define( 'SMTP_FROM', 'daniel@marketolog.sale' );
// Имя для обратного мыла
define( 'SMTP_NAME', 'Инженеры Продаж' );
// Номер порта (25, 465, 587)
define( 'SMTP_PORT', '465' ); 
// Тип шифиования (ssl или tls)
define( 'SMTP_SECURE', 'ssl' ); 
// Включение/отключение шифрования
define( 'SMTP_AUTH', true ); 
// Режим отладки (0, 1, 2)
define( 'SMTP_DEBUG', 0 );


/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '%4>*L1ij#&WbTO<7=T%wDUpw}eEw@/*1/V5jzm[g3c3>29mx+4w58V&D8$a_::1k' );
define( 'SECURE_AUTH_KEY',  '2}AL(Vo6kR%yxlpf8hJd7?9VpHGiv5v@[[tmaA(a*5/cca0VmN#3DY|58;nmkfj^' );
define( 'LOGGED_IN_KEY',    'hckRNDQ?Mq(HK}){%x^63!ha7{JKQ1vF1F@}!nr0>i1r3 eO&:#?RXD&l+kglwlm' );
define( 'NONCE_KEY',        'sjK|KsnE`oll,s[gy[gyps3/}W]CV%i7Iqk=Y*oh|`A_JC_W]:R<Dr6sh`%E>iZ,' );
define( 'AUTH_SALT',        '<KbtQ^dTy9P1X$k^>.DLpAQ[;YPA|V L2 ?xui2=7.EIX6qe`}T*UKbiiKxo8xCL' );
define( 'SECURE_AUTH_SALT', 'BUxKSIf2T5)~i/YW[=S;Q*7)3IY(|w5Ht8_(16;ePgJB[Q(a#RH0YA9LUVQ8oksc' );
define( 'LOGGED_IN_SALT',   'SVd[3)PI6?cc55zj_ER2eEq2;:yA2BINQC|cD%`tpJdPTY|}ZZ|Z$5T,Z:a21#,%' );
define( 'NONCE_SALT',       'M9r{hRt]ejq(+ U|DSGL~uj46z/yImlR >n%Z 6;B6C]?,9DG6Qk[N;15FLHwogs' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once( ABSPATH . 'wp-settings.php' );
