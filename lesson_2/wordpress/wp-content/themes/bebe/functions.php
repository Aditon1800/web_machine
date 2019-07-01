<?php
/**
 * Bebe functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package Bebe
 */

if ( ! function_exists( 'bebe_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function bebe_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on Bebe, use a find and replace
		 * to change 'bebe' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'bebe', get_template_directory() . '/languages' );

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
		register_nav_menus( array(
			'menu-1' => esc_html__( 'Primary', 'bebe' ),
      'footer-menu' => esc_html__( 'Footer menu', 'bebe' ),
		) );

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
		add_theme_support( 'custom-background', apply_filters( 'bebe_custom_background_args', array(
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

    /*
      Crop image
    */

    add_image_size( 'post-front', 235, 183, true );
    add_image_size( 'post-single', 370, 280, true );

    add_image_size( 'gallery_one', 222, 341, true );
    add_image_size( 'gallery_two', 222, 164, true );
    add_image_size( 'gallery_three', 456,164, true );

    add_image_size( 'teacher-thumb', 281,162, true );
    add_image_size( 'room-thumb', 212,168, true );
    add_image_size( 'room-slide-thumb', 463,355, true );
	}
endif;
add_action( 'after_setup_theme', 'bebe_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function bebe_content_width() {
	// This variable is intended to be overruled from themes.
	// Open WPCS issue: {@link https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/issues/1043}.
	// phpcs:ignore WordPress.NamingConventions.PrefixAllGlobals.NonPrefixedVariableFound
	$GLOBALS['content_width'] = apply_filters( 'bebe_content_width', 640 );
}
add_action( 'after_setup_theme', 'bebe_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function bebe_widgets_init() {
	register_sidebar( 
    array(
  		'name'          => esc_html__( 'Sidebar', 'bebe' ),
  		'id'            => 'sidebar-1',
  		'description'   => esc_html__( 'Add widgets here.', 'bebe' ),
  		'before_widget' => '<section id="%1$s" class="widget %2$s">',
  		'after_widget'  => '</section>',
  		'before_title'  => '<h2 class="widget-title">',
  		'after_title'   => '</h2>',
  	),
  );
  register_sidebar(
    array(
      'name'          => esc_html__( 'Blog sidebar', 'bebe' ),
      'id'            => 'blogsidebar',
      'description'   => esc_html__( 'Add widgets here.', 'bebe' ),
      'before_widget' => '<section id="%1$s" class="widget %2$s">',
      'after_widget'  => '</section>',
      'before_title'  => '<h2 class="widget-title">',
      'after_title'   => '</h2>',
    ),
  );
}
add_action( 'widgets_init', 'bebe_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function bebe_scripts() {
	wp_enqueue_style( 'bebe-style', get_stylesheet_uri() );
  wp_enqueue_style( 'bebe-general', get_template_directory_uri() . '/layouts/general.css', array(), '', false );
  wp_enqueue_style( 'wpredux_css', get_template_directory_uri() . '/layouts/wpredux.css', array(), '', false );

  wp_enqueue_script('jquery');

	wp_enqueue_script( 'bebe-navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20151215', true );

  // Custom scripts
  wp_enqueue_script( 'scrollable', get_template_directory_uri() . '/js/libs/scrollable.js', array(), '', true );
  wp_enqueue_script( 'flexslider', get_template_directory_uri() . '/js/libs/jquery.flexslider.min.js', array(), '', true );
  wp_enqueue_script( 'bebe-scripts', get_template_directory_uri() . '/js/scripts.js', array(), '', true );

	wp_enqueue_script( 'bebe-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}

/**
 * Enqueue admin scripts and styles.
 */
function bebe_admin_scripts( $hook ) {
  if( 'post-new.php' == $hook || 'post.php' == $hook ) {
    wp_enqueue_style( 'metaboxes-style', get_template_directory_uri() . '/layouts/admin/metaboxes.css' );

    wp_enqueue_script( 'metaboxes-script', get_template_directory_uri() . '/js/admin/metaboxes.js', array(), '', true );
    wp_enqueue_script( 'metabox-gallery-script', get_template_directory_uri() . '/js/admin/metabox-gallery.js', array(), '', true );
  }
}


add_action( 'admin_enqueue_scripts', 'bebe_admin_scripts' );
add_action( 'wp_enqueue_scripts', 'bebe_scripts' );

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
 * Init Tgm Plugin installer.
 */
require get_template_directory() . '/inc/tgm-list.php';

/**
 * Init Metaboxes Options.
 */
require get_template_directory() . '/inc/metaboxes.php';
require get_template_directory() . '/inc/gallery-meta.php';

/**
 * Init Redux Plugin Options.
 */
require get_template_directory() . '/inc/redux-options.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}

/*
  The Breadcrumbs
*/
require get_template_directory() . '/inc/breadcrumbs.php';


// Contact form span
add_filter('wpcf7_form_elements', function($content) {
    $content = preg_replace('/<(span).*?class="\s*(?:.*\s)?wpcf7-form-control-wrap(?:\s[^"]+)?\s*"[^\>]*>(.*)<\/\1>/i', '\2', $content);
    $content = str_replace('<br />', '', $content);
    return $content;
});

/*
  Rewrite excerpt
*/
add_filter( 'excerpt_length', function(){
  return 18;
} );

add_filter( 'excerpt_more', function(){
  return '...';
} );

/*
  Init Metaboxes Options
*/

include_once('inc/metaboxes-options.php');

add_action( 'init', 'register_post_types' );
function register_post_types(){
  register_post_type('gallery', array(
    'label'  => null,
    'labels' => array(
      'name'               => 'Galleries',
      'singular_name'      => 'Gallery',
    ),
    'public'              => true,
    'has_archive'         => true,
    'menu_icon'           => 'dashicons-admin-site',
    'supports'            => array('title', 'editor', 'thumbnail'),
    'rewrite'             => true 

  ) );
  register_post_type('teachers', array(
    'label'  => null,
    'labels' => array(
      'name'               => 'Teachers',
      'singular_name'      => 'Teacher',
    ),
    'public'              => true,
    'has_archive'         => true,
    'menu_icon'           => 'dashicons-grid-view',
    'supports'            => array('title', 'editor', 'thumbnail'),
    'rewrite'             => true 

  ) );
  register_post_type('rooms', array(
    'label'  => null,
    'labels' => array(
      'name'               => 'Rooms',
      'singular_name'      => 'Room',
    ),
    'public'              => true,
    'has_archive'         => true,
    'menu_icon'           => 'dashicons-grid-view',
    'supports'            => array('title', 'editor', 'thumbnail'),
    'rewrite'             => true 

  ) );
}

// Register taxonomy

function bebe_taxes() {
    register_taxonomy( 
      'gallery-category', 
      'gallery', array(
        'label' => esc_html__('Category', 'bebe'),
        'rewrite' => array( 'slug' => 'gallery-category' ),
        'heirarchical' => true
    ) );
}
add_action( 'init', 'bebe_taxes');


/*
  Social ale get share
*/

function ale_get_share($type = 'fb', $permalink = false, $title = false) {
  if (!$permalink) {
      $permalink = get_permalink();
  }
  if (!$title) {
      $title = get_the_title();
  }
  switch ($type) {
      case 'twi':
          return 'http://twitter.com/home?status=' . $title . '+-+' . $permalink;
          break;
      case 'fb':
          return 'http://www.facebook.com/sharer.php?u=' . $permalink . '&t=' . $title;
          break;
      case 'like':
          return '<'.'iframe src="http://www.facebook.com/plugins/like.php?href=' . urlencode($permalink) . '&amp;send=false&amp;layout=button_count&amp;width=80&amp;show_faces=false&amp;action=like&amp;colorscheme=light&amp;font&amp;height=21" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:80px; height:21px;" allowTransparency="true"></iframe>';
          break;
      case 'tweet':
          return '<a href="'.'http://twitter.com/share'.'" class="twitter-share-button" data-url="' . $permalink . '" data-count="horizontal">Tweet</a>';
          break;
      case 'goglp': // Google Plus share in new window
          return 'https://plus.google.com/share?url='. urlencode($permalink);
          break;
      case 'plus1':
          return '<g:plusone size="medium" href="' . $permalink . '"></g:plusone>';
          break;
      case 'pin':
          return 'http://pinterest.com/pin/create/button/?url=' . $permalink;
          break;
      default:
          return '';
  }
}

/*
  Comment callback
*/

  // awesome semantic comment

function bebe_comment($comment, $args, $depth) {
  $GLOBALS['comment'] = $comment;
  extract($args, EXTR_SKIP);

  if ( 'article' == $args['style'] ) {
    $tag = 'article';
    $add_below = 'comment';
  } else {
    $tag = 'article';
    $add_below = 'comment';
  }

  ?>
  <<?php echo $tag ?> <?php comment_class(empty( $args['has_children'] ) ? '' :'parent') ?> id="comment-<?php comment_ID() ?>" itemscope itemtype="http://schema.org/Comment">

  <div class="<?php if($depth > 1){ echo 'reply'; } else { ?>comment<?php } ?> cf">
    <?php


    if($depth == 2){ ?><div class="enter"></div><?php } ?>
    <div class="avatar">
      <?php echo get_avatar( $comment, 105 ); ?>
      <h4><?php comment_author(); ?></h4>
    </div>z
    <div class="text">
      <div class="top">
        <h4 class="date"><?php esc_html_e('Date','bebe');?>: <?php comment_date() ?></h4>
        <?php comment_reply_link(array_merge( $args, array('add_below' => $add_below, 'depth' => $depth, 'max_depth' => $args['max_depth']))) ?>
      </div>
      <div class="dotted-line"></div>

      <?php if ($comment->comment_approved == '0') : ?>
        <p class="comment-meta-item"><?php esc_html_e('Your comment is awaiting moderation.','bebe');?></p>
      <?php endif; ?>
      <?php comment_text() ?>

      <p><?php edit_comment_link('<p class="comment-meta-item">'.esc_html__('Edit this comment','bebe').'</p>','',''); ?></p>
    </div>
  </div>

<?php }

// end of awesome semantic comment

function bebe_comment_close() {
  echo '</article>';
}

/*
  Move textfield down
*/

function bebe_move_comment_field_to_bottom( $fields ) {
  $comment_field = $fields['comment'];
  unset( $fields['comment'] );
  unset( $fields['cookies'] );
  $fields['comment'] = $comment_field;
  return $fields;
}

add_filter( 'comment_form_fields', 'bebe_move_comment_field_to_bottom' );


function custom_css() {
  $css = '';
  global $bebe_options;

  if( $bebe_options['width'] ) {
    $css .= '.custom-class { width: ' . $bebe_options['width'] .'px; color: #fff }';
  }else {
    $css .= '.custom-class { width: 100px; color: #fff }';
  }

  $css .= 'body { line-height: 1.2; }';

  $css .= '
    .content_box {
      display: flex;
    }
  ';

  if( $bebe_options['sidebarset'] == '3' ) {
    $css .= '.content_box {flex-direction: row-reverse;}';
  }

  wp_add_inline_style('wpredux_css', $css);
}

add_action('wp_enqueue_scripts', 'custom_css');


