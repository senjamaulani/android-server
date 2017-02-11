<?php
include "koneksi.php";
error_reporting(0);
ini_set('display_errors', '0');


$idsked = $_GET['id_skedul'];


$sql = "DELETE FROM skedul WHERE id_skedul = '$idsked'";

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