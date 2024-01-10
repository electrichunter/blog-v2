<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>hakkında</title>
    <link rel="stylesheet" href="style1.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
    $(document).ready(function(){
      $(".btn").click(function(e){
        e.preventDefault();
        $.post("log_ip.php", { log_ip: true }, function() {
            window.location.href = "../project müzik eklendi 1.1/home.php";
        });
      });
    });
    </script>
</head>
<body>
    <section class="home">
      <div class="description">
        <h1 class="title">
          <span class="gradient-text">Known <Label></Label>Loop</span> Daima ileri
        </h1>
        <p class="paragraph">
            Known Loop, çeşitli alanlarda kendini geliştiren bir topluluktur. Topluluk, çeşitli konularda yazılar ve video paylaşarak bilgi ve deneyim paylaşmaktadır.  

            Topluluğun amacı,  insanların hayatını kolaylaştırmak için yeni fikirler üretmektir. Topluluğun vizyonu, bilginin toplumda daha fazla yaygınlaşması ve daha fazla insanın yararına olmasıdır.
        </p>
        <!--<form id="form" autocomplete="off">

          <input
            type="email"
            id="email-id"
            name="email_address"
            aria-label="email adress"
            placeholder=""
            required
            oninput="checkEmpty()" />-->
            <br><br>
            <a href="../project müzik eklendi 1.1/home.php" class="btn" aria-label="Yazılarımız">
              <span>Yazılarımız</span>
              <ion-icon name="arrow-forward-outline"></ion-icon>
            </a>
            
          
        </form>
      </div>

      <div class="users-color-container">
        <span class="item" style="--i: 1"></span>
        <img
          class="item"
          src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/274f29ce-0d3f-4ac2-a2aa-f9b7bd188b2a"
          style="--i: 2"
          alt="" />
        <span class="item" style="--i: 3"></span>
        <img
          class="item"
          src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/b8a14493-3d9f-4b9b-b93a-56d0bc7243e9"
          style="--i: 4"
          alt="" />

        <img
          class="item"
          src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/03e51e1e-9750-45a5-b75e-a1e341d4562a"
          style="--i: 10"
          alt="" />
        <span class="item" style="--i: 11"></span>
        <img class="item" src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/5eb50f89-3e5a-480e-860c-8d40d3ba9ffe" style="--i: 12" alt="" />
        <span class="item" style="--i: 5"></span>

        <span class="item" style="--i: 9"></span>
        <img class="item" src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/86c71a79-2efe-4567-8665-b1e5a1fd9735" style="--i: 8" alt="" />
        <span class="item" style="--i: 7"></span>
        <img class="item" src="https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/97ef9643-5202-41aa-80f0-ceeabccdd099" style="--i: 6" alt="" />
      </div>
    </section>







    




    
  </body>
</html>