<?php  
  /*
    Template Name: Homepage Template
  */

  get_header();

?>

  <!-- Content Section -->
  <section class="center-align">
    <!-- About Us -->
    <article class="about-us-home cf">
        <aside class="about cf">
          <?php if( get_post_meta( get_the_ID(), 'bebe_about-image', true ) ) { ?>
            <div class="img">
                <img src="<?php echo esc_url( get_post_meta( get_the_ID(), 'bebe_about-image', true )  ) ?>" alt=""/>
            </div>
          <?php } ?>
            <div class="text">
                <?php if( get_post_meta( get_the_ID(), 'bebe_about-title', true ) ) { ?>
                  <h2><?php echo esc_attr( get_post_meta( get_the_ID(), 'bebe_about-title', true ) ) ?></h2>
                <?php } ?>

                <?php if( get_post_meta( get_the_ID(), 'bebe_about-desc', true ) ) { ?>
                  <p>
                    <?php echo esc_attr( get_post_meta( get_the_ID(), 'bebe_about-desc', true ) ) ?>
                  </p>
                <?php } ?>

                <?php if( get_post_meta( get_the_ID(), 'bebe_about-desc', true ) ) { ?>
                  <a class="more" href="<?php echo esc_url( get_post_meta( get_the_ID(), 'bebe_about-link', true ) ) ?> ">More ></a>
                <?php } ?>
            </div>
        </aside>
        <aside class="list">
            <ul>
                <li class="cf">
                  <?php if( get_post_meta( get_the_ID(), 'bebe_info-1-img', true ) ) { ?>
                    <div class="icon">
                      <img src="<?php echo esc_url( get_post_meta( get_the_ID(), 'bebe_info-1-img', true ) ) ?>" alt="">
                    </div>
                  <?php } ?>

                  <?php if( get_post_meta( get_the_ID(), 'bebe_info-title-1', true ) ) { ?>
                    <a href="#" class="caption">
                      <?php echo esc_attr( get_post_meta( get_the_ID(), 'bebe_info-title-1', true ) ) ?>
                    </a>
                  <?php } ?>

                  <?php if( get_post_meta( get_the_ID(), 'bebe_info-desc-1', true ) ) { ?>
                    <p>
                      <?php echo esc_attr( get_post_meta( get_the_ID(), 'bebe_info-desc-1', true) ) ?>
                    </p>
                  <?php } ?>
                </li>

                <li class="cf">
                  <?php if( get_post_meta( get_the_ID(), 'bebe_info-2-img', true ) ) { ?>
                    <div class="icon">
                      <img src="<?php echo esc_url( get_post_meta( get_the_ID(), 'bebe_info-2-img', true ) ) ?>" alt="">
                    </div>
                  <?php } ?>

                  <?php if( get_post_meta( get_the_ID(), 'bebe_info-title-2', true ) ) { ?>
                    <a href="#" class="caption">
                      <?php echo esc_attr( get_post_meta( get_the_ID(), 'bebe_info-title-2', true ) ) ?>
                    </a>
                  <?php } ?>

                  <?php if( get_post_meta( get_the_ID(), 'bebe_info-desc-2', true ) ) { ?>
                    <p>
                      <?php echo esc_attr( get_post_meta( get_the_ID(), 'bebe_info-desc-2', true ) ) ?>
                    </p>
                  <?php } ?>
                </li>

                <li class="cf">
                  <?php if( get_post_meta( get_the_ID(), 'bebe_info-3-img', true ) ) { ?>
                    <div class="icon">
                      <img src="<?php echo esc_url( get_post_meta( get_the_ID(), 'bebe_info-3-img', true ) ) ?>" alt="">
                    </div>
                  <?php } ?>

                  <?php if( get_post_meta( get_the_ID(), 'bebe_info-title-3', true ) ) { ?>
                    <a href="#" class="caption">
                      <?php echo esc_attr( get_post_meta( get_the_ID(), 'bebe_info-title-3', true ) ) ?>
                    </a>
                  <?php } ?>

                  <?php if( get_post_meta( get_the_ID(), 'bebe_info-desc-3', true ) ) { ?>
                    <p>
                      <?php echo esc_attr( get_post_meta( get_the_ID(), 'bebe_info-desc-3', true ) ) ?>
                    </p>
                  <?php } ?>
                </li>
            </ul>
        </aside>
    </article>

    <!-- Recent From Blog -->
    <article class="recent-blog-home">
        <h2 class="title">Recent from blog</h2>

        <div class="items cf">

          <?php 
            $args = array(
              'post_type' => 'post',
              'posts_per_page' => 4,
              'order' => 'ASC'
            );

            $home_posts = new WP_Query( $args );


            if( $home_posts->have_posts() ){
              while ( $home_posts->have_posts() ) {
                $home_posts->the_post(); ?>

                <div class="col-3">
                    <a href="<?php the_permalink() ?>">
                        <?php the_post_thumbnail( 'post-front' ) ?>
                    </a>
                    <div class="info cf">
                        <div class="time"><?php echo get_the_date() ?></div>
                        <a href="" class="comments"><?php comments_number(); ?></a>
                    </div>
                    <div class="text">
                        <a href="<?php the_permalink() ?>" class="caption"><?php the_title() ?></a>
                        <p>
                          <?php the_excerpt(); ?>
                        </p>
                    </div>
                </div>                

              <?php }

              wp_reset_postdata();
            }

           ?>
        </div>
    </article>
  </section>

  <!-- Photo Gallery -->
  <div class="center-align photo-gallery">
    <div class="top">
        <h2>Photo Gallery</h2>
    </div>

    <div id="photo-gallery">
        <ul class="slides">
          <!-- -->
          <li>
            <div class="items1">

              <?php
                $args = array(
                  'post_type' => 'gallery',
                  'posts_per_page' => 10,
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
                        </li>

                        <li>
                          <div class="items2">
                      <?php }
                    ?>

                  <?php }
                  wp_reset_postdata();
                }
              ?>

            </div>
          </li>

<!--             <li>
                <div class="items1">
                    <a href="gallery-opened.html"><img src="css/images/gallery/1.jpg" alt=""/></a>
                    <a href="gallery-opened.html"><img src="css/images/gallery/2.jpg" alt=""/></a>
                    <a href="gallery-opened.html"><img src="css/images/gallery/4.jpg" alt=""/></a>
                    <a href="gallery-opened.html"><img src="css/images/gallery/3.jpg" alt=""/></a>
                    <a href="gallery-opened.html"><img src="css/images/gallery/5.jpg" alt=""/></a>
                </div>
            </li> -->

<!--             <li>
                <div class="items2">
                    <a href="gallery-opened.html"><img src="css/images/gallery/6.jpg" alt=""/></a>
                    <a href="gallery-opened.html"><img src="css/images/gallery/7.jpg" alt=""/></a>
                    <a href="gallery-opened.html"><img src="css/images/gallery/9.jpg" alt=""/></a>
                    <a href="gallery-opened.html"><img src="css/images/gallery/10.jpg" alt=""/></a>
                    <a href="gallery-opened.html"><img src="css/images/gallery/8.jpg" alt=""/></a>
                </div>
            </li> -->
        </ul>
    </div>

    <div class="back"></div>
    <div class="bottom"></div>
    <div class="anchor"></div>
  </div>

<?php 
  get_footer();
?>