<?php
/**
 * @author Evgeniy Zarechenskiy
 * @email misterjaaay@gmail.com
 * @package Bootstrap CV WP
 * @since  Bootstrap CV WP 1.0
 */
?>
</div>
</div>

<div class="blog-footer">
	<p class="text-muted">Copyright © Evgeniy Zarechenskiy <?php echo date("Y")?></p>
</div>
<div class="hidden">
	<div class="wrap clearfix">
		<iframe width="560" height="315"
			src="https://www.youtube.com/embed/MNl3fTods9c" frameborder="0"
			allowfullscreen></iframe>
	</div>
</div>
<?php
wp_footer ();
?>
<script>
	 $(function() {
		    $( "#accordion" ).accordion({
		      heightStyle: "auto",
		      active:false,
		      collapsible:false
		    });
		  });
	function JqAjaxRequest(e, t, n) {
	    jQuery.ajax({
	        url: n,
	        type: "POST",
	        dataType: "html",
	        data: jQuery("#" + t).serialize(),
	        success: function(t) {
	            document.getElementById(e).innerHTML = t
	        },
	        error: function(t) {
	            document.getElementById(e).innerHTML = "Error occured during sending"
	        }
	    })
	}
	</script>

</body>
</html>