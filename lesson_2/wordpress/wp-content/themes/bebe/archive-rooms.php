<?php
  get_header();
?>

  <!-- Rooms -->
  <article class="rooms">

    <?php 
      $post_per_page = 4;
      if( isset( $bebe_options['roomscount'] ) ) {
        $post_per_page = $bebe_options['roomscount'];
      }

      if( get_query_var( 'paged' ) ) {

        $page = get_query_var( 'paged' );
      }else {
        $page = 1;
      }

      $args = array(
        'post_type' => 'rooms',
        'posts_per_page' => $post_per_page,
        'paged' => $page,
        'order' => 'ASC'
      );

      $rooms = new WP_Query( $args );
      $i = 0;
    ?>

    <div class="line cf">
      <?php if( $rooms->have_posts() ) : while( $rooms->have_posts() ) : $rooms->the_post(); $i++; ?>

            <!-- -->
          
              <div class="col-6">
                  <div class="col-6 text">
                      <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                      <?php the_excerpt(); ?>
                      <a class="more" href="<?php the_permalink(); ?>">More ></a>
                  </div>
                  <div class="col-6 img">
                    <?php the_post_thumbnail( 'rooms-thumb' ); ?>
                  </div>
              </div>

        <?php 
          $count = $rooms->found_posts;

          if( $i < $count and ( $i%2 ) == 0 ) { ?>

            </div><div class="line cf">

          <?php } endwhile; endif; wp_reset_postdata(); ?>
      </div>

  </article>

  <!-- Pagination -->
  <article class="pagination">
    <?php echo paginate_links( array('prev_next' => false) ); ?>
  </article>

<?php get_footer(); ?>