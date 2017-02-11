<?php
include "koneksi.php";

error_reporting(0);
ini_set('display_errors', '0');

$tanggal  = $_POST['tanggal']; //mengambil dari form
list($d,$m,$y) = explode('/',$_POST['tanggal']);//membuat 3 variabel dalam list, setelah dilakukan explode data tanggal
$id_user = $_POST['id_user'];
$nama_skedul = $_POST['nama_skedul'];

if (isset($tanggal)) { //jika variabel tanggal terisi
	$sql = "INSERT INTO skedul (`id_skedul`, `id_user`, `nama_skedul`, `tanggal`, `bulan`, `tahun`) VALUES (null, '$id_user', '$nama_skedul', '$d', '$m', '$y');";
	$hasil = mysqli_query($mysqli, $sql);

	if($hasil){
        //echo "sukses";
	    $response_array['status'] = 'sukses'; 
    }
    else{
        //echo "gagal";
		 $response_array['status'] = 'gagal'; 
    }
} 
 
    
header('Content-type: application/json');
echo json_encode($response_array); 
  






?>