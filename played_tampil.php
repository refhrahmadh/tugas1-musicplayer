<link rel="stylesheet" type="text/css" href="layout/assets/css/style.css">



<?php

include "app/Played.php";

$playd = new Played();
$rows = $playd->tampil();

?>

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
			<h2>LIST PLAYED</h2>
		</center>
		<center><a class="tambah" href="played_input.php">Tambah</a></center>
		<div class="main">

			<table>
				<table width="400px" bgcolor="#353535" cellpadding="10" cellspacing="5" bgcolor="#4f4f4f" align="center">
					<tr>
						<th>PLAYED ID</th>
						<th>ATRIST ID</th>
						<th>ALBUM ID</th>
						<th>TRACK ID</th>
						<th>PLAYED</th>
						<th>EDIT</th>
						<th>DELETE</th>
					</tr>
					<?php foreach ($rows as $row) { ?>
						<tr>
							<td><?php echo $row['played_id']; ?></td>
							<td><?php echo $row['artist_id']; ?></td>
							<td><?php echo $row['album_id']; ?></td>
							<td><?php echo $row['track_id']; ?></td>
							<td><?php echo $row['played']; ?></td>
							<td><a class="edit" href="played_edit.php?id=<?php echo $row['played_id']; ?>">Edit</a></td>
							<td><a class="delete" href="played_proses.php?delete-id=<?php echo $row['played_id']; ?>">Delete</a></td>
						</tr>
					<?php } ?>
				</table>
		</div>
		<div class="footer">
			<center>Copyright © 2020. Arif Rahmad All Right Reserved</center>
		</div>
	</div>
</body>