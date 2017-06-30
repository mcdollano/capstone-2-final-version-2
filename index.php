   	<?php
	function get_title(){
		echo "Wooden Hanger PH";
	}

	function display_content(){?>
	
		<div class="row banner-container">
			<div class="col-sm-6 col-md-6 col-lg-6 banner-caption">
				<h1>MICHAEL KORS</h1>
				<h1>HYBRID WATCH</h1>
				<h2>The best of both worlds.</h2>
				<a class="waves-effect waves-light btn banner-btn">BUY NOW</a>
			</div>
			<div class="col-sm-6 col-md-6 col-lg-6 banner-image-container">
				<img src="items/watch/banner-mk1.png" id="banner-image">
			</div>
		</div>
		<hr>
		<div class="row banner-container2">
			<div class="col-sm-4 col-md-4 col-lg-4 banner-image-container">
				<image>
					<img src="items/shoes/flats.png" id="banner-image-shoes">
					<caption>
						<h3>SHOES</h2>
					</caption>
				</image>
			</div>
			<div class="col-sm-4 col-md-4 col-lg-4 banner-image-container">
				<image>
					<img src="items/bags/herschel1.png" id="banner-image-bag">
					<caption>
						<h3>BAGS</h3>
					</caption>
				</image>
			</div>
			<div class="col-sm-4 col-md-4 col-lg-4">
				<image>
					<img src="items/watch/banner-mk2.png" id="banner-image-watch">
					<caption>
						<h3>WATCHES</h3>
					</caption>
				</image>
			</div>
		</div>

<?php
}//display_content
require_once 'template.php';
?>