<?php
	function get_title(){
			echo "Sign In"; 
		}

	function display_content(){ ?>
	
	<div class="login-container">
		<div class="login">
			<h2>LOG IN</h2>
			<form method="POST">
				<input type="text" class="loginkey" name="login_username" placeholder="Username">
				<input type="password" class="loginkey" name="login_password" placeholder="Password">
				<input type="submit" class="btn btn-primary login-btn" name="login" value="Log In">
				<a href="index.php">
					<input type="button" class="btn btn-default login-btn" name="cancel" value="Cancel">
				</a>
				<!-- <p class="forgot_password">Forgot your Password?</p> -->
			</form>
				<?php 
					// require_once 'library/script.php';
				?>	
		</div>
	</div>
	<br>
	<div class="login-container">
		<div class="register">
			<h2>CREATE A NEW ACCOUNT</h2>
			<form method="POST">
				<input type="text" class="registerkey" name="register_firstname" placeholder="Firstname">
				<input type="text" class="registerkey" name="register_lastname" placeholder="Lastname">
				<input type="text" class="registerkey" name="register_email" placeholder="Email">
				<input type="text" class="registerkey" name="register_username" placeholder="Username">
				<input type="password" class="registerkey" name="register_password" placeholder="Password">
				<input type="password" class="registerkey" name="confirm_password" placeholder="Confirm Password">
				<input type="submit" class="btn btn-primary login-btn" name="register" value="Register">
				<a href="index.php">
					<input type="button" href = "index.php" class="btn btn-default login-btn" name="cancel" value="Cancel">
				</a>
			</form>
		</div>
	</div>

<?php
}
?>

<?php
require_once('template.php');
?>
