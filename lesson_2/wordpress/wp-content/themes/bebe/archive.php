<?php get_header();
?>

    <!-- Blog -->
    <article class="blog">
        <div class="items cf">

          <?php if ( have_posts() ) : ?>

            <?php
            /* Start the Loop */
            while ( have_posts() ) :
              the_post(); ?>

                <div class="col-3">
                    <a href="<?php the_permalink(); ?>">
                        <?php the_post_thumbnail( 'post-front' ); ?>
                    </a>
                    <div class="info cf">
                        <div class="time">
                          <?php echo get_the_date(); ?>
                        </div>
                        <a href="" class="comments">
                          <?php echo comments_number(); ?>
                        </a>
                    </div>
                    <div class="text">
                        <a href="<?php echo the_permalink(); ?>" class="caption">
                          <?php the_title(); ?>
                        </a>
                        <?php the_excerpt(); ?>
                    </div>
                    <div class="wave"></div>
                </div>

            <?php endwhile;
 
          endif;
          wp_reset_postdata();
          ?>

        </div>
    </article>

    <!-- Pagination -->
    <article class="pagination">
      <?php 
        $setings = array(
          'prev_next' => false
        );
        echo paginate_links( $setings );
      ?>
    </article>

<?php
get_footer();
