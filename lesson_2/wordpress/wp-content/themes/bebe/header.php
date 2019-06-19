<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Bebe
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">

	<?php wp_head(); ?>
</head>

<?php global $bebe_options; ?>

<body <?php body_class(); ?>>
    <!-- Background Awesomeness -->
    <div id="night"></div>

    <!-- Stars -->
    <div class="back" id="stars1"></div>
    <div class="back" id="stars2"></div>

    <!-- Clouds -->
    <div class="back" id="cloud1"></div>
    <div class="back" id="cloud2"></div>
    <div class="back" id="cloud3"></div>
    <div class="back" id="cloud4"></div>
    <div class="back" id="cloud5"></div>

    <!-- Header Section -->
    <header>
        <div class="center-align cf">

            <!-- Logo -->
            <div class="logo float-left">
              <a href="<?php echo esc_url( home_url('/') ); ?>">
                <picture>
                  <?php if($bebe_options['bebelogosmall']['url']) { ?>
                    <source srcset="<?php echo $bebe_options['bebelogosmall']['url']; ?>" media="(max-width: 767px)">
                  <?php 
                  } ?>
                  <img src="<?php echo esc_url( $bebe_options['bebelogo']['url'] ) ?>" alt="">
                </picture>
              </a>
              <span>
                <?php echo esc_attr( $bebe_options['bebeslogan'] ); ?>
              </span>
            </div>

            <!-- Social & Search -->
            <div class="social float-right cf">
                <form id="search" method="get" action="<?php echo esc_url( site_url('/') ) ?>">
                    <input class="search-inp" type="text" name="s" size="21" maxlength="120" placeholder="Search">
                    <input class="search-btn" type="submit" value="">
                </form>
                <ul>
                    <?php if($bebe_options['fb']) {?><li class="facebook"><a href="<?php echo esc_url( $bebe_options['fb'] ); ?>"></a></li><?php } ?>
                    <?php if($bebe_options['insta']) {?><li class="instagram"><a href="<?php echo esc_url( $bebe_options['insta'] ); ?>"></a></li><?php } ?>
                    <?php if($bebe_options['pint']) {?><li class="pinterest"><a href="<?php echo esc_url( $bebe_options['pint'] ); ?>"></a></li><?php } ?>
                    <?php if($bebe_options['tw']) {?><li class="twitter"><a href="<?php echo esc_url( $bebe_options['tw'] ); ?>"></a></li><?php } ?>
                    <?php if($bebe_options['yt']) {?><li class="youtube"><a href="<?php echo esc_url( $bebe_options['yt'] ); ?>"></a></li><?php } ?>
                </ul>
            </div>

            <!-- Nav -->
            <?php 
              wp_nav_menu( array(
                'theme_location' => 'menu-1',
                'menu_id' => 'primary-menu',
                'menu_class' => 'cf',
                'container' => 'nav'

              ));
            ?>

            <!-- Drop Down -->
            <div class="drop-menu">
                <a>Menu</a>
                <?php
                  wp_nav_menu( array(
                    'theme_location' => 'menu-1',
                    'menu_id' => 'mobile-menu',
                    'menu_class' => 'ul-drop',
                    'container' => false

                  ));
                ?>
            </div>

        </div>
    </header>

    <?php  

      if(is_front_page()) {?>

        <!-- Slider -->
        <div class="center-align">
            <div id="slider">
                <ul class="slides">
                  <?php 
                    $slider = '';
                    $slider = $bebe_options['homepageslide'];

                    foreach ( $slider as $slide ) {?>                  
                      <!-- -->
                      <li>

                        <?php if( $slide['title'] || $slide['description'] ) {?>

                          <div class="wood">
                              <div class="text">
                                  <?php if( $slide['title'] ) {?><h2 class="caption"><?php echo esc_html_e( $slide['title'] ) ?></h2><?php } ?>
                                  <?php if( $slide['description'] ) {?><p class="content"><?php echo esc_html_e( $slide['description'] ) ?></p><?php } ?>
                                  <?php if( $slide['url'] ) {?><a class="more" href="<?php echo esc_url( $slide['url'] ) ?>"><?php echo ('More >') ?></a><?php } ?>
                              </div>
                          </div>

                        <?php } ?>
                          <img src="<?php echo esc_url( $slide['image'] ) ?>" alt="" />
                      </li>

                    <?php }
                  ?>
                </ul>
            </div>
        </div>

        <!-- Content Section -->
        <section id="content" class="center-align">
      <?php } else {?>
        <section class="center-align">

          <!-- Caption -->
          <div class="title-page">
              <h2>
                <?php echo the_title(); ?>
              </h2>
              <div class="page">
                <!-- <span class="home"></span> <a href="index.html">Home</a> &nbsp; <span class="arrow">→</span> &nbsp; About Us -->
                <span class="home"></span> <?php get_breadcrumbs() ?>
              </div>
          </div>

          <!-- -->
          <div class="dotted-line"></div>

      <?php }
    ?>
