-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 26 juil. 2022 à 14:32
-- Version du serveur : 5.7.33
-- Version de PHP : 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `location`
--
CREATE DATABASE IF NOT EXISTS `location` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `location`;

-- --------------------------------------------------------

--
-- Structure de la table `advert`
--

CREATE TABLE `advert` (
  `id` int(3) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `postal_code` varchar(5) NOT NULL,
  `city` varchar(20) NOT NULL,
  `type` enum('location','vente') NOT NULL,
  `price` int(11) NOT NULL,
  `reservation_message` varchar(500) DEFAULT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `advert`
--

INSERT INTO `advert` (`id`, `title`, `description`, `postal_code`, `city`, `type`, `price`, `reservation_message`, `image`) VALUES
(1, 'Marseille appart T2', 'Beau t2 dans le centre de Marseille. Cuisine fournie', '13000', 'Marseille', 'location', 1300, '0', 'https://images.unsplash.com/photo-1501183638710-841dd1904471?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
(2, 'Suresnes maison t5', 'Belle maison lumineuse dans le centre de Suresnes. Parfait pour les grandes familles, écoles à proximité.', '92150', 'Suresnes', 'vente', 350000, '', 'https://images.unsplash.com/photo-1505691723518-36a5ac3be353?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
(3, 'Courbevoie appartement T4', 'Aliquam vulputate tempus vestibulum. Aliquam faucibus augue et semper sagittis. Aenean hendrerit rhoncus erat. Phasellus sit amet magna metus. Praesent vitae felis laoreet, luctus ligula vitae, placerat tortor.', '92400', 'Courbevoie', 'vente', 400000, '', 'https://images.unsplash.com/photo-1484154218962-a197022b5858?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1474&q=80'),
(4, 'Puteaux appartement T4', 'unc tempus iaculis magna eu tristique. Aliquam a luctus tortor, nec rhoncus turpis. Suspendisse bibendum mollis orci vitae pulvinar. Quisque ut erat tellus. Aliquam lacinia, ante ut laoreet sollicitudin.', '92500', 'Puteaux', 'location', 2500, '', 'https://images.unsplash.com/photo-1493663284031-b7e3aefcae8e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
(5, 'Seine Saint Denis maison t2', 'ellentesque aliquam felis id mauris congue ullamcorper. Curabitur blandit ligula ac felis auctor placerat. Sed scelerisque leo eget mauris gravida, id imperdiet magna aliquam.', '93000', 'Seine Saint Denis', 'location', 900, 'J\'aimerai ce bien car il semble très beau !', 'https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
(6, 'Clichy appartement studio', 'Pellentesque aliquam felis id mauris congue ullamcorper. Curabitur blandit ligula ac felis auctor placerat. Sed scelerisque leo eget mauris gravida, id imperdiet magna aliquam.', '92024', 'Clichy', 'vente', 150000, '', 'https://images.unsplash.com/photo-1513519245088-0e12902e5a38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
(7, 'Nanterre appartement t3', 'Sed vitae fringilla eros. Curabitur imperdiet hendrerit nulla, non varius orci maximus quis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam a elit faucibus, sagittis risus non, semper massa.', '92150', 'Nanterre', 'location', 2500, '', 'https://images.unsplash.com/photo-1516455590571-18256e5bb9ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
(8, 'Colombes maison t4', 'Sed vitae fringilla eros. Curabitur imperdiet hendrerit nulla, non varius orci maximus quis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam a elit faucibus, sagittis risus non, semper massa.', '92025', 'Colombes', 'location', 3200, '', 'https://images.unsplash.com/photo-1513584684374-8bab748fbf90?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1465&q=80'),
(9, 'Strasbourg maison t6', 'Sed vitae fringilla eros. Curabitur imperdiet hendrerit nulla, non varius orci maximus quis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam a elit faucibus, sagittis risus non, semper massa.', '67000', 'Strasbourg', 'location', 3000, '', 'https://images.unsplash.com/photo-1494526585095-c41746248156?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
(10, 'Dingsheim appartement t4', 'Sed vitae fringilla eros. Curabitur imperdiet hendrerit nulla, non varius orci maximus quis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam a elit faucibus, sagittis risus non, semper massa.', '67097', 'Dingsheim', 'vente', 150000, 'JE LE VEUX !', 'https://images.unsplash.com/photo-1513694203232-719a280e022f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1469&q=80'),
(11, 'Paris appartement studio', 'Sed vitae fringilla eros. Curabitur imperdiet hendrerit nulla, non varius orci maximus quis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam a elit faucibus, sagittis risus non, semper massa.', '75016', 'Paris', 'vente', 500000, '', 'https://images.unsplash.com/photo-1567767292278-a4f21aa2d36e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
(12, 'Paris maison t5', 'Sed vitae fringilla eros. Curabitur imperdiet hendrerit nulla, non varius orci maximus quis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam a elit faucibus, sagittis risus non, semper massa.', '75015', 'Paris', 'location', 6500, '', 'https://images.unsplash.com/photo-1554995207-c18c203602cb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
(13, 'Lille appartement t2', 'Sed vitae fringilla eros. Curabitur imperdiet hendrerit nulla, non varius orci maximus quis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam a elit faucibus, sagittis risus non, semper massa.', '59000', 'Lille', 'vente', 250000, '', 'https://images.unsplash.com/photo-1600607687920-4e2a09cf159d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
(14, 'Lyon maison t3', 'Sed vitae fringilla eros. Curabitur imperdiet hendrerit nulla, non varius orci maximus quis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam a elit faucibus, sagittis risus non, semper massa.', '69000', 'Lyon', 'location', 1750, '', 'https://images.unsplash.com/photo-1613490493576-7fde63acd811?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80'),
(15, 'Charenton appartement studio', 'Sed vitae fringilla eros. Curabitur imperdiet hendrerit nulla, non varius orci maximus quis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam a elit faucibus, sagittis risus non, semper massa.', '54532', 'Charenton', 'location', 500, 'coucou\r\n', 'https://images.unsplash.com/photo-1540574163026-643ea20ade25?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
(16, 'Moise maison t2', 'Sed vitae fringilla eros. Curabitur imperdiet hendrerit nulla, non varius orci maximus quis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam a elit faucibus, sagittis risus non, semper massa.', '65459', 'Moise', 'vente', 150000, '', 'https://images.unsplash.com/flagged/photo-1573168710465-7f7da9a23a15?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
(17, 'Toulouse maison t4', 'Sed vitae fringilla eros. Curabitur imperdiet hendrerit nulla, non varius orci maximus quis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam a elit faucibus, sagittis risus non, semper massa.', '14000', 'Toulouse', 'vente', 250000, 'COucou\r\n', 'https://images.unsplash.com/photo-1560185127-6ed189bf02f4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
(18, 'Toulon appartement t5', 'Sed vitae fringilla eros. Curabitur imperdiet hendrerit nulla, non varius orci maximus quis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam a elit faucibus, sagittis risus non, semper massa.', '15000', 'Toulon', 'location', 3000, 'Hello', 'https://images.unsplash.com/photo-1507652313519-d4e9174996dd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
(19, 'Montpellier maison T3', 'Bel appart la famille, check ça !', '12568', 'Montpellier', 'vente', 600000, '&lt;p&gt;trop cool&lt;/p&gt;', 'https://images.unsplash.com/photo-1521782462922-9318be1cfd04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1476&q=80'),
(20, 'Beau F2 à Brunoy', 'Beau F2 à Brunoy', '91800', 'Brunoy', 'location', 180000, '&lt;p&gt;Cool&lt;/p&gt;', 'https://images.unsplash.com/photo-1516400904033-7d182cd52d6e?ixlib=rb-1.2.1&amp;ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&amp;auto=format&amp;fit=crop&amp;w=376&amp;q=80');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `advert`
--
ALTER TABLE `advert`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `advert`
--
ALTER TABLE `advert`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
