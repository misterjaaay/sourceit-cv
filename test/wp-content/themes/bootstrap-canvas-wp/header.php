<?php
/**
 * @author Evgeniy Zarechenskiy
 * @email misterjaaay@gmail.com
 * @package Bootstrap CV WP
 * @since  Bootstrap CV WP 1.0
 */
?>
<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<title><?php wp_title(); ?></title>
    
	<?php
	wp_head ();
	?>
	
</head>
<body <?php body_class(); ?>>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target=".navbar-collapse"
					aria-expanded="false" aria-controls="navbar">
					<span class="sr-only"><?php _e( 'Toggle navigation', 'bootstrapcanvaswp' ); ?></span>
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand"
					href="<?php echo esc_url( home_url( '/' ) ); ?>"><?php bloginfo( 'name' ); ?></a>
			</div>
		<?php
		wp_nav_menu ( array (
				'menu' => 'primary',
				'theme_location' => 'primary',
				'depth' => 2,
				'container' => 'div',
				'container_class' => 'collapse  navbar-collapse',
				'container_id' => 'bs-example-navbar-collapse-1',
				'menu_class' => 'nav navbar-nav',
				'fallback_cb' => 'wp_bootstrap_navwalker::fallback',
				'walker' => new wp_bootstrap_navwalker () 
		) );
		?>
		</div>
	</nav>
    <?php $header_image = get_header_image(); ?>
    <div class="blog-header" <?php if ( get_header_image() ) : ?>style="background-image: url( '<?php echo esc_url( $header_image ); ?>'); background-size: cover; background-repeat: no-repeat; background-position: top left; margin-bottom: 30px; width: 100%; height: 100%; min-height: <?php echo HEADER_IMAGE_HEIGHT; ?>px; position: relative;"<?php endif; ?>>
		<div class="container" <?php if ( get_header_image() ) : ?>style="height: auto; min-height: <?php echo HEADER_IMAGE_HEIGHT; ?>px; position: relative;"<?php endif; ?>>
      </div>
	</div>
	<div class="container">
		<div class="main">
			<h1 class="text-center"><?php the_title(); ?></h1>