<?php
session_start();
$con=mysqli_connect("localhost","root","","ecom");

define('SERVER_PATH',$_SERVER['DOCUMENT_ROOT'].'/ecom-7.3/ecom-19-socialmediashare/');
define('SITE_PATH','http://127.0.0.1/ecom-7.3/ecom-19-socialmediashare/');

define('PRODUCT_IMAGE_SERVER_PATH',SERVER_PATH.'media/product/');
define('PRODUCT_IMAGE_SITE_PATH',SITE_PATH.'media/product/');
?>