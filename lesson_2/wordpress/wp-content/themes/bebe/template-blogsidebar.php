<?php 
 /*
  Template Name: Blog Sidebar Template
 */

  get_header();
?>

<div class="content_box">
  <div class="sidebar">
    <?php get_sidebar('blogsidebar'); ?>
  </div>

  <?php if ( have_posts() ): while( have_posts() ) : the_post() ?>
    <div class="content">
      <?php the_content(); ?>
    </div>

  <?php endwhile; endif; ?>
</div>

<?php get_footer(); ?>