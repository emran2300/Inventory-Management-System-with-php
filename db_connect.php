<?php

$sname= "localhost";
$unmae= "root";
$password = "";
$db_name = "login_system";

$conn = mysqli_connect($sname, $unmae, $password, $db_name);

if (!$conn) {
	die("Connection failed: ");
}
?>