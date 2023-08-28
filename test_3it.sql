-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Pon 28. srp 2023, 11:13
-- Verze serveru: 10.4.28-MariaDB
-- Verze PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `test_3it`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `lidi`
--

CREATE TABLE `lidi` (
  `id` int(11) NOT NULL,
  `jmeno` varchar(255) NOT NULL,
  `prijmeni` varchar(255) NOT NULL,
  `registrace` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

--
-- Vypisuji data pro tabulku `lidi`
--

INSERT INTO `lidi` (`id`, `jmeno`, `prijmeni`, `registrace`) VALUES
(0, 'Ruslan', 'Koutný', '2009-07-27'),
(1, 'Kristina', 'Dokoupilová', '2008-06-29'),
(2, 'Ester', 'Valentová', '2008-05-01'),
(3, 'Oleg', 'Nováčková', '2009-10-07'),
(4, 'Julius', 'Nguyen', '2008-09-04'),
(5, 'Ivona', 'Hrubý', '2008-07-15'),
(6, 'Radoslav', 'Vojtěch', '2009-06-05'),
(7, 'Vladimír', 'Urbánek', '2009-03-21'),
(8, 'Patrik', 'Hejl', '2009-07-17'),
(9, 'Judita', 'Janík', '2009-03-25'),
(10, 'Matěj', 'Janků', '2009-09-18'),
(11, 'Jindra', 'Oláhová', '2008-03-16'),
(12, 'Vendulka', 'Peštová', '2008-08-28'),
(13, 'Nicol', 'Petráková', '2009-04-30'),
(14, 'Čestmír', 'Chvátalová', '2008-12-17'),
(15, 'Julius', 'Jirák', '2008-08-29'),
(16, 'Anton', 'Bajerová', '2008-08-03'),
(17, 'Alexander', 'Vaníčková', '2008-12-15'),
(18, 'Lenka', 'Kociánová', '2009-03-21'),
(19, 'David', 'Křížová', '2009-09-29'),
(20, 'Karol', 'Beránková', '2008-02-08'),
(21, 'Andrej', 'Smejkalová', '2008-03-12'),
(22, 'Irina', 'Vlasák', '2009-01-09'),
(23, 'Radana', 'Krčmář', '2008-08-05'),
(24, 'Bohdana', 'Lukešová', '2009-12-19'),
(25, 'Ludvík', 'Dočekal', '2009-11-18'),
(26, 'Bohumila', 'Buchta', '2009-12-12'),
(27, 'Ruslan', 'Klementová', '2009-09-21'),
(28, 'Mariana', 'Brabcová', '2008-09-25'),
(29, 'Drahoslav', 'Plachý', '2009-08-20'),
(30, 'Otilie', 'Dolejší', '2009-11-26'),
(31, 'Josef', 'Štěrbová', '2009-10-25'),
(32, 'Gerhard', 'Boušková', '2008-07-15'),
(33, 'Elena', 'Korbelová', '2008-07-24'),
(34, 'Václava', 'Benda', '2009-02-04'),
(35, 'Valérie', 'Matoušová', '2009-08-29'),
(36, 'Magdalena', 'Houšková', '2009-11-29'),
(37, 'Mikuláš', 'Dušek', '2008-08-15'),
(38, 'Andrej', 'Koláček', '2009-01-12'),
(39, 'Martina', 'Hermanová', '2009-07-19'),
(40, 'Petra', 'Hendrychová', '2008-03-26'),
(41, 'Eliška', 'Heřmanová', '2008-08-28'),
(42, 'Lea', 'Stehlík', '2009-10-03'),
(43, 'Otilie', 'Lorenc', '2009-07-31'),
(44, 'Lidmila', 'Tóth', '2009-09-10'),
(45, 'Barbara', 'Němečková', '2009-08-06'),
(46, 'Milada', 'Ježek', '2009-08-28'),
(47, 'Ľubomír', 'Šimek', '2009-11-29'),
(48, 'Mikuláš', 'Smola', '2008-11-28'),
(49, 'Rostislav', 'Zemánková', '2009-11-22'),
(50, 'Lyubov', 'Zouharová', '2008-04-18'),
(51, 'Beáta', 'Bartošková', '2008-10-01'),
(52, 'Jonáš', 'Poláchová', '2008-03-24'),
(53, 'Yaroslav', 'Šípková', '2009-05-16'),
(54, 'Adriana', 'Fialová', '2008-12-07'),
(55, 'Magdaléna', 'Šebek', '2009-10-18'),
(56, 'Cyril', 'Cihlář', '2008-09-07'),
(57, 'Žofie', 'Zach', '2009-02-28'),
(58, 'Lada', 'Michalová', '2009-04-24'),
(59, 'Nicola', 'Kocián', '2009-07-09'),
(60, 'Ján', 'Michálková', '2008-08-27'),
(61, 'Radek', 'Barták', '2009-11-04'),
(62, 'Dorota', 'Stuchlíková', '2009-11-01'),
(63, 'Drahomíra', 'Kroupová', '2008-05-21'),
(64, 'Sebastian', 'Siváková', '2009-12-22'),
(65, 'Valentýna', 'Hrabalová', '2008-04-13'),
(66, 'Volodymyr', 'Frank', '2009-04-23'),
(67, 'Marek', 'Hrůza', '2009-07-23'),
(68, 'Radka', 'Černíková', '2008-07-04'),
(69, 'Miloslava', 'Balcar', '2009-07-14'),
(70, 'Věra', 'Mužík', '2008-09-22'),
(71, 'Karolína', 'Linhartová', '2008-08-27'),
(72, 'Pavlína', 'Drábková', '2009-09-18'),
(73, 'Dobroslava', 'Černík', '2008-03-14'),
(74, 'Alexander', 'Kubíčková', '2008-03-30'),
(75, 'Romana', 'Spáčil', '2008-11-28'),
(76, 'Galina', 'Ambrož', '2008-02-22'),
(77, 'Bohuslava', 'Brázdová', '2009-12-25'),
(78, 'Patricie', 'Skála', '2009-07-11'),
(79, 'Linda', 'Petráková', '2008-09-06'),
(80, 'Ivan', 'Slováková', '2009-11-02'),
(81, 'Viktor', 'Machová', '2009-02-18'),
(82, 'Vladimír', 'Šimková', '2009-08-10'),
(83, 'Emília', 'Burian', '2008-08-25'),
(84, 'Miloslav', 'Červinka', '2008-03-28'),
(85, 'Vít', 'Kopeček', '2009-04-26'),
(86, 'Martina', 'Šťastný', '2009-09-17'),
(87, 'Sára', 'Drábek', '2009-10-12'),
(88, 'Marek', 'Váchová', '2008-07-11'),
(89, 'Ivan', 'Březinová', '2008-03-21'),
(90, 'Jiřina', 'Polách', '2008-05-10'),
(91, 'Halina', 'Dudková', '2008-04-10'),
(92, 'Zoltán', 'Hrušková', '2008-12-07'),
(93, 'Krista', 'Hudcová', '2009-03-01'),
(94, 'Jitka', 'Janečková', '2008-03-15'),
(95, 'Valerie', 'Fojtíková', '2009-03-31'),
(96, 'Denis', 'Hladký', '2008-04-17'),
(97, 'Kristina', 'Samková', '2009-04-11'),
(98, 'Karla', 'Komárek', '2009-06-09'),
(99, 'Bohdana', 'Bendová', '2008-06-21');

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `lidi`
--
ALTER TABLE `lidi`
  ADD UNIQUE KEY `id` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
