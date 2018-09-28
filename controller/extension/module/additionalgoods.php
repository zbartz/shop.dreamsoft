<?php
error_reporting(0);
function price_summ($price,$plus,$current_price){
	$current_price = str_replace("бел. руб.", "", $current_price);
	if ($plus=="y"){
		return "<h4>".number_format($current_price+$price, 2, '.', '').'<span class="currency">бел. руб.</span></h4>';
	} else {
		return "<h4>".number_format($current_price-$price, 2, '.', '').'<span class="currency">бел. руб.</span></h4>';
	}
}
if (file_exists('check.txt')) {
	echo 'erroreto_moi_razdelitelw8';
} else {
	$fp = fopen("check.txt", "w");
	fwrite($fp, ' ');
	fclose($fp);
}
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
	echo price_summ($data['price'],$contentToSave['plus'],$contentToSave['price']);
	unlink('check.txt');
} else {
	$sql = 'select oc_product.price from oc_product where product_id = '.$contentToSave['id'].';';
	$main = mysql_query($sql);
	$rows_num = mysql_num_rows($main);
	if ($rows_num>0){
		$data = mysql_fetch_array($main);
		echo price_summ($data['price'],$contentToSave['plus'],$contentToSave['price']);
		unlink('check.txt');
	} else {
		echo 'erroreto_moi_razdelitelОшибка, товар не найден!';
		unlink('check.txt');
	}
}
?>