-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 29, 2025 at 06:51 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `contact`
--
CREATE DATABASE IF NOT EXISTS `contact` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `contact`;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `idcontact` int(5) NOT NULL,
  `nom` varchar(20) DEFAULT NULL,
  `adresse` varchar(30) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  `commentaires` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`idcontact`, `nom`, `adresse`, `email`, `url`, `commentaires`) VALUES
(1, 'pierre', 'beau bassin', 'pierre@gmail.com', 'www.pierre.org', 'en tête de liste'),
(2, 'jean', 'curepipe', 'jean@gmail.com', 'www.jean.net', 'à l\'école'),
(3, 'toto', 'port louis', 'toto@kmail.com', 'www.toto.org', 'en tçtétê en cours'),
(4, 'pascal', 'vacoas', 'pascal@jmail.com', 'www.pascal.org', 'îiou é '),
(5, 'titi', 'choisy', 'titi@jmail.org', 'www.titi.net', 'testing database'),
(6, 'Anwell', 'Quatres Bornes', 'anwell@gmail.com', 'anwell@gmail.com', 'Ok c fait'),
(7, '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`idcontact`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `idcontact` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `contacts`
--
CREATE DATABASE IF NOT EXISTS `contacts` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `contacts`;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `contact_db`
--
CREATE DATABASE IF NOT EXISTS `contact_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `contact_db`;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `livredor`
--
CREATE DATABASE IF NOT EXISTS `livredor` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `livredor`;

-- --------------------------------------------------------

--
-- Table structure for table `guestbook`
--

CREATE TABLE `guestbook` (
  `guestid` int(5) NOT NULL,
  `name` varchar(15) DEFAULT NULL,
  `adresse` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `url` varchar(40) DEFAULT NULL,
  `commentaires` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `guestbook`
--

INSERT INTO `guestbook` (`guestid`, `name`, `adresse`, `email`, `url`, `commentaires`) VALUES
(1, '', '', '', '', ''),
(2, 'Antso', 'Road royal', 'antsolalaina@gmail.com', 'dimby', 'ok');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guestbook`
--
ALTER TABLE `guestbook`
  ADD PRIMARY KEY (`guestid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guestbook`
--
ALTER TABLE `guestbook`
  MODIFY `guestid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `payroll_system`
--
CREATE DATABASE IF NOT EXISTS `payroll_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `payroll_system`;

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'AC',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `code`, `name`, `status`, `created_at`) VALUES
(1, '00004', 'BMOI', 'AC', '2025-10-01 06:12:08'),
(2, '0005', 'MCB', 'AC', '2025-10-01 06:12:08'),
(3, '0120', 'MyBank', 'AC', '2025-10-01 06:12:08'),
(4, 'CGM', 'CGM', 'AC', '2025-10-01 06:12:08');

-- --------------------------------------------------------

--
-- Table structure for table `calendar_weeks`
--

CREATE TABLE `calendar_weeks` (
  `id` int(11) NOT NULL,
  `week_number` int(11) NOT NULL,
  `yr_wk` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yr_mth_prod` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yr_mth_pay` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'Open',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `calendar_weeks`
--

INSERT INTO `calendar_weeks` (`id`, `week_number`, `yr_wk`, `year`, `yr_mth_prod`, `yr_mth_pay`, `status`, `created_at`) VALUES
(1, 1, '202501', '2025', '202501', '202501', 'Open', '2025-10-01 06:12:08'),
(2, 2, '202502', '2025', '202501', '202501', 'Open', '2025-10-01 06:12:08'),
(3, 3, '202503', '2025', '202501', '202501', 'Open', '2025-10-01 06:12:08'),
(4, 4, '202504', '2025', '202501', '202501', 'Open', '2025-10-01 06:12:08'),
(5, 5, '202505', '2025', '202501', '202501', 'Open', '2025-10-01 06:12:08'),
(6, 6, '202506', '2025', '202502', '202502', 'Open', '2025-10-01 06:12:08'),
(7, 7, '202507', '2025', '202502', '202502', 'Open', '2025-10-01 06:12:08'),
(8, 8, '202508', '2025', '202502', '202502', 'Open', '2025-10-01 06:12:08'),
(9, 9, '202509', '2025', '202502', '202502', 'Open', '2025-10-01 06:12:08'),
(10, 10, '202510', '2025', '202503', '202503', 'Open', '2025-10-01 06:12:08'),
(11, 11, '202511', '2025', '202503', '202503', 'Open', '2025-10-01 06:12:08'),
(12, 12, '202512', '2025', '202503', '202503', 'Open', '2025-10-01 06:12:08'),
(13, 13, '202513', '2025', '202503', '202503', 'Open', '2025-10-01 06:12:08'),
(14, 14, '202514', '2025', '202503', '202503', 'Open', '2025-10-01 06:12:08');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'ACTIVE',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `code`, `name`, `status`, `created_at`) VALUES
(1, '123', 'test123', 'ACTIVE', '2025-10-01 06:12:08'),
(2, '234', 'test56', 'ACTIVE', '2025-10-01 06:12:08'),
(3, 'CPY1', 'Company 1', 'ACTIVE', '2025-10-01 06:12:08'),
(4, 'CPY2', 'Company 2', 'ACTIVE', '2025-10-01 06:12:08'),
(5, 'CPY3', 'test', 'ACTIVE', '2025-10-01 06:12:08');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(11) NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'ACTIVE',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lookup_codes`
--

CREATE TABLE `lookup_codes` (
  `id` int(11) NOT NULL,
  `category` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_groups`
--

CREATE TABLE `pay_groups` (
  `id` int(11) NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frequence` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_sal` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pay_groups`
--

INSERT INTO `pay_groups` (`id`, `code`, `description`, `level`, `frequence`, `basic_sal`, `created_at`) VALUES
(1, 'TP', 'Temporaire', 'L3', 'MONTHLY', 'INDIVIDUAL', '2025-10-01 06:12:08'),
(2, 'FW', 'Factory-Worker', 'L3', 'MONTHLY', 'INDIVIDUAL', '2025-10-01 06:12:08'),
(3, 'TA', 'Temporaire Antsirabé', 'L3', 'MONTHLY', 'INDIVIDUAL', '2025-10-01 06:12:08'),
(4, 'SA', 'Staff Antsirabé', 'L3', 'MONTHLY', 'INDIVIDUAL', '2025-10-01 06:12:08');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_groups`
--

CREATE TABLE `transaction_groups` (
  `id` int(11) NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_groups`
--

INSERT INTO `transaction_groups` (`id`, `code`, `description`, `created_at`) VALUES
(1, 'Test2', 'test1', '2025-10-01 06:12:08'),
(2, 'AC', 'Assist', '2025-10-01 06:12:08'),
(3, 'Test', 'Testt', '2025-10-01 06:12:08'),
(4, 'ONF', 'One-Off Transaction', '2025-10-01 06:12:08'),
(5, 'ALLOW', 'Allowan11', '2025-10-01 06:12:08'),
(6, 'Test4', 'test4', '2025-10-01 06:12:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2025-10-01 06:12:08'),
(3, 'ATLAS', '1234', '2025-10-01 06:32:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `calendar_weeks`
--
ALTER TABLE `calendar_weeks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `lookup_codes`
--
ALTER TABLE `lookup_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_category_code` (`category`,`code`);

--
-- Indexes for table `pay_groups`
--
ALTER TABLE `pay_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `transaction_groups`
--
ALTER TABLE `transaction_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `calendar_weeks`
--
ALTER TABLE `calendar_weeks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lookup_codes`
--
ALTER TABLE `lookup_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_groups`
--
ALTER TABLE `pay_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaction_groups`
--
ALTER TABLE `transaction_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `site_web`
--
CREATE DATABASE IF NOT EXISTS `site_web` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `site_web`;

-- --------------------------------------------------------

--
-- Table structure for table `demande`
--

CREATE TABLE `demande` (
  `Nom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `marque` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_inscription` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `email`, `password`, `date_inscription`) VALUES
(1, 'Dupont', 'dupont@gmail.com', '1234', '2024-12-16 05:47:27'),
(3, 'Anwell', 'anwell@gmail.com', '$2y$10$bIZTofLpHgi..1fJoBkX0OQ.xtkgbntAskHJZxY/.kbn5khCSXmpi', '2024-12-16 06:05:58'),
(4, 'Eddia', 'eddia@gmail.com', '$2y$10$p59yF5cw4qmICp09QM.Tm.s7fre8IYojnxkwxREXzK2MHE//IGn46', '2024-12-17 10:35:20'),
(5, 'ELVAO', 'elvao@gmail.com', '$2y$10$Tx8aVFpQj4tAJQIfS3U5XOB.bec7eFtVfu1pbo7J477jHE1n4rVpO', '2024-12-18 04:12:24'),
(13, 'antsolalaina', 'antsolalaina@gmail.com', '$2y$10$D.wAbHT8.gJakF6gS7zTA.j1Hz8HpXr9BA3xHTgCzEXuWamZQ5Axy', '2025-02-13 07:23:41'),
(14, 'Sharan', 'sharan@gmail.com', '$2y$10$UuQ0MyXE6EPTdLVvef1zne/g3mNBFJl895NM/G1L62kpPTtyhuxLy', '2025-03-07 16:37:05'),
(15, 'Comol', 'como@gmail.com', '$2y$10$AfDXd9ai7wE/35MTUkzU2uyC6ZocEJttK99GaETvHAdcE9EKZhAXq', '2025-03-10 10:42:39'),
(16, 'Momo', 'momo@gmail.com', '$2y$10$3JvUmUXmV0Uf/vMvrxG73uYA6h2GWC13nsbelr5VLqD5LZXjpr7Yi', '2025-03-10 10:45:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Database: `supercar`
--
CREATE DATABASE IF NOT EXISTS `supercar` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `supercar`;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(100) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `objet` varchar(100) NOT NULL,
  `message` varchar(400) NOT NULL,
  `statut` enum('non lu','lu') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `nom`, `email`, `objet`, `message`, `statut`) VALUES
(1, 'delnah', 'delnah@gmail.com', 'Livraison', 'Good', 'non lu'),
(2, 'Anwell', 'antsolalainaanwell@gmail.com', 'Livraison', 'Merci.Beaucoup', 'non lu'),
(3, 'Eddia', 'eddia@gmail.com', 'Livraison', 'Merci je suis satisfait', 'non lu'),
(4, '', '', '', '', 'non lu'),
(5, 'Karol', 'karol@gmail.com', 'Bonne remarque', 'Très bon service de livraison et bonnes conseils ', 'non lu'),
(6, 'Anwell', 'antsolalainaanwell@gmail.com', 'Livraison', 'C\'est une livraison', 'non lu'),
(7, 'Inconnu', 'inconnu@gmail.com', 'Remarque', 'J\'ai le seum', 'non lu'),
(8, 'Inconnune', 'inconnune@gmmail.com', 'Remarque', 'J\'ai une remarque ', 'lu'),
(9, 'Anwell', 'antsolalainaanwell@gmail.com', 'Livraison', 'C\'est un test', 'lu');

-- --------------------------------------------------------

--
-- Table structure for table `contenu_accueil`
--

CREATE TABLE `contenu_accueil` (
  `id` int(11) NOT NULL DEFAULT '1',
  `titre_principal` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_hero` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'neuer-peugeot-e-5008-elektro-suv-der-extraklasse-979957-L25.jpg',
  `section_titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_mission` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_showroom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'showroom.jpg',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contenu_accueil`
--

INSERT INTO `contenu_accueil` (`id`, `titre_principal`, `image_hero`, `section_titre`, `section_description`, `section_mission`, `image_showroom`, `updated_at`) VALUES
(1, 'Achetez votre voiture plus moins <span>chez nous !</span>', 'hero_1759222136.jpg', 'À PROPOS DE SUPERCARS', 'Depuis sa création en 2009, SuperCar est devenue la référence dans la vente de voitures neuves et reconditionnées. Nous proposons une gamme prestigieuse venant du monde entier : Japon, Singapour, Afrique du Sud, États-Unis, Chine, Allemagne...', 'Notre mission ? Offrir des véhicules d\'exception, adaptés aux besoins de nos clients, tout en garantissant une expérience premium.', 'showroom_1759222752.jpg', '2025-10-03 07:22:32');

-- --------------------------------------------------------

--
-- Table structure for table `essai`
--

CREATE TABLE `essai` (
  `id` int(20) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `marque` varchar(100) NOT NULL,
  `date_essai` varchar(100) NOT NULL,
  `heure_essai` time NOT NULL,
  `statut` enum('En attente','Approuvée','Refusée') NOT NULL DEFAULT 'En attente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `essai`
--

INSERT INTO `essai` (`id`, `nom`, `email`, `marque`, `date_essai`, `heure_essai`, `statut`) VALUES
(4, 'Anwell', 'antsolalainaanwell@gmail.com', '', '2025-03-25', '00:00:00', 'Approuvée'),
(5, 'Anwell', 'antsolalainaanwell@gmail.com', '', '2025-03-29', '00:00:00', 'Approuvée'),
(6, 'Anwell', 'antsolalainaanwell@gmail.com', '', '2025-03-29', '00:00:00', 'Approuvée'),
(7, 'Kenny Antonitti', 'kenny@gmail.com', 'BMW X5', '2025-04-10', '00:00:00', 'Approuvée'),
(8, 'Anwell', 'antsolalainaanwell@gmail.com', 'Audi A3', '2025-04-24', '00:00:00', 'Approuvée'),
(29, 'Irda', 'irda@gmail.com', 'BMW', '2025-04-24', '00:00:00', 'En attente'),
(30, 'Landy', 'peniela@gmail.com', 'BMW', '2025-04-23', '00:00:00', 'En attente'),
(31, 'Landy', 'peniela@gmail.com', 'BMW', '2025-04-24', '00:00:00', 'En attente'),
(32, 'Calih', 'Calih@gmail.com', 'Audi A3', '2025-04-25', '00:00:00', 'En attente'),
(33, 'Calih', 'Calih@gmail.com', 'Audi A3', '2025-04-25', '00:00:00', 'En attente'),
(34, 'Calih', 'Calih@gmail.com', 'Audi A3', '2025-04-25', '00:00:00', 'En attente'),
(35, 'Calih', 'Calih@gmail.com', 'Audi A3', '2025-04-25', '00:00:00', 'En attente'),
(36, 'anwell', 'antsolalainaanwell@gmail.com', 'Audi A3', '2025-04-25', '00:00:00', 'En attente'),
(37, 'Anwell', 'antsolalainaanwell@gmail.com', 'Audi A3', '2025-04-24', '00:00:00', 'En attente'),
(38, 'anwell', 'antsolalainaanwell@gmail.com', 'Audi A3', '2025-04-24', '00:00:00', 'En attente'),
(39, 'anwell', 'antsolalainaanwell@gmail.com', 'Audi A3', '2025-04-24', '00:00:00', 'En attente'),
(40, 'Jean', 'jean@gmail.com', 'Audi A3', '2025-04-24', '00:00:00', 'En attente'),
(41, 'Ethan', 'ethan@gmail.com', 'Audi A3', '2025-04-17', '00:00:00', 'En attente'),
(42, 'Eliah', 'eliah@gmail.com', 'Audi A3', '2025-04-24', '00:00:00', 'En attente'),
(43, 'Eliah', 'eliah@gmail.com', 'Audi A3', '2025-04-25', '00:00:00', 'En attente'),
(52, 'Landy', 'landy@gmail.com', 'Mercedes 300 SL', '2025-04-24', '00:00:00', 'En attente'),
(53, 'Landy', 'landy@gmail.com', 'Mercedes 300 SL', '2025-04-24', '00:00:00', 'En attente'),
(54, 'Anwell', 'antsolalainaanwell@gmail.com', 'Audi A3', '2025-04-24', '00:00:00', 'En attente'),
(55, 'Eddia', 'eddia@gmail.com', 'BMW X5', '2025-04-24', '00:00:00', 'En attente'),
(56, 'Karol', 'karol@gmail.com', 'BMW M3', '2025-04-17', '13:00:00', 'En attente'),
(57, 'Claudia', 'claudia@gmail.com', 'Audi A3', '2025-04-24', '17:30:00', 'En attente'),
(58, 'Anwell', 'antsolalainaanwell@gmail.com', 'BMW X5', '2025-04-23', '12:23:00', 'En attente'),
(59, 'Kelii', 'Keliiiiii@gmail.com', 'BMW M3', '2025-04-22', '12:30:00', 'En attente'),
(60, 'Anwell', 'antsolalainaanwell@gmail.com', 'BMW X5', '2025-04-24', '15:45:00', 'En attente'),
(61, 'Anwell', 'antsolalainaanwell@gmail.com', 'BMW X5', '2025-04-24', '15:43:00', 'En attente'),
(62, 'Anwell', 'dimby@gmail.com', 'BMW X5', '2025-04-24', '13:30:00', 'En attente'),
(63, 'Anwell', 'antsolalainaanwell@gmail.com', 'Audi A3', '2025-04-24', '18:00:00', 'En attente'),
(64, 'Anwell', 'antsolalainaanwell@gmail.com', 'BMW X5', '2025-04-18', '13:30:00', 'En attente'),
(65, '', '', '', '', '00:00:00', 'En attente'),
(66, '', '', '', '', '00:00:00', 'En attente');

-- --------------------------------------------------------

--
-- Table structure for table `inscription`
--

CREATE TABLE `inscription` (
  `idclient` int(20) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inscription`
--

INSERT INTO `inscription` (`idclient`, `nom`, `email`, `password`) VALUES
(1, 'Anwell', 'antsolalainaanwell@gmail.com', '1234'),
(2, 'Monsieur', 'monsieur@gmail.com', '1234'),
(3, 'Eddia', 'eddia@gmail.com', '2222'),
(4, 'Kenny', 'kenny@gmail.com', '1234'),
(5, 'Kenny', 'kenny@gmail.com', '2222'),
(6, 'Volavo', 'volavo@gmail.com', '1000'),
(7, 'vont', 'vony@gmail.com', '0000'),
(8, 'Parish', 'votavo@gmail.com', '6666'),
(9, 'Peniela', 'peniela@gmail.com', '1234'),
(10, 'Doudou', 'doudou@gmail.com', '2222'),
(11, 'Karol', 'karol@gmail.com', '6666'),
(12, 'samil', 'samil@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `login_admin`
--

CREATE TABLE `login_admin` (
  `id_admin` int(10) NOT NULL,
  `nom_utilisateur` varchar(100) NOT NULL,
  `password` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_admin`
--

INSERT INTO `login_admin` (`id_admin`, `nom_utilisateur`, `password`) VALUES
(1, 'ATLAS', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id_service` int(20) NOT NULL,
  `libellé` varchar(100) NOT NULL,
  `description` varchar(8000) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id_service`, `libellé`, `description`, `image`) VALUES
(1, 'Conseiller', 'On dispose d’un personnel compétent capable de guider les clients sur les caractéristiques, les fonctionnalités et les meilleures pratiques du véhicule .En comprenant les besoins et les préférences des clients, on recommande des véhicules adaptés et fournit des conseils sur l entretien, les options de financement et les garanties.', 'conseils.jpg'),
(2, 'Livraison', 'On dispose d un service de livraison qui nous permet de faire livrer directement votre voiture à votre domicile sans avoir à vous déplacer, c est possible grâce à SuperCar!Fixez le jour, l heure et le lieu de la livraison, le professionnel se charge du reste.Le prix dépend de la voiture et de la distance entre votre adresse et le lieu où se trouve la voiture.', 'livrer.jpg'),
(3, 'Recommandation de pièces', 'Supercar figure parmis les leaders en ligne pour la recommandation des pièces détachées pour automobiles. Vous aurez accès à des milliers de pièces et d accessoires adaptés à de nombreux véhicules.Parmi le large éventail de pièces, on retrouve des systèmes de freinage, des pièces de carrpsserie, des amortisseurs, des systèmes d échappement, des embrayages, des pièces pour l intérieur, des équipements de climatisation et de chauffage et bien plus encore.', 'pièces.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `voiture`
--

CREATE TABLE `voiture` (
  `id_voiture` int(100) NOT NULL,
  `marque` varchar(100) NOT NULL,
  `modèle` varchar(100) NOT NULL,
  `prix` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voiture`
--

INSERT INTO `voiture` (`id_voiture`, `marque`, `modèle`, `prix`, `description`, `image`) VALUES
(1, 'BMW', 'BMW X5', '140000', 'Kilométrage : 0 km (neuve)\r\nVitesse maximale : 250 km/h\r\nMotorisation : Hybride rechargeable\r\nPuissance : 245 ch\r\nConsommation : 1.5 L/100 km\r\nAutonomie électrique : 70 km', 'BMWX5.jpg'),
(2, 'BMW', 'BMW I8', '45000', 'Kilométrage : 0 km (neuve)\r\nVitesse maximale : 250 km/h\r\nMotorisation : Hybride rechargeable\r\nPuissance : 245 ch\r\nConsommation : 1.5 L/100 km\r\nAutonomie électrique : 70 km', 'BMW_i8.jpg'),
(3, 'BMW', 'BMW M3', '60000', 'Kilométrage : 0 km (neuve)\r\nVitesse maximale : 250 km/h\r\nMotorisation : Hybride rechargeable\r\nPuissance : 245 ch\r\nConsommation : 1.5 L/100 km\r\nAutonomie électrique : 70 km', 'BMW_M3.jpg'),
(4, 'BMW', 'BMW Série 2', '55000', 'Kilométrage : 0 km (neuve)\r\nVitesse maximale : 250 km/h\r\nMotorisation : Hybride rechargeable\r\nPuissance : 245 ch\r\nConsommation : 1.5 L/100 km\r\nAutonomie électrique : 70 km', '2018-bmw-2-series-34.jpg'),
(5, 'Mercedes-Benz', 'Mercedes Classe 2', '40000', 'Kilométrage : 0 km (neuve)\r\nVitesse maximale : 250 km/h\r\nMotorisation : Hybride rechargeable\r\nPuissance : 245 ch\r\nConsommation : 1.5 L/100 km\r\nAutonomie électrique : 70 km', 'mercedes.jpg'),
(6, 'Mercedes-Benz', 'Mercedes 300 SL', '48000', 'Kilométrage : 0 km (neuve)\r\nVitesse maximale : 250 km/h\r\nMotorisation : Hybride rechargeable\r\nPuissance : 245 ch\r\nConsommation : 1.5 L/100 km\r\nAutonomie électrique : 70 km', 'Mercedes-Benz-300-SL.jpg'),
(7, 'Mercedes-Benz', 'Mercedes-Benz SUV', '52000', 'Kilométrage : 0 km (neuve)\r\nVitesse maximale : 250 km/h\r\nMotorisation : Hybride rechargeable\r\nPuissance : 245 ch\r\nConsommation : 1.5 L/100 km\r\nAutonomie électrique : 70 km', 'Mercedes-Benz-SUV-GLB.jpg'),
(8, 'Mercedes-Benz', 'Mercedes Classe A ', '80000', 'Kilométrage : 0 km (neuve)\r\nVitesse maximale : 250 km/h\r\nMotorisation : Hybride rechargeable\r\nPuissance : 245 ch\r\nConsommation : 1.5 L/100 km\r\nAutonomie électrique : 70 km', 'merce classe a.jpg'),
(9, 'Audi', 'Audi A6 2019', '100000', 'Kilométrage : 0 km (neuve)\r\nVitesse maximale : 250 km/h\r\nMotorisation : Hybride rechargeable\r\nPuissance : 245 ch\r\nConsommation : 1.5 L/100 km\r\nAutonomie électrique : 70 km', 'A6 2019.jpg'),
(10, 'Audi', 'Audi A4 2017', '80000', 'Kilométrage : 0 km (neuve)\r\nVitesse maximale : 250 km/h\r\nMotorisation : Hybride rechargeable\r\nPuissance : 245 ch\r\nConsommation : 1.5 L/100 km\r\nAutonomie électrique : 70 km', 'Audi-A4-2017.jpg'),
(11, 'Audi', 'Audi e-Tron GT', '90000', 'Kilométrage : 0 km (neuve)\r\nVitesse maximale : 250 km/h\r\nMotorisation : Hybride rechargeable\r\nPuissance : 245 ch\r\nConsommation : 1.5 L/100 km\r\nAutonomie électrique : 70 km', 'Audi-e-tron-GT.jpg'),
(12, 'Audi', 'Audi R8 2024', '199000', 'Kilométrage : 0 km (neuve)\r\nVitesse maximale : 250 km/h\r\nMotorisation : Hybride rechargeable\r\nPuissance : 245 ch\r\nConsommation : 1.5 L/100 km\r\nAutonomie électrique : 70 km', 'Audi-R8-V10-2024.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contenu_accueil`
--
ALTER TABLE `contenu_accueil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `essai`
--
ALTER TABLE `essai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`idclient`);

--
-- Indexes for table `login_admin`
--
ALTER TABLE `login_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id_service`);

--
-- Indexes for table `voiture`
--
ALTER TABLE `voiture`
  ADD PRIMARY KEY (`id_voiture`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `essai`
--
ALTER TABLE `essai`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `inscription`
--
ALTER TABLE `inscription`
  MODIFY `idclient` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `login_admin`
--
ALTER TABLE `login_admin`
  MODIFY `id_admin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id_service` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `voiture`
--
ALTER TABLE `voiture`
  MODIFY `id_voiture` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `personne`
--

CREATE TABLE `personne` (
  `id` int(5) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prénom` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `personne`
--

INSERT INTO `personne` (`id`, `nom`, `prénom`) VALUES
(1, 'Anwell', 'Antso'),
(2, 'jean', 'paul'),
(3, 'toto', 'mani'),
(4, 'Thomas', 'Anwell');
--
-- Database: `tp6`
--
CREATE DATABASE IF NOT EXISTS `tp6` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `tp6`;

-- --------------------------------------------------------

--
-- Table structure for table `tp6`
--

CREATE TABLE `tp6` (
  `idcontact` int(5) NOT NULL,
  `nom` varchar(20) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tp6`
--

INSERT INTO `tp6` (`idcontact`, `nom`, `prenom`) VALUES
(1, 'Jean Dupont', 'Emmanuel'),
(2, 'Jean Dupont', 'Emmanuel'),
(3, 'Jean Dupont', 'Emmanuel'),
(4, 'Jean Dupont', 'Emmanuel');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tp6`
--
ALTER TABLE `tp6`
  ADD PRIMARY KEY (`idcontact`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tp6`
--
ALTER TABLE `tp6`
  MODIFY `idcontact` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `TP6.php`
--
CREATE DATABASE IF NOT EXISTS `TP6.php` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `TP6.php`;
--
-- Database: `tp62.0`
--
CREATE DATABASE IF NOT EXISTS `tp62.0` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `tp62.0`;

-- --------------------------------------------------------

--
-- Table structure for table `tp6`
--

CREATE TABLE `tp6` (
  `id` int(11) NOT NULL,
  `nom` varchar(250) NOT NULL,
  `prénom` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tp6`
--
ALTER TABLE `tp6`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tp6`
--
ALTER TABLE `tp6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
