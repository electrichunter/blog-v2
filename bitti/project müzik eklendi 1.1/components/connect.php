<?php
session_start();
ob_start();
   $db_name = 'mysql:host=localhost;dbname=proje';
   $user_name = 'root';
   $user_password = '';

   $conn = new PDO($db_name, $user_name, $user_password);

   
function IP(){

   if(getenv("HTTP_CLIENT_IP")){
       $ip = getenv("HTTP_CLIENT_IP");
   }elseif(getenv("HTTP_X_FORWARDED_FOR")){
       $ip = getenv("HTTP_X_FORWARDED_FOR");
       if (strstr($ip, ',')) {
           $tmp = explode (',', $ip);
           $ip = trim($tmp[0]);
       }
   }else{
       $ip = getenv("REMOTE_ADDR");
   }
   return $ip;
}
?>