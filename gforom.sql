-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 31 août 2021 à 14:16
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gforom`
--

-- --------------------------------------------------------

--
-- Structure de la table `commentforum`
--

CREATE TABLE `commentforum` (
  `id` int(11) NOT NULL,
  `forum_id` int(11) DEFAULT NULL,
  `commentaire` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commentforum`
--

INSERT INTO `commentforum` (`id`, `forum_id`, `commentaire`) VALUES
(1, 7, 'hh'),
(2, 7, 'mmlo'),
(3, 14, 'hhhh'),
(4, 14, 'hhhh'),
(5, 7, 'hhuyumlkk'),
(6, 7, 'hhuyumlkk'),
(7, 7, 'hhuyumlkk'),
(8, 22, 'lhkjhb'),
(10, 22, '*****'),
(11, 22, '*****'),
(12, 7, '****');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210429235901', '2021-04-30 02:02:16', 275);

-- --------------------------------------------------------

--
-- Structure de la table `forum`
--

CREATE TABLE `forum` (
  `id` int(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `titre` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `forum`
--

INSERT INTO `forum` (`id`, `type`, `titre`, `date`) VALUES
(7, 'guitare', 'electrique', '2021-04-22'),
(8, 'piano', 'classique', '2021-04-06'),
(14, 'guitare', 'electrique', '2021-04-04'),
(15, 'violant', 'classique', '2021-04-06'),
(16, 'trumpet', 'classique', '2021-04-22'),
(17, 'violant', 'electrique', '2021-04-22'),
(18, 'aoud', 'classique', '2021-04-22'),
(20, 'aoud', 'bois', '2021-04-29'),
(21, 'saxophone', 'métallique', '2021-04-29'),
(22, 'violant', 'bois', '2021-04-30'),
(23, 'tam tam', 'classique', '2021-04-30'),
(24, 'batterie', 'electrique', '2021-04-29'),
(25, 'batterie', 'classique', '2021-04-22'),
(26, 'piano', 'métallique', '2021-04-28'),
(27, 'darbouka', 'classique', '2021-04-22'),
(29, 'trumpet', 'metalique', '2021-08-30');

-- --------------------------------------------------------

--
-- Structure de la table `sujet`
--

CREATE TABLE `sujet` (
  `nom` varchar(50) NOT NULL,
  `objet` varchar(50) NOT NULL,
  `commentaire` varchar(300) NOT NULL,
  `ide` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `sujet`
--

INSERT INTO `sujet` (`nom`, `objet`, `commentaire`, `ide`) VALUES
('hhhh', 'otail', 'hhhhhhhhh', 6),
('hhh', 'kkk', 'hhhhh', 7),
('mohamed', 'yacine', 'hhhh', 11),
('ggggg', 'otail', 'dddd', 15),
('yacine', 'ali', 'wino guitare', 16),
('bouha', 'morsi', 'aslema', 17),
('omar', 'electrique', 'how much', 18),
('yacine', 'guitare', '*****', 21),
('yacine', 'classique', 'pourqoi?', 22),
('klklk', 'classique', 'jgf,hjl!kj', 24),
('klklk', 'classique', 'jgf,hjl!kj', 25),
('klklk', 'classique', 'jgf,hjl!kj', 26),
('klklk', 'classique', 'jgf,hjl!k', 27);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commentforum`
--
ALTER TABLE `commentforum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FE386C3A29CCBAD0` (`forum_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sujet`
--
ALTER TABLE `sujet`
  ADD PRIMARY KEY (`ide`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commentforum`
--
ALTER TABLE `commentforum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `forum`
--
ALTER TABLE `forum`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `sujet`
--
ALTER TABLE `sujet`
  MODIFY `ide` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commentforum`
--
ALTER TABLE `commentforum`
  ADD CONSTRAINT `FK_FE386C3A29CCBAD0` FOREIGN KEY (`forum_id`) REFERENCES `forum` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
