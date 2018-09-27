<?php
error_reporting(0);
require $_SERVER['DOCUMENT_ROOT'].'/config.php'; 

$dbcnx = mysql_connect(DB_HOSTNAME, DB_USERNAME, DB_PASSWORD);
if (!$dbcnx)
{
	print 'Нет подключения';
	exit();
}
if (!mysql_select_db(DB_DATABASE,$dbcnx) )
{
	print 'Нет подключения к БД';
	exit();
}

$contentToSave = $_POST["myData"];
$contentToSave = str_replace( 'script','', $contentToSave);
$contentToSave = json_decode($contentToSave, true);

$sql = 'select oc_product_special.price from oc_product_special where product_id = '.$contentToSave['id'].' order by priority limit 1;';
$main = mysql_query($sql);
$rows_num = mysql_num_rows($main);

if ($rows_num>0){
	$data = mysql_fetch_array($main);
	echo $data['price'];
} else {
	$sql = 'select oc_product.price from oc_product where product_id = '.$contentToSave['id'].';';
	$main = mysql_query($sql);
	$rows_num = mysql_num_rows($main);
	if ($rows_num>0){
		$data = mysql_fetch_array($main);
		echo $data['price'];
	} else {
		echo 'erroreto_moi_razdelitelОшибка, товар не найден!';
	}
}
?>