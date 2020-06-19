<!DOCTYPE html>
<html>

<head>
	<title>KakiAlas Music Store</title>
	<link rel="stylesheet" type="text/css" href="layout/assets/css/style.css">
</head>

<body>
	<div class="container">
		<div class="header">
			<center><img src="layout/assets/images/header.png"></center>
		</div>
		<center>
			<div class="menu">
				<a href="index.php">HOME</a>
				<a href="artist_tampil.php">ARTIST</a>
				<a href="album_tampil.php">ALBUM</a>
				<a href="track_tampil.php">TRACK</a>
				<a href="played_tampil.php">PLAYED</a>
				<a href="logout.php">LOGOUT</a>

			</div>
		</center>

		<div class="main">

			<?php

			if (isset($_GET['page'])) {
				include $_GET['page'] . ".php";
			} else {
				include "main.php";
			}
			?>
		</div>

		<div class="footer">
			<center>Copyright © 2020. Arif Rahmad All Right Reserved</center>
		</div>
	</div>
</body>

</html>