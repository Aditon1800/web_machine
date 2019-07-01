<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Bebe
 */


  global $bebe_options;
?>

    </section>
    <!-- Footer Section -->
    <footer>

        <section>
            <div class="center-align cf">

                <!-- Some Info  -->
                <div class="col-6 float-left">
                    <div class="col-5 information">
                        <?php if( $bebe_options['bebefooternav'] ) {?><h3><?php echo esc_html_e( $bebe_options['bebefooternav'] ); ?></h3><?php } ?>
                        <?php 
                          wp_nav_menu( array(
                            'theme_location' => 'footer-menu',
                            'menu_id' => 'footer-menu',
                            'menu_class' => 'cf',
                            'container' => false

                          ));
                         ?>
                    </div>
                    <div class="col-7 contacts">
                        <?php if( $bebe_options['bebefootercontacts'] ) {?><h3><?php echo esc_html_e( $bebe_options['bebefootercontacts'] ); ?></h3><?php } ?>
                        <?php if( $bebe_options['bebephone'] ) {?><span class="tel"><a href="call:<?php echo esc_html_e( $bebe_options['bebephone'] ); ?>"><strong><?php echo esc_html_e( $bebe_options['bebephone'] ); ?></strong></a></span><?php } ?>
                        <?php if( $bebe_options['bebeemail'] ) {?><span><a href="mailto:<?php echo esc_html_e( $bebe_options['bebeemail'] ); ?>"><?php echo esc_html_e( $bebe_options['bebeemail'] ); ?></a></span><?php } ?>
                        <?php if( $bebe_options['bebeaddress'] ) {?><span><?php echo esc_html_e( $bebe_options['bebeaddress'] ); ?></span><?php } ?>
                        <ul>
                          <?php if($bebe_options['fb']) {?><li class="facebook"><a href="<?php echo esc_url( $bebe_options['fb'] ); ?>"></a></li><?php } ?>
                          <?php if($bebe_options['insta']) {?><li class="instagram"><a href="<?php echo esc_url( $bebe_options['insta'] ); ?>"></a></li><?php } ?>
                          <?php if($bebe_options['pint']) {?><li class="pinterest"><a href="<?php echo esc_url( $bebe_options['pint'] ); ?>"></a></li><?php } ?>
                          <?php if($bebe_options['tw']) {?><li class="twitter"><a href="<?php echo esc_url( $bebe_options['tw'] ); ?>"></a></li><?php } ?>
                          <?php if($bebe_options['yt']) {?><li class="youtube"><a href="<?php echo esc_url( $bebe_options['yt'] ); ?>"></a></li><?php } ?>
                        </ul>
                    </div>
                </div>

                <!-- Form -->
                <div class="form float-right">
                  <?php if(do_shortcode( $bebe_options['bebeformshortcode'] )) {?>
                    <?php echo do_shortcode( $bebe_options['bebeformshortcode'] ) ?>
                  <?php } ?>
                </div>

            </div>

            <!-- Bottom Line -->
            <div class="bottom-line">
                <a class="top" href="#top"><?php _e('TOP', 'bebe');  ?></a>

                <div class="center-align cf">
                    <div class="left">&copy; <?php _e( '2013 BEBE. All rights reserved' ) ?></div>
                    <div class="right">
                      <?php if( $bebe_options['bebefooterlogo']['url'] ) {?>
                        <a href="<?php echo esc_url( home_url('/') ); ?>">
                          <img src="<?php echo esc_url( $bebe_options['bebefooterlogo']['url'] ); ?>" alt="">
                        </a> 
                      <?php } ?>
                    </div>
                </div>
            </div>

        </section>


        <!-- Background Awesomeness -->
        <div id="footer-white"></div>
        <div id="footer-yellow"></div>

        <!-- Clouds -->
        <div id="footer-cloud1"></div>
        <div id="footer-cloud2"></div>

        <!-- Birds -->
        <div id="footer-bird1"></div>
        <div id="footer-bird2"></div>
        <div id="footer-bird3"></div>

        <!-- Waves -->
        <div class="waves">
            <div id="footer-wave1"></div>
            <div id="bui"></div>
            <div id="footer-wave2"></div>
        </div>
    </footer>


<?php wp_footer(); ?>

</body>
</html>
