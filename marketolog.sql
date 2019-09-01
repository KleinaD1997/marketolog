-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 01 2019 г., 09:38
-- Версия сервера: 5.7.20
-- Версия PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `marketolog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-08-30 07:36:39', '2019-08-30 04:36:39', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://инженеры-продаж.рф', 'yes'),
(2, 'home', 'http://инженеры-продаж.рф', 'yes'),
(3, 'blogname', 'инженеры-продаж.рф', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ootpravka@inbox.ru', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:32:\"duplicate-page/duplicatepage.php\";i:2;s:47:\"show-current-template/show-current-template.php\";i:3;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'marketolog-sale', 'yes'),
(41, 'stylesheet', 'marketolog-sale', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '34', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '134', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'ru_RU', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:7:{i:1567323400;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1567355800;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1567398999;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1567399011;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1567399013;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1567399210;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(116, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1567140093;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(125, '_site_transient_timeout_browser_471e4b86e3560c6feb474def098169b6', '1567744612', 'no'),
(126, '_site_transient_browser_471e4b86e3560c6feb474def098169b6', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"76.0.3809.132\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(127, '_site_transient_timeout_php_check_464f4068caea2f8f3edcc5ae59429c65', '1567744612', 'no'),
(128, '_site_transient_php_check_464f4068caea2f8f3edcc5ae59429c65', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(132, 'can_compress_scripts', '1', 'no'),
(145, 'recently_activated', 'a:0:{}', 'yes'),
(149, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.2.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1567318611;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(151, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1567318616;s:7:\"checked\";a:4:{s:15:\"marketolog-sale\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(154, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1567318616;s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.3\";s:32:\"duplicate-page/duplicatepage.php\";s:3:\"3.9\";s:47:\"show-current-template/show-current-template.php\";s:5:\"0.3.0\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"11.9\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.3\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:32:\"duplicate-page/duplicatepage.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-page\";s:4:\"slug\";s:14:\"duplicate-page\";s:6:\"plugin\";s:32:\"duplicate-page/duplicatepage.php\";s:11:\"new_version\";s:3:\"3.9\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-page/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/duplicate-page.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-page/assets/icon-128x128.jpg?rev=1412874\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-page/assets/banner-772x250.jpg?rev=1410328\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"show-current-template/show-current-template.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/show-current-template\";s:4:\"slug\";s:21:\"show-current-template\";s:6:\"plugin\";s:47:\"show-current-template/show-current-template.php\";s:11:\"new_version\";s:5:\"0.3.0\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/show-current-template/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/show-current-template.0.3.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:73:\"https://ps.w.org/show-current-template/assets/icon-256x256.png?rev=976031\";s:2:\"1x\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";s:3:\"svg\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"11.9\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.11.9.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}}}}', 'no'),
(155, 'duplicate_page_options', 'a:4:{s:21:\"duplicate_post_status\";s:5:\"draft\";s:23:\"duplicate_post_redirect\";s:7:\"to_list\";s:21:\"duplicate_post_suffix\";s:0:\"\";s:21:\"duplicate_post_editor\";s:7:\"classic\";}', 'yes'),
(156, 'wpseo', 'a:20:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:4:\"11.9\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1567140009;s:13:\"myyoast-oauth\";b:0;}', 'yes'),
(157, 'wpseo_titles', 'a:71:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:45:\"%%name%%, Автор в %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:64:\"Вы искали %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:57:\"Страница не найдена %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:84:\"Сообщение %%POSTLINK%% появились сначала на %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:54:\"Ошибка 404: страница не найдена\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:19:\"Архивы для\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:31:\"Главная страница\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:17:\"Вы искали\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:14:\"person_logo_id\";i:0;s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:15:\"company_logo_id\";i:0;s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:18:\"title-tax-category\";s:57:\"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:57:\"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:57:\"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;}', 'yes'),
(158, 'wpseo_social', 'a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(159, 'wpseo_flush_rewrite', '1', 'yes'),
(160, '_transient_timeout_wpseo_link_table_inaccessible', '1598676010', 'no'),
(161, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(162, '_transient_timeout_wpseo_meta_table_inaccessible', '1598676010', 'no'),
(163, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(165, 'acf_version', '5.8.3', 'yes'),
(166, 'rewrite_rules', 'a:97:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=34&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(167, 'current_theme', 'marketolog-sale', 'yes'),
(168, 'theme_mods_marketolog-sale', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:6:\"menu-2\";i:3;s:6:\"menu-1\";i:0;s:6:\"header\";i:3;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(169, 'theme_switched', '', 'yes'),
(179, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(187, '_site_transient_timeout_php_check_c10b24bcda05543594ded94839f19c88', '1567779068', 'no'),
(188, '_site_transient_php_check_c10b24bcda05543594ded94839f19c88', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(191, 'recovery_mode_email_last_sent', '1567175293', 'yes'),
(254, 'wpseo_taxonomy_meta', 'a:1:{s:8:\"category\";a:1:{i:6;a:2:{s:13:\"wpseo_linkdex\";s:2:\"28\";s:19:\"wpseo_content_score\";s:2:\"30\";}}}', 'yes'),
(255, 'category_children', 'a:0:{}', 'yes'),
(264, '_site_transient_timeout_theme_roots', '1567320414', 'no'),
(265, '_site_transient_theme_roots', 'a:5:{s:15:\"marketolog-sale\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:30:\"wp-bootstrap4-navwalker-master\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1567158671:1'),
(4, 5, '_edit_last', '1'),
(5, 5, '_yoast_wpseo_content_score', '30'),
(6, 7, '_edit_lock', '1567193371:1'),
(7, 7, '_edit_last', '1'),
(8, 7, '_yoast_wpseo_content_score', '30'),
(9, 5, '_wp_page_template', 'template-parts/seo-page.php'),
(31, 12, '_menu_item_type', 'custom'),
(32, 12, '_menu_item_menu_item_parent', '0'),
(33, 12, '_menu_item_object_id', '12'),
(34, 12, '_menu_item_object', 'custom'),
(35, 12, '_menu_item_target', ''),
(36, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(37, 12, '_menu_item_xfn', ''),
(38, 12, '_menu_item_url', 'http://инженеры-продаж.рф/'),
(39, 12, '_menu_item_orphaned', '1567156289'),
(40, 13, '_menu_item_type', 'post_type'),
(41, 13, '_menu_item_menu_item_parent', '0'),
(42, 13, '_menu_item_object_id', '5'),
(43, 13, '_menu_item_object', 'page'),
(44, 13, '_menu_item_target', ''),
(45, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(46, 13, '_menu_item_xfn', ''),
(47, 13, '_menu_item_url', ''),
(48, 13, '_menu_item_orphaned', '1567156289'),
(49, 14, '_menu_item_type', 'post_type'),
(50, 14, '_menu_item_menu_item_parent', '0'),
(51, 14, '_menu_item_object_id', '7'),
(52, 14, '_menu_item_object', 'page'),
(53, 14, '_menu_item_target', ''),
(54, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(55, 14, '_menu_item_xfn', ''),
(56, 14, '_menu_item_url', ''),
(57, 14, '_menu_item_orphaned', '1567156289'),
(58, 15, '_menu_item_type', 'custom'),
(59, 15, '_menu_item_menu_item_parent', '0'),
(60, 15, '_menu_item_object_id', '15'),
(61, 15, '_menu_item_object', 'custom'),
(62, 15, '_menu_item_target', ''),
(63, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(64, 15, '_menu_item_xfn', ''),
(65, 15, '_menu_item_url', 'http://инженеры-продаж.рф/'),
(66, 15, '_menu_item_orphaned', '1567156448'),
(67, 16, '_menu_item_type', 'post_type'),
(68, 16, '_menu_item_menu_item_parent', '24'),
(69, 16, '_menu_item_object_id', '5'),
(70, 16, '_menu_item_object', 'page'),
(71, 16, '_menu_item_target', ''),
(72, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(73, 16, '_menu_item_xfn', ''),
(74, 16, '_menu_item_url', ''),
(76, 17, '_menu_item_type', 'post_type'),
(77, 17, '_menu_item_menu_item_parent', '24'),
(78, 17, '_menu_item_object_id', '7'),
(79, 17, '_menu_item_object', 'page'),
(80, 17, '_menu_item_target', ''),
(81, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(82, 17, '_menu_item_xfn', ''),
(83, 17, '_menu_item_url', ''),
(85, 18, '_menu_item_type', 'custom'),
(86, 18, '_menu_item_menu_item_parent', '0'),
(87, 18, '_menu_item_object_id', '18'),
(88, 18, '_menu_item_object', 'custom'),
(89, 18, '_menu_item_target', ''),
(90, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(91, 18, '_menu_item_xfn', ''),
(92, 18, '_menu_item_url', 'tel:+79509966981'),
(103, 20, '_edit_lock', '1567193210:1'),
(104, 20, '_edit_last', '1'),
(105, 20, '_yoast_wpseo_content_score', '30'),
(106, 22, '_edit_lock', '1567157168:1'),
(107, 22, '_edit_last', '1'),
(108, 22, '_yoast_wpseo_content_score', '30'),
(109, 24, '_menu_item_type', 'post_type'),
(110, 24, '_menu_item_menu_item_parent', '0'),
(111, 24, '_menu_item_object_id', '22'),
(112, 24, '_menu_item_object', 'page'),
(113, 24, '_menu_item_target', ''),
(114, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(115, 24, '_menu_item_xfn', ''),
(116, 24, '_menu_item_url', ''),
(118, 25, '_menu_item_type', 'post_type'),
(119, 25, '_menu_item_menu_item_parent', '0'),
(120, 25, '_menu_item_object_id', '20'),
(121, 25, '_menu_item_object', 'page'),
(122, 25, '_menu_item_target', ''),
(123, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(124, 25, '_menu_item_xfn', ''),
(125, 25, '_menu_item_url', ''),
(127, 26, '_edit_lock', '1567165095:1'),
(128, 7, '_wp_page_template', 'template-parts/context-page.php'),
(129, 27, '_edit_last', '1'),
(130, 27, '_edit_lock', '1567193437:1'),
(131, 34, '_edit_lock', '1567193523:1'),
(132, 34, '_edit_last', '1'),
(133, 34, '_yoast_wpseo_content_score', '30'),
(137, 36, '_edit_lock', '1567178675:1'),
(138, 34, 'text_pyramid_1_nesting_1', 'Тест'),
(139, 34, '_text_pyramid_1_nesting_1', 'field_5d69407ba4489'),
(140, 34, 'text_pyramid_1_nesting_2', 'тест2131'),
(141, 34, '_text_pyramid_1_nesting_2', 'field_5d6940baa448b'),
(142, 34, 'text_pyramid_1_nesting_3', 'тест2123'),
(143, 34, '_text_pyramid_1_nesting_3', 'field_5d6940c1a448c'),
(144, 34, 'text_pyramid_1_nesting_4', 'тетстстфыс'),
(145, 34, '_text_pyramid_1_nesting_4', 'field_5d6940c4a448d'),
(146, 34, 'text_pyramid_1_nesting_5', 'тетывьдст'),
(147, 34, '_text_pyramid_1_nesting_5', 'field_5d6940c6a448e'),
(148, 34, 'text_pyramid_1_nesting_6', 'фылдвалдф'),
(149, 34, '_text_pyramid_1_nesting_6', 'field_5d6940caa448f'),
(150, 34, 'text_pyramid_1', ''),
(151, 34, '_text_pyramid_1', 'field_5d693eec1aee6'),
(152, 34, 'text_pyramid_2', ''),
(153, 34, '_text_pyramid_2', 'field_5d69447aa9062'),
(154, 34, 'text_pyramid_3', ''),
(155, 34, '_text_pyramid_3', 'field_5d69447ea9068'),
(156, 34, 'text_pyramid_4', ''),
(157, 34, '_text_pyramid_4', 'field_5d694480a906e'),
(158, 34, 'text_pyramid_5', ''),
(159, 34, '_text_pyramid_5', 'field_5d694482a9074'),
(160, 43, 'text_pyramid_1_nesting_1', 'Тест'),
(161, 43, '_text_pyramid_1_nesting_1', 'field_5d69407ba4489'),
(162, 43, 'text_pyramid_1_nesting_2', 'тест2131'),
(163, 43, '_text_pyramid_1_nesting_2', 'field_5d6940baa448b'),
(164, 43, 'text_pyramid_1_nesting_3', 'тест2123'),
(165, 43, '_text_pyramid_1_nesting_3', 'field_5d6940c1a448c'),
(166, 43, 'text_pyramid_1_nesting_4', 'тетстстфыс'),
(167, 43, '_text_pyramid_1_nesting_4', 'field_5d6940c4a448d'),
(168, 43, 'text_pyramid_1_nesting_5', 'тетывьдст'),
(169, 43, '_text_pyramid_1_nesting_5', 'field_5d6940c6a448e'),
(170, 43, 'text_pyramid_1_nesting_6', 'фылдвалдф'),
(171, 43, '_text_pyramid_1_nesting_6', 'field_5d6940caa448f'),
(172, 43, 'text_pyramid_1', ''),
(173, 43, '_text_pyramid_1', 'field_5d693eec1aee6'),
(174, 43, 'text_pyramid_2', ''),
(175, 43, '_text_pyramid_2', 'field_5d693f0d1aee7'),
(176, 43, 'text_pyramid_3', ''),
(177, 43, '_text_pyramid_3', 'field_5d693f101aee8'),
(178, 43, 'text_pyramid_4', ''),
(179, 43, '_text_pyramid_4', 'field_5d693f121aee9'),
(180, 43, 'text_pyramid_5', ''),
(181, 43, '_text_pyramid_5', 'field_5d693f151aeea'),
(182, 34, 'text_pyramid_2_nesting_1', 'ТЫСТ'),
(183, 34, '_text_pyramid_2_nesting_1', 'field_5d69447aa9063'),
(184, 34, 'text_pyramid_2_nesting_2', 'ТЫСТ2'),
(185, 34, '_text_pyramid_2_nesting_2', 'field_5d69447aa9064'),
(186, 34, 'text_pyramid_2_nesting_3', 'ТЫСТ3'),
(187, 34, '_text_pyramid_2_nesting_3', 'field_5d69447aa9065'),
(188, 34, 'text_pyramid_2_nesting_4', 'ТЫСТ4'),
(189, 34, '_text_pyramid_2_nesting_4', 'field_5d69447aa9066'),
(190, 34, 'text_pyramid_2_nesting_5', 'ТЫСТ5'),
(191, 34, '_text_pyramid_2_nesting_5', 'field_5d69447aa9067'),
(192, 34, 'text_pyramid_3_nesting_1', 'ТЫСТ'),
(193, 34, '_text_pyramid_3_nesting_1', 'field_5d69447ea9069'),
(194, 34, 'text_pyramid_3_nesting_2', 'ТЫСТ2'),
(195, 34, '_text_pyramid_3_nesting_2', 'field_5d69447ea906a'),
(196, 34, 'text_pyramid_3_nesting_3', 'ТЫСТ3'),
(197, 34, '_text_pyramid_3_nesting_3', 'field_5d69447ea906b'),
(198, 34, 'text_pyramid_3_nesting_4', 'ТЫСТ4'),
(199, 34, '_text_pyramid_3_nesting_4', 'field_5d69447ea906c'),
(200, 34, 'text_pyramid_3_nesting_5', 'ТЫСТ5'),
(201, 34, '_text_pyramid_3_nesting_5', 'field_5d69447ea906d'),
(202, 34, 'text_pyramid_4_nesting_1', 'ТЫСТ'),
(203, 34, '_text_pyramid_4_nesting_1', 'field_5d694480a906f'),
(204, 34, 'text_pyramid_4_nesting_2', 'ТЫСТ2'),
(205, 34, '_text_pyramid_4_nesting_2', 'field_5d694480a9070'),
(206, 34, 'text_pyramid_4_nesting_3', 'ТЫСТ3'),
(207, 34, '_text_pyramid_4_nesting_3', 'field_5d694480a9071'),
(208, 34, 'text_pyramid_4_nesting_4', 'ТЫСТ4'),
(209, 34, '_text_pyramid_4_nesting_4', 'field_5d694480a9072'),
(210, 34, 'text_pyramid_4_nesting_5', 'ТЫСТ5'),
(211, 34, '_text_pyramid_4_nesting_5', 'field_5d694480a9073'),
(212, 34, 'text_pyramid_5_nesting_1', 'ТЫСТ'),
(213, 34, '_text_pyramid_5_nesting_1', 'field_5d694482a9075'),
(214, 34, 'text_pyramid_5_nesting_2', 'ТЫСТ2'),
(215, 34, '_text_pyramid_5_nesting_2', 'field_5d694482a9076'),
(216, 34, 'text_pyramid_5_nesting_3', 'ТЫСТ3'),
(217, 34, '_text_pyramid_5_nesting_3', 'field_5d694482a9077'),
(218, 34, 'text_pyramid_5_nesting_4', 'ТЫСТ4'),
(219, 34, '_text_pyramid_5_nesting_4', 'field_5d694482a9078'),
(220, 34, 'text_pyramid_5_nesting_5', 'ТЫСТ5'),
(221, 34, '_text_pyramid_5_nesting_5', 'field_5d694482a9079'),
(222, 34, 'text_pyramid_6_nesting_1', 'ТЫСТ'),
(223, 34, '_text_pyramid_6_nesting_1', 'field_5d694485a907b'),
(224, 34, 'text_pyramid_6_nesting_2', 'ТЫСТ2'),
(225, 34, '_text_pyramid_6_nesting_2', 'field_5d694485a907c'),
(226, 34, 'text_pyramid_6_nesting_3', 'ТЫСТ3'),
(227, 34, '_text_pyramid_6_nesting_3', 'field_5d694485a907d'),
(228, 34, 'text_pyramid_6_nesting_4', 'ТЫСТ4'),
(229, 34, '_text_pyramid_6_nesting_4', 'field_5d694485a907e'),
(230, 34, 'text_pyramid_6_nesting_5', 'ТЫСТ5'),
(231, 34, '_text_pyramid_6_nesting_5', 'field_5d694485a907f'),
(232, 34, 'text_pyramid_6', ''),
(233, 34, '_text_pyramid_6', 'field_5d694485a907a'),
(234, 74, 'text_pyramid_1_nesting_1', 'Тест'),
(235, 74, '_text_pyramid_1_nesting_1', 'field_5d69407ba4489'),
(236, 74, 'text_pyramid_1_nesting_2', 'тест2131'),
(237, 74, '_text_pyramid_1_nesting_2', 'field_5d6940baa448b'),
(238, 74, 'text_pyramid_1_nesting_3', 'тест2123'),
(239, 74, '_text_pyramid_1_nesting_3', 'field_5d6940c1a448c'),
(240, 74, 'text_pyramid_1_nesting_4', 'тетстстфыс'),
(241, 74, '_text_pyramid_1_nesting_4', 'field_5d6940c4a448d'),
(242, 74, 'text_pyramid_1_nesting_5', 'тетывьдст'),
(243, 74, '_text_pyramid_1_nesting_5', 'field_5d6940c6a448e'),
(244, 74, 'text_pyramid_1_nesting_6', 'фылдвалдф'),
(245, 74, '_text_pyramid_1_nesting_6', 'field_5d6940caa448f'),
(246, 74, 'text_pyramid_1', ''),
(247, 74, '_text_pyramid_1', 'field_5d693eec1aee6'),
(248, 74, 'text_pyramid_2', ''),
(249, 74, '_text_pyramid_2', 'field_5d69447aa9062'),
(250, 74, 'text_pyramid_3', ''),
(251, 74, '_text_pyramid_3', 'field_5d69447ea9068'),
(252, 74, 'text_pyramid_4', ''),
(253, 74, '_text_pyramid_4', 'field_5d694480a906e'),
(254, 74, 'text_pyramid_5', ''),
(255, 74, '_text_pyramid_5', 'field_5d694482a9074'),
(256, 74, 'text_pyramid_2_nesting_1', 'ТЫСТ'),
(257, 74, '_text_pyramid_2_nesting_1', 'field_5d69447aa9063'),
(258, 74, 'text_pyramid_2_nesting_2', 'ТЫСТ2'),
(259, 74, '_text_pyramid_2_nesting_2', 'field_5d69447aa9064'),
(260, 74, 'text_pyramid_2_nesting_3', 'ТЫСТ3'),
(261, 74, '_text_pyramid_2_nesting_3', 'field_5d69447aa9065'),
(262, 74, 'text_pyramid_2_nesting_4', 'ТЫСТ4'),
(263, 74, '_text_pyramid_2_nesting_4', 'field_5d69447aa9066'),
(264, 74, 'text_pyramid_2_nesting_5', 'ТЫСТ5'),
(265, 74, '_text_pyramid_2_nesting_5', 'field_5d69447aa9067'),
(266, 74, 'text_pyramid_3_nesting_1', 'ТЫСТ'),
(267, 74, '_text_pyramid_3_nesting_1', 'field_5d69447ea9069'),
(268, 74, 'text_pyramid_3_nesting_2', 'ТЫСТ2'),
(269, 74, '_text_pyramid_3_nesting_2', 'field_5d69447ea906a'),
(270, 74, 'text_pyramid_3_nesting_3', 'ТЫСТ3'),
(271, 74, '_text_pyramid_3_nesting_3', 'field_5d69447ea906b'),
(272, 74, 'text_pyramid_3_nesting_4', 'ТЫСТ4'),
(273, 74, '_text_pyramid_3_nesting_4', 'field_5d69447ea906c'),
(274, 74, 'text_pyramid_3_nesting_5', 'ТЫСТ5'),
(275, 74, '_text_pyramid_3_nesting_5', 'field_5d69447ea906d'),
(276, 74, 'text_pyramid_4_nesting_1', 'ТЫСТ'),
(277, 74, '_text_pyramid_4_nesting_1', 'field_5d694480a906f'),
(278, 74, 'text_pyramid_4_nesting_2', 'ТЫСТ2'),
(279, 74, '_text_pyramid_4_nesting_2', 'field_5d694480a9070'),
(280, 74, 'text_pyramid_4_nesting_3', 'ТЫСТ3'),
(281, 74, '_text_pyramid_4_nesting_3', 'field_5d694480a9071'),
(282, 74, 'text_pyramid_4_nesting_4', 'ТЫСТ4'),
(283, 74, '_text_pyramid_4_nesting_4', 'field_5d694480a9072'),
(284, 74, 'text_pyramid_4_nesting_5', 'ТЫСТ5'),
(285, 74, '_text_pyramid_4_nesting_5', 'field_5d694480a9073'),
(286, 74, 'text_pyramid_5_nesting_1', 'ТЫСТ'),
(287, 74, '_text_pyramid_5_nesting_1', 'field_5d694482a9075'),
(288, 74, 'text_pyramid_5_nesting_2', 'ТЫСТ2'),
(289, 74, '_text_pyramid_5_nesting_2', 'field_5d694482a9076'),
(290, 74, 'text_pyramid_5_nesting_3', 'ТЫСТ3'),
(291, 74, '_text_pyramid_5_nesting_3', 'field_5d694482a9077'),
(292, 74, 'text_pyramid_5_nesting_4', 'ТЫСТ4'),
(293, 74, '_text_pyramid_5_nesting_4', 'field_5d694482a9078'),
(294, 74, 'text_pyramid_5_nesting_5', 'ТЫСТ5'),
(295, 74, '_text_pyramid_5_nesting_5', 'field_5d694482a9079'),
(296, 74, 'text_pyramid_6_nesting_1', 'ТЫСТ'),
(297, 74, '_text_pyramid_6_nesting_1', 'field_5d694485a907b'),
(298, 74, 'text_pyramid_6_nesting_2', 'ТЫСТ2'),
(299, 74, '_text_pyramid_6_nesting_2', 'field_5d694485a907c'),
(300, 74, 'text_pyramid_6_nesting_3', 'ТЫСТ3'),
(301, 74, '_text_pyramid_6_nesting_3', 'field_5d694485a907d'),
(302, 74, 'text_pyramid_6_nesting_4', 'ТЫСТ4'),
(303, 74, '_text_pyramid_6_nesting_4', 'field_5d694485a907e'),
(304, 74, 'text_pyramid_6_nesting_5', 'ТЫСТ5'),
(305, 74, '_text_pyramid_6_nesting_5', 'field_5d694485a907f'),
(306, 74, 'text_pyramid_6', ''),
(307, 74, '_text_pyramid_6', 'field_5d694485a907a'),
(308, 79, '_edit_last', '1'),
(309, 79, '_edit_lock', '1567188246:1'),
(310, 83, '_edit_last', '1'),
(311, 83, 'link_to_reviews', 'http://инженеры-продаж.рф/'),
(312, 83, '_link_to_reviews', 'field_5d695c3b568c3'),
(313, 83, 'author_reviews', 'В. А. Зубенко'),
(314, 83, '_author_reviews', 'field_5d695c63568c4'),
(315, 83, 'position_reviews', 'генеральный директор, компания «Красроуд»'),
(316, 83, '_position_reviews', 'field_5d695c7e568c5'),
(317, 83, '_yoast_wpseo_content_score', '60'),
(318, 83, '_edit_lock', '1567186781:1'),
(319, 85, '_edit_last', '1'),
(320, 85, 'link_to_reviews', 'http://инженеры-продаж.рф/'),
(321, 85, '_link_to_reviews', 'field_5d695c3b568c3'),
(322, 85, 'author_reviews', 'В. А. Зубенко'),
(323, 85, '_author_reviews', 'field_5d695c63568c4'),
(324, 85, 'position_reviews', 'генеральный директор, компания «Красроуд»'),
(325, 85, '_position_reviews', 'field_5d695c7e568c5'),
(326, 85, '_yoast_wpseo_content_score', '60'),
(327, 85, '_edit_lock', '1567186797:1'),
(334, 86, '_edit_last', '1'),
(335, 86, 'link_to_reviews', 'http://инженеры-продаж.рф/'),
(336, 86, '_link_to_reviews', 'field_5d695c3b568c3'),
(337, 86, 'author_reviews', 'В. А. Зубенко'),
(338, 86, '_author_reviews', 'field_5d695c63568c4'),
(339, 86, 'position_reviews', 'генеральный директор, компания «Красроуд»'),
(340, 86, '_position_reviews', 'field_5d695c7e568c5'),
(341, 86, '_yoast_wpseo_content_score', '60'),
(342, 86, '_edit_lock', '1567187776:1'),
(349, 87, '_edit_last', '1'),
(350, 87, 'link_to_reviews', 'http://инженеры-продаж.рф/'),
(351, 87, '_link_to_reviews', 'field_5d695c3b568c3'),
(352, 87, 'author_reviews', 'В. А. Зубенко'),
(353, 87, '_author_reviews', 'field_5d695c63568c4'),
(354, 87, 'position_reviews', 'генеральный директор, компания «Красроуд»'),
(355, 87, '_position_reviews', 'field_5d695c7e568c5'),
(356, 87, '_yoast_wpseo_content_score', '60'),
(357, 87, '_edit_lock', '1567186842:1'),
(364, 88, '_edit_last', '1'),
(365, 88, 'link_to_reviews', 'http://инженеры-продаж.рф/'),
(366, 88, '_link_to_reviews', 'field_5d695c3b568c3'),
(367, 88, 'author_reviews', 'В. А. Зубенко'),
(368, 88, '_author_reviews', 'field_5d695c63568c4'),
(369, 88, 'position_reviews', 'генеральный директор, компания «Красроуд»'),
(370, 88, '_position_reviews', 'field_5d695c7e568c5'),
(371, 88, '_yoast_wpseo_content_score', '60'),
(372, 88, '_edit_lock', '1567186831:1'),
(379, 89, '_edit_last', '1'),
(380, 89, 'link_to_reviews', 'http://инженеры-продаж.рф/'),
(381, 89, '_link_to_reviews', 'field_5d695c3b568c3'),
(382, 89, 'author_reviews', 'В. А. Зубенко'),
(383, 89, '_author_reviews', 'field_5d695c63568c4'),
(384, 89, 'position_reviews', 'генеральный директор, компания «Красроуд»'),
(385, 89, '_position_reviews', 'field_5d695c7e568c5'),
(386, 89, '_yoast_wpseo_content_score', '60'),
(387, 89, '_edit_lock', '1567186820:1'),
(394, 85, '_wp_old_slug', '%d1%87%d0%b5%d1%80%d0%bd%d0%be%d0%b2%d0%b8%d0%ba'),
(395, 89, '_wp_old_slug', '%d1%87%d0%b5%d1%80%d0%bd%d0%be%d0%b2%d0%b8%d0%ba'),
(396, 88, '_wp_old_slug', '%d1%87%d0%b5%d1%80%d0%bd%d0%be%d0%b2%d0%b8%d0%ba'),
(397, 87, '_wp_old_slug', '%d1%87%d0%b5%d1%80%d0%bd%d0%be%d0%b2%d0%b8%d0%ba'),
(398, 86, '_wp_old_slug', '%d1%87%d0%b5%d1%80%d0%bd%d0%be%d0%b2%d0%b8%d0%ba'),
(399, 90, '_wp_attached_file', '2019/08/main_page_Ellipse.png'),
(400, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:29:\"2019/08/main_page_Ellipse.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(401, 86, '_thumbnail_id', '90'),
(402, 83, 'avatar_reviews', '90'),
(403, 83, '_avatar_reviews', 'field_5d695f911cb02'),
(404, 85, 'avatar_reviews', '90'),
(405, 85, '_avatar_reviews', 'field_5d695f911cb02'),
(406, 89, 'avatar_reviews', '90'),
(407, 89, '_avatar_reviews', 'field_5d695f911cb02'),
(408, 88, 'avatar_reviews', '90'),
(409, 88, '_avatar_reviews', 'field_5d695f911cb02'),
(410, 87, 'avatar_reviews', '90'),
(411, 87, '_avatar_reviews', 'field_5d695f911cb02'),
(412, 86, 'avatar_reviews', '90'),
(413, 86, '_avatar_reviews', 'field_5d695f911cb02'),
(414, 83, '_wp_trash_meta_status', 'publish'),
(415, 83, '_wp_trash_meta_time', '1567188528'),
(416, 83, '_wp_desired_post_slug', '%d1%87%d0%b5%d1%80%d0%bd%d0%be%d0%b2%d0%b8%d0%ba'),
(417, 94, '_edit_last', '1'),
(418, 94, 'link_to_reviews', 'http://инженеры-продаж.рф/'),
(419, 94, '_link_to_reviews', 'field_5d695c3b568c3'),
(420, 94, 'author_reviews', 'В. А. Зубенко'),
(421, 94, '_author_reviews', 'field_5d695c63568c4'),
(422, 94, 'position_reviews', 'генеральный директор, компания «Красроуд»'),
(423, 94, '_position_reviews', 'field_5d695c7e568c5'),
(424, 94, '_yoast_wpseo_content_score', '60'),
(425, 94, '_edit_lock', '1567189127:1'),
(426, 94, '_wp_old_slug', '%d1%87%d0%b5%d1%80%d0%bd%d0%be%d0%b2%d0%b8%d0%ba'),
(427, 94, '_thumbnail_id', '90'),
(428, 94, 'avatar_reviews', '90'),
(429, 94, '_avatar_reviews', 'field_5d695f911cb02'),
(432, 94, '_wp_old_slug', '%d1%87%d0%b5%d1%80%d0%bd%d0%be%d0%b2%d0%b8%d0%ba-6'),
(433, 96, '_edit_last', '1'),
(434, 96, '_edit_lock', '1567190463:1'),
(435, 103, '_edit_last', '1'),
(436, 103, '_edit_lock', '1567189554:1'),
(437, 104, '_wp_attached_file', '2019/08/cpu_card_bg.jpg'),
(438, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1036;s:6:\"height\";i:1240;s:4:\"file\";s:23:\"2019/08/cpu_card_bg.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"cpu_card_bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"cpu_card_bg-251x300.jpg\";s:5:\"width\";i:251;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"cpu_card_bg-768x919.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:919;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"cpu_card_bg-856x1024.jpg\";s:5:\"width\";i:856;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(439, 105, '_wp_attached_file', '2019/08/krasroad_card_bg.jpg'),
(440, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:630;s:6:\"height\";i:1200;s:4:\"file\";s:28:\"2019/08/krasroad_card_bg.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"krasroad_card_bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"krasroad_card_bg-158x300.jpg\";s:5:\"width\";i:158;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"krasroad_card_bg-538x1024.jpg\";s:5:\"width\";i:538;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(441, 106, '_wp_attached_file', '2019/08/megapolis_card_bg.jpg'),
(442, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:916;s:6:\"height\";i:1200;s:4:\"file\";s:29:\"2019/08/megapolis_card_bg.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"megapolis_card_bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"megapolis_card_bg-229x300.jpg\";s:5:\"width\";i:229;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"megapolis_card_bg-768x1006.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1006;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"megapolis_card_bg-782x1024.jpg\";s:5:\"width\";i:782;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(443, 103, 'number_of_leads_per_month', '90'),
(444, 103, '_number_of_leads_per_month', 'field_5d696929f70c9'),
(445, 103, 'lead_cost', '600'),
(446, 103, '_lead_cost', 'field_5d69698bf70ca'),
(447, 103, 'site_conversion', '6'),
(448, 103, '_site_conversion', 'field_5d6969aff70cb'),
(449, 103, 'link_to_case', 'http://инженеры-продаж.рф/'),
(450, 103, '_link_to_case', 'field_5d6969d7f70cc'),
(451, 103, 'link_to_site', 'http://инженеры-продаж.рф/'),
(452, 103, '_link_to_site', 'field_5d6969e9f70cd'),
(453, 103, 'background_image', '104'),
(454, 103, '_background_image', 'field_5d6969fdf70ce'),
(455, 103, '_yoast_wpseo_content_score', '90'),
(456, 107, '_edit_last', '1'),
(457, 107, '_edit_lock', '1567189646:1'),
(458, 107, 'number_of_leads_per_month', '90'),
(459, 107, '_number_of_leads_per_month', 'field_5d696929f70c9'),
(460, 107, 'lead_cost', '150'),
(461, 107, '_lead_cost', 'field_5d69698bf70ca'),
(462, 107, 'site_conversion', '4'),
(463, 107, '_site_conversion', 'field_5d6969aff70cb'),
(464, 107, 'link_to_case', 'http://инженеры-продаж.рф/'),
(465, 107, '_link_to_case', 'field_5d6969d7f70cc'),
(466, 107, 'link_to_site', 'http://инженеры-продаж.рф/'),
(467, 107, '_link_to_site', 'field_5d6969e9f70cd'),
(468, 107, 'background_image', '106'),
(469, 107, '_background_image', 'field_5d6969fdf70ce'),
(470, 107, '_yoast_wpseo_content_score', '90'),
(471, 108, '_edit_last', '1'),
(472, 108, '_edit_lock', '1567189701:1'),
(473, 108, 'number_of_leads_per_month', '90'),
(474, 108, '_number_of_leads_per_month', 'field_5d696929f70c9'),
(475, 108, 'lead_cost', '250'),
(476, 108, '_lead_cost', 'field_5d69698bf70ca'),
(477, 108, 'site_conversion', '5'),
(478, 108, '_site_conversion', 'field_5d6969aff70cb'),
(479, 108, 'link_to_case', 'http://инженеры-продаж.рф/'),
(480, 108, '_link_to_case', 'field_5d6969d7f70cc'),
(481, 108, 'link_to_site', 'http://инженеры-продаж.рф/'),
(482, 108, '_link_to_site', 'field_5d6969e9f70cd'),
(483, 108, 'background_image', '105'),
(484, 108, '_background_image', 'field_5d6969fdf70ce'),
(485, 108, '_yoast_wpseo_content_score', '90'),
(486, 109, '_edit_last', '1'),
(487, 109, '_edit_lock', '1567192476:1'),
(488, 7, 'heading_slider_1', 'Сбор данных'),
(489, 7, '_heading_slider_1', 'field_5d697018bec94'),
(490, 7, 'heading_slider_2', 'Сбор данных'),
(491, 7, '_heading_slider_2', 'field_5d69703bbec95'),
(492, 7, 'heading_slider_3', 'Сбор данных'),
(493, 7, '_heading_slider_3', 'field_5d69703ebec96'),
(494, 7, 'heading_slider_4', 'Сбор данных'),
(495, 7, '_heading_slider_4', 'field_5d697040bec97'),
(496, 7, 'heading_slider_5', 'Сбор данных'),
(497, 7, '_heading_slider_5', 'field_5d697042bec98'),
(498, 7, 'text_slider_1', 'Анализируем ваши товары/услуги, существующие рекламные кампании, выявляем вашу целевую аудиторию и ее “боли”, проводим анализ конкурентов и составляем первичный аудит сайта'),
(499, 7, '_text_slider_1', 'field_5d697044bec99'),
(500, 7, 'text_slider_2', 'Анализируем ваши товары/услуги, существующие рекламные кампании, выявляем вашу целевую аудиторию и ее “боли”, проводим анализ конкурентов и составляем первичный аудит сайта'),
(501, 7, '_text_slider_2', 'field_5d697058bec9a'),
(502, 7, 'text_slider_3', 'Анализируем ваши товары/услуги, существующие рекламные кампании, выявляем вашу целевую аудиторию и ее “боли”, проводим анализ конкурентов и составляем первичный аудит сайта'),
(503, 7, '_text_slider_3', 'field_5d69705bbec9b'),
(504, 7, 'text_slider_4', 'Анализируем ваши товары/услуги, существующие рекламные кампании, выявляем вашу целевую аудиторию и ее “боли”, проводим анализ конкурентов и составляем первичный аудит сайта'),
(505, 7, '_text_slider_4', 'field_5d69705cbec9c'),
(506, 7, 'text_slider_5', 'Анализируем ваши товары/услуги, существующие рекламные кампании, выявляем вашу целевую аудиторию и ее “боли”, проводим анализ конкурентов и составляем первичный аудит сайта'),
(507, 7, '_text_slider_5', 'field_5d69705ebec9d'),
(508, 120, 'heading_slider_1', 'Сбор данных'),
(509, 120, '_heading_slider_1', 'field_5d697018bec94'),
(510, 120, 'heading_slider_2', 'Сбор данных'),
(511, 120, '_heading_slider_2', 'field_5d69703bbec95'),
(512, 120, 'heading_slider_3', 'Сбор данных'),
(513, 120, '_heading_slider_3', 'field_5d69703ebec96'),
(514, 120, 'heading_slider_4', 'Сбор данных'),
(515, 120, '_heading_slider_4', 'field_5d697040bec97'),
(516, 120, 'heading_slider_5', 'Сбор данных'),
(517, 120, '_heading_slider_5', 'field_5d697042bec98'),
(518, 120, 'text_slider_1', 'Анализируем ваши товары/услуги, существующие рекламные кампании, выявляем вашу целевую аудиторию и ее “боли”, проводим анализ конкурентов и составляем первичный аудит сайта'),
(519, 120, '_text_slider_1', 'field_5d697044bec99'),
(520, 120, 'text_slider_2', 'Анализируем ваши товары/услуги, существующие рекламные кампании, выявляем вашу целевую аудиторию и ее “боли”, проводим анализ конкурентов и составляем первичный аудит сайта'),
(521, 120, '_text_slider_2', 'field_5d697058bec9a'),
(522, 120, 'text_slider_3', 'Анализируем ваши товары/услуги, существующие рекламные кампании, выявляем вашу целевую аудиторию и ее “боли”, проводим анализ конкурентов и составляем первичный аудит сайта'),
(523, 120, '_text_slider_3', 'field_5d69705bbec9b'),
(524, 120, 'text_slider_4', 'Анализируем ваши товары/услуги, существующие рекламные кампании, выявляем вашу целевую аудиторию и ее “боли”, проводим анализ конкурентов и составляем первичный аудит сайта'),
(525, 120, '_text_slider_4', 'field_5d69705cbec9c'),
(526, 120, 'text_slider_5', 'Анализируем ваши товары/услуги, существующие рекламные кампании, выявляем вашу целевую аудиторию и ее “боли”, проводим анализ конкурентов и составляем первичный аудит сайта'),
(527, 120, '_text_slider_5', 'field_5d69705ebec9d'),
(528, 20, '_wp_page_template', 'template-parts/contact.php'),
(529, 34, 'NIBK_link', 'http://инженеры-продаж.рф/'),
(530, 34, '_NIBK_link', 'field_5d69791047005'),
(531, 34, 'megapolis_link', 'http://инженеры-продаж.рф/'),
(532, 34, '_megapolis_link', 'field_5d69792947006'),
(533, 34, 'chpu_link', 'http://инженеры-продаж.рф/'),
(534, 34, '_chpu_link', 'field_5d69794047007'),
(535, 124, 'text_pyramid_1_nesting_1', 'Тест'),
(536, 124, '_text_pyramid_1_nesting_1', 'field_5d69407ba4489'),
(537, 124, 'text_pyramid_1_nesting_2', 'тест2131'),
(538, 124, '_text_pyramid_1_nesting_2', 'field_5d6940baa448b'),
(539, 124, 'text_pyramid_1_nesting_3', 'тест2123'),
(540, 124, '_text_pyramid_1_nesting_3', 'field_5d6940c1a448c'),
(541, 124, 'text_pyramid_1_nesting_4', 'тетстстфыс'),
(542, 124, '_text_pyramid_1_nesting_4', 'field_5d6940c4a448d'),
(543, 124, 'text_pyramid_1_nesting_5', 'тетывьдст'),
(544, 124, '_text_pyramid_1_nesting_5', 'field_5d6940c6a448e'),
(545, 124, 'text_pyramid_1_nesting_6', 'фылдвалдф'),
(546, 124, '_text_pyramid_1_nesting_6', 'field_5d6940caa448f'),
(547, 124, 'text_pyramid_1', ''),
(548, 124, '_text_pyramid_1', 'field_5d693eec1aee6'),
(549, 124, 'text_pyramid_2', ''),
(550, 124, '_text_pyramid_2', 'field_5d69447aa9062'),
(551, 124, 'text_pyramid_3', ''),
(552, 124, '_text_pyramid_3', 'field_5d69447ea9068'),
(553, 124, 'text_pyramid_4', ''),
(554, 124, '_text_pyramid_4', 'field_5d694480a906e'),
(555, 124, 'text_pyramid_5', ''),
(556, 124, '_text_pyramid_5', 'field_5d694482a9074'),
(557, 124, 'text_pyramid_2_nesting_1', 'ТЫСТ'),
(558, 124, '_text_pyramid_2_nesting_1', 'field_5d69447aa9063'),
(559, 124, 'text_pyramid_2_nesting_2', 'ТЫСТ2'),
(560, 124, '_text_pyramid_2_nesting_2', 'field_5d69447aa9064'),
(561, 124, 'text_pyramid_2_nesting_3', 'ТЫСТ3'),
(562, 124, '_text_pyramid_2_nesting_3', 'field_5d69447aa9065'),
(563, 124, 'text_pyramid_2_nesting_4', 'ТЫСТ4'),
(564, 124, '_text_pyramid_2_nesting_4', 'field_5d69447aa9066'),
(565, 124, 'text_pyramid_2_nesting_5', 'ТЫСТ5'),
(566, 124, '_text_pyramid_2_nesting_5', 'field_5d69447aa9067'),
(567, 124, 'text_pyramid_3_nesting_1', 'ТЫСТ'),
(568, 124, '_text_pyramid_3_nesting_1', 'field_5d69447ea9069'),
(569, 124, 'text_pyramid_3_nesting_2', 'ТЫСТ2'),
(570, 124, '_text_pyramid_3_nesting_2', 'field_5d69447ea906a'),
(571, 124, 'text_pyramid_3_nesting_3', 'ТЫСТ3'),
(572, 124, '_text_pyramid_3_nesting_3', 'field_5d69447ea906b'),
(573, 124, 'text_pyramid_3_nesting_4', 'ТЫСТ4'),
(574, 124, '_text_pyramid_3_nesting_4', 'field_5d69447ea906c'),
(575, 124, 'text_pyramid_3_nesting_5', 'ТЫСТ5'),
(576, 124, '_text_pyramid_3_nesting_5', 'field_5d69447ea906d'),
(577, 124, 'text_pyramid_4_nesting_1', 'ТЫСТ'),
(578, 124, '_text_pyramid_4_nesting_1', 'field_5d694480a906f'),
(579, 124, 'text_pyramid_4_nesting_2', 'ТЫСТ2'),
(580, 124, '_text_pyramid_4_nesting_2', 'field_5d694480a9070'),
(581, 124, 'text_pyramid_4_nesting_3', 'ТЫСТ3'),
(582, 124, '_text_pyramid_4_nesting_3', 'field_5d694480a9071'),
(583, 124, 'text_pyramid_4_nesting_4', 'ТЫСТ4'),
(584, 124, '_text_pyramid_4_nesting_4', 'field_5d694480a9072'),
(585, 124, 'text_pyramid_4_nesting_5', 'ТЫСТ5'),
(586, 124, '_text_pyramid_4_nesting_5', 'field_5d694480a9073'),
(587, 124, 'text_pyramid_5_nesting_1', 'ТЫСТ'),
(588, 124, '_text_pyramid_5_nesting_1', 'field_5d694482a9075'),
(589, 124, 'text_pyramid_5_nesting_2', 'ТЫСТ2'),
(590, 124, '_text_pyramid_5_nesting_2', 'field_5d694482a9076'),
(591, 124, 'text_pyramid_5_nesting_3', 'ТЫСТ3'),
(592, 124, '_text_pyramid_5_nesting_3', 'field_5d694482a9077'),
(593, 124, 'text_pyramid_5_nesting_4', 'ТЫСТ4'),
(594, 124, '_text_pyramid_5_nesting_4', 'field_5d694482a9078'),
(595, 124, 'text_pyramid_5_nesting_5', 'ТЫСТ5'),
(596, 124, '_text_pyramid_5_nesting_5', 'field_5d694482a9079'),
(597, 124, 'text_pyramid_6_nesting_1', 'ТЫСТ'),
(598, 124, '_text_pyramid_6_nesting_1', 'field_5d694485a907b'),
(599, 124, 'text_pyramid_6_nesting_2', 'ТЫСТ2'),
(600, 124, '_text_pyramid_6_nesting_2', 'field_5d694485a907c'),
(601, 124, 'text_pyramid_6_nesting_3', 'ТЫСТ3'),
(602, 124, '_text_pyramid_6_nesting_3', 'field_5d694485a907d'),
(603, 124, 'text_pyramid_6_nesting_4', 'ТЫСТ4'),
(604, 124, '_text_pyramid_6_nesting_4', 'field_5d694485a907e'),
(605, 124, 'text_pyramid_6_nesting_5', 'ТЫСТ5'),
(606, 124, '_text_pyramid_6_nesting_5', 'field_5d694485a907f'),
(607, 124, 'text_pyramid_6', ''),
(608, 124, '_text_pyramid_6', 'field_5d694485a907a'),
(609, 124, 'NIBK_link', 'http://инженеры-продаж.рф/'),
(610, 124, '_NIBK_link', 'field_5d69791047005'),
(611, 124, 'megapolis_link', 'http://инженеры-продаж.рф/'),
(612, 124, '_megapolis_link', 'field_5d69792947006'),
(613, 124, 'chpu_link', 'http://инженеры-продаж.рф/'),
(614, 124, '_chpu_link', 'field_5d69794047007'),
(615, 125, 'text_pyramid_1_nesting_1', 'Тест'),
(616, 125, '_text_pyramid_1_nesting_1', 'field_5d69407ba4489'),
(617, 125, 'text_pyramid_1_nesting_2', 'тест2131'),
(618, 125, '_text_pyramid_1_nesting_2', 'field_5d6940baa448b'),
(619, 125, 'text_pyramid_1_nesting_3', 'тест2123'),
(620, 125, '_text_pyramid_1_nesting_3', 'field_5d6940c1a448c'),
(621, 125, 'text_pyramid_1_nesting_4', 'тетстстфыс'),
(622, 125, '_text_pyramid_1_nesting_4', 'field_5d6940c4a448d'),
(623, 125, 'text_pyramid_1_nesting_5', 'тетывьдст'),
(624, 125, '_text_pyramid_1_nesting_5', 'field_5d6940c6a448e'),
(625, 125, 'text_pyramid_1_nesting_6', 'фылдвалдф'),
(626, 125, '_text_pyramid_1_nesting_6', 'field_5d6940caa448f'),
(627, 125, 'text_pyramid_1', ''),
(628, 125, '_text_pyramid_1', 'field_5d693eec1aee6'),
(629, 125, 'text_pyramid_2', ''),
(630, 125, '_text_pyramid_2', 'field_5d69447aa9062'),
(631, 125, 'text_pyramid_3', ''),
(632, 125, '_text_pyramid_3', 'field_5d69447ea9068'),
(633, 125, 'text_pyramid_4', ''),
(634, 125, '_text_pyramid_4', 'field_5d694480a906e'),
(635, 125, 'text_pyramid_5', ''),
(636, 125, '_text_pyramid_5', 'field_5d694482a9074'),
(637, 125, 'text_pyramid_2_nesting_1', 'ТЫСТ'),
(638, 125, '_text_pyramid_2_nesting_1', 'field_5d69447aa9063'),
(639, 125, 'text_pyramid_2_nesting_2', 'ТЫСТ2'),
(640, 125, '_text_pyramid_2_nesting_2', 'field_5d69447aa9064'),
(641, 125, 'text_pyramid_2_nesting_3', 'ТЫСТ3'),
(642, 125, '_text_pyramid_2_nesting_3', 'field_5d69447aa9065'),
(643, 125, 'text_pyramid_2_nesting_4', 'ТЫСТ4'),
(644, 125, '_text_pyramid_2_nesting_4', 'field_5d69447aa9066'),
(645, 125, 'text_pyramid_2_nesting_5', 'ТЫСТ5'),
(646, 125, '_text_pyramid_2_nesting_5', 'field_5d69447aa9067'),
(647, 125, 'text_pyramid_3_nesting_1', 'ТЫСТ'),
(648, 125, '_text_pyramid_3_nesting_1', 'field_5d69447ea9069'),
(649, 125, 'text_pyramid_3_nesting_2', 'ТЫСТ2'),
(650, 125, '_text_pyramid_3_nesting_2', 'field_5d69447ea906a'),
(651, 125, 'text_pyramid_3_nesting_3', 'ТЫСТ3'),
(652, 125, '_text_pyramid_3_nesting_3', 'field_5d69447ea906b'),
(653, 125, 'text_pyramid_3_nesting_4', 'ТЫСТ4'),
(654, 125, '_text_pyramid_3_nesting_4', 'field_5d69447ea906c'),
(655, 125, 'text_pyramid_3_nesting_5', 'ТЫСТ5'),
(656, 125, '_text_pyramid_3_nesting_5', 'field_5d69447ea906d'),
(657, 125, 'text_pyramid_4_nesting_1', 'ТЫСТ'),
(658, 125, '_text_pyramid_4_nesting_1', 'field_5d694480a906f'),
(659, 125, 'text_pyramid_4_nesting_2', 'ТЫСТ2'),
(660, 125, '_text_pyramid_4_nesting_2', 'field_5d694480a9070'),
(661, 125, 'text_pyramid_4_nesting_3', 'ТЫСТ3'),
(662, 125, '_text_pyramid_4_nesting_3', 'field_5d694480a9071'),
(663, 125, 'text_pyramid_4_nesting_4', 'ТЫСТ4'),
(664, 125, '_text_pyramid_4_nesting_4', 'field_5d694480a9072'),
(665, 125, 'text_pyramid_4_nesting_5', 'ТЫСТ5'),
(666, 125, '_text_pyramid_4_nesting_5', 'field_5d694480a9073'),
(667, 125, 'text_pyramid_5_nesting_1', 'ТЫСТ'),
(668, 125, '_text_pyramid_5_nesting_1', 'field_5d694482a9075'),
(669, 125, 'text_pyramid_5_nesting_2', 'ТЫСТ2'),
(670, 125, '_text_pyramid_5_nesting_2', 'field_5d694482a9076'),
(671, 125, 'text_pyramid_5_nesting_3', 'ТЫСТ3'),
(672, 125, '_text_pyramid_5_nesting_3', 'field_5d694482a9077'),
(673, 125, 'text_pyramid_5_nesting_4', 'ТЫСТ4'),
(674, 125, '_text_pyramid_5_nesting_4', 'field_5d694482a9078'),
(675, 125, 'text_pyramid_5_nesting_5', 'ТЫСТ5'),
(676, 125, '_text_pyramid_5_nesting_5', 'field_5d694482a9079'),
(677, 125, 'text_pyramid_6_nesting_1', 'ТЫСТ'),
(678, 125, '_text_pyramid_6_nesting_1', 'field_5d694485a907b'),
(679, 125, 'text_pyramid_6_nesting_2', 'ТЫСТ2'),
(680, 125, '_text_pyramid_6_nesting_2', 'field_5d694485a907c'),
(681, 125, 'text_pyramid_6_nesting_3', 'ТЫСТ3'),
(682, 125, '_text_pyramid_6_nesting_3', 'field_5d694485a907d'),
(683, 125, 'text_pyramid_6_nesting_4', 'ТЫСТ4'),
(684, 125, '_text_pyramid_6_nesting_4', 'field_5d694485a907e'),
(685, 125, 'text_pyramid_6_nesting_5', 'ТЫСТ5'),
(686, 125, '_text_pyramid_6_nesting_5', 'field_5d694485a907f'),
(687, 125, 'text_pyramid_6', ''),
(688, 125, '_text_pyramid_6', 'field_5d694485a907a'),
(689, 125, 'NIBK_link', 'http://инженеры-продаж.рф/'),
(690, 125, '_NIBK_link', 'field_5d69791047005'),
(691, 125, 'megapolis_link', 'http://инженеры-продаж.рф/'),
(692, 125, '_megapolis_link', 'field_5d69792947006'),
(693, 125, 'chpu_link', 'http://инженеры-продаж.рф/'),
(694, 125, '_chpu_link', 'field_5d69794047007'),
(695, 126, '_edit_lock', '1567248919:1'),
(696, 126, '_wp_page_template', 'template-parts/instruction-page.php'),
(697, 126, '_edit_last', '1'),
(698, 126, '_yoast_wpseo_content_score', '30'),
(699, 128, '_edit_last', '1'),
(700, 128, '_edit_lock', '1567248202:1'),
(701, 126, 'heading_instruction', 'Скачайте инструкцию по работе с площадками'),
(702, 126, '_heading_instruction', 'field_5d6a4f77fb7b3'),
(703, 130, 'heading_instruction', 'Скачайте инструкцию по работе с площадками'),
(704, 130, '_heading_instruction', 'field_5d6a4f77fb7b3'),
(705, 131, 'heading_instruction', 'Скачайте инструкцию по работе с площадками'),
(706, 131, '_heading_instruction', 'field_5d6a4f77fb7b3'),
(707, 132, '_edit_lock', '1567256198:1'),
(708, 132, '_wp_page_template', 'template-parts/thank-you-page.php'),
(709, 132, '_edit_last', '1'),
(710, 132, '_yoast_wpseo_content_score', '30'),
(711, 134, '_wp_attached_file', '2019/08/favicon.png'),
(712, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:16;s:6:\"height\";i:16;s:4:\"file\";s:19:\"2019/08/favicon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(713, 135, '_wp_trash_meta_status', 'publish'),
(714, 135, '_wp_trash_meta_time', '1567251797'),
(715, 136, '_edit_lock', '1567251757:1'),
(716, 139, '_edit_last', '1'),
(717, 139, '_edit_lock', '1567257523:1'),
(718, 139, '_yoast_wpseo_primary_category', '6'),
(719, 139, '_yoast_wpseo_content_score', '60'),
(720, 140, '_edit_last', '1'),
(721, 140, '_edit_lock', '1567257661:1'),
(722, 139, 'tag_blog_pages', 'ВВЕДЕНИЕ'),
(723, 139, '_tag_blog_pages', 'field_5d6a7264778a8'),
(724, 142, '_edit_last', '1'),
(725, 142, '_edit_lock', '1567257734:1'),
(726, 142, 'tag_blog_pages', 'Хорошо и плохо'),
(727, 142, '_tag_blog_pages', 'field_5d6a7264778a8'),
(728, 142, '_yoast_wpseo_primary_category', '6'),
(729, 142, '_yoast_wpseo_content_score', '60'),
(730, 143, '_edit_last', '1'),
(731, 143, '_edit_lock', '1567257758:1'),
(732, 143, 'tag_blog_pages', 'Наш опыт'),
(733, 143, '_tag_blog_pages', 'field_5d6a7264778a8'),
(734, 143, '_yoast_wpseo_primary_category', '6'),
(735, 143, '_yoast_wpseo_content_score', '60'),
(736, 145, '_edit_last', '1'),
(737, 145, '_edit_lock', '1567258684:1'),
(738, 145, 'tag_blog_pages', 'Введение'),
(739, 145, '_tag_blog_pages', 'field_5d6a7264778a8'),
(740, 145, '_yoast_wpseo_primary_category', '5'),
(741, 145, '_yoast_wpseo_content_score', '60'),
(742, 148, '_edit_last', '1'),
(743, 148, '_edit_lock', '1567258760:1'),
(744, 148, 'tag_blog_pages', 'Хорошо и плохо'),
(745, 148, '_tag_blog_pages', 'field_5d6a7264778a8'),
(746, 148, '_yoast_wpseo_primary_category', '5'),
(747, 148, '_yoast_wpseo_content_score', '60'),
(748, 149, '_edit_last', '1'),
(749, 149, '_edit_lock', '1567258749:1'),
(750, 149, 'tag_blog_pages', 'Наш опыт'),
(751, 149, '_tag_blog_pages', 'field_5d6a7264778a8'),
(752, 149, '_yoast_wpseo_primary_category', '5'),
(753, 149, '_yoast_wpseo_content_score', '60');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-08-30 07:36:39', '2019-08-30 04:36:39', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2019-08-30 07:36:39', '2019-08-30 04:36:39', '', 0, 'http://инженеры-продаж.рф/?p=1', 0, 'post', '', 1),
(3, 1, '2019-08-30 07:36:39', '2019-08-30 04:36:39', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наш адрес сайта: http://инженеры-продаж.рф.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие персональные данные мы собираем и с какой целью</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Комментарии</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медиафайлы</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Формы контактов</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Куки</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Встраиваемое содержимое других вебсайтов</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Веб-аналитика</h3><!-- /wp:heading --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактная информация</h2><!-- /wp:heading --><!-- wp:heading --><h2>Дополнительная информация</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Как мы защищаем ваши данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие принимаются процедуры против взлома данных</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>От каких третьих сторон мы получаем данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Требования к раскрытию отраслевых нормативных требований</h3><!-- /wp:heading -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-08-30 07:36:39', '2019-08-30 04:36:39', '', 0, 'http://инженеры-продаж.рф/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-08-30 07:36:53', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-08-30 07:36:53', '0000-00-00 00:00:00', '', 0, 'http://инженеры-продаж.рф/?p=4', 0, 'post', '', 0),
(5, 1, '2019-08-30 11:31:43', '2019-08-30 08:31:43', '', 'SEO', '', 'publish', 'closed', 'closed', '', 'seo', '', '', '2019-08-30 12:26:25', '2019-08-30 09:26:25', '', 22, 'http://инженеры-продаж.рф/?page_id=5', 0, 'page', '', 0),
(6, 1, '2019-08-30 11:31:43', '2019-08-30 08:31:43', '', 'SEO', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-08-30 11:31:43', '2019-08-30 08:31:43', '', 5, 'http://инженеры-продаж.рф/2019/08/30/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2019-08-30 11:32:08', '2019-08-30 08:32:08', '', 'Контекст', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b5%d0%ba%d1%81%d1%82', '', '', '2019-08-30 21:53:26', '2019-08-30 18:53:26', '', 22, 'http://инженеры-продаж.рф/?page_id=7', 0, 'page', '', 0),
(8, 1, '2019-08-30 11:32:08', '2019-08-30 08:32:08', '', 'Контекст', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-08-30 11:32:08', '2019-08-30 08:32:08', '', 7, 'http://инженеры-продаж.рф/2019/08/30/7-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2019-08-30 12:11:29', '0000-00-00 00:00:00', '', 'Главная', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-08-30 12:11:29', '0000-00-00 00:00:00', '', 0, 'http://инженеры-продаж.рф/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2019-08-30 12:11:29', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-08-30 12:11:29', '0000-00-00 00:00:00', '', 0, 'http://инженеры-продаж.рф/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2019-08-30 12:11:29', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-08-30 12:11:29', '0000-00-00 00:00:00', '', 0, 'http://инженеры-продаж.рф/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2019-08-30 12:14:08', '0000-00-00 00:00:00', '', 'Главная', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-08-30 12:14:08', '0000-00-00 00:00:00', '', 0, 'http://инженеры-продаж.рф/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2019-08-30 12:14:26', '2019-08-30 09:14:26', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2019-08-30 17:14:04', '2019-08-30 14:14:04', '', 22, 'http://инженеры-продаж.рф/?p=16', 2, 'nav_menu_item', '', 0),
(17, 1, '2019-08-30 12:14:26', '2019-08-30 09:14:26', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2019-08-30 17:14:04', '2019-08-30 14:14:04', '', 22, 'http://инженеры-продаж.рф/?p=17', 3, 'nav_menu_item', '', 0),
(18, 1, '2019-08-30 12:23:46', '2019-08-30 09:23:46', '', '+7 (950) 996-69-81', '', 'publish', 'closed', 'closed', '', '7-950-996-69-81', '', '', '2019-08-30 17:14:04', '2019-08-30 14:14:04', '', 0, 'http://инженеры-продаж.рф/?p=18', 5, 'nav_menu_item', '', 0),
(20, 1, '2019-08-30 12:25:17', '2019-08-30 09:25:17', '', 'Контакты', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b', '', '', '2019-08-30 22:17:14', '2019-08-30 19:17:14', '', 0, 'http://инженеры-продаж.рф/?page_id=20', 0, 'page', '', 0),
(21, 1, '2019-08-30 12:25:17', '2019-08-30 09:25:17', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2019-08-30 12:25:17', '2019-08-30 09:25:17', '', 20, 'http://инженеры-продаж.рф/2019/08/30/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2019-08-30 12:26:07', '2019-08-30 09:26:07', '', 'Услуги и цены', '', 'publish', 'closed', 'closed', '', '%d1%83%d1%81%d0%bb%d1%83%d0%b3%d0%b8-%d0%b8-%d1%86%d0%b5%d0%bd%d1%8b', '', '', '2019-08-30 12:26:08', '2019-08-30 09:26:08', '', 0, 'http://инженеры-продаж.рф/?page_id=22', 0, 'page', '', 0),
(23, 1, '2019-08-30 12:26:07', '2019-08-30 09:26:07', '', 'Услуги и цены', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-08-30 12:26:07', '2019-08-30 09:26:07', '', 22, 'http://инженеры-продаж.рф/2019/08/30/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2019-08-30 12:27:56', '2019-08-30 09:27:56', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2019-08-30 17:14:04', '2019-08-30 14:14:04', '', 0, 'http://инженеры-продаж.рф/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2019-08-30 12:27:56', '2019-08-30 09:27:56', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2019-08-30 17:14:04', '2019-08-30 14:14:04', '', 0, 'http://инженеры-продаж.рф/?p=25', 4, 'nav_menu_item', '', 0),
(26, 1, '2019-08-30 13:10:01', '0000-00-00 00:00:00', '', 'Блог', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-08-30 13:10:01', '2019-08-30 10:10:01', '', 0, 'http://инженеры-продаж.рф/?page_id=26', 0, 'page', '', 0),
(27, 1, '2019-08-30 18:23:13', '2019-08-30 15:23:13', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Главная', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', 'publish', 'closed', 'closed', '', 'group_5d693ee367e0f', '', '', '2019-08-30 22:30:44', '2019-08-30 19:30:44', '', 0, 'http://инженеры-продаж.рф/?post_type=acf-field-group&#038;p=27', 0, 'acf-field-group', '', 0),
(28, 1, '2019-08-30 18:23:13', '2019-08-30 15:23:13', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'текст 1 пирамидки', 'text_pyramid_1', 'publish', 'closed', 'closed', '', 'field_5d693eec1aee6', '', '', '2019-08-30 18:32:54', '2019-08-30 15:32:54', '', 27, 'http://инженеры-продаж.рф/?post_type=acf-field&#038;p=28', 0, 'acf-field', '', 0),
(34, 1, '2019-08-30 18:23:47', '2019-08-30 15:23:47', '', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2019-08-30 22:32:02', '2019-08-30 19:32:02', '', 0, 'http://инженеры-продаж.рф/?page_id=34', 0, 'page', '', 0),
(35, 1, '2019-08-30 18:23:47', '2019-08-30 15:23:47', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2019-08-30 18:23:47', '2019-08-30 15:23:47', '', 34, 'http://инженеры-продаж.рф/2019/08/30/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2019-08-30 18:24:35', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-08-30 18:24:35', '0000-00-00 00:00:00', '', 0, 'http://инженеры-продаж.рф/?page_id=36', 0, 'page', '', 0),
(37, 1, '2019-08-30 18:29:28', '2019-08-30 15:29:28', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 1', 'nesting_1', 'publish', 'closed', 'closed', '', 'field_5d69407ba4489', '', '', '2019-08-30 18:29:28', '2019-08-30 15:29:28', '', 28, 'http://инженеры-продаж.рф/?post_type=acf-field&p=37', 0, 'acf-field', '', 0),
(38, 1, '2019-08-30 18:29:28', '2019-08-30 15:29:28', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 2', 'nesting_2', 'publish', 'closed', 'closed', '', 'field_5d6940baa448b', '', '', '2019-08-30 18:29:28', '2019-08-30 15:29:28', '', 28, 'http://инженеры-продаж.рф/?post_type=acf-field&p=38', 1, 'acf-field', '', 0),
(39, 1, '2019-08-30 18:29:28', '2019-08-30 15:29:28', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 3', 'nesting_3', 'publish', 'closed', 'closed', '', 'field_5d6940c1a448c', '', '', '2019-08-30 18:29:28', '2019-08-30 15:29:28', '', 28, 'http://инженеры-продаж.рф/?post_type=acf-field&p=39', 2, 'acf-field', '', 0),
(40, 1, '2019-08-30 18:29:28', '2019-08-30 15:29:28', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 4', 'nesting_4', 'publish', 'closed', 'closed', '', 'field_5d6940c4a448d', '', '', '2019-08-30 18:29:28', '2019-08-30 15:29:28', '', 28, 'http://инженеры-продаж.рф/?post_type=acf-field&p=40', 3, 'acf-field', '', 0),
(41, 1, '2019-08-30 18:29:28', '2019-08-30 15:29:28', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 5', 'nesting_5', 'publish', 'closed', 'closed', '', 'field_5d6940c6a448e', '', '', '2019-08-30 18:29:28', '2019-08-30 15:29:28', '', 28, 'http://инженеры-продаж.рф/?post_type=acf-field&p=41', 4, 'acf-field', '', 0),
(43, 1, '2019-08-30 18:30:00', '2019-08-30 15:30:00', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2019-08-30 18:30:00', '2019-08-30 15:30:00', '', 34, 'http://инженеры-продаж.рф/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/34-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'текст 2 пирамидки', 'text_pyramid_2', 'publish', 'closed', 'closed', '', 'field_5d69447aa9062', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 27, 'http://инженеры-продаж.рф/?post_type=acf-field&p=44', 1, 'acf-field', '', 0),
(45, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 1', 'nesting_1', 'publish', 'closed', 'closed', '', 'field_5d69447aa9063', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 44, 'http://инженеры-продаж.рф/?post_type=acf-field&p=45', 0, 'acf-field', '', 0),
(46, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 2', 'nesting_2', 'publish', 'closed', 'closed', '', 'field_5d69447aa9064', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 44, 'http://инженеры-продаж.рф/?post_type=acf-field&p=46', 1, 'acf-field', '', 0),
(47, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 3', 'nesting_3', 'publish', 'closed', 'closed', '', 'field_5d69447aa9065', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 44, 'http://инженеры-продаж.рф/?post_type=acf-field&p=47', 2, 'acf-field', '', 0),
(48, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 4', 'nesting_4', 'publish', 'closed', 'closed', '', 'field_5d69447aa9066', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 44, 'http://инженеры-продаж.рф/?post_type=acf-field&p=48', 3, 'acf-field', '', 0),
(49, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 5', 'nesting_5', 'publish', 'closed', 'closed', '', 'field_5d69447aa9067', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 44, 'http://инженеры-продаж.рф/?post_type=acf-field&p=49', 4, 'acf-field', '', 0),
(50, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'текст 3 пирамидки', 'text_pyramid_3', 'publish', 'closed', 'closed', '', 'field_5d69447ea9068', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 27, 'http://инженеры-продаж.рф/?post_type=acf-field&p=50', 2, 'acf-field', '', 0),
(51, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 1', 'nesting_1', 'publish', 'closed', 'closed', '', 'field_5d69447ea9069', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 50, 'http://инженеры-продаж.рф/?post_type=acf-field&p=51', 0, 'acf-field', '', 0),
(52, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 2', 'nesting_2', 'publish', 'closed', 'closed', '', 'field_5d69447ea906a', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 50, 'http://инженеры-продаж.рф/?post_type=acf-field&p=52', 1, 'acf-field', '', 0),
(53, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 3', 'nesting_3', 'publish', 'closed', 'closed', '', 'field_5d69447ea906b', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 50, 'http://инженеры-продаж.рф/?post_type=acf-field&p=53', 2, 'acf-field', '', 0),
(54, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 4', 'nesting_4', 'publish', 'closed', 'closed', '', 'field_5d69447ea906c', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 50, 'http://инженеры-продаж.рф/?post_type=acf-field&p=54', 3, 'acf-field', '', 0),
(55, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 5', 'nesting_5', 'publish', 'closed', 'closed', '', 'field_5d69447ea906d', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 50, 'http://инженеры-продаж.рф/?post_type=acf-field&p=55', 4, 'acf-field', '', 0),
(56, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'текст 4 пирамидки', 'text_pyramid_4', 'publish', 'closed', 'closed', '', 'field_5d694480a906e', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 27, 'http://инженеры-продаж.рф/?post_type=acf-field&p=56', 3, 'acf-field', '', 0),
(57, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 1', 'nesting_1', 'publish', 'closed', 'closed', '', 'field_5d694480a906f', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 56, 'http://инженеры-продаж.рф/?post_type=acf-field&p=57', 0, 'acf-field', '', 0),
(58, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 2', 'nesting_2', 'publish', 'closed', 'closed', '', 'field_5d694480a9070', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 56, 'http://инженеры-продаж.рф/?post_type=acf-field&p=58', 1, 'acf-field', '', 0),
(59, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 3', 'nesting_3', 'publish', 'closed', 'closed', '', 'field_5d694480a9071', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 56, 'http://инженеры-продаж.рф/?post_type=acf-field&p=59', 2, 'acf-field', '', 0),
(60, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 4', 'nesting_4', 'publish', 'closed', 'closed', '', 'field_5d694480a9072', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 56, 'http://инженеры-продаж.рф/?post_type=acf-field&p=60', 3, 'acf-field', '', 0),
(61, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 5', 'nesting_5', 'publish', 'closed', 'closed', '', 'field_5d694480a9073', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 56, 'http://инженеры-продаж.рф/?post_type=acf-field&p=61', 4, 'acf-field', '', 0),
(62, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'текст 5 пирамидки', 'text_pyramid_5', 'publish', 'closed', 'closed', '', 'field_5d694482a9074', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 27, 'http://инженеры-продаж.рф/?post_type=acf-field&p=62', 4, 'acf-field', '', 0),
(63, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 1', 'nesting_1', 'publish', 'closed', 'closed', '', 'field_5d694482a9075', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 62, 'http://инженеры-продаж.рф/?post_type=acf-field&p=63', 0, 'acf-field', '', 0),
(64, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 2', 'nesting_2', 'publish', 'closed', 'closed', '', 'field_5d694482a9076', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 62, 'http://инженеры-продаж.рф/?post_type=acf-field&p=64', 1, 'acf-field', '', 0),
(65, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 3', 'nesting_3', 'publish', 'closed', 'closed', '', 'field_5d694482a9077', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 62, 'http://инженеры-продаж.рф/?post_type=acf-field&p=65', 2, 'acf-field', '', 0),
(66, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 4', 'nesting_4', 'publish', 'closed', 'closed', '', 'field_5d694482a9078', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 62, 'http://инженеры-продаж.рф/?post_type=acf-field&p=66', 3, 'acf-field', '', 0),
(67, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 5', 'nesting_5', 'publish', 'closed', 'closed', '', 'field_5d694482a9079', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 62, 'http://инженеры-продаж.рф/?post_type=acf-field&p=67', 4, 'acf-field', '', 0),
(68, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'текст 6 пирамидки', 'text_pyramid_6', 'publish', 'closed', 'closed', '', 'field_5d694485a907a', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 27, 'http://инженеры-продаж.рф/?post_type=acf-field&p=68', 5, 'acf-field', '', 0),
(69, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 1', 'nesting_1', 'publish', 'closed', 'closed', '', 'field_5d694485a907b', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 68, 'http://инженеры-продаж.рф/?post_type=acf-field&p=69', 0, 'acf-field', '', 0),
(70, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 2', 'nesting_2', 'publish', 'closed', 'closed', '', 'field_5d694485a907c', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 68, 'http://инженеры-продаж.рф/?post_type=acf-field&p=70', 1, 'acf-field', '', 0),
(71, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 3', 'nesting_3', 'publish', 'closed', 'closed', '', 'field_5d694485a907d', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 68, 'http://инженеры-продаж.рф/?post_type=acf-field&p=71', 2, 'acf-field', '', 0),
(72, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 4', 'nesting_4', 'publish', 'closed', 'closed', '', 'field_5d694485a907e', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 68, 'http://инженеры-продаж.рф/?post_type=acf-field&p=72', 3, 'acf-field', '', 0),
(73, 1, '2019-08-30 18:49:02', '2019-08-30 15:49:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вложенность 5', 'nesting_5', 'publish', 'closed', 'closed', '', 'field_5d694485a907f', '', '', '2019-08-30 18:49:02', '2019-08-30 15:49:02', '', 68, 'http://инженеры-продаж.рф/?post_type=acf-field&p=73', 4, 'acf-field', '', 0),
(74, 1, '2019-08-30 18:50:14', '2019-08-30 15:50:14', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2019-08-30 18:50:14', '2019-08-30 15:50:14', '', 34, 'http://инженеры-продаж.рф/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/34-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2019-08-30 19:21:23', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-08-30 19:21:23', '0000-00-00 00:00:00', '', 0, 'http://инженеры-продаж.рф/?post_type=acf-field-group&p=75', 0, 'acf-field-group', '', 0),
(76, 1, '2019-08-30 19:24:30', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-08-30 19:24:30', '0000-00-00 00:00:00', '', 0, 'http://инженеры-продаж.рф/?post_type=acf-field-group&p=76', 0, 'acf-field-group', '', 0),
(77, 1, '2019-08-30 20:23:07', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-08-30 20:23:07', '0000-00-00 00:00:00', '', 0, 'http://инженеры-продаж.рф/?post_type=reviews&p=77', 0, 'reviews', '', 0),
(78, 1, '2019-08-30 20:24:09', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-08-30 20:24:09', '0000-00-00 00:00:00', '', 0, 'http://инженеры-продаж.рф/?post_type=reviews&p=78', 0, 'reviews', '', 0),
(79, 1, '2019-08-30 20:28:02', '2019-08-30 17:28:02', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"reviews\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Отзывы', '%d0%be%d1%82%d0%b7%d1%8b%d0%b2%d1%8b', 'publish', 'closed', 'closed', '', 'group_5d695c309a7b5', '', '', '2019-08-30 20:41:40', '2019-08-30 17:41:40', '', 0, 'http://инженеры-продаж.рф/?post_type=acf-field-group&#038;p=79', 0, 'acf-field-group', '', 0),
(80, 1, '2019-08-30 20:28:02', '2019-08-30 17:28:02', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:1:\"#\";s:11:\"placeholder\";s:60:\"Ссылка на \"Смотреть полный отзыв\"\";}', 'Ссылка на отзыв', 'link_to_reviews', 'publish', 'closed', 'closed', '', 'field_5d695c3b568c3', '', '', '2019-08-30 20:41:40', '2019-08-30 17:41:40', '', 79, 'http://инженеры-продаж.рф/?post_type=acf-field&#038;p=80', 0, 'acf-field', '', 0),
(81, 1, '2019-08-30 20:28:02', '2019-08-30 17:28:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Автор', 'author_reviews', 'publish', 'closed', 'closed', '', 'field_5d695c63568c4', '', '', '2019-08-30 20:41:40', '2019-08-30 17:41:40', '', 79, 'http://инженеры-продаж.рф/?post_type=acf-field&#038;p=81', 1, 'acf-field', '', 0),
(82, 1, '2019-08-30 20:28:02', '2019-08-30 17:28:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Должность', 'position_reviews', 'publish', 'closed', 'closed', '', 'field_5d695c7e568c5', '', '', '2019-08-30 20:41:40', '2019-08-30 17:41:40', '', 79, 'http://инженеры-продаж.рф/?post_type=acf-field&#038;p=82', 2, 'acf-field', '', 0),
(83, 1, '2019-08-30 20:29:29', '2019-08-30 17:29:29', '«В настоящее время наша компания “Красроуд” растет, что позволило сделать вывод о том, что грамотно настроенная контекстная реклама очень и очень хорошо работает в строительной нише. В нашем случае она показала кратный рост!»', 'Красроуд', '', 'trash', 'closed', 'closed', '', '%d1%87%d0%b5%d1%80%d0%bd%d0%be%d0%b2%d0%b8%d0%ba__trashed', '', '', '2019-08-30 21:08:48', '2019-08-30 18:08:48', '', 0, 'http://инженеры-продаж.рф/?post_type=reviews&#038;p=83', 0, 'reviews', '', 0),
(84, 1, '2019-08-30 20:30:12', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-08-30 20:30:12', '0000-00-00 00:00:00', '', 0, 'http://инженеры-продаж.рф/?post_type=reviews&p=84', 0, 'reviews', '', 0),
(85, 1, '2019-08-30 20:30:48', '2019-08-30 17:30:48', '«2 В настоящее время наша компания “Красроуд” растет, что позволило сделать вывод о том, что грамотно настроенная контекстная реклама очень и очень хорошо работает в строительной нише. В нашем случае она показала кратный рост!»', 'Красроуд 2', '', 'publish', 'closed', 'closed', '', '%d1%87%d0%b5%d1%80%d0%bd%d0%be%d0%b2%d0%b8%d0%ba-2', '', '', '2019-08-30 20:42:18', '2019-08-30 17:42:18', '', 0, 'http://инженеры-продаж.рф/?post_type=reviews&#038;p=85', 0, 'reviews', '', 0),
(86, 1, '2019-08-30 20:31:51', '2019-08-30 17:31:51', '«6 В настоящее время наша компания “Красроуд” растет, что позволило сделать вывод о том, что грамотно настроенная контекстная реклама очень и очень хорошо работает в строительной нише. В нашем случае она показала кратный рост!»', 'Красроуд 6', '', 'publish', 'closed', 'closed', '', '%d1%87%d0%b5%d1%80%d0%bd%d0%be%d0%b2%d0%b8%d0%ba-6', '', '', '2019-08-30 20:43:17', '2019-08-30 17:43:17', '', 0, 'http://инженеры-продаж.рф/?post_type=reviews&#038;p=86', 0, 'reviews', '', 0),
(87, 1, '2019-08-30 20:31:42', '2019-08-30 17:31:42', '«5 В настоящее время наша компания “Красроуд” растет, что позволило сделать вывод о том, что грамотно настроенная контекстная реклама очень и очень хорошо работает в строительной нише. В нашем случае она показала кратный рост!»', 'Красроуд 5', '', 'publish', 'closed', 'closed', '', '%d1%87%d0%b5%d1%80%d0%bd%d0%be%d0%b2%d0%b8%d0%ba-5', '', '', '2019-08-30 20:43:01', '2019-08-30 17:43:01', '', 0, 'http://инженеры-продаж.рф/?post_type=reviews&#038;p=87', 0, 'reviews', '', 0),
(88, 1, '2019-08-30 20:31:28', '2019-08-30 17:31:28', '« 4 В настоящее время наша компания “Красроуд” растет, что позволило сделать вывод о том, что грамотно настроенная контекстная реклама очень и очень хорошо работает в строительной нише. В нашем случае она показала кратный рост!»', 'Красроуд 4', '', 'publish', 'closed', 'closed', '', '%d1%87%d0%b5%d1%80%d0%bd%d0%be%d0%b2%d0%b8%d0%ba-4', '', '', '2019-08-30 20:42:50', '2019-08-30 17:42:50', '', 0, 'http://инженеры-продаж.рф/?post_type=reviews&#038;p=88', 0, 'reviews', '', 0),
(89, 1, '2019-08-30 20:31:04', '2019-08-30 17:31:04', '« 3 В настоящее время наша компания “Красроуд” растет, что позволило сделать вывод о том, что грамотно настроенная контекстная реклама очень и очень хорошо работает в строительной нише. В нашем случае она показала кратный рост!»', 'Красроуд 3', '', 'publish', 'closed', 'closed', '', '%d1%87%d0%b5%d1%80%d0%bd%d0%be%d0%b2%d0%b8%d0%ba-3', '', '', '2019-08-30 20:42:41', '2019-08-30 17:42:41', '', 0, 'http://инженеры-продаж.рф/?post_type=reviews&#038;p=89', 0, 'reviews', '', 0),
(90, 1, '2019-08-30 20:39:22', '2019-08-30 17:39:22', '', 'main_page_Ellipse', '', 'inherit', 'open', 'closed', '', 'main_page_ellipse', '', '', '2019-08-30 20:41:58', '2019-08-30 17:41:58', '', 83, 'http://инженеры-продаж.рф/wp-content/uploads/2019/08/main_page_Ellipse.png', 0, 'attachment', 'image/png', 0),
(91, 1, '2019-08-30 20:39:38', '2019-08-30 17:39:38', '«6 В настоящее время наша компания “Красроуд” растет, что позволило сделать вывод о том, что грамотно настроенная контекстная реклама очень и очень хорошо работает в строительной нише. В нашем случае она показала кратный рост!»', 'Красроуд 6', '', 'inherit', 'closed', 'closed', '', '86-autosave-v1', '', '', '2019-08-30 20:39:38', '2019-08-30 17:39:38', '', 86, 'http://инженеры-продаж.рф/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/86-autosave-v1/', 0, 'revision', '', 0),
(92, 1, '2019-08-30 20:41:40', '2019-08-30 17:41:40', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Аватар автора', 'avatar_reviews', 'publish', 'closed', 'closed', '', 'field_5d695f911cb02', '', '', '2019-08-30 20:41:40', '2019-08-30 17:41:40', '', 79, 'http://инженеры-продаж.рф/?post_type=acf-field&p=92', 3, 'acf-field', '', 0),
(93, 1, '2019-08-30 20:42:07', '2019-08-30 17:42:07', '«2 В настоящее время наша компания “Красроуд” растет, что позволило сделать вывод о том, что грамотно настроенная контекстная реклама очень и очень хорошо работает в строительной нише. В нашем случае она показала кратный рост!»', 'Красроуд 2', '', 'inherit', 'closed', 'closed', '', '85-autosave-v1', '', '', '2019-08-30 20:42:07', '2019-08-30 17:42:07', '', 85, 'http://инженеры-продаж.рф/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/85-autosave-v1/', 0, 'revision', '', 0),
(94, 1, '2019-08-30 21:09:20', '2019-08-30 18:09:20', '«7 В настоящее время наша компания “Красроуд” растет, что позволило сделать вывод о том, что грамотно настроенная контекстная реклама очень и очень хорошо работает в строительной нише. В нашем случае она показала кратный рост!»', 'Красроуд 7', '', 'publish', 'closed', 'closed', '', '%d1%87%d0%b5%d1%80%d0%bd%d0%be%d0%b2%d0%b8%d0%ba-6-2', '', '', '2019-08-30 21:09:20', '2019-08-30 18:09:20', '', 0, 'http://инженеры-продаж.рф/?post_type=reviews&#038;p=94', 0, 'reviews', '', 0),
(95, 1, '2019-08-30 21:21:14', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-08-30 21:21:14', '0000-00-00 00:00:00', '', 0, 'http://инженеры-продаж.рф/?post_type=cases&p=95', 0, 'cases', '', 0),
(96, 1, '2019-08-30 21:25:43', '2019-08-30 18:25:43', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"cases\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Кейсы в слайдере', '%d0%ba%d0%b5%d0%b9%d1%81%d1%8b-%d0%b2-%d1%81%d0%bb%d0%b0%d0%b9%d0%b4%d0%b5%d1%80%d0%b5', 'publish', 'closed', 'closed', '', 'group_5d69692298d9d', '', '', '2019-08-30 21:43:07', '2019-08-30 18:43:07', '', 0, 'http://инженеры-продаж.рф/?post_type=acf-field-group&#038;p=96', 0, 'acf-field-group', '', 0),
(97, 1, '2019-08-30 21:25:43', '2019-08-30 18:25:43', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Цифра количества лидов', 'number_of_leads_per_month', 'publish', 'closed', 'closed', '', 'field_5d696929f70c9', '', '', '2019-08-30 21:25:43', '2019-08-30 18:25:43', '', 96, 'http://инженеры-продаж.рф/?post_type=acf-field&p=97', 0, 'acf-field', '', 0),
(98, 1, '2019-08-30 21:25:43', '2019-08-30 18:25:43', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Стоимость лида', 'lead_cost', 'publish', 'closed', 'closed', '', 'field_5d69698bf70ca', '', '', '2019-08-30 21:25:43', '2019-08-30 18:25:43', '', 96, 'http://инженеры-продаж.рф/?post_type=acf-field&p=98', 1, 'acf-field', '', 0),
(99, 1, '2019-08-30 21:25:43', '2019-08-30 18:25:43', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Конверсия сайта', 'site_conversion', 'publish', 'closed', 'closed', '', 'field_5d6969aff70cb', '', '', '2019-08-30 21:25:43', '2019-08-30 18:25:43', '', 96, 'http://инженеры-продаж.рф/?post_type=acf-field&p=99', 2, 'acf-field', '', 0),
(100, 1, '2019-08-30 21:25:43', '2019-08-30 18:25:43', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Ссылка на кейс', 'link_to_case', 'publish', 'closed', 'closed', '', 'field_5d6969d7f70cc', '', '', '2019-08-30 21:25:43', '2019-08-30 18:25:43', '', 96, 'http://инженеры-продаж.рф/?post_type=acf-field&p=100', 3, 'acf-field', '', 0),
(101, 1, '2019-08-30 21:25:43', '2019-08-30 18:25:43', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Ссылка на сайт', 'link_to_site', 'publish', 'closed', 'closed', '', 'field_5d6969e9f70cd', '', '', '2019-08-30 21:25:43', '2019-08-30 18:25:43', '', 96, 'http://инженеры-продаж.рф/?post_type=acf-field&p=101', 4, 'acf-field', '', 0),
(102, 1, '2019-08-30 21:25:43', '2019-08-30 18:25:43', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Фоновое изображение', 'background_image', 'publish', 'closed', 'closed', '', 'field_5d6969fdf70ce', '', '', '2019-08-30 21:43:07', '2019-08-30 18:43:07', '', 96, 'http://инженеры-продаж.рф/?post_type=acf-field&#038;p=102', 5, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(103, 1, '2019-08-30 21:28:12', '2019-08-30 18:28:12', 'Сайт Красноярского станкостроительного завода. Информации мало, нужно хотя бы в\r\nтри-четыре строчки, но не\r\nболее.', 'ЧПУ24', '', 'publish', 'closed', 'closed', '', '%d1%87%d0%bf%d1%8324', '', '', '2019-08-30 21:28:12', '2019-08-30 18:28:12', '', 0, 'http://инженеры-продаж.рф/?post_type=cases&#038;p=103', 0, 'cases', '', 0),
(104, 1, '2019-08-30 21:27:59', '2019-08-30 18:27:59', '', 'cpu_card_bg', '', 'inherit', 'open', 'closed', '', 'cpu_card_bg', '', '', '2019-08-30 21:27:59', '2019-08-30 18:27:59', '', 103, 'http://инженеры-продаж.рф/wp-content/uploads/2019/08/cpu_card_bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2019-08-30 21:28:00', '2019-08-30 18:28:00', '', 'krasroad_card_bg', '', 'inherit', 'open', 'closed', '', 'krasroad_card_bg', '', '', '2019-08-30 21:28:00', '2019-08-30 18:28:00', '', 103, 'http://инженеры-продаж.рф/wp-content/uploads/2019/08/krasroad_card_bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2019-08-30 21:28:01', '2019-08-30 18:28:01', '', 'megapolis_card_bg', '', 'inherit', 'open', 'closed', '', 'megapolis_card_bg', '', '', '2019-08-30 21:28:01', '2019-08-30 18:28:01', '', 103, 'http://инженеры-продаж.рф/wp-content/uploads/2019/08/megapolis_card_bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2019-08-30 21:29:47', '2019-08-30 18:29:47', 'Сайт Красноярского строительного холдинга. Здесь информации будет уже побольше,\r\nчетыре строки. Просто чтобы понять как это будет выглядеть', 'Мегаполис', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%b5%d0%b3%d0%b0%d0%bf%d0%be%d0%bb%d0%b8%d1%81', '', '', '2019-08-30 21:29:47', '2019-08-30 18:29:47', '', 0, 'http://инженеры-продаж.рф/?post_type=cases&#038;p=107', 0, 'cases', '', 0),
(108, 1, '2019-08-30 21:30:38', '2019-08-30 18:30:38', 'Аренда спецтехники в городе Красноярск. Информации мало, нужно хотя бы в три-четыре строчки, но не более.', 'Красроуд', '', 'publish', 'closed', 'closed', '', '%d0%ba%d1%80%d0%b0%d1%81%d1%80%d0%be%d1%83%d0%b4', '', '', '2019-08-30 21:30:38', '2019-08-30 18:30:38', '', 0, 'http://инженеры-продаж.рф/?post_type=cases&#038;p=108', 0, 'cases', '', 0),
(109, 1, '2019-08-30 21:52:37', '2019-08-30 18:52:37', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:31:\"template-parts/context-page.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Контекст', '%d0%ba%d0%be%d0%bd%d1%82%d0%b5%d0%ba%d1%81%d1%82', 'publish', 'closed', 'closed', '', 'group_5d6970134e2d4', '', '', '2019-08-30 21:54:56', '2019-08-30 18:54:56', '', 0, 'http://инженеры-продаж.рф/?post_type=acf-field-group&#038;p=109', 0, 'acf-field-group', '', 0),
(110, 1, '2019-08-30 21:52:37', '2019-08-30 18:52:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок в слайдере 1', 'heading_slider_1', 'publish', 'closed', 'closed', '', 'field_5d697018bec94', '', '', '2019-08-30 21:52:37', '2019-08-30 18:52:37', '', 109, 'http://инженеры-продаж.рф/?post_type=acf-field&p=110', 0, 'acf-field', '', 0),
(111, 1, '2019-08-30 21:52:37', '2019-08-30 18:52:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок в слайдере 2', 'heading_slider_2', 'publish', 'closed', 'closed', '', 'field_5d69703bbec95', '', '', '2019-08-30 21:52:37', '2019-08-30 18:52:37', '', 109, 'http://инженеры-продаж.рф/?post_type=acf-field&p=111', 1, 'acf-field', '', 0),
(112, 1, '2019-08-30 21:52:37', '2019-08-30 18:52:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок в слайдере 3', 'heading_slider_3', 'publish', 'closed', 'closed', '', 'field_5d69703ebec96', '', '', '2019-08-30 21:52:37', '2019-08-30 18:52:37', '', 109, 'http://инженеры-продаж.рф/?post_type=acf-field&p=112', 2, 'acf-field', '', 0),
(113, 1, '2019-08-30 21:52:37', '2019-08-30 18:52:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок в слайдере 4', 'heading_slider_4', 'publish', 'closed', 'closed', '', 'field_5d697040bec97', '', '', '2019-08-30 21:52:37', '2019-08-30 18:52:37', '', 109, 'http://инженеры-продаж.рф/?post_type=acf-field&p=113', 3, 'acf-field', '', 0),
(114, 1, '2019-08-30 21:52:37', '2019-08-30 18:52:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок в слайдере 5', 'heading_slider_5', 'publish', 'closed', 'closed', '', 'field_5d697042bec98', '', '', '2019-08-30 21:52:37', '2019-08-30 18:52:37', '', 109, 'http://инженеры-продаж.рф/?post_type=acf-field&p=114', 4, 'acf-field', '', 0),
(115, 1, '2019-08-30 21:52:37', '2019-08-30 18:52:37', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Текст в слайдере 1', 'text_slider_1', 'publish', 'closed', 'closed', '', 'field_5d697044bec99', '', '', '2019-08-30 21:52:37', '2019-08-30 18:52:37', '', 109, 'http://инженеры-продаж.рф/?post_type=acf-field&p=115', 5, 'acf-field', '', 0),
(116, 1, '2019-08-30 21:52:37', '2019-08-30 18:52:37', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Текст в слайдере 2', 'text_slider_2', 'publish', 'closed', 'closed', '', 'field_5d697058bec9a', '', '', '2019-08-30 21:52:37', '2019-08-30 18:52:37', '', 109, 'http://инженеры-продаж.рф/?post_type=acf-field&p=116', 6, 'acf-field', '', 0),
(117, 1, '2019-08-30 21:52:37', '2019-08-30 18:52:37', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Текст в слайдере 3', 'text_slider_3', 'publish', 'closed', 'closed', '', 'field_5d69705bbec9b', '', '', '2019-08-30 21:52:37', '2019-08-30 18:52:37', '', 109, 'http://инженеры-продаж.рф/?post_type=acf-field&p=117', 7, 'acf-field', '', 0),
(118, 1, '2019-08-30 21:52:37', '2019-08-30 18:52:37', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Текст в слайдере 4', 'text_slider_4', 'publish', 'closed', 'closed', '', 'field_5d69705cbec9c', '', '', '2019-08-30 21:52:37', '2019-08-30 18:52:37', '', 109, 'http://инженеры-продаж.рф/?post_type=acf-field&p=118', 8, 'acf-field', '', 0),
(119, 1, '2019-08-30 21:52:37', '2019-08-30 18:52:37', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Текст в слайдере 5', 'text_slider_5', 'publish', 'closed', 'closed', '', 'field_5d69705ebec9d', '', '', '2019-08-30 21:52:37', '2019-08-30 18:52:37', '', 109, 'http://инженеры-продаж.рф/?post_type=acf-field&p=119', 9, 'acf-field', '', 0),
(120, 1, '2019-08-30 21:53:26', '2019-08-30 18:53:26', '', 'Контекст', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-08-30 21:53:26', '2019-08-30 18:53:26', '', 7, 'http://инженеры-продаж.рф/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/7-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2019-08-30 22:30:44', '2019-08-30 19:30:44', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Ссылка на кейс NIBK (Карта)', 'NIBK_link', 'publish', 'closed', 'closed', '', 'field_5d69791047005', '', '', '2019-08-30 22:30:44', '2019-08-30 19:30:44', '', 27, 'http://инженеры-продаж.рф/?post_type=acf-field&p=121', 6, 'acf-field', '', 0),
(122, 1, '2019-08-30 22:30:44', '2019-08-30 19:30:44', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Ссылка на кейс Megapolis (Карта)', 'megapolis_link', 'publish', 'closed', 'closed', '', 'field_5d69792947006', '', '', '2019-08-30 22:30:44', '2019-08-30 19:30:44', '', 27, 'http://инженеры-продаж.рф/?post_type=acf-field&p=122', 7, 'acf-field', '', 0),
(123, 1, '2019-08-30 22:30:44', '2019-08-30 19:30:44', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Ссылка на кейс ЧПУ (Карта)', 'chpu_link', 'publish', 'closed', 'closed', '', 'field_5d69794047007', '', '', '2019-08-30 22:30:44', '2019-08-30 19:30:44', '', 27, 'http://инженеры-продаж.рф/?post_type=acf-field&p=123', 8, 'acf-field', '', 0),
(124, 1, '2019-08-30 22:31:08', '2019-08-30 19:31:08', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2019-08-30 22:31:08', '2019-08-30 19:31:08', '', 34, 'http://инженеры-продаж.рф/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/34-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2019-08-30 22:32:02', '2019-08-30 19:32:02', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2019-08-30 22:32:02', '2019-08-30 19:32:02', '', 34, 'http://инженеры-продаж.рф/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/34-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2019-08-31 13:43:45', '2019-08-31 10:43:45', '', 'SEO-инструкция', '', 'publish', 'closed', 'closed', '', 'seo-%d0%b8%d0%bd%d1%81%d1%82%d1%80%d1%83%d0%ba%d1%86%d0%b8%d1%8f', '', '', '2019-08-31 13:46:53', '2019-08-31 10:46:53', '', 0, 'http://инженеры-продаж.рф/?page_id=126', 0, 'page', '', 0),
(127, 1, '2019-08-31 13:43:45', '2019-08-31 10:43:45', '', 'SEO-инструкция', '', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2019-08-31 13:43:45', '2019-08-31 10:43:45', '', 126, 'http://инженеры-продаж.рф/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/126-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2019-08-31 13:45:38', '2019-08-31 10:45:38', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:35:\"template-parts/instruction-page.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Инструкция', '%d0%b8%d0%bd%d1%81%d1%82%d1%80%d1%83%d0%ba%d1%86%d0%b8%d1%8f', 'publish', 'closed', 'closed', '', 'group_5d6a4f69e0407', '', '', '2019-08-31 13:45:38', '2019-08-31 10:45:38', '', 0, 'http://инженеры-продаж.рф/?post_type=acf-field-group&#038;p=128', 0, 'acf-field-group', '', 0),
(129, 1, '2019-08-31 13:45:38', '2019-08-31 10:45:38', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок', 'heading_instruction', 'publish', 'closed', 'closed', '', 'field_5d6a4f77fb7b3', '', '', '2019-08-31 13:45:38', '2019-08-31 10:45:38', '', 128, 'http://инженеры-продаж.рф/?post_type=acf-field&p=129', 0, 'acf-field', '', 0),
(130, 1, '2019-08-31 13:46:21', '2019-08-31 10:46:21', '', 'SEO-инструкция', '', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2019-08-31 13:46:21', '2019-08-31 10:46:21', '', 126, 'http://инженеры-продаж.рф/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/126-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2019-08-31 13:46:53', '2019-08-31 10:46:53', '', 'SEO-инструкция', '', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2019-08-31 13:46:53', '2019-08-31 10:46:53', '', 126, 'http://инженеры-продаж.рф/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/126-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2019-08-31 13:58:13', '2019-08-31 10:58:13', '', 'Спасибо!', '', 'publish', 'closed', 'closed', '', '%d1%81%d0%bf%d0%b0%d1%81%d0%b8%d0%b1%d0%be', '', '', '2019-08-31 13:58:14', '2019-08-31 10:58:14', '', 0, 'http://инженеры-продаж.рф/?page_id=132', 0, 'page', '', 0),
(133, 1, '2019-08-31 13:58:13', '2019-08-31 10:58:13', '', 'Спасибо!', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2019-08-31 13:58:13', '2019-08-31 10:58:13', '', 132, 'http://инженеры-продаж.рф/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/132-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2019-08-31 14:43:10', '2019-08-31 11:43:10', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2019-08-31 14:43:10', '2019-08-31 11:43:10', '', 0, 'http://инженеры-продаж.рф/wp-content/uploads/2019/08/favicon.png', 0, 'attachment', 'image/png', 0),
(135, 1, '2019-08-31 14:43:17', '2019-08-31 11:43:17', '{\n    \"site_icon\": {\n        \"value\": 134,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-08-31 11:43:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '87f22fb9-ee26-44b5-8120-f5117ec85543', '', '', '2019-08-31 14:43:17', '2019-08-31 11:43:17', '', 0, 'http://инженеры-продаж.рф/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/87f22fb9-ee26-44b5-8120-f5117ec85543/', 0, 'customize_changeset', '', 0),
(136, 1, '2019-08-31 14:43:21', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-08-31 14:43:21', '0000-00-00 00:00:00', '', 0, 'http://инженеры-продаж.рф/?page_id=136', 0, 'page', '', 0),
(137, 1, '2019-08-31 16:10:35', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-08-31 16:10:35', '0000-00-00 00:00:00', '', 0, 'http://инженеры-продаж.рф/?post_type=pages_blog&p=137', 0, 'pages_blog', '', 0),
(138, 1, '2019-08-31 16:11:05', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-08-31 16:11:05', '0000-00-00 00:00:00', '', 0, 'http://инженеры-продаж.рф/?post_type=pages_blog&p=138', 0, 'pages_blog', '', 0),
(139, 1, '2019-08-31 16:12:42', '2019-08-31 13:12:42', 'Здесь будет охуительный текст', 'Что такое контекстная реклама?', '', 'publish', 'closed', 'closed', '', '%d1%87%d1%82%d0%be-%d1%82%d0%b0%d0%ba%d0%be%d0%b5-%d0%ba%d0%be%d0%bd%d1%82%d0%b5%d0%ba%d1%81%d1%82%d0%bd%d0%b0%d1%8f-%d1%80%d0%b5%d0%ba%d0%bb%d0%b0%d0%bc%d0%b0', '', '', '2019-08-31 16:14:55', '2019-08-31 13:14:55', '', 0, 'http://инженеры-продаж.рф/?post_type=pages_blog&#038;p=139', 0, 'pages_blog', '', 0),
(140, 1, '2019-08-31 16:14:02', '2019-08-31 13:14:02', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"pages_blog\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Блог для страниц', '%d0%b1%d0%bb%d0%be%d0%b3-%d0%b4%d0%bb%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86', 'publish', 'closed', 'closed', '', 'group_5d6a725dce2f4', '', '', '2019-08-31 16:23:22', '2019-08-31 13:23:22', '', 0, 'http://инженеры-продаж.рф/?post_type=acf-field-group&#038;p=140', 0, 'acf-field-group', '', 0),
(141, 1, '2019-08-31 16:14:02', '2019-08-31 13:14:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Тег', 'tag_blog_pages', 'publish', 'closed', 'closed', '', 'field_5d6a7264778a8', '', '', '2019-08-31 16:14:20', '2019-08-31 13:14:20', '', 140, 'http://инженеры-продаж.рф/?post_type=acf-field&#038;p=141', 0, 'acf-field', '', 0),
(142, 1, '2019-08-31 16:24:32', '2019-08-31 13:24:32', 'Здесь будет тоже пиздатый текст!', 'Почему контекстная реклама не работает?', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%be%d1%87%d0%b5%d0%bc%d1%83-%d0%ba%d0%be%d0%bd%d1%82%d0%b5%d0%ba%d1%81%d1%82%d0%bd%d0%b0%d1%8f-%d1%80%d0%b5%d0%ba%d0%bb%d0%b0%d0%bc%d0%b0-%d0%bd%d0%b5-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d0%b0', '', '', '2019-08-31 16:24:32', '2019-08-31 13:24:32', '', 0, 'http://инженеры-продаж.рф/?post_type=pages_blog&#038;p=142', 0, 'pages_blog', '', 0),
(143, 1, '2019-08-31 16:24:59', '2019-08-31 13:24:59', 'Здесь тоже все будет охуенчик!', 'Какая контекстная реклама работает?', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b0%d0%ba%d0%b0%d1%8f-%d0%ba%d0%be%d0%bd%d1%82%d0%b5%d0%ba%d1%81%d1%82%d0%bd%d0%b0%d1%8f-%d1%80%d0%b5%d0%ba%d0%bb%d0%b0%d0%bc%d0%b0-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d0%b0%d0%b5%d1%82', '', '', '2019-08-31 16:24:59', '2019-08-31 13:24:59', '', 0, 'http://инженеры-продаж.рф/?post_type=pages_blog&#038;p=143', 0, 'pages_blog', '', 0),
(144, 1, '2019-08-31 16:25:02', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-08-31 16:25:02', '0000-00-00 00:00:00', '', 0, 'http://инженеры-продаж.рф/?post_type=pages_blog&p=144', 0, 'pages_blog', '', 0),
(145, 1, '2019-08-31 16:40:24', '2019-08-31 13:40:24', 'Здесь охуенный текст!', 'Тестовая запись 1', '', 'publish', 'closed', 'closed', '', '%d1%82%d0%b5%d1%81%d1%82%d0%be%d0%b2%d0%b0%d1%8f-%d0%b7%d0%b0%d0%bf%d0%b8%d1%81%d1%8c-1', '', '', '2019-08-31 16:40:24', '2019-08-31 13:40:24', '', 0, 'http://инженеры-продаж.рф/?post_type=pages_blog&#038;p=145', 0, 'pages_blog', '', 0),
(146, 1, '2019-08-31 16:40:27', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-08-31 16:40:27', '0000-00-00 00:00:00', '', 0, 'http://инженеры-продаж.рф/?post_type=pages_blog&p=146', 0, 'pages_blog', '', 0),
(147, 1, '2019-08-31 16:40:27', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-08-31 16:40:27', '0000-00-00 00:00:00', '', 0, 'http://инженеры-продаж.рф/?post_type=pages_blog&p=147', 0, 'pages_blog', '', 0),
(148, 1, '2019-08-31 16:40:58', '2019-08-31 13:40:58', 'Здесь Охуенный текст х2', 'Тестовая запись 2', '', 'publish', 'closed', 'closed', '', '%d1%82%d0%b5%d1%81%d1%82%d0%be%d0%b2%d0%b0%d1%8f-%d0%b7%d0%b0%d0%bf%d0%b8%d1%81%d1%8c-2', '', '', '2019-08-31 16:41:40', '2019-08-31 13:41:40', '', 0, 'http://инженеры-продаж.рф/?post_type=pages_blog&#038;p=148', 0, 'pages_blog', '', 0),
(149, 1, '2019-08-31 16:41:30', '2019-08-31 13:41:30', 'Здесь охуенный текст х3', 'Тестовая запись 3', '', 'publish', 'closed', 'closed', '', '%d1%82%d0%b5%d1%81%d1%82%d0%be%d0%b2%d0%b0%d1%8f-%d0%b7%d0%b0%d0%bf%d0%b8%d1%81%d1%8c-3', '', '', '2019-08-31 16:41:30', '2019-08-31 13:41:30', '', 0, 'http://инженеры-продаж.рф/?post_type=pages_blog&#038;p=149', 0, 'pages_blog', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(3, 'Хэдер', '%d1%85%d1%8d%d0%b4%d0%b5%d1%80', 0),
(5, 'SEO', 'seo', 0),
(6, 'Контекст', '%d0%ba%d0%be%d0%bd%d1%82%d0%b5%d0%ba%d1%81%d1%82', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(16, 3, 0),
(17, 3, 0),
(18, 3, 0),
(24, 3, 0),
(25, 3, 0),
(139, 6, 0),
(142, 6, 0),
(143, 6, 0),
(145, 5, 0),
(148, 5, 0),
(149, 5, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 5),
(5, 5, 'category', '', 0, 3),
(6, 6, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'administrator-zhenskoi-bani'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"1f7d61ef0802d66c21fe225b7c092fdda88b20ac9fd1edff0f7e7faaca1df4d8\";a:4:{s:10:\"expiration\";i:1568349411;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36\";s:5:\"login\";i:1567139811;}s:64:\"35622b82dd160a63640bcf80efb3e8e9b8b97808488d8f6ae1590d06125bd5bd\";a:4:{s:10:\"expiration\";i:1568383866;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36\";s:5:\"login\";i:1567174266;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(20, 1, '_yoast_wpseo_profile_updated', '1567140093'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '3'),
(25, 1, 'closedpostboxes_page', 'a:0:{}'),
(26, 1, 'metaboxhidden_page', 'a:0:{}'),
(28, 1, 'closedpostboxes_reviews', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(29, 1, 'metaboxhidden_reviews', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(30, 1, 'wp_user-settings', 'editor=tinymce&post_dfw=off&libraryContent=browse'),
(31, 1, 'wp_user-settings-time', '1567186789'),
(33, 1, 'wp_yoast_notifications', 'a:2:{i:0;a:2:{s:7:\"message\";s:678:\"Yoast SEO и Advanced Custom Fields могут работать лучше, если вы добавите вспомогательный плагин. Пожалуйста, установите <a href=\"http://инженеры-продаж.рф/wp-admin/update.php?action=install-plugin&amp;plugin=acf-content-analysis-for-yoast-seo&amp;_wpnonce=42d2ae00e1\">ACF Content Analysis for Yoast SEO</a>, чтобы сделать вашу жизнь проще. <a href=\"https://wordpress.org/plugins/acf-content-analysis-for-yoast-seo/\" aria-label=\"Больше информации о ACF Content Analysis for Yoast SEO\" target=\"_blank\" rel=\"noopener noreferrer\">Больше информации</a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:41:\"wpseo-suggested-plugin-yoast-acf-analysis\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:15:\"install_plugins\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:395:\"<strong>Серьёзная проблема для SEO: Вы блокируете доступ для поисковых роботов.</strong> Вы должны <a href=\"http://инженеры-продаж.рф/wp-admin/options-reading.php\">зайти в Настройки чтения</a> и убрать галочку рядом с пунктом \"Видимость для поисковых систем\".\";s:7:\"options\";a:9:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:32:\"wpseo-dismiss-blog-public-notice\";s:5:\"nonce\";N;s:8:\"priority\";i:1;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'administrator-zhenskoi-bani', '$P$Bm1elVdta7HVxB3drt7RmO8yU6WlBo/', 'administrator-zhenskoi-bani', 'ootpravka@inbox.ru', '', '2019-08-30 04:36:39', '', 0, 'administrator-zhenskoi-bani');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_seo_meta`
--

CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(2, 0, 0),
(5, 0, 0),
(7, 0, 0),
(9, 0, 0),
(10, 0, 0),
(11, 0, 0),
(19, 0, 0),
(20, 0, 0),
(22, 0, 0),
(26, 0, 0),
(29, 0, 0),
(30, 0, 0),
(31, 0, 0),
(32, 0, 0),
(33, 0, 0),
(34, 0, 0),
(42, 0, 0),
(83, 0, 0),
(85, 0, 0),
(86, 0, 0),
(87, 0, 0),
(88, 0, 0),
(89, 0, 0),
(94, 0, 0),
(103, 0, 0),
(107, 0, 0),
(108, 0, 0),
(126, 0, 0),
(132, 0, 0),
(139, 0, 0),
(142, 0, 0),
(143, 0, 0),
(145, 0, 0),
(148, 0, 0),
(149, 0, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Индексы таблицы `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=754;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
