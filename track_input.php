<link rel="stylesheet" type="text/css" href="layout/assets/css/style.css">

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

		<center class="main">
			<h2>ADD TRACK</h2>
		</center>
		<form method="POST" action="track_proses.php">
			<table width="400px" bgcolor="#353535" cellpadding="10" cellspacing="5" bgcolor="#4f4f4f" align="center">
				<tr>
					<td>TRACK NAME</td>
					<td><input type="text" name="track_name"></td>
				</tr>
				<tr>
					<td>ARTIST ID</td>
					<td><input type="text" name="artist_id"></td>
				</tr>
				<tr>
					<td>ALBUM ID</td>
					<td><input type="text" name="album_id"></td>
				</tr>
				<tr>
					<td>TIME</td>
					<td><input type="time" name="waktu"></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" name="btn-simpan" value="SIMPAN"></td>
				</tr>
			</table>
		</form>