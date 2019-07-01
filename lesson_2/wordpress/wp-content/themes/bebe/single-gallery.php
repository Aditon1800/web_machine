<?php get_header(); ?>

  <?php while( have_posts() ) : the_post(); ?>

      <!-- Gallery -->
      <article class="gallery-opened">

        <?php $gallery_slider = get_post_meta(get_the_ID(), 'ale_gallery_id', true);
          if( $gallery_slider ) { ?>
          <!-- Slider -->
            <div id="gallery-slider">
                <ul class="slides">
                  <?php foreach ( $gallery_slider as $slide) {?>
                  <li>
                    <?php echo wp_get_attachment_image( $slide, 'full' ) ?>
                  </li>
                <?php } ?>
                </ul>
            </div>
          <?php }  ?>

          <!-- Comments -->
          <h2 class="title"><?php the_title(); ?></h2>

          <?php the_content(); ?>

          <!-- -->
          <div class="dotted-line"></div>

          <!-- -->
          <div class="info cf">
              <h4 class="categ">Date: <?php echo get_the_date(); ?> / Category: 
                <?php $gallery_cats = get_the_terms( get_the_ID(), 'gallery-category' );
                  $gallery_array = []; 
                  
                  foreach( $gallery_cats as $category ) { $gallery_array[] = $category->name; }
                  echo implode(', ', $gallery_array);
                ?>
              </h4>
              <div class="share">
                  <h4>Share:  </h4>
                  <ul>
                    <li class="facebook"><a onclick="window.open(this.href, 'Share on Facebook ' , 'widht=600,height=300'); return false" href="<?php echo ale_get_share('fb'); ?>"></a></li>
                    <li class="pinterest"><a onclick="window.open(this.href, 'Share on Pinterest ' , 'widht=600,height=300'); return false" href="<?php echo ale_get_share('pin'); ?>"></a></li>
                    <li class="twitter"><a onclick="window.open(this.href, 'Share on Twitter ' , 'widht=600,height=300'); return false" href="<?php echo ale_get_share('twi'); ?>"></a></li>
                  </ul>
              </div>
          </div>

      </article>

  <?php endwhile; ?>

<?php get_footer(); ?>