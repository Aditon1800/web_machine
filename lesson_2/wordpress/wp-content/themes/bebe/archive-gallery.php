<?php get_header(); ?>

  <article class="gallery">

    <div class="items1 cf">
      <!-- Gallery -->
      <?php
        if( get_query_var( 'paged' ) ) {

          $page = get_query_var( 'paged' );
        }else {
          $page = 1;
        }
        $args = array(
          'post_type' => 'gallery',
          'posts_per_page' => 10,
          'paged' => $page,
          'order' => 'ASC'
        );

        $home_galleries = new WP_Query( $args );


        if( $home_galleries->have_posts() ) {

          $i = 0;

          while( $home_galleries->have_posts() ) {
            $i++;
            $home_galleries->the_post();

              if( $i == 1 or $i == 6 ) {?>

                <a href="<?php the_permalink() ?>">
                  <?php echo the_post_thumbnail( 'gallery_one' ) ?>
                </a>

              <?php }
              elseif( $i == 2 or $i == 5 or $i == 8 or $i == 9 ) {?>

                <a href="<?php the_permalink() ?>">
                  <?php echo the_post_thumbnail( 'gallery_two' ) ?>
                </a>

              <?php }
              elseif( $i == 3 or $i == 4 or $i == 7 or $i == 10 ) {?>

                <a href="<?php the_permalink() ?>">
                  <?php echo the_post_thumbnail( 'gallery_three' ) ?>
                </a>

              <?php }
              if( $i == 5 ) { ?>
                </div>

                <div class="items2 cf">
              <?php }
            ?>

          <?php }
          wp_reset_postdata();
        }
      ?>

    </div>
  </article>

  <!-- Pagination -->
  <article class="pagination gall">
    <?php echo paginate_links( array('prev_next' => false) ); ?>
  </article>

<?php get_footer(); ?>