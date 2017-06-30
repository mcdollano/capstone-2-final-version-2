<div>
	<?php 
		require_once 'library/script.php';
	?>	
	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">
			&times;
		</a>
		<a href="index.php">Home</a>
		<a href="#">About Us</a>
		<a href="items.php">Catalog</a>
		<a href="#">Blog</a>
		<!-- <a href="logout.php">Sign Out</a> -->
		
	</div>
	<div id="navbar-main">
		<span id="navbtn" style="font-size:30px;cursor:pointer" onclick="openNav()" onclick="closeNav()">&#9776;</span>
		<a href="index.php"><img src="images/woodenhanger_logo.png" id="brand_logo"></a>

		<?php
			if(isset($_SESSION['firstname'])){ ?>
			<?php echo "<span id='displayname'> Logged in as: $displayname | </span>";?>
			<a href='logout.php' id="logout"> Sign Out </a>
		<?php }else { ?>
			<a href='login.php' id="login"> Sign In </a>
		<?php } ?>
		<!-- <a href="login.php"><i id="nav-icon-user" class="fa fa-user-circle search-icon"></i></a> -->
		<!-- <a href="#"><i id="nav-icon-search" class="fa fa-search search-icon"></i></a> -->
	</div>
</div>


	