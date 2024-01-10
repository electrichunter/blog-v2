<!DOCTYPE html>
<html>
<head>
    <title>Log Dosyası</title>
</head>
<style>body {
    background-color: #f4f4f4;
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

h1 {
    text-align: center;
    padding: 20px;
    color: #333;
}

p {
    font-size: 18px;
    line-height: 1.6;
    color: #666;
    padding: 10px;
}
</style>
<body>
    <h1>Log Dosyası</h1>
    <?php
    $filename = "loglar.txt";
    if(file_exists($filename)){
        $file = fopen($filename, "r");
        while (($line = fgets($file)) !== false) {
            echo "<p>" . htmlspecialchars($line) . "</p>";
        }
        fclose($file);
    } else {
        echo "<p>Log dosyası bulunamadı.</p>";
    }
    ?>
</body>
</html>
