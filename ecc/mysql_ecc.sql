-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 30, 2023 at 07:59 PM
-- Server version: 10.3.37-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kozmoska_ecc`
--

-- --------------------------------------------------------

--
-- Table structure for table `rezepte`
--

CREATE TABLE `rezepte` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `kurzinfo` varchar(255) DEFAULT NULL,
  `zeitdauer` varchar(255) DEFAULT NULL,
  `kategorie` varchar(255) DEFAULT NULL,
  `schlagwoerter` varchar(255) DEFAULT NULL,
  `bild` varchar(500) NOT NULL,
  `bild2` varchar(500) DEFAULT NULL,
  `bild3` varchar(500) DEFAULT NULL,
  `quelle` varchar(255) DEFAULT NULL,
  `sprache` varchar(255) DEFAULT 'de'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rezepte`
--

INSERT INTO `rezepte` (`id`, `name`, `kurzinfo`, `zeitdauer`, `kategorie`, `schlagwoerter`, `bild`, `bild2`, `bild3`, `quelle`, `sprache`) VALUES
(1, 'Menemen Eierspeise', 'Menemen ist eine türkische Eierspeise, die in der Regel zum Frühstück oder an Sommertagen gegessen wird.', '15 Minuten', 'Frühstück', 'eier;türkisch', 'menemen.jpg', 'z_menemen.jpg', 'menemen.jpg', 'Mama von Baris', NULL),
(2, 'Kuru Fasulye Eintopf aus weißen Bohnen', 'Kuru Fasulye Eintopf gilt als eines der türkischen Nationalgerichte und es gibt dieses Gericht nicht nur zuhause, sondern sehr häufig auch im Restaurant und an Imbiss-Ständen.', '30 Minuten', 'Abendessen', 'türkisch;nationalgericht;bohnen;suppe', 'kuru_fasulye.jpg', 'z_kuru_fasulye.jpg', 'kuru_fasulye.jpg', 'Mama von Baris', NULL),
(3, 'Tas Kebab Fleischeintopf', 'Das Tas Kebabi zeichnet sich durch größere Fleischstücke und einen eher fruchtigen Geschmack aus. Nicht zu verwechseln mit Döner Kebap.', '2 Stunden 10 Minuten', 'Mittagessen;Abendessen', 'kebap;türkisch;traditionell', 'tas_kebab.jpg', 'z_tas_kebab.jpg', 'tas_kebab.jpg', 'Mama von Baris', NULL),
(4, 'Linsensuppe', 'Linsensuppe ist eine weltweit bekannte Suppe aus gekochten Linsen, die je nach Rezept aus verschiedenfarbigen Linsen hergestellt und dick- oder dünnflüssig sein kann.', '35 Minuten', 'Mittagessen;Abendessen', 'suppe;linsen', 'linsensuppe.jpg', 'z_mercimek_corbasi.jpg', 'linsensuppe.jpg', 'Mama von Baris', NULL),
(5, 'Käsepfanne Kuymak', 'Kuymak - eine leckere Käsepfanne ist in der Türkei am schwarzen Meer sehr beliebt.', '30 Minuten', 'Frühstück;Mittagessen', 'einfach;lecker;türkisch; ', 'kuymak.jpg', 'z_kuymak.jpg', 'kuymak.jpg', 'Mama von Baris', NULL),
(6, 'Wokgemüse mit Hühnerfleisch', 'Unser beliebtes Rezept für Schnelles Wok-Gemüse mit Huhn und Reis', '30 Minuten', 'Mittagessen', 'gemüse;wok;reis', 'wok_gericht.jpg', 'wok_zutaten.jpg', 'wok_gericht.jpg', 'Mama von Simon', NULL),
(7, 'Thunfisch mit Nudeln', 'Ein schnelles und beliebtes Gericht sind diese Nudeln mit Thunfisch. Ein willkommenes Rezept für die schnelles Küche.', '20 Minuten', 'Mittagessen', 'thunfisch;pasta;schnell', 'thunfisch_mit_nudeln_gericht.jpg', 'thunfisch_mit_nudeln_zutaten.jpg', 'thunfisch_mit_nudeln_gericht.jpg', 'Freundin von Simon', NULL),
(8, 'Selbstgemachte Burger', 'Selbstgemachte Burger schmecken immer noch am besten. Wir meinen aber nicht nur selbst zusammengestellt, sondern wirklich komplett.', '1 Stunde', 'Abendessen', 'burger;gegrillt;fleisch', 'selbstgemachter_burger_gericht.png', 'selbstgemachter_burger_zutaten.jpg', 'selbstgemachter_burger_gericht.png', 'Mama von Simon', NULL),
(9, 'Reisfleisch mit Faschiertem', 'Das Rezept Reisfleisch mit Faschiertem ist eine etwas andere Art um Reisfleisch noch köstlicher zuzubereiten.', '20 Minuten', 'Mittagessen', 'reis;fleisch;paprika;', 'reis_mit_faschiertem_gericht.JPG', 'reis_mit_faschiertem_zutaten.JPG', 'reis_mit_faschiertem_gericht.JPG', 'Mama von Simon', NULL),
(10, 'Chili con Carne', 'Chili con Carne, oft kurz auch nur Chili ist die Bezeichnung eines scharfen Ragouts aus Fleisch und Chilischoten. Der Name des Gerichts bedeutet wörtlich Pfefferschoten mit Fleisch.', '1 Stunde 30 Minuten', 'Abendessen', 'fleisch;bohnen;gewürze;', 'chili_con.jpg', 'chili_con_carne_zutaten.jpg', 'chili_con.jpg', 'Freundin von Simon', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zubereitungsschritte`
--

CREATE TABLE `zubereitungsschritte` (
  `id` int(11) NOT NULL,
  `rezept_id` int(11) DEFAULT NULL,
  `schrittnummer` int(11) NOT NULL,
  `beschreibung` varchar(1000) NOT NULL,
  `sprache` varchar(255) DEFAULT 'de'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zubereitungsschritte`
--

INSERT INTO `zubereitungsschritte` (`id`, `rezept_id`, `schrittnummer`, `beschreibung`, `sprache`) VALUES
(100, 1, 1, 'Nachdem alle Peperoni und die Tomate gewaschen und geschnitten wurden, wird das Öl in die Pfanne gegossen und die Herdplatte auf die höchste Stufe eingestellt. Die Peperoni werden in die Pfanne gelegt.', NULL),
(101, 1, 2, 'Nachdem diese etwas gebraten wurden, werden die Tomaten in die Pfanne dazu gegeben. Danach wird die Hitze auf mittlere Stufe heruntergedreht.', NULL),
(102, 1, 3, 'Zum Schluss werden die Eier hinzugefügt. Guten Appetit!', NULL),
(103, 2, 1, 'Eine Nacht lang die Bohnen in der wassergefüllten Schüssel aufweichen lassen.', NULL),
(104, 2, 2, 'Am nächsten Tag die Bohnen in das Sieb gießen und waschen.', NULL),
(105, 2, 3, 'Das Fleisch und eine trockene Zwiebel würfelförmig hacken.', NULL),
(106, 2, 4, 'Ein halbes Wasserglas Öl in den Dampfkochtopf gießen. Die Zwiebel hinzufügen. Die Zwiebel so lange umrühren bis sie braten.', NULL),
(107, 2, 5, 'Dann das Fleisch hinzufügen. Solange das Fleisch gebraten wird, umrühren.', NULL),
(108, 2, 6, 'Darauf kommt ein Esslöffel Tomatenmark, ein kleiner Löffel Paprikamark, ein Esslöffel Salz und dann wird umgerührt. Zusätzlich kommt dann ein Liter heißes Wasser hinein.', NULL),
(109, 2, 7, 'Den Dampfkochtopf schließen und 30 Minuten lang auf höchster Stufe kochen. Guten Appetit!', NULL),
(110, 3, 1, 'Das Fleisch würfelförmig hacken. Die Herdplatte auf maximale Stufe einstellen. Das Fleisch in den Topf geben und rühren bis das Fleisch sein Wasser verliert. Das Öl drauf gießen.', NULL),
(111, 3, 2, 'Die Herdplatte auf mittlere Stufe einstellen. Die Spitzpaprikas würfelförmig schneiden. Sobald das Fleisch rot ist, die Paprikas draufgeben.', NULL),
(112, 3, 3, 'Die Melanzani schälen, in Würfel schneiden und in eine Schüssel mit Wasser und etwas Salz gefüllt, geben. Die Kartoffel schälen, würfelförmig schneiden und in den Topf geben und eine Minute rühren.', NULL),
(113, 3, 4, 'Das Tomatenmark, Paprikamark, Schwarzer Pfeffer und Salz hinzufügen. Die Melanzani, die sich in der Schüssel befindet, in das Sieb gießen und waschen, dann in den Topf geben.', NULL),
(114, 3, 5, 'Die Tomate waschen, würfelförmig hacken, in den Topf geben und zwei Minuten rühren. Darauf 3/5 Wasserglas heißes Wasser hinzufügen. 35 Minuten kochen lassen. Guten Appetit!', NULL),
(115, 4, 1, 'Das Öl in den Topf gießen. Die Herdplatte auf mittlere Stufe einstellen. Die Zwiebel, die Knoblauchzehe, die Kartoffel schälen, waschen, würfelförmig hacken und alles in den Topf hineingeben.', NULL),
(116, 4, 2, 'Die Linsen in einer großen Schüssel waschen, dann in das Sieb gießen und in den Topf dazu geben. Zwei Mal umrühren. Danach Tomatenmark, Chilipulver und Salz hinzufügen. Wieder zwei Mal umrühren. Drauf kommen drei Wassergläser heißes Wasser. Zehn Minuten kochen lassen.', NULL),
(117, 4, 3, 'Nachdem alle Zutaten weich sind, mit einem Pürierstab pürieren. Warten, bis das Essen kocht. Guten Appetit!', NULL),
(118, 5, 1, 'Die Herdplatte auf mittlere Stufe einstellen. Die Butter in die Pfanne geben und rühren bis sie schmilzt. Die zwei Wassergläser mit Wasser in die Pfanne gießen.', NULL),
(119, 5, 2, 'Feines Maismehl in die Pfanne geben und rühren bis es dunkel wird.', NULL),
(120, 5, 3, 'Die Herdplatte auf niedrige Stufe einstellen. Den Cheddar Käse und das Salz hinzufügen, warten, bis es schmilzt. Die Herdplatte ausschalten. Guten Appetit!', NULL),
(121, 6, 1, 'Das Gemüse und rote Zwiebeln in gleich große Stücke schneiden, dann das Öl in der WOK-Pfanne erhitzen und das Gemüse mit dem Hühnerfleisch ca. 5 Minuten beim ständigen Wenden anbraten.', NULL),
(122, 6, 2, 'Danach Soja Sauce, Pfeffer, Salz, WOK-Gewürz beliebig abschmecken. 2-3 Minuten in der WOK-Pfanne zugedeckt ziehen lassen.', NULL),
(123, 6, 3, 'Reis nach der Anleitung auf der Verpackung extra im Topf bzw. Reiskocher extra zubereiten. Guten Appetit!', NULL),
(124, 7, 1, 'Zerkleinerte Zwiebeln in der Pfanne im Öl goldbraun anrösten, dann den Thunfisch, die geschnittene Paprika hinzufügen und 2-3 min. andünsten lassen.', NULL),
(125, 7, 2, 'Als nächstes passierte Tomaten, gepresste Knoblauchzehen mit reinmischen. Kurz aufkochen und mit Salz, Prise Zucker, Pfeffer Suppengewürz noch abschmecken.', NULL),
(126, 7, 3, 'Zum Schluss mit Rucola und Parmesan im Teller garnieren. Guten Appetit!', NULL),
(127, 8, 1, 'Das faschierte Rindfleisch mit dem Kontanyi Gewürz, Salz würzen und gut miteinander verkneten. Anschließend mit den Händen Patties formen.', NULL),
(128, 8, 2, 'Die Fleischlaibchen in einer Pfanne mit wenig Öl ausbraten lassen.', NULL),
(129, 8, 3, 'Für das Dressing den Rahmjoghurt, Honig, Senf, Zitronensaft, Knoblauchpulver, Salz und Pfeffer gut miteinander vermischen.', NULL),
(130, 8, 4, 'Im Anschluss mit Salat, Zwiebeln und Tomaten Burger beliebig zubereiten und belegen. Guten Appetit!', NULL),
(131, 9, 1, 'Fein geschnittenen Zwiebel in heißem Öl anrösten, Paprika in kleine Würfel schneiden kurz mit anrösten,  Faschiertes hinzugeben und scharf anrösten.', NULL),
(132, 9, 2, 'Dann die Knoblauch fein geschnitten hinzufügen und weitere paar Minuten braten.', NULL),
(133, 9, 3, 'Nun das Tomatenmark, die Chiliflocken sowie das Paprikapulver zum Faschierten geben, alles miteinander vermischen und bei geringer Hitze etwa 10 Minuten weiterbraten.', NULL),
(134, 9, 4, 'Jetzt mit Salz, Pfeffer und nach Bedarf nochmals mit Paprikapulver würzen.', NULL),
(135, 9, 5, 'Den Reis nach Grundrezept zubereiten. Faschiertes Mischung zum Reis geben, gut untermischen und wenn notwendig mit Salz und Pfeffer abschmecken. Guten Appetit!', NULL),
(136, 10, 1, 'Die klein geschnittenen Zwiebeln in der Pfanne mit zwei Löffeln Öl anrösten.', NULL),
(137, 10, 2, 'Dann das Fleisch hinzufügen und auch kurz anrösten. Mit den passierten Tomaten ablöschen. Knoblauchzehen klein schneiden und mit roten Bohnen sowie Zuckermais zu der Soße hinzumischen.', NULL),
(138, 10, 3, 'Gewürze hinzufügen und alles nochmal für ca. 15 Minuten sanft köcheln lassen. Guten Appetit!', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zutaten`
--

CREATE TABLE `zutaten` (
  `id` int(11) NOT NULL,
  `rezept_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `prioritaet` int(11) DEFAULT NULL,
  `menge` float DEFAULT NULL,
  `einheit` varchar(255) DEFAULT NULL,
  `anmerkung` varchar(255) DEFAULT NULL,
  `sprache` varchar(255) DEFAULT 'de'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zutaten`
--

INSERT INTO `zutaten` (`id`, `rezept_id`, `name`, `prioritaet`, `menge`, `einheit`, `anmerkung`, `sprache`) VALUES
(1, 1, 'Grüne Peperoni', 1, 3, 'Stück', '', NULL),
(2, 1, 'Eier', 1, 3, 'Stück', '', NULL),
(3, 1, 'Tomate', 1, 1, 'Stück', '', NULL),
(4, 1, 'Öl', 1, 200, 'ml', '', NULL),
(5, 1, 'Salz', 1, 1, 'TL', '', NULL),
(6, 2, 'Tomatenmark', 1, 1, 'EL', '', NULL),
(7, 2, 'Rindfleisch', 1, 200, 'g', '', NULL),
(8, 2, 'Zwiebel', 1, 1, 'Stück', '', NULL),
(9, 2, 'Weiße Bohnen', 1, 2, 'Schüsseln', '', NULL),
(10, 2, 'Paprikamark', 1, 1, 'TL', '', NULL),
(11, 2, 'Salz', 1, 1, 'EL', '', NULL),
(12, 2, 'Öl', 1, 100, 'ml', '', NULL),
(13, 2, 'Butter', 1, 2, 'EL', '', NULL),
(14, 3, 'Öl', 1, 2, 'EL', '', NULL),
(15, 3, 'Rindfleisch', 1, 200, 'g', '', NULL),
(16, 3, 'Tomatenmark', 1, 1, 'EL', '', NULL),
(17, 3, 'Paprikamark', 1, 1, 'TL', '', NULL),
(18, 3, 'Chillipulver', 1, 1, 'EL', '', NULL),
(19, 3, 'Schwarzer Pfeffer', 1, 1, 'TL', '', NULL),
(20, 3, 'Kartoffel', 1, 2, 'Stück', '', NULL),
(21, 3, 'grüne Spitzpaprika', 1, 2, 'Stück', '', NULL),
(22, 3, 'Melanzani', 1, 1, 'Stück', '', NULL),
(23, 3, 'Tomate', 1, 1, 'Stück', '', NULL),
(24, 4, 'Linsen', 1, 200, 'g', '', NULL),
(25, 4, 'Öl', 1, 2, 'EL', '', NULL),
(26, 4, 'Tomatenmark', 1, 1, 'EL', '', NULL),
(27, 4, 'Chillipulver', 1, 1, 'TL', '', NULL),
(28, 4, 'Salz', 1, 1, 'EL', '', NULL),
(29, 4, 'Kartoffel', 1, 1, 'Stück', '', NULL),
(30, 4, 'Zwiebel', 1, 1, 'Stück', '', NULL),
(31, 4, 'Knoblauchzehe', 1, 1, 'Stück', '', NULL),
(32, 5, 'Butter', 1, 2, 'EL', '', NULL),
(33, 5, 'Maismehl', 1, 3, 'EL', '', NULL),
(34, 5, 'Wasser', 1, 225, 'ml', '', NULL),
(35, 5, 'Cheddar-Käse', 1, 150, 'g', 'oder Käse Ihrer Wahl', NULL),
(36, 5, 'Salz', 1, 1, 'TL', '', NULL),
(37, 6, 'Karotten', 1, 2, 'Stück', '', NULL),
(38, 6, 'Öl', 1, 3, 'EL', '', NULL),
(39, 6, 'Paprikas', 1, 2, 'Stück', '', NULL),
(40, 6, 'Zucchini', 1, 1, 'Stück', '', NULL),
(41, 6, 'Soja Sauce', 1, 50, 'ml', '', NULL),
(42, 6, 'kleine Rote Zwiebeln', 1, 3, 'Stück', '', NULL),
(43, 6, 'Röschen Broccoli', 1, 4, 'Stück', '', NULL),
(44, 6, 'Wok-Gewürz', 1, NULL, NULL, 'nach Bedarf', NULL),
(45, 6, 'Reis', 1, 150, 'g', '', NULL),
(46, 6, 'Hühnerfleisch', 1, 300, 'g', 'Anstelle von Hühnerfleisch kann auch eine andere Fleischsorte oder die vegetarische Variante Tofu verwendet werden.', NULL),
(47, 7, 'Rote Zwiebeln', 1, 2, 'Stück', '', NULL),
(48, 7, 'Salz', 1, NULL, NULL, 'nach Bedarf', NULL),
(49, 7, 'Pfeffer', 1, NULL, NULL, 'nach Bedarf', NULL),
(50, 7, 'Zucker', 1, 1, 'Prise', '', NULL),
(51, 7, 'Gemüse Suppe Gewürz', 1, 2, 'TL', '', NULL),
(52, 7, 'Knoblauchzehen', 1, 2, 'Stück', '', NULL),
(53, 7, 'Öl', 1, 4, 'EL', '', NULL),
(54, 7, 'Paprika', 1, 1, 'Stück', 'nach Bedarf', NULL),
(55, 7, 'Tomatensouce', 1, 400, 'ml', '', NULL),
(56, 7, 'Thunfisch', 1, 200, 'g', '', NULL),
(57, 7, 'Rucola', 1, NULL, 'Zum Garnieren', '', NULL),
(58, 7, 'geriebener Parmesan', 1, NULL, 'Zum Garnieren', '', NULL),
(59, 8, 'Faschiertes Rindfleisch', 1, 300, 'g', '', NULL),
(60, 8, 'Kontanyi faschiertes Gewürz', 1, 3, 'EL', '', NULL),
(61, 8, 'Salz', 1, NULL, NULL, 'nach Bedarf', NULL),
(62, 8, 'Pfeffer', 1, NULL, NULL, 'nach Bedarf', NULL),
(63, 8, 'Tomaten', 1, 2, 'Stück', '', NULL),
(64, 8, 'Rahmjoghurt nature', 1, 180, 'g', '', NULL),
(65, 8, 'flüssiger Honig', 1, 4, 'TL', '', NULL),
(66, 8, 'Senf, grobkörnig', 1, 3, 'TL', 'nach Bedarf', NULL),
(67, 8, 'Zitronensaft', 1, 4, 'TL', '', NULL),
(68, 8, 'Knoblauchpulver', 1, 1, 'TL', '', NULL),
(69, 8, 'Salz', 1, 1, 'TL', '', NULL),
(70, 8, 'Pfeffer', 1, 0.5, 'TL', '', NULL),
(71, 8, 'Salatblätter', 1, 4, 'Stück', '', NULL),
(72, 8, 'rote Zwiebeln', 1, 1, 'Stück', '', NULL),
(73, 8, 'Burgerbrötchen', 1, 3, 'Stück', '', NULL),
(74, 9, 'Faschiertes gemischt', 1, 500, 'g', '', NULL),
(75, 9, 'Zwiebel', 1, 2, 'Stück', '', NULL),
(76, 9, 'Pflanzenöl', 1, 2, 'EL', '', NULL),
(77, 9, 'Paprika', 1, 2, 'Stück', '', NULL),
(78, 9, 'Tomatenmark', 1, 2, 'TL', '', NULL),
(79, 9, 'Langkornreis', 1, 150, 'g', '', NULL),
(80, 9, 'passierte Tomaten', 1, 350, 'g', '', NULL),
(81, 9, 'Knoblauchzehen', 1, 2, 'Stück', '', NULL),
(82, 9, 'Paprikapulver', 1, 1, 'TL', '', NULL),
(83, 9, 'Chilipulver', 1, 1, 'Prise', '', NULL),
(84, 9, 'Salz', 1, NULL, NULL, 'nach Bedarf', NULL),
(85, 9, 'Pfeffer', 1, NULL, NULL, 'nach Bedarf', NULL),
(86, 9, 'Reis', 1, 150, 'g', '', NULL),
(87, 10, 'Öl', 1, 2, 'EL', '', NULL),
(88, 10, 'Faschiertes gemischt', 1, 500, 'g', '', NULL),
(89, 10, 'Zwiebeln', 1, 3, 'Stück', '', NULL),
(90, 10, 'Knoblauchzehen', 1, 4, 'Stück', '', NULL),
(91, 10, 'passierte Tomaten', 1, 500, 'ml', '', NULL),
(92, 10, 'Kotanyi Chili con Carne Gewürz', 1, 1, 'EL', '', NULL),
(93, 10, 'rote Bohnen', 1, 400, 'g', '', NULL),
(94, 10, 'Zuckermais', 1, 200, 'g', '', NULL),
(95, 10, 'Salz', 1, 1, 'TL', '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rezepte`
--
ALTER TABLE `rezepte`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zubereitungsschritte`
--
ALTER TABLE `zubereitungsschritte`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rezept_id` (`rezept_id`);

--
-- Indexes for table `zutaten`
--
ALTER TABLE `zutaten`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rezept_id` (`rezept_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rezepte`
--
ALTER TABLE `rezepte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `zubereitungsschritte`
--
ALTER TABLE `zubereitungsschritte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `zutaten`
--
ALTER TABLE `zutaten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `zubereitungsschritte`
--
ALTER TABLE `zubereitungsschritte`
  ADD CONSTRAINT `zubereitungsschritte_ibfk_1` FOREIGN KEY (`rezept_id`) REFERENCES `rezepte` (`id`);

--
-- Constraints for table `zutaten`
--
ALTER TABLE `zutaten`
  ADD CONSTRAINT `zutaten_ibfk_1` FOREIGN KEY (`rezept_id`) REFERENCES `rezepte` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
