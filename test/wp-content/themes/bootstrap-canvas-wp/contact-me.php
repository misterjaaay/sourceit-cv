<?php
/**
 /*
 Template Name: contact-me
 *
 * @author Evgeniy Zarechenskiy
 * @email misterjaaay@gmail.com
 * @package Bootstrap CV WP
 * @since  Bootstrap CV WP 1.0
 */
get_header ();
?>
<div class="form-holder">
	<div id="result_id"></div>
	<form id="form_id" method="post" action="javascript:void();"
		method="POST">
		<input type="text" name="emal" id="" placeholder="Email" required />
		<textarea name="message" id="" cols="30" rows="10" required
			placeholder="Type your message here"></textarea>
		<input class="btn" type="submit"
			onclick="JqAjaxRequest('result_id', 'form_id', 'contact-form.php')"
			value="send" />
	</form>
</div>
<div>
	<section id="contact" class="map">
		<iframe
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d20527.66000483577!2d36.253268220841036!3d49.97465555946383!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4127a080bb9c3751%3A0xe7bb89aef6a0f7c0!2z0JHQuNC30L3QtdGBLdGG0LXQvdGC0YAgItCQ0YDQuNGB0YLQvtC60YDQsNGCIiwg0L_RgNC-0YHQvy4g0JPQsNCz0LDRgNGW0L3QsCwgNDMvMiwg0KXQsNGA0LrRltCyLCDQpdCw0YDQutGW0LLRgdGM0LrQsCDQvtCx0LvQsNGB0YLRjCwgNjEwMDA!5e0!3m2!1sru!2sua!4v1430600841769"
			width="600" height="450" frameborder="0" style="border: 0"></iframe>
		<br> <small> <a
			href="https://www.google.com.ua/maps/place/49%C2%B058'25.1%22N+36%C2%B015'28.3%22E/@49.973634,36.257861,19z/data=!3m1!4b1!4m2!3m1!1s0x0:0x0"></a>
		</small>
	</section>
</div>


<?php get_footer(); ?>