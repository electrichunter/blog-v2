<?php
date_default_timezone_set('Europe/Istanbul');

if(isset($_POST['log_ip'])){
   $ip = $_SERVER['REMOTE_ADDR'];
   $tarih = date("Y-m-d H:i:s");
   $aciklama = "Giriş";

   $log_entry = $ip . " - " . $tarih . " - " . $aciklama . "\n";
   file_put_contents('loglar.txt', $log_entry, FILE_APPEND);
}
?>
