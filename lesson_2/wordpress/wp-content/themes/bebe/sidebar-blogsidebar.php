<?php 
  if ( ! is_active_sidebar( 'blogsidebar' ) ) {
    return;
  }
?>

<aside id="secondary" class="widget-area">
  <?php global $bebe_options;
    if( $bebe_options['sidebarset']['options'] !== '2'  ) {
      dynamic_sidebar( 'blogsidebar' );
    }
  ?>
</aside><!-- #secondary -->