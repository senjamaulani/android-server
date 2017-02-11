<?php
include "koneksi.php";
error_reporting(0);
ini_set('display_errors', '0');


$id_skedul = $_POST['is_skedul'];


$sql = "DELETE FROM android WHERE id_skedul = '$id_skedul'";

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