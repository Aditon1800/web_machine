<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package Bebe
 */

get_header();
?>
<!-- 
            // If comments are open or we have at least one comment, load up the comment template.
            if ( comments_open() || get_comments_number() ) :
              comments_template();
            endif; -->

        <!-- Blog Single -->
        <article class="blog-single">


          <?php
          while ( have_posts() ) : the_post();
          ?>

            <div class="img">
                <div class="img-bord">
                  <?php echo the_post_thumbnail( 'post-single' ) ?>
                </div>
                <div class="info cf">
                    <span class="time">
                      <?php echo get_the_date(); ?>
                    </span>
                    <span class="comments">
                      <?php echo comments_number() ?>
                    </span>
                    <span class="by" style="background-image: url('<?php echo get_template_directory_uri(); ?>/layouts/images/admin.png');"><?php echo get_the_author() ?></span>
                </div>
                <div class="wave"></div>
            </div>

            <?php the_content() ?>

            <?php endwhile; // End of the loop.
            ?>
            <!-- -->
            <div class="dotted-line first"></div>

            <div class="category cf">
                <h4 class="categ">Category: <?php the_category(', ') ?> / Tags: <?php the_tags('', ', ', ''); ?></h4>
                <div class="share">
                    <h4>Share:  </h4>
                    <ul>
                        <li class="facebook"><a href=""></a></li>
                        <li class="pinterest"><a href=""></a></li>
                        <li class="twitter"><a href=""></a></li>
                    </ul>
                </div>
            </div>

            <!-- Comments -->
            <h2 class="title">Comments</h2>

            <div class="comments">

                <div class="comment cf">
                    <div class="avatar">
                        <img src="css/images/blog/ava1.jpg" alt=""/>
                        <h4>Aristocrat</h4>
                    </div>
                    <div class="text">
                        <div class="top">
                            <h4 class="date">Date: 21 Sep, 2013</h4>
                            <a class="reply-button" href="">Reply</a>
                        </div>
                        <div class="dotted-line"></div>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt
                            ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                            laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in
                            voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                            non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                        </p>
                    </div>
                </div>

                <div class="comment cf">
                    <div class="avatar">
                        <img src="css/images/blog/ava2.jpg" alt=""/>
                        <h4>Princes</h4>
                    </div>
                    <div class="text">
                        <div class="top">
                            <h4 class="date">Date: 22 Sep, 2013</h4>
                            <a class="reply-button" href="">Reply</a>
                        </div>
                        <div class="dotted-line"></div>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt
                            ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                            laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in
                            voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                        </p>
                        <p>
                            Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim
                            id est laborum. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt
                            mollit anim id est laborum.
                        </p>
                    </div>
                </div>

                <div class="reply cf">
                    <div class="enter"></div>
                    <div class="avatar">
                        <img src="css/images/blog/ava1.jpg" alt=""/>
                        <h4>Aristocrat</h4>
                    </div>
                    <div class="text">
                        <div class="top">
                            <h4 class="date">Date: 22 Sep, 2013</h4>
                            <a class="reply-button" href="">Reply</a>
                        </div>
                        <div class="dotted-line"></div>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt
                            ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                            laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in
                            voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                            Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim
                        </p>
                    </div>
                </div>

            </div>

            <div class="respond">
                <div class="top"> <h2>Respond</h2> </div>

                <form class="cf" method="post" id="respond-form">

                    <div class="col-4">
                        <input name="name" type="text" placeholder="Type your name"/>
                    </div>

                    <div class="col-4">
                        <input name="email" type="text" placeholder="Type your email"/>
                    </div>

                    <div class="col-4">
                        <input name="website" type="text" placeholder="Type your website"/>
                    </div>

                    <textarea name="subject" placeholder="Type your comment"></textarea>

                    <input class="submit" type="submit" value=""/>
                </form>

            </div>

        </article>

<?php
get_footer();
