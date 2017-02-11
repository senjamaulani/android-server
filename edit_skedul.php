<?php
include "koneksi.php";
error_reporting(0);
ini_set('display_errors', '0');


$idsked = $_GET'id_skedul'];
$idsked2 = $_GET['id_skedul2'];

$tanggal   = $_POST['tanggal'];
list($d,$m,$y) = explode('/',$_POST['tanggal']);
$nama_skedul = $_POST['nama_skedul'];


 //echo "$id";
 
 if($idsked != ""){
 
 $sql = "SELECT * FROM skedul WHERE id_skedul = '$idsked'";
 $hasil = mysqli_query($mysqli, $sql);
 $data = mysqli_fetch_assoc($hasil);
 
 $array = array('tanggal'=>$data['tanggal']. '-' . $data['bulan'] . '-' . $data['tahun'],
                 'nama_skedul'=>$data['nama_skedul']);
				 
	 echo json_encode($array);
				 
 }


 if($idsked2 != ""){
$sql = "UPDATE skedul SET tanggal = '$d',
                         bulan = '$m',
                         tahun = 'y',
						 WHERE id_skedul = '$idsked2'";

  $hasil = mysqli_query($mysqli, $sql);
  
  
 
    if(mysqli_num_rows($hasil){
    	$res = mysqli_fetch_array($hasil, MYSQLI_ASSOC);
    	$response_array['id'] = $res['id_skedul'];
        //echo "sukses";
	    $response_array['status'] = 'sukses'; // response = menyimpan respon dari server yang di request
    }
    else{
        //echo "gagal";
		 $response_array['status'] = 'gagal'; 
    }
	     
		 header('Content-type: application/json');
		 echo json_encode($response_array);
 
 }  
   
 
 
 
 
 

?>