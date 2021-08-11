<?php

include 'koneksi.php';

session_start();

$id = 'id';
$name = 'nama';
$username = htmlspecialchars($_POST['uname']);
$password = htmlspecialchars(md5($_POST['pass']));


$sql = mysqli_query($koneksi,"SELECT * FROM admin WHERE username='$username' and password='$password'");

$cek = mysqli_num_rows($sql);

if($cek > 0){
	//jika login berhasil
	$_SESSION['status'] = "berhasil";
	header("location:admin/index.php");
	//jika login gagal
}else{
	header("location:index.php?pesan=gagal");
}



?>