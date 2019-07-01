<?php get_header(); ?>


  <?php  

    if( have_posts() ) : while( have_posts() ) : the_post() ; ?>
    <!-- Rooms Opened -->
    <article class="rooms-opened cf">
      <?php $room_slider = get_post_meta(get_the_ID(), 'ale_gallery_id', true);

        if( $room_slider ) { ?>
          <div id="room-slider">
              <ul class="slides">
                <?php foreach ( $room_slider as $slide) {?>
                  <li>
                    <?php echo wp_get_attachment_image( $slide, 'room-slide-thumb' ) ?>
                  </li>
                <?php } ?>
              </ul>
          </div>
        <?php }  ?>

        <?php the_content(); ?>

      <?php endwhile; endif; ?>
    </article>

    <!-- Other Rooms -->
    <article class="rooms opened">

        <h2 class="title"><?php esc_html_e('Other Rooms', 'bebe'); ?></h2>

        <div class="line cf">
          <?php
            $args = array(
              'post_type' => 'rooms',
              'posts_per_page' => 2,
              'orderby' => 'rand'
            );

            $bebe_similar_rooms = new WP_Query( $args );
          ?>
          <?php while( $bebe_similar_rooms->have_posts() ) : $bebe_similar_rooms->the_post() ; ?>
            <div class="col-6">
                <div class="col-6 text">
                    <h3><a href="<?php the_permalink() ?>"><?php the_title(); ?></a></h3>
                    <?php the_excerpt(); ?>
                    <a class="more" href="<?php the_permalink() ?>"><?php esc_html_e('More', 'bebe'); ?> ></a>
                </div>
                <div class="col-6 img">
                  <?php the_post_thumbnail( 'room-thumb' ); ?>
                </div>
            </div>
          <?php endwhile; ?>
        </div>

    </article>

<?php get_footer(); ?>