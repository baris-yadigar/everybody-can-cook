<?php
include 'aufrufe.php';
$speisen = @$_GET["speisen"];
$id = getIDByName($conn,$speisen);
?>
<!doctype html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" type="image/x-icon" href="../bilder/favicon.png">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/reset.css">
    <script defer src="../js/main.js"></script>
    <script defer src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
    <title><?php echo getNameByID($conn,$id);?></title>
</head>



<body>

<div class="second-page__container">
    <header class="second-header">
    <nav class="second-header_nav">
                <div class="nav-bar">
                    <img src="../bilder/Group%201102.svg" />
                </div>
                <ul class="second-header_ul">
                    <li class="second-header_list">
                        <a class="second-logo" href='../index.html'>
                            <img class="second-header_logo" src="../bilder/nav_logo.png" alt="">
                        </a>
                    </li>
                    <li class="second-header_list list-btn">
                        <a href="speisen.php" class="second-header_link breakfast-btn">
                            Alle Speisen
                        </a>
                        <span></span>
                    </li>
                    <li class="second-header_list list-btn">
                        <a href="speisen.php?kategorie=Frühstück" class="second-header_link breakfast-btn">
                            Frühstück
                        </a>
                        <span></span>
                    </li>
                    <li class="second-header_list list-btn">
                        <a href="speisen.php?kategorie=Mittagessen" class="second-header_link lunch-btn">
                            Mittagessen
                        </a>
                        <span></span>
                    </li>
                    <li class="second-header_list list-btn">
                        <a href="speisen.php?kategorie=Abendessen" class="second-header_link dinner-btn">
                            Abendessen
                        </a>
                        <span></span>
                    </li>
                    <li class="second-header_list ">
                        <div class="search-inner">
                            <img class="second-header_search " src="../bilder/search-icon.svg" alt="">
                        </div>
                    </li>
                </ul>
                <div class="search-container">
                    <form action="speisen.php" method="get">
                        <input class="search-input" type="search" name="s" placeholder="Bitte Suchbegriffe mit , trennen!">
                        <img class="input-close" src="../bilder/Close.svg" alt="">
                        <button class="search-btn" onclick="" type="submit">
                            <img src="../bilder/search-icon-black.svg" alt="">
                        </button>
                    </form>
                </div>
                <div id="google_translate_element"></div>
            </nav>
    </header>


    <section class="about">
        <div class="container">
            <div class="about-inner">
                <h1 class="about-title">
            <?php echo getNameByID($conn,$id);?>
                </h1>
            </div>
            <div class="about-picture">
                <div class="about-pic_content fade">
                    <img src="../bilder/<?php echo getImageByID($conn,$id,"bild2");?>" alt="">
                </div>
                <div class="about-pic_content fade">
                <img src="../bilder/<?php echo getImageByID($conn,$id,"bild3");?>" alt="">
                </div>
            </div>
            <p class="about-time">Dauer:

            <?php echo getDurationByID($conn,$id);?>



            </p>
            <div class="about-cooking">
                <h3 class="about-cooking_title">Zutaten:</h3>
                <?php echo getContentsByID($conn,$id);?>
            </div>
            <h2 class="about-text__title">Zubreitung:</h2>
            <div class="about-text">
            <ul>
                <?php echo getPreparationByID($conn,$id);?>
            </ul>
            </div>
        </div>
    </section>

</div>
<footer class="footer">
    <nav class="footer-nav">
        <ul class="footer-nav-ul">
            <li class="footer-list">
                <a href="imprint.html">
                    Impressum
                </a>
            </li>
            <li class="footer-list">
                <a href="tel:+0722962311">
                    <img src="../bilder/icons8-phone.png" alt="">
                    0722962311
                </a>
            </li>
            <li class="footer-list">
                Bahnhofstraße 52, 4050 Traun
            </li>
            <li class="footer-list">
                <a target="_blank" href="mailto:office@htltraun.at" class="footer-list-mail">
                    <img src="../bilder/mail.png" alt="">
                </a>
            </li>
            <li class="footer-list">
                <a target="_blank" href="https://www.facebook.com/htblatraun/" class="footer-list-fb">
                    <img src="../bilder/facebook.png" alt="">
                </a>
            </li>
            <li class="footer-list">
                <a target="_blank" href="https://www.instagram.com/svhtltraun/?hl=de" class="footer-list-fb">
                    <img src="../bilder/instagram.png" alt="">
                </a>
            </li>
            <li class="footer-list-youtube">
                <a target="_blank" href="https://www.youtube.com/channel/UCpjyc83ixJXBhkVHMt_mu6A?app=desktop"
                    class="footer-list-youtube">
                    <img src="../bilder/youtube.png" alt="">
                </a>
            </li>
        </ul>
    </nav>
</footer>
</body>
</html>
