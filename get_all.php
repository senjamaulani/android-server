<?php
ini_set('display_errors', '0');
include "koneksi.php";


$sql = "SELECT * FROM skedul";
$hasil = mysqli_query($mysqli, $sql);
$results = array();

foreach($hasil as $row){
	
	 $results[] = array(
	 	'tanggal' => $row[tanggal] . '-' . $row[bulan] . '-' . $row[tahun],
		  'nama_skedul'=> $row[nama_skedul],
		  'id_skedul' => $row[id_skedul],
		  		  
	 );
}

$json = json_encode($results);

echo $json;

?>
