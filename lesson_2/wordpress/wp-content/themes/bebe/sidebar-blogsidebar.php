<?php 
  if ( ! is_active_sidebar( 'blogsidebar' ) ) {
    return;
  }
?>

<aside id="secondary" class="widget-area">
  <?php global $bebe_options;
    var_dump( $bebe_options['sidebarset']['options'] );
    // if( $bebe_options['blogsidebar']  )
    dynamic_sidebar( 'blogsidebar' );
  ?>
</aside><!-- #secondary -->