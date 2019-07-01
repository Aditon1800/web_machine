<?php  

  /*
    Template Name: Contacts Page Template
  */

  get_header();
?>

<?php while( have_posts() ) : the_post(); ?>
  <!-- Contacts -->
  <article class="contacts">

    <div class="info-line cf">

        <?php 
          $google_shortcode = get_post_meta( get_the_ID(), 'bebe_googleshortcode', true );

          if( !empty( $google_shortcode ) ) { ?>
            <div class="map">
              <?php 
                echo do_shortcode( $google_shortcode );
              ?>
              <br>
            </div>
          <?php } 

         ?>

        <?php the_content(); ?>

        <div class="contactos">
            <?php if( get_post_meta( get_the_ID(), 'bebe_address' ) ) { ?>
              <div class="adress">
                <div class="icon"></div>
                <h3><?php echo esc_attr( get_post_meta( get_the_ID(), 'bebe_address-label', true ) ); ?></h3>
                <p><?php echo esc_attr( get_post_meta( get_the_ID(), 'bebe_address', true ) ); ?></p>
              </div>
            <?php } ?>
            <?php if( get_post_meta( get_the_ID(), 'bebe_phone' ) ) { ?>
              <div class="phone">
                  <div class="icon"></div>
                  <h3><?php echo esc_attr( get_post_meta( get_the_ID(), 'bebe_phone-label', true ) ); ?></h3>
                  <p><?php echo esc_attr( get_post_meta( get_the_ID(), 'bebe_phone', true ) ); ?></p>
              </div>
            <?php } ?>
            <?php if( get_post_meta( get_the_ID(), 'bebe_email' ) ) { ?>
              <div class="email">
                  <div class="icon"></div>
                  <h3><?php echo esc_attr( get_post_meta( get_the_ID(), 'bebe_email-label', true ) ); ?></h3>
                  <p><?php echo esc_attr( get_post_meta( get_the_ID(), 'bebe_email', true ) ); ?></p>
              </div>
            <?php } ?>
        </div>


    </div>

    <!-- -->

        <?php
          $form_shortcode = get_post_meta( get_the_ID(), 'bebe_contact-form', true );

          if( !empty( $form_shortcode ) ) { ?>

            <div class="respond">
                <div class="top"> <h2>Get in touch with us</h2> </div>
                <?php echo do_shortcode( $form_shortcode ); ?>
            </div>

        <?php } ?>

  </article>

<?php endwhile; ?>

<?php get_footer(); ?>