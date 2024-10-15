<?php 

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "project_diagnosa";

// Create connection
$koneksi = mysqli_connect("localhost","root","","project_diagnosa");

// Check connection
if ($koneksi->connect_error) {
    die("Connection failed: " . $koneksi->connect_error);
}
?>