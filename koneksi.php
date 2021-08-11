<?php

$localhost = "localhost";
$username = "root";
$password = "";
$database = "penduduk";

$koneksi = mysqli_connect($localhost, $username, $password, $database);

if(mysqli_connect_errno()){
	echo "Koneksi database gagal";
}

// if ($koneksi) {
// 	echo "Koneksi database berhasil";
// }else{
// 	echo "Koneksi database gagal";
// }

?>