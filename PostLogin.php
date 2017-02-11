<?php
ini_set('display_errors', '0');
include "koneksi.php";


$user = $_POST['username'];
$pass = $_POST['password'];

$sql = "SELECT * FROM user WHERE username = '$user' AND password = '$pass'";

$hasil = mysqli_query($mysqli, $sql);


if(mysqli_num_rows($hasil)){
		$res = mysqli_fetch_array($hasil, MYSQLI_ASSOC);
	    $response_array['id'] = $res['id_user']; 
	    $response_array['status'] = 'sukses'; 
    }
    else{
		 $response_array['status'] = 'gagal'; 
    }
header('Content-type: application/json');
echo json_encode($response_array); 

?>
