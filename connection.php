<?php
	$host = 'localhost';
	$username = 'root';
	$password = '';
	$database = 'wooden-hanger';

	$conn = mysqli_connect($host, $username, $password, $database); 

	require_once('template.php');
?>