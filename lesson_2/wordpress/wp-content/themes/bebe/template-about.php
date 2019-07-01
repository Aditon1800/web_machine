<?php 
  /*
    Template Name: About Page Template
  */

  get_header();
?>

  <!-- About Us -->
  <article class="about-us cf">
    <?php if ( have_posts() ): while( have_posts() ) : the_post() ?>
      <div class="col-6 text">
        <?php the_content(); ?>
      </div>

      <div class="col-6 slider">
          <?php $sliders = get_post_meta(get_the_ID(), 'ale_gallery_id', true); ?>
          <div id="about-slider">
            <?php if( $sliders ) { ?>
              <ul class="slides">
                <?php foreach ( $sliders as $slider ) {?>
                  <li>
                    <?php echo wp_get_attachment_image( $slider, 'full' ); ?>
                  </li>
                <?php } ?>
              </ul>
            <?php } ?>  
          </div>
      </div>
  </article>

  <!-- -->
  <div class="dotted-line"></div>

  <!-- Our Teachers -->
  <article class="our-teachers cf">
      <h2 class="title">
        <?php if( !empty( get_post_meta( get_the_ID(), 'bebe_about-title', true ) ) ) { 
          echo esc_attr( get_post_meta( get_the_ID(), 'bebe_about-title', true ) );
        }else {
          echo "Teachers";} 
        ?>
      </h2>

      <div class="teachers">
          <?php $teachers = new WP_Query( array(
            'post_type' => 'teachers',
            'post_per_page' => -1
          ) ) ?>
          <?php if ( $teachers->have_posts() ) : while( $teachers->have_posts() ) : $teachers->the_post(); ?>
            <div class="col-4">
                <div class="back-frame">
                    <div class="image">
                        <?php echo get_the_post_thumbnail( get_the_ID(), 'teacher-thumb' ); ?>
                        <ul>
                          <?php if( get_post_meta( get_the_ID(), 'bebe_fb-about-link' ) ) { ?><li class="facebook"><a href="<?php echo esc_url( get_post_meta( get_the_ID(), 'bebe_fb-about-link', true ) ) ?>"></a></li><?php } ?>
                            <?php if( get_post_meta( get_the_ID(), 'bebe_twi-about-link' ) ) { ?><li class="twitter"><a href="<?php echo esc_url( get_post_meta( get_the_ID(), 'bebe_twi-about-link', true ) ) ?>"></a></li><?php } ?>
                            <?php if( get_post_meta( get_the_ID(), 'bebe_pint-about-link' ) ) { ?><li class="pinterest"><a href="<?php echo esc_url( get_post_meta( get_the_ID(), 'bebe_pint-about-link', true ) ) ?>"></a></li><?php } ?>
                        </ul>
                    </div>

                    <!-- -->
                    <h3>
                      <?php echo the_title(); ?>
                    </h3>

                    <!-- -->
                    <?php the_excerpt(); ?>
                </div>
            </div>
          <?php endwhile; endif; ?>

      </div>

    <?php endwhile; endif; ?>
  </article>

<?php get_footer(); ?>