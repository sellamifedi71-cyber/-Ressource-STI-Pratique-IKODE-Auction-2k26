-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 14 mai 2026 à 12:39
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `fedi_auctions`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `cin` varchar(8) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `tel` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `cin`, `password`, `tel`) VALUES
(1, '01234567', 'pass123', '23456789'),
(2, '12345678', 'secure456', '51234567'),
(3, '09876543', 'mouton789', '98765432'),
(4, '10293847', 'p@ssw0rd', '56789012'),
(5, '05678901', 'sheep2024', '23456780'),
(6, '14567890', 'motdepasse', '90123456'),
(7, '03456789', 'hello123', '56123478'),
(8, '16789012', 'password', '98765431'),
(9, '08901234', 'qwerty789', '50234567'),
(10, '19012345', 'azerty123', '91234567'),
(11, '02134567', 'client11', '23456781'),
(12, '15467890', 'client12', '55678901'),
(13, '07654321', 'client13', '98765430'),
(14, '19876543', 'client14', '90012345'),
(15, '04321678', 'client15', '51234890');

-- --------------------------------------------------------

--
-- Structure de la table `enchere`
--

CREATE TABLE `enchere` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `montant` float NOT NULL,
  `date_offre` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `enchere`
--

INSERT INTO `enchere` (`id`, `cid`, `pid`, `montant`, `date_offre`) VALUES
(1, 1, 1, 87000, '2026-05-02 10:00:00'),
(2, 2, 1, 90000, '2026-05-05 14:30:00'),
(3, 3, 1, 95000, '2026-05-08 11:15:00'),
(4, 4, 1, 100000, '2026-05-12 16:45:00'),
(5, 5, 2, 79000, '2026-05-03 09:00:00'),
(6, 6, 2, 82000, '2026-05-06 15:30:00'),
(7, 7, 2, 85000, '2026-05-10 10:45:00'),
(8, 8, 2, 88000, '2026-05-14 14:00:00'),
(9, 9, 3, 97000, '2026-05-04 11:00:00'),
(10, 10, 3, 100000, '2026-05-07 16:15:00'),
(11, 11, 3, 105000, '2026-05-11 09:30:00'),
(12, 12, 3, 110000, '2026-05-15 14:00:00'),
(13, 13, 4, 84000, '2026-05-05 10:30:00'),
(14, 14, 4, 86000, '2026-05-09 13:45:00'),
(15, 15, 4, 89000, '2026-05-13 15:15:00'),
(16, 1, 5, 125000, '2026-05-06 14:00:00'),
(17, 2, 5, 130000, '2026-05-10 11:30:00'),
(18, 3, 5, 135000, '2026-05-13 15:15:00'),
(19, 4, 5, 142000, '2026-05-17 10:00:00'),
(20, 8, 7, 290000, '2026-05-08 10:00:00'),
(21, 9, 7, 310000, '2026-05-12 16:00:00'),
(22, 10, 7, 330000, '2026-05-16 09:15:00'),
(23, 11, 11, 880000, '2026-05-02 09:00:00'),
(24, 12, 11, 920000, '2026-05-07 14:00:00'),
(25, 13, 11, 950000, '2026-05-12 10:30:00'),
(26, 14, 11, 1000000, '2026-05-18 16:00:00'),
(27, 15, 11, 1050000, '2026-05-24 11:00:00'),
(28, 1, 12, 360000, '2026-05-04 11:30:00'),
(29, 2, 12, 380000, '2026-05-09 15:45:00'),
(30, 3, 12, 400000, '2026-05-14 09:15:00'),
(31, 4, 13, 470000, '2026-05-06 13:00:00'),
(32, 5, 13, 500000, '2026-05-11 10:00:00'),
(33, 6, 13, 530000, '2026-05-16 15:30:00'),
(34, 7, 19, 6800, '2026-05-03 10:00:00'),
(35, 8, 19, 7200, '2026-05-07 14:45:00'),
(36, 9, 19, 7600, '2026-05-11 11:30:00'),
(37, 10, 19, 8000, '2026-05-15 16:00:00'),
(38, 11, 20, 12500, '2026-05-05 09:15:00'),
(39, 12, 20, 13200, '2026-05-09 16:00:00'),
(40, 13, 20, 13800, '2026-05-13 12:45:00'),
(41, 14, 23, 2700, '2026-05-11 10:00:00'),
(42, 15, 23, 2900, '2026-05-14 15:30:00'),
(43, 1, 23, 3200, '2026-05-17 09:45:00'),
(44, 2, 25, 57000, '2026-05-04 14:30:00'),
(45, 3, 25, 60000, '2026-05-08 10:00:00'),
(46, 4, 25, 63000, '2026-05-12 15:15:00'),
(47, 5, 25, 67000, '2026-05-16 11:30:00'),
(48, 6, 25, 70000, '2026-05-20 14:45:00'),
(49, 7, 26, 125000, '2026-05-07 09:30:00'),
(50, 8, 26, 130000, '2026-05-11 14:15:00'),
(51, 9, 26, 138000, '2026-05-15 10:45:00'),
(52, 10, 31, 47000, '2026-05-06 09:00:00'),
(53, 11, 31, 50000, '2026-05-10 13:30:00'),
(54, 12, 31, 53000, '2026-05-14 16:15:00'),
(55, 13, 31, 56000, '2026-05-18 11:00:00'),
(56, 14, 34, 10000, '2026-05-18 10:00:00'),
(57, 15, 34, 10500, '2026-05-21 15:30:00'),
(58, 1, 34, 11200, '2026-05-25 12:15:00'),
(59, 2, 37, 100000, '2026-05-03 11:00:00'),
(60, 3, 37, 108000, '2026-05-08 15:45:00'),
(61, 4, 37, 115000, '2026-05-13 10:30:00'),
(62, 5, 37, 125000, '2026-05-19 14:00:00'),
(63, 6, 37, 135000, '2026-05-25 09:30:00'),
(64, 7, 42, 12500, '2026-05-08 14:30:00'),
(65, 8, 42, 13200, '2026-05-12 10:15:00'),
(66, 9, 42, 14000, '2026-05-16 16:00:00'),
(67, 10, 47, 4800, '2026-05-02 15:00:00'),
(68, 11, 47, 5200, '2026-05-05 11:30:00'),
(69, 12, 47, 5600, '2026-05-09 14:45:00'),
(70, 13, 50, 4800, '2026-05-07 10:00:00'),
(71, 14, 50, 5200, '2026-05-12 13:15:00'),
(72, 15, 50, 5600, '2026-05-17 15:30:00'),
(73, 1, 8, 119000, '2026-05-09 12:00:00'),
(74, 2, 9, 109000, '2026-05-10 14:30:00'),
(75, 3, 10, 78000, '2026-05-11 09:45:00'),
(76, 4, 14, 460000, '2026-05-08 11:15:00'),
(77, 5, 15, 290000, '2026-05-10 16:00:00'),
(78, 6, 16, 125000, '2026-05-12 10:30:00'),
(79, 7, 17, 65000, '2026-05-14 14:00:00'),
(80, 8, 18, 3500, '2026-05-16 09:00:00'),
(81, 9, 21, 8000, '2026-05-18 15:30:00'),
(82, 10, 22, 3300, '2026-05-20 11:45:00'),
(83, 11, 24, 5800, '2026-05-22 13:15:00'),
(84, 12, 28, 9000, '2026-05-19 10:00:00'),
(85, 13, 29, 7000, '2026-05-21 14:30:00'),
(86, 14, 30, 500, '2026-05-23 09:45:00'),
(87, 15, 32, 2000, '2026-05-17 11:00:00'),
(88, 1, 33, 4000, '2026-05-19 16:30:00'),
(89, 2, 35, 13000, '2026-05-20 10:15:00'),
(90, 3, 36, 1300, '2026-05-22 15:00:00'),
(91, 4, 38, 26000, '2026-05-13 09:30:00'),
(92, 5, 39, 19000, '2026-05-15 14:45:00'),
(93, 6, 40, 38000, '2026-05-17 10:00:00'),
(94, 7, 41, 5000, '2026-05-18 13:15:00'),
(95, 8, 43, 3200, '2026-05-19 11:30:00'),
(96, 9, 44, 6000, '2026-05-20 15:45:00'),
(97, 10, 45, 2500, '2026-05-21 09:00:00'),
(98, 11, 46, 450, '2026-05-22 14:15:00'),
(99, 12, 48, 4000, '2026-05-23 10:30:00'),
(100, 13, 49, 3000, '2026-05-24 16:00:00'),
(101, 14, 51, 9000, '2026-05-15 12:45:00'),
(102, 15, 52, 10000, '2026-05-18 09:30:00'),
(103, 1, 53, 4000, '2026-05-20 14:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `type` varchar(30) NOT NULL,
  `description` text DEFAULT NULL,
  `prix_depart` float NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `nom`, `type`, `description`, `prix_depart`, `date_debut`, `date_fin`) VALUES
(1, 'Mercedes-Benz Classe S', 'Voitures', 'Mercedes-Benz Classe S 2024, 5000km, cuir noir, pack AMG', 85000, '2026-05-01', '2026-05-20'),
(2, 'BMW Série 7', 'Voitures', 'BMW 740i 2024, première main, 8000km, toit panoramique', 78000, '2026-05-02', '2026-05-22'),
(3, 'Tesla Model S Plaid', 'Voitures', 'Tesla Model S Plaid, autonomie 600km, Autopilot inclus', 95000, '2026-05-03', '2026-05-25'),
(4, 'Audi RS6 Avant', 'Voitures', 'Audi RS6 2024, V8 biturbo, 600ch, 10000km', 82000, '2026-05-04', '2026-05-24'),
(5, 'Porsche 911 Carrera', 'Voitures', 'Porsche 911 Carrera 4S, 15000km, boîte PDK', 120000, '2026-05-05', '2026-05-28'),
(6, 'Lamborghini Urus', 'Voitures', 'Lamborghini Urus 2024, 8000km, cuir rouge, 650ch', 220000, '2026-05-06', '2026-05-30'),
(7, 'Ferrari F8 Tributo', 'Voitures', 'Ferrari F8 Tributo, 3000km, V8 twin-turbo, 720ch', 280000, '2026-05-07', '2026-06-01'),
(8, 'Range Rover Sport', 'Voitures', 'Range Rover Sport Autobiography, 2024, 12000km', 115000, '2026-05-08', '2026-05-29'),
(9, 'Lexus LX 600', 'Voitures', 'Lexus LX 600 F Sport, 5000km, cuir semi-aniline', 105000, '2026-05-09', '2026-05-31'),
(10, 'Volvo XC90', 'Voitures', 'Volvo XC90 Recharge T8, hybride, 8000km, 7 places', 75000, '2026-05-10', '2026-06-02'),
(11, 'Villa à Gammarth', 'Immobilier', 'Villa 350m² avec piscine, vue mer, 5 chambres, jardin 1200m²', 850000, '2026-05-01', '2026-06-15'),
(12, 'Appartement Lac 2', 'Immobilier', 'Appartement S+3 au Lac 2, 180m², vue sur lac, parking', 350000, '2026-05-03', '2026-06-10'),
(13, 'Terrain à Sidi Bou Said', 'Immobilier', 'Terrain 1000m², vue panoramique, constructible', 450000, '2026-05-05', '2026-06-20'),
(14, 'Bureau Centre Urbain Nord', 'Immobilier', 'Bureau 150m², équipé, 15 places parking, idéal société', 280000, '2026-05-07', '2026-06-05'),
(15, 'Duplex à La Marsa', 'Immobilier', 'Duplex 220m², terrasse vue mer, 4 chambres, 3 sdb', 550000, '2026-05-09', '2026-06-12'),
(16, 'Studio à Sousse', 'Immobilier', 'Studio 65m², centre ville, meublé, proche plage', 120000, '2026-05-11', '2026-06-08'),
(17, 'Ferme à Béja', 'Immobilier', 'Ferme agricole 5 hectares, maison rénovée, piscine', 620000, '2026-05-13', '2026-06-18'),
(18, 'Local commercial Tunis', 'Immobilier', 'Local commercial 200m², rue commerçante, très bon emplacement', 380000, '2026-05-15', '2026-06-22'),
(19, 'iPhone 16 Pro Max', 'Electronique', 'iPhone 16 Pro Max 1TB, débloqué, garantie 1 an', 6500, '2026-05-02', '2026-05-18'),
(20, 'MacBook Pro M4 Max', 'Electronique', 'MacBook Pro 16 pouces M4 Max, 64GB RAM, 2TB SSD', 12000, '2026-05-04', '2026-05-20'),
(21, 'Samsung Galaxy Z Fold 6', 'Electronique', 'Samsung Galaxy Z Fold 6 512GB, neuf sous blister', 7500, '2026-05-06', '2026-05-22'),
(22, 'PC Gamer Alienware', 'Electronique', 'Alienware Aurora R16, RTX 4090, i9, 64GB RAM, 2TB SSD', 9000, '2026-05-08', '2026-05-24'),
(23, 'Sony PlayStation 5 Pro', 'Electronique', 'PS5 Pro 2TB, + 3 manettes DualSense, casque Pulse 3D', 2500, '2026-05-10', '2026-05-19'),
(24, 'iPad Pro 13\" M4', 'Electronique', 'iPad Pro 13 pouces M4, 2TB, WiFi+Cell, Magic Keyboard', 4500, '2026-05-12', '2026-05-21'),
(25, 'DJI Mavic 3 Pro', 'Electronique', 'DJI Mavic 3 Pro Cine Premium Combo, 3 caméras', 3200, '2026-05-14', '2026-05-28'),
(26, 'Casque Sony WH-1000XM6', 'Electronique', 'Sony WH-1000XM6, réduction de bruit ultime, neuf', 450, '2026-05-16', '2026-05-25'),
(27, 'Apple Watch Ultra 3', 'Electronique', 'Apple Watch Ultra 3, GPS+Cell, titane, 49mm', 1200, '2026-05-18', '2026-05-27'),
(28, 'TV Samsung QLED 85\"', 'Electronique', 'Samsung QLED 8K 85 pouces, Neo QLED, 2025', 5500, '2026-05-20', '2026-06-03'),
(29, 'Rolex Daytona Panda', 'Montres', 'Rolex Daytona Panda, boîte et papiers, état neuf', 55000, '2026-05-03', '2026-05-25'),
(30, 'Patek Philippe Nautilus', 'Montres', 'Patek Philippe 5711/1A, édition limitée, full set', 120000, '2026-05-06', '2026-05-30'),
(31, 'Audemars Piguet Royal Oak', 'Montres', 'Audemars Piguet Royal Oak 41mm, boîte acier, 2024', 68000, '2026-05-09', '2026-05-28'),
(32, 'Omega Speedmaster', 'Montres', 'Omega Speedmaster Moonwatch Professional, boîte et papiers', 6500, '2026-05-12', '2026-05-29'),
(33, 'Cartier Santos', 'Montres', 'Cartier Santos Medium, acier, cadran bleu, 2024', 8500, '2026-05-15', '2026-05-31'),
(34, 'Hublot Big Bang', 'Montres', 'Hublot Big Bang Unico, céramique noire, édition limitée', 25000, '2026-05-18', '2026-06-05'),
(35, 'Sac Hermès Birkin 35', 'Mode', 'Hermès Birkin 35, cuir Togo orange, état neuf', 45000, '2026-05-05', '2026-05-27'),
(36, 'Doudoune Moncler Maya', 'Mode', 'Moncler Maya, taille L, noir, jamais portée', 1800, '2026-05-11', '2026-05-23'),
(37, 'Lunettes Cartier', 'Mode', 'Lunettes de soleil Cartier, édition limitée, or jaune', 3500, '2026-05-13', '2026-05-25'),
(38, 'Sac Chanel Classic', 'Mode', 'Chanel Classic Flap, cuir lambskin, taille moyenne', 9500, '2026-05-17', '2026-05-30'),
(39, 'Bague Cartier Love', 'Mode', 'Bague Cartier Love, or rose, diamants, taille 52', 12000, '2026-05-19', '2026-06-02'),
(40, 'Ceinture Hermès', 'Mode', 'Ceinture Hermès H, cuir noir, boucle palladium', 1200, '2026-05-21', '2026-06-01'),
(41, 'Tableau Picasso', 'Art', 'Tableau signé Picasso, lithographie originale, certificat', 95000, '2026-05-02', '2026-06-10'),
(42, 'Vinyle Beatles White Album', 'Collection', 'Vinyle Beatles \"White Album\" numéroté, édition originale 1968', 25000, '2026-05-08', '2026-05-29'),
(43, 'Timbre Montgolfière', 'Collection', 'Timbre rare \"Montgolfière\" de 1849, état parfait', 18000, '2026-05-12', '2026-06-05'),
(44, 'Sculpture bronze', 'Art', 'Sculpture animalière en bronze, signée, XXe siècle', 15000, '2026-05-16', '2026-06-08'),
(45, 'Carte Pokémon 1ère édition', 'Collection', 'Carte Pokémon Dracaufeu 1ère édition, grade PSA 10', 35000, '2026-05-20', '2026-06-12'),
(46, 'Vélo Canyon Aeroad', 'Sport', 'Vélo Canyon Aeroad CFR, Dura Ace Di2, carbone, taille M', 12000, '2026-05-07', '2026-05-26'),
(47, 'Abonnement Golf', 'Sport', 'Abonnement annuel Golf Club de Carthage, transferable', 4500, '2026-05-14', '2026-05-31'),
(48, 'Trottinette électrique Dualtron', 'Sport', 'Dualtron X Limited, 120km/h, autonomie 150km', 5500, '2026-05-09', '2026-05-28'),
(49, 'Home Gym complet', 'Sport', 'Rameur, banc de musculation, poids 200kg, tapis', 3000, '2026-05-11', '2026-05-25'),
(50, 'Abonnement Football', 'Sport', 'Abonnement parcours VIP Stade Hammadi Agrebi', 2500, '2026-05-15', '2026-05-29'),
(51, 'Casque VR Apple Vision Pro', 'High-Tech', 'Apple Vision Pro 1TB, neuf, garantie Apple', 4500, '2026-05-01', '2026-05-19'),
(52, 'Station météo professionnelle', 'High-Tech', 'Station météo Davis Vantage Pro2, professionnelle', 1800, '2026-05-04', '2026-05-22'),
(53, 'Robot aspirateur Ecovacs', 'High-Tech', 'Ecovacs Deebot X2 Omni, aspiration et lavage', 1200, '2026-05-07', '2026-05-24'),
(54, 'Enceinte Bose SoundLink', 'High-Tech', 'Bose SoundLink Max, Bluetooth, 20h autonomie', 400, '2026-05-10', '2026-05-21'),
(55, 'Projecteur 4K Samsung', 'High-Tech', 'Samsung Premiere 4K, projecteur laser, 120 pouces', 3500, '2026-05-13', '2026-05-27'),
(56, 'Horloge comtoise', 'Antiquités', 'Horloge comtoise ancienne, XVIIIe siècle, mécanisme fonctionnel', 4500, '2026-05-06', '2026-05-30'),
(57, 'Armoire normande', 'Antiquités', 'Armoire normande ancienne, chêne massif, XIXe siècle', 3800, '2026-05-10', '2026-05-28'),
(58, 'Service porcelaine Limoges', 'Antiquités', 'Service 48 pièces porcelaine Limoges, années 1900', 2800, '2026-05-14', '2026-05-29');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cin` (`cin`);

--
-- Index pour la table `enchere`
--
ALTER TABLE `enchere`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cid` (`cid`),
  ADD KEY `pid` (`pid`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `enchere`
--
ALTER TABLE `enchere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `enchere`
--
ALTER TABLE `enchere`
  ADD CONSTRAINT `enchere_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `enchere_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `produit` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
