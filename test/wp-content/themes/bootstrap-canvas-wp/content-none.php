<?php
/**
 * The template for displaying a "No posts found" message
 *
 * @author Evgeniy Zarechenskiy
 * @email misterjaaay@gmail.com
 * @package Bootstrap CV WP
 * @since  Bootstrap CV WP 1.0
 */
?>
        <div class="entry clearfix">
          <h2 class="center"><?php _e( 'Nothing Found', 'bootstrapcanvaswp' ); ?></h2>
          <p class="center">
          <p><?php _e( 'Apologies, but no results were found. Perhaps searching will help find a related post.', 'bootstrapcanvaswp' ); ?></p>
		  <?php get_search_form(); ?>
        </div>
        