<?php
/**
 * marketolog-sale functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package marketolog-sale
 */

// Подключение bootstrap navwlker
if ( ! file_exists( get_template_directory() . '/wp-bootstrap-navwalker.php' ) ) {
  // file does not exist... return an error.
  return new WP_Error( 'wp-bootstrap-navwalker-missing', __( 'It appears the wp-bootstrap-navwalker.php file may be missing.', 'wp-bootstrap-navwalker' ) );
} else {
  // file exists... require it.
    require_once get_template_directory() . '/wp-bootstrap-navwalker.php';
}

if ( ! function_exists( 'marketolog_sale_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function marketolog_sale_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on marketolog-sale, use a find and replace
		 * to change 'marketolog-sale' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'marketolog-sale', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );

		// This theme uses wp_nav_menu() in one location.

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );

		// Set up the WordPress core custom background feature.
		add_theme_support( 'custom-background', apply_filters( 'marketolog_sale_custom_background_args', array(
			'default-color' => 'ffffff',
			'default-image' => '',
		) ) );

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support( 'custom-logo', array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		) );
	}
endif;
function marketolog_header()
		{
			register_nav_menus(array(
				'header' => 'Меню в шапке'));
		}
add_action( 'after_setup_theme', 'marketolog_sale_setup' );
add_action( 'after_setup_theme', 'marketolog_header');
/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function marketolog_sale_content_width() {
	// This variable is intended to be overruled from themes.
	// Open WPCS issue: {@link https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/issues/1043}.
	// phpcs:ignore WordPress.NamingConventions.PrefixAllGlobals.NonPrefixedVariableFound
	$GLOBALS['content_width'] = apply_filters( 'marketolog_sale_content_width', 640 );
}
add_action( 'after_setup_theme', 'marketolog_sale_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function marketolog_sale_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'marketolog-sale' ),
		'id'            => 'sidebar-1',
		'description'   => esc_html__( 'Add widgets here.', 'marketolog-sale' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'marketolog_sale_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function marketolog_sale_scripts() {
	wp_enqueue_style( 'marketolog-sale-style', get_stylesheet_uri() );
	wp_enqueue_style( 'marketolog-sale-normalize', get_template_directory_uri() . '/assets/css/normalize.min.css' );
	wp_enqueue_style( 'marketolog-sale-bootstrap', get_template_directory_uri() . '/assets/css/bootstrap.min.css' );
	wp_enqueue_style( 'marketolog-sale-flickity', get_template_directory_uri() . '/assets/css/flickity.min.css' );
	wp_enqueue_style( 'marketolog-sale-animate', get_template_directory_uri() . '/assets/css/animate.min.css' );
	wp_enqueue_style( 'marketolog-sale-header', get_template_directory_uri() . '/assets/css/header.css' );


	wp_enqueue_script( 'marketolog-sale-navigation', get_template_directory_uri() . '/js/navigation.js', false, null, true);
	wp_deregister_script( 'jquery' );
	wp_register_script( 'jquery', get_template_directory_uri() . '/assets/js/jquery-3.4.1.min.js', false, null, true );
	wp_enqueue_script( 'jquery' );
	wp_enqueue_script( 'marketolog-sale-popper', get_template_directory_uri() . '/assets/js/popper.min.js', false, null, true);
	wp_enqueue_script( 'marketolog-sale-bootstrap', get_template_directory_uri() . '/assets/js/bootstrap.min.js', false, null, true);
	wp_enqueue_script( 'marketolog-sale-flickity', get_template_directory_uri() . '/assets/js/flickity.pkgd.min.js', false, null, true);
	wp_enqueue_script( 'marketolog-sale-wow', get_template_directory_uri() . '/assets/js/wow.min.js');
	wp_enqueue_script( 'marketolog-sale-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'marketolog_sale_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}

/**
 * Reviews post_type
*/
add_action('init', 'marketolog_reviews');
function marketolog_reviews(){
	register_post_type('reviews', array(
		'labels'             => array(
			'name'               => 'Отзывы',
			'singular_name'      => 'Отзыв',
			'add_new'            => 'Добавить новый отзыв',
			'add_new_item'       => 'Новый отзыв',
			'edit_item'          => 'Редактировать',
			'new_item'           => 'Новый отзыв',
			'view_item'          => 'Посмотреть',
			'menu_name'          => 'Отзывы клиентов',
			'all_items'			 => 'Все отзывы',

		  ),
		'public'             => true,
		'supports'           => array('title','editor', 'custom-fields'),
		'menu_icon'			 => 'dashicons-universal-access',
		//'show_in_rest'		 => true,
	) );
}

add_action('init', 'marketolog_cases');
function marketolog_cases(){
	register_post_type('cases', array(
		'labels'             => array(
			'name'               => 'Кейсы',
			'singular_name'      => 'Кейс',
			'add_new'            => 'Добавить новый кейс',
			'add_new_item'       => 'Новый кейс',
			'edit_item'          => 'Редактировать',
			'new_item'           => 'Новый кейс',
			'view_item'          => 'Посмотреть',
			'menu_name'          => 'Кейсы в слайдере',
			'all_items'			 => 'Все кейсы',

		  ),
		'public'             => true,
		'supports'           => array('title','editor', 'custom-fields'),
		'menu_icon'			 => 'dashicons-admin-page',
		//'show_in_rest'		 => true,
	) );
}

