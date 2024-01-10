<!DOCTYPE html>
<html>
<head>
    <title>Log Dosyası</title>
    <style>
        body {
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
            margin: 0;
        }

        p {
            font-size: 18px;
            line-height: 1.6;
            color: #666;
            padding: 10px;
        }

        .center-div {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh; 
            margin-inline-start: 20vh;
        }

        .entry-count {
            position: fixed; /* Yapıştırılan öğenin ekranın üzerinde kalmasını sağlar */
  top: 0; /* Ekranın en üstüne yerleştirir */
  left: 40%; /* Ekranın soluna yerleştirir */
  width: 100%; /* Genişlik ekran genişliği kadar olacaktır */
  background-color: #f1f1f1; /* İsteğe bağlı: Arka plan rengini belirleyebilirsiniz */
  padding: 10px; /* İsteğe bağlı: İçerikle arasında bir boşluk ekler */
  z-index: 1000; /* İsteğe bağlı: Diğer öğeler üzerinde görünürlüğü kontrol eder */
            font-size: 56px;
            color: rgb(0, 128, 255);
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="center-div">
        <div>
            <?php
            $filename = "loglar.txt";
            $entryCount = 0;

            if(file_exists($filename)){
                $file = fopen($filename, "r");

                while (($line = fgets($file)) !== false) {
                    echo "<p>" . htmlspecialchars($line) . "</p>";
                    $entryCount++;
                }

                fclose($file);
            } else {
                echo "<h1>Log dosyası bulunamadı.</h1>";
            }
            ?>
        </div>
        <div class="entry-count">
            <?php
            echo "Toplam $entryCount giriş";
            ?>
        </div>
    </div>
</body>
</html>
