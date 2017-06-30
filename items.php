<?php
	function get_title(){
			echo "Wooden Hanger - Catalog"; 
		}
	function display_content(){
	require 'connection.php';?>

<div class="catalog-container">
	<div class="catalog_header">
		<h2>CATALOG</h2>
		<span>ALL</span>
		<span>SHOES</span>
		<span>BAGS</span>
		<span>WATCHES</span>
		<!-- <input type="textarea" name="search_items" class="search_items" value="Search Products">
		<a href='add_items.php' class='btn btn-primary' id='add_new'>Add Products</a> -->
		<a href='add_items.php' class='btn btn-primary' id='add_new'>Add Products</a>
		
	</div>
	<?php 
		echo "<div class = 'row item-row-container'>";
			$sql = "SELECT * FROM items";
			$result = mysqli_query($conn,$sql);
			if (mysqli_num_rows($result)>0) {
				while ($row = mysqli_fetch_assoc($result)) {
					extract($row);

				echo "<div class='col-sm-3 col-md-3 col-lg-3'>
						<div class = 'thumbnail'>
							<img src='$item_image' id='item_image'><br>
							<span>$item_name</span><br>
							<span>$item_description</span><br>
							<span>Php $item_price</span><br>
						</div> 
					  </div>";//column
		
			} // while 
		} // if 
		echo "</div>" ?>;
	</div>
	<!-- <div class="row catalog-row">
		<div class="col-sm-3 col-md-3 col-lg-3">
			<img src="items/bags/herschel/heritage_backpack/black/black.jpg">
		</div>
		<div class="col-sm-3 col-md-3 col-lg-3">
			<img src="items/bags/herschel/heritage_backpack/camo/camo.jpg">
		</div>
		<div class="col-sm-3 col-md-3 col-lg-3">
			<img src="items/bags/herschel/heritage_backpack/crosshatch/crosshatch.jpg">
		</div>
		<div class="col-sm-3 col-md-3 col-lg-3">
			<img src="items/bags/herschel/heritage_backpack/floria/floria.jpg">
		</div>
	</div> -->





	
<?php
}
?>
<?php
require_once('template.php');
?>