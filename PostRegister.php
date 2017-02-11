<?php
include "koneksi.php";

error_reporting(0);
ini_set('display_errors', '0');

$nama  = $_POST['name'];
$email = $_POST['email'];
$username = $_POST['username'];
$password = $_POST['password'];

$sql = "INSERT INTO user SET nama_user = '$nama', email = '$email', username = '$username', password = '$password'";

  $hasil = mysqli_query($mysqli, $sql);
  
  
 
    if($hasil){
        //echo "sukses";
	    $response_array['status'] = 'sukses'; 
    }
    else{
        //echo "gagal";
		 $response_array['status'] = 'gagal'; 
    }
header('Content-type: application/json');
echo json_encode($response_array); 
  






?>