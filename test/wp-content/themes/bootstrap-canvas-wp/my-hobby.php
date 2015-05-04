<?php
/**
 /*
 Template Name: my hobby
 *
 *
 * @author Evgeniy Zarechenskiy
 * @email misterjaaay@gmail.com
 * @package Bootstrap CV WP
 * @since  Bootstrap CV WP 1.0
 */
get_header ();
?>
<section id="header">
	<div class="container">
		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				<li data-target="#carousel-example-generic" data-slide-to="3"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img
						src="http://letsgoparagliding.com/images/chamonix/chamonix_tour2.jpg"
						alt="">
					<div class="carousel-caption"></div>
				</div>
				<div class="item">
					<img src="http://www.flymanilla.com/portals/5/d%205.JPG" alt="">
					<div class="carousel-caption"></div>
				</div>
				<div class="item">
					<img
						src="https://freespiritparagliding.files.wordpress.com/2008/08/nicesunsetpgphoto.jpg"
						alt="">
					<div class="carousel-caption"></div>
				</div>
				<div class="item">
					<img src="http://www.nilayatravelandtours.com/images/url.jpg"
						alt="">
					<div class="carousel-caption"></div>
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control"
				href="#carousel-example-generic" role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
</section>
<?php get_footer(); ?>