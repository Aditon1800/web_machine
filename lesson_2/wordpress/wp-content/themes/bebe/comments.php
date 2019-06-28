<?php
/**
 * The template for displaying comments
 *
 * This is the template that displays the area of the page that contains both the current comments
 * and the comment form.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package Bebe
 */

/*
 * If the current post is protected by a password and
 * the visitor has not yet entered the password we will
 * return early without loading the comments.
 */
if ( post_password_required() ) {
	return;
}
?>

<div id="comments" class="comments-area">


	<?php
	// You can start editing here -- including this comment!
	if ( have_comments() ) :
		?>
    <!-- Comments -->
    <h2 class="title"><?php esc_html_e('Comments','bebe');?></h2>

		<?php the_comments_navigation(); ?>

		<div class="comments">
			<?php
				wp_list_comments('callback=bebe_comment&end-callback=bebe_comment_close')
			?>
		</div><!-- .comment-list -->

		<?php
		the_comments_navigation();

		// If comments are closed and there are comments, let's leave a little note, shall we?
		if ( ! comments_open() ) :
			?>
			<p class="no-comments"><?php esc_html_e( 'Comments are closed.', 'bebe' ); ?></p>
			<?php
		endif;

	endif; // Check for have_comments().

  ?>
  <div class="respond">
    <div class="top"> <h2><?php esc_html_e('Respond','bebe');?></h2> </div>

  <?php

  $commenter = wp_get_current_commenter();
  $req = get_option( 'require_name_email' );
  $aria_req = ( $req ? " aria-required='true'" : '' );

  $fields = array(
    'author' => '<div class="col-4"><input id="author" name="author" type="text" value="' . esc_attr( $commenter['comment_author'] ) . '" size="30"' . $aria_req . ' placeholder="Type your name"/></div>',
    
    'email'  => '<div class="col-4"><input id="email" name="email" type="text" value="' . esc_attr(  $commenter['comment_author_email'] ) . '" size="30"' . $aria_req . ' placeholder="Type your email"/></div>',
    
    'url'    => '<div class="col-4"><input id="url" name="url" type="text" value="' . esc_attr( $commenter['comment_author_url'] ) . '" size="30" placeholder="Type your website"/></div>',
  );

  $args = array(
    'cookies' => '',

    'label_submit' => '',

    'fields' => apply_filters( 'comment_form_default_fields', $fields ),

    'comment_field' => '</label> <textarea id="comment" name="comment" cols="45" rows="8" aria-required="true" placeholder="Type your comment" ></textarea>',
  );

  // $args = array(
  //   'label_submit' => '',
  // );

  	comment_form( $args );
	?>

  </div>

</div><!-- #comments -->
