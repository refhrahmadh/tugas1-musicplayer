<link rel="stylesheet" type="text/css" href="layout/assets/css/style.css">

<?php
session_start();
include_once('app/User.php');

if (isset($_POST['submit'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];

    $object = new User();
    $object->Login($email, $password);
}

?>


<head>
    <title>Halaman Login</title>
    <link rel="stylesheet" type="text/css" href="layout/assets/css/style.css">
</head>
<center class="main">
    <h2>Login</h2>
</center>
<form method="POST" action="">
    <table width="400px" bgcolor="#353535" cellpadding="10" cellspacing="5" bgcolor="#4f4f4f" align="center">
        <tr>
            <td>Your E-mail</td>
            <td><input type="text" name="email"></td>
        </tr>
        <tr>
            <td>Your Password</td>
            <td><input type="password" name="password"></td>
        </tr>

        <tr>
            <td></td>
            <td><input type="submit" name="submit" value="SIMPAN"></td>
        </tr>
    </table>
</form>