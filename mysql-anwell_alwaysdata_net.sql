-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql-anwell.alwaysdata.net
-- Generation Time: Apr 09, 2026 at 07:55 AM
-- Server version: 10.11.15-MariaDB
-- PHP Version: 8.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anwell_supercar`
--
CREATE DATABASE IF NOT EXISTS `anwell_supercar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `anwell_supercar`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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

--
-- Triggers `contact`
--
DELIMITER $$
CREATE TRIGGER `trg_contact_insert` AFTER INSERT ON `contact` FOR EACH ROW BEGIN
  INSERT INTO log_activite (table_cible, action, id_cible, detail)
  VALUES ('contact', 'INSERT', NEW.id,
    CONCAT('Nouveau message de ', NEW.nom, ' (', NEW.email, ') — objet : ', NEW.objet));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_contact_no_vide` BEFORE INSERT ON `contact` FOR EACH ROW BEGIN
  IF NEW.nom = '' OR NEW.email = '' OR NEW.message = '' THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Le nom, l''email et le message sont obligatoires.';
  END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_contact_update` AFTER UPDATE ON `contact` FOR EACH ROW BEGIN
  IF OLD.statut <> NEW.statut THEN
    INSERT INTO log_activite (table_cible, action, id_cible, detail)
    VALUES ('contact', 'UPDATE', NEW.id,
      CONCAT('Message de ', NEW.nom, ' marqué "', NEW.statut, '"'));
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `contenu_accueil`
--

CREATE TABLE `contenu_accueil` (
  `id` int(11) NOT NULL DEFAULT 1,
  `titre_principal` text NOT NULL,
  `image_hero` varchar(255) DEFAULT 'neuer-peugeot-e-5008-elektro-suv-der-extraklasse-979957-L25.jpg',
  `section_titre` varchar(255) NOT NULL,
  `section_description` text NOT NULL,
  `section_mission` text NOT NULL,
  `image_showroom` varchar(255) DEFAULT 'showroom.jpg',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
(66, '', '', '', '', '00:00:00', 'En attente'),
(67, 'Laura', 'marie@gmail.com', 'Audi A3', '2025-12-26', '14:00:00', 'En attente'),
(68, 'BTS SIO', 'btssio@gmail.com', 'Audi A3', '2026-04-12', '15:00:00', 'En attente');

--
-- Triggers `essai`
--
DELIMITER $$
CREATE TRIGGER `trg_essai_date_valide` BEFORE INSERT ON `essai` FOR EACH ROW BEGIN
  IF NEW.date_essai <> '' AND STR_TO_DATE(NEW.date_essai,'%Y-%m-%d') < CURDATE() THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'La date d''essai ne peut pas être dans le passé.';
  END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_essai_delete` BEFORE DELETE ON `essai` FOR EACH ROW BEGIN
  INSERT INTO log_activite (table_cible, action, id_cible, detail)
  VALUES ('essai', 'DELETE', OLD.id,
    CONCAT('Suppression demande de ', OLD.nom, ' (', OLD.email, ') — statut : ', OLD.statut));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_essai_insert` AFTER INSERT ON `essai` FOR EACH ROW BEGIN
  INSERT INTO log_activite (table_cible, action, id_cible, detail)
  VALUES ('essai', 'INSERT', NEW.id,
    CONCAT('Nouvelle demande de ', NEW.nom, ' pour ', NEW.marque, ' le ', NEW.date_essai));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_essai_no_doublon` BEFORE INSERT ON `essai` FOR EACH ROW BEGIN
  DECLARE nb INT;
  SELECT COUNT(*) INTO nb FROM essai
  WHERE email = NEW.email AND marque = NEW.marque AND date_essai = NEW.date_essai;
  IF nb > 0 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Doublon : demande déjà existante pour cet email, cette marque et cette date.';
  END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_essai_update` AFTER UPDATE ON `essai` FOR EACH ROW BEGIN
  IF OLD.statut <> NEW.statut THEN
    INSERT INTO log_activite (table_cible, action, id_cible, detail)
    VALUES ('essai', 'UPDATE', NEW.id,
      CONCAT('Statut changé : ', OLD.statut, ' → ', NEW.statut,
             ' | Client : ', NEW.nom, ' | Marque : ', NEW.marque));
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `inscription`
--

CREATE TABLE `inscription` (
  `idclient` int(20) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
(12, 'samil', 'samil@gmail.com', '1234'),
(13, 'Laura', 'Marie@gmail.com', 'espace'),
(14, 'BTS SIO', 'btssio@gmail.com', 'btssio123');

--
-- Triggers `inscription`
--
DELIMITER $$
CREATE TRIGGER `trg_inscription_delete` BEFORE DELETE ON `inscription` FOR EACH ROW BEGIN
  INSERT INTO log_activite (table_cible, action, id_cible, detail)
  VALUES ('inscription', 'DELETE', OLD.idclient,
    CONCAT('Suppression compte : ', OLD.nom, ' (', OLD.email, ')'));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_inscription_insert` AFTER INSERT ON `inscription` FOR EACH ROW BEGIN
  INSERT INTO log_activite (table_cible, action, id_cible, detail)
  VALUES ('inscription', 'INSERT', NEW.idclient,
    CONCAT('Nouvel utilisateur : ', NEW.nom, ' (', NEW.email, ')'));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_inscription_no_doublon` BEFORE INSERT ON `inscription` FOR EACH ROW BEGIN
  DECLARE nb INT;
  SELECT COUNT(*) INTO nb FROM inscription WHERE email = NEW.email;
  IF nb > 0 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Cet email est déjà utilisé.';
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `login_admin`
--

CREATE TABLE `login_admin` (
  `id_admin` int(10) NOT NULL,
  `nom_utilisateur` varchar(100) NOT NULL,
  `password` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `login_admin`
--

INSERT INTO `login_admin` (`id_admin`, `nom_utilisateur`, `password`) VALUES
(1, 'ATLAS', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `log_activite`
--

CREATE TABLE `log_activite` (
  `id` int(11) NOT NULL,
  `table_cible` varchar(50) NOT NULL,
  `action` varchar(10) NOT NULL,
  `id_cible` int(11) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `fait_le` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `log_activite`
--

INSERT INTO `log_activite` (`id`, `table_cible`, `action`, `id_cible`, `detail`, `fait_le`) VALUES
(1, 'inscription', 'INSERT', 14, 'Nouvel utilisateur : BTS SIO (btssio@gmail.com)', '2026-04-07 08:34:02'),
(2, 'essai', 'INSERT', 68, 'Nouvelle demande de BTS SIO pour Audi A3 le 2026-04-12', '2026-04-08 06:21:32');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id_service` int(20) NOT NULL,
  `libellé` varchar(100) NOT NULL,
  `description` varchar(8000) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id_service`, `libellé`, `description`, `image`) VALUES
(1, 'Conseiller', 'On dispose d’un personnel compétent capable de guider les clients sur les caractéristiques, les fonctionnalités et les meilleures pratiques du véhicule .En comprenant les besoins et les préférences des clients, on recommande des véhicules adaptés et fournit des conseils sur l entretien, les options de financement et les garanties.', 'conseils.jpg'),
(2, 'Livraison', 'On dispose d un service de livraison qui nous permet de faire livrer directement votre voiture à votre domicile sans avoir à vous déplacer, c est possible grâce à SuperCar!Fixez le jour, l heure et le lieu de la livraison, le professionnel se charge du reste.Le prix dépend de la voiture et de la distance entre votre adresse et le lieu où se trouve la voiture.', 'livrer.jpg'),
(3, 'Recommandation de pièces', 'Supercar figure parmis les leaders en ligne pour la recommandation des pièces détachées pour automobiles. Vous aurez accès à des milliers de pièces et d accessoires adaptés à de nombreux véhicules.Parmi le large éventail de pièces, on retrouve des systèmes de freinage, des pièces de carrpsserie, des amortisseurs, des systèmes d échappement, des embrayages, des pièces pour l intérieur, des équipements de climatisation et de chauffage et bien plus encore.', 'pièces.jpeg');

--
-- Triggers `service`
--
DELIMITER $$
CREATE TRIGGER `trg_service_delete` BEFORE DELETE ON `service` FOR EACH ROW BEGIN
  INSERT INTO log_activite (table_cible, action, id_cible, detail)
  VALUES ('service', 'DELETE', OLD.id_service,
    CONCAT('Suppression service : ', OLD.`libellé`));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_service_insert` AFTER INSERT ON `service` FOR EACH ROW BEGIN
  INSERT INTO log_activite (table_cible, action, id_cible, detail)
  VALUES ('service', 'INSERT', NEW.id_service,
    CONCAT('Nouveau service : ', NEW.`libellé`));
END
$$
DELIMITER ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
-- Triggers `voiture`
--
DELIMITER $$
CREATE TRIGGER `trg_voiture_delete` BEFORE DELETE ON `voiture` FOR EACH ROW BEGIN
  INSERT INTO log_activite (table_cible, action, id_cible, detail)
  VALUES ('voiture', 'DELETE', OLD.id_voiture,
    CONCAT('Suppression : ', OLD.marque, ' ', OLD.`modèle`));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_voiture_insert` AFTER INSERT ON `voiture` FOR EACH ROW BEGIN
  INSERT INTO log_activite (table_cible, action, id_cible, detail)
  VALUES ('voiture', 'INSERT', NEW.id_voiture,
    CONCAT('Nouvelle voiture ajoutée : ', NEW.marque, ' ', NEW.`modèle`, ' — ', NEW.prix, ' Rs'));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_voiture_prix_valide` BEFORE INSERT ON `voiture` FOR EACH ROW BEGIN
  IF CAST(NEW.prix AS DECIMAL) <= 0 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Le prix doit être supérieur à 0.';
  END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_voiture_update` AFTER UPDATE ON `voiture` FOR EACH ROW BEGIN
  INSERT INTO log_activite (table_cible, action, id_cible, detail)
  VALUES ('voiture', 'UPDATE', NEW.id_voiture,
    CONCAT('Modification : ', NEW.marque, ' ', NEW.`modèle`,
           ' | Ancien prix : ', OLD.prix, ' → Nouveau prix : ', NEW.prix));
END
$$
DELIMITER ;

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
-- Indexes for table `log_activite`
--
ALTER TABLE `log_activite`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `inscription`
--
ALTER TABLE `inscription`
  MODIFY `idclient` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `login_admin`
--
ALTER TABLE `login_admin`
  MODIFY `id_admin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `log_activite`
--
ALTER TABLE `log_activite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
