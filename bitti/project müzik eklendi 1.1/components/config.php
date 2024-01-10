<?php

// Hata günlüğü dosyasının yolu
define('LOG_FILE_PATH', 'error_log.txt');

// Hata loglama fonksiyonu
function logError($message) {
    // Hata mesajına tarih ve saat ekleyerek formatlama
    $logMessage = '[' . date('Y-m-d H:i:s') . '] ' . $message . "\n";

    // Hata mesajını dosyaya yaz
    file_put_contents(LOG_FILE_PATH, $logMessage, FILE_APPEND);
}

// Kullanıcı giriş loglama fonksiyonu
function logUserAccess() {
    // Kullanıcının IP adresini ve giriş zamanını al
    $ip_address = $_SERVER['REMOTE_ADDR'];
    $time_access = date("Y-m-d H:i:s");

    // Log mesajını formatla
    $logMessage = '[' . $time_access . '] ' . 'User access from IP: ' . $ip_address . "\n";

    // Log mesajını dosyaya yaz
    file_put_contents(LOG_FILE_PATH, $logMessage, FILE_APPEND);
}

// Hata raporlama ayarları
error_reporting(E_ALL);
ini_set('display_errors', 0); // Hata mesajlarını ekrana yazdırmayı kapat

// Kullanıcı girişini logla
logUserAccess();

?>
