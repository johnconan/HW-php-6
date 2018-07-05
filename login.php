<?php 
require('config.php');
require('functions/login-functions.php');
require('database.php');
$link = db_connect();

if ( isset($_POST['enter']) ) {
	$query = "SELECT * FROM `user`";
	if ( $result = mysqli_query($link, $query) ) {
		$user = mysqli_fetch_array($result);
	}

	if ( $_POST['login'] == $user['userLogin'] ) {
		if ( $_POST['password'] == $user['userPassword'] ) {

			$_SESSION['user'] = 'admin';
			header('Location: ' . HOST . 'index.php');
		}
	}
}

include('views/head.tpl');
include('views/login.tpl');
include('views/footer.tpl');
?>