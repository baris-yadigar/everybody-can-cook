<?php
include 'aufrufe.php';
$kategorie = @$_GET["kategorie"];
$search = @$_GET["s"];
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
    <title>Alle Speisen</title>
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
    <section class="food">
        <div class="container">
            <ul class="food-inner">
                


            <?php
            if (!isset($search) || $search == null) {
                if (!isset($kategorie) || $kategorie == null) {
                    getAllFoods($conn);
                }else{
                    getFoodsByCategory($conn, $kategorie);
                }
            } else {
                getFoodsBySearch($conn, $search);
            }
            ?>


            </ul>
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
