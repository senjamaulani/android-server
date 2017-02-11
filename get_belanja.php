<?php
ini_set('display_errors', '0');
include "koneksi.php";


$sql = "SELECT * FROM barang_belanja";
$hasil = mysqli_query($mysqli, $sql);
$results = array();

foreach($hasil as $row){
	
	 $results[] = array(
	 	'nama_barang' => $row[nama_barang],
		  'harga_barang'=> $row[harga_barang],
		  		  
	 );
}

$json = json_encode($results);

echo $json;

?>
