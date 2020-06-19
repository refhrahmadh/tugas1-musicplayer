<?php



include_once "app/Controller.php";
include_once "app/User.php";
include_once "layout/index.php";


if (isset($_SESSION['nama']) == 0) {
    header('location:login.php');
}
