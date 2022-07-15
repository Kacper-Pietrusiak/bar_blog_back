-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 15 Lip 2022, 18:54
-- Wersja serwera: 10.4.21-MariaDB
-- Wersja PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `bar_blog`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `posts`
--

CREATE TABLE `posts` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ingredients` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `createdAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `posts`
--

INSERT INTO `posts` (`id`, `title`, `img`, `text`, `ingredients`, `createdAt`) VALUES
('1ae93837-1f31-4abb-91c9-1fea05ce6fbf', 'Aperol Spritz', 'aperol_spritz.png', 'Ile barów świata, tyle wariacji na punkcie tego drinka. Najczęściej spotykanym przepisem jest jednak ten, którego proporcje łatwo jest zapamiętać: 3 części Prosecco, 2 części Aperol i 1 część wody gazowanej. Do kieliszka od wina wypełnionego lodem wlewamy Prosecco i Aperol, mieszamy delikatnie i dolewamy na wierzch wodę gazowaną. Dekorujemy kawałkiem pomarańczy. Oryginalny przepis możemy oczywiście modyfikować łącząc składniki drinka w równych proporcjach lub w takich jakie najlepiej nam odpowiadają. Ciekawym jest serwowanie Aperol Spritz z długim paskiem zielonego ogórka, który dodatkowo dodaje świeżości do naszego drinka.', '3 oz Prossecco, 2 oz Aperol, 1 oz sparkling water', '2022-07-15'),
('1b45e6e2-48ff-424c-9630-5e920f618729', 'Margarita', 'margarita.png', 'Z jednej strony jest orzeźwiający, z drugiej zaś energetyczny. Wprawy wymaga umiejętność zbalansowania tych smaków tak, by koktajl nie był ani za słodki, ani za kwaśny. Gorycz, jeżeli jest zbyt wyczuwalna, zazwyczaj jest wynikiem użycia sztucznych, kwasowych substytutów świeżej cytryny czy limonki. Jednak najpoważniejszym problemem jest nieumiejętne użycie soli. Margaritę pijam czasem przez gruboziarnistą sól przyklejoną do zewnętrznego rantu kieliszka. Nie wolno dopuścić żeby sól znalazła się po wewnętrznej stronie szkła, gdyż spowoduje to, iż cały drink będzie słony i nie do wypicia. Druga kwestia jest taka, że nie wszyscy przepadają za słoną dekoracją.', '30 ml silver tequila, 30 ml cointreau, 15 ml lime juice, 15 ml lemon juice , 15ml simple syrop', '2022-07-15'),
('65264618-fea1-4295-b96a-a8dbdb4c7854', 'MAI TAI', 'mai_tai.png', 'Mój-Bar\nMójBar\nJuż sama nazwa koktajlu wskazuje na to, że na pewno nam zasmakuje – Maita’i po tahitańsku oznacza po prostu dobry. Możemy spotkać się z różnymi pisowniami, ale zapewniamy, że zawsze będzie to ten sam, przepyszny koktajl na bazie rumu. Mai Tai zyskał popularność na przełomie lat 50 i 60 XX wieku i można było go spotkać w prawie każdym lokalu, który chociaż po części.\nMojito to kolejny nieskomplikowany koktajl do przygotowania którego potrzebne będą nieliczne składniki: rum, mięta, limeta, cukier i woda sodowa. Rzadko który trafimy na tak orzeźwiający drink jak mojito. Kompozycja ta została opracowana na Kubie i mniej więcej w latach 80-tych stała się niezwykle popularna na całym świecie. Współcześnie mojito to jeden z najmodniejszych tropikalnych drinków.\n\nWe wspomnianym koktajlu mięta i sok z limety podkreślają smak rumu. Jeśli chcemy zrobić wyjątkowo pyszne mojito możemy sięgnąć po którąś z ekskluzywnych marek tego alkoholu np. po Cruzan czy Appleton. Warto w tym miejscu zauważyć, że ogólnie rzecz biorąc, do robienia drinków powinno się używać rumu dobrej jakości.', '40 ml gold rum, 10 ml grand marnier, 20 ml lime juice, 10 ml orshard syrop', '2022-07-15'),
('9bf08c52-b70b-4d6a-9536-9e58971e5d0c', 'Mojito (Mohito)', 'mohito.png', 'Mojito to kolejny nieskomplikowany koktajl do przygotowania którego potrzebne będą nieliczne składniki: rum, mięta, limeta, cukier i woda sodowa. Rzadko który trafimy na tak orzeźwiający drink jak mojito. Kompozycja ta została opracowana na Kubie i mniej więcej w latach 80-tych stała się niezwykle popularna na całym świecie. Współcześnie mojito to jeden z najmodniejszych tropikalnych drinków.\n\nMojito to kolejny nieskomplikowany koktajl do przygotowania którego potrzebne będą nieliczne składniki: rum, mięta, limeta, cukier i woda sodowa. Rzadko który trafimy na tak orzeźwiający drink jak mojito. Kompozycja ta została opracowana na Kubie i mniej więcej w latach 80-tych stała się niezwykle popularna na całym świecie. Współcześnie mojito to jeden z najmodniejszych tropikalnych drinków.\n\nWe wspomnianym koktajlu mięta i sok z limety podkreślają smak rumu. Jeśli chcemy zrobić wyjątkowo pyszne mojito możemy sięgnąć po którąś z ekskluzywnych marek tego alkoholu np. po Cruzan czy Appleton. Warto w tym miejscu zauważyć, że ogólnie rzecz biorąc, do robienia drinków powinno się używać rumu dobrej jakości.', '40 ml light rum, 20 ml simple syrop, 2 parts of lime, 6 leafes of mint, sparkling water', '2022-07-15');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` int(30) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL,
  `type` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
