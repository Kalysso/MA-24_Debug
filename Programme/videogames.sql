-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 28 août 2018 à 13:03
-- Version du serveur :  5.7.21
-- Version de PHP :  5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `videogames`
--
DROP DATABASE IF EXISTS videogames;
CREATE DATABASE videogames;

USE videogames;
-- --------------------------------------------------------

--
-- Structure de la table `developers`
--

DROP TABLE IF EXISTS `developers`;
CREATE TABLE IF NOT EXISTS `developers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
);

--
-- Déchargement des données de la table `developer`
--

INSERT INTO `developers` (`id`, `name`) VALUES
(1, 'Epic Games'),
(2, 'People Can Fly'),
(3, 'First touch'),
(5, 'Tomorrow Corporation'),
(17, 'Harty Show'),
(15, 'Sam Chatouille');

-- --------------------------------------------------------

--
-- Structure de la table `developervideogame`
--

DROP TABLE IF EXISTS `developervideogames`;
CREATE TABLE IF NOT EXISTS `developervideogames` (
  `id` int NOT NULL AUTO_INCREMENT,
  `videogame_id` int NOT NULL,
  `developer_id` int NOT NULL,
  PRIMARY KEY (`id`)
);

--
-- Déchargement des données de la table `developervideogame`
--

INSERT INTO `developervideogames` (`id`, `videogame_id`, `developer_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(7, 20, 5);

-- --------------------------------------------------------

--
-- Structure de la table `editor`
--

DROP TABLE IF EXISTS `editors`;
CREATE TABLE IF NOT EXISTS `editors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ;

--
-- Déchargement des données de la table `editor`
--

INSERT INTO `editors` (`id`, `name`) VALUES
(1, 'Epic Games'),
(2, 'Tomorrow Corporation'),
(3, 'First touch');

-- --------------------------------------------------------

--
-- Structure de la table `editorvideogame`
--

DROP TABLE IF EXISTS `editorvideogames`;
CREATE TABLE IF NOT EXISTS `editorvideogames` (
  `id` int NOT NULL AUTO_INCREMENT,
  `videogame_id` int NOT NULL,
  `editor_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ;

--
-- Déchargement des données de la table `editorvideogame`
--

INSERT INTO `editorvideogames` (`id`, `videogame_id`, `editor_id`) VALUES
(1, 1, 1),
(4, 2, 3),
(12, 20, 2);

-- --------------------------------------------------------

--
-- Structure de la table `platform`
--

DROP TABLE IF EXISTS `platforms`;
CREATE TABLE IF NOT EXISTS `platforms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ;

--
-- Déchargement des données de la table `platform`
--

INSERT INTO `platforms` (`id`, `name`) VALUES
(1, 'Nintendo'),
(2, 'Wii'),
(3, 'DS'),
(4, 'Playstation'),
(5, 'Xbox'),
(6, 'PC'),
(7, 'Smartphone');

-- --------------------------------------------------------

--
-- Structure de la table `platformvideogame`
--

DROP TABLE IF EXISTS `platformvideogames`;
CREATE TABLE IF NOT EXISTS `platformvideogames` (
  `id` int NOT NULL AUTO_INCREMENT,
  `platform_id` int NOT NULL,
  `videogame_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ;

--
-- Déchargement des données de la table `platformvideogame`
--

INSERT INTO `platformvideogames` (`id`, `platform_id`, `videogame_id`) VALUES
(1, 1, 1),
(2, 6, 1),
(3, 4, 1),
(4, 1, 2),
(30, 6, 20),
(31, 7, 20);

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

DROP TABLE IF EXISTS `types`;
CREATE TABLE IF NOT EXISTS `types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
);

--
-- Déchargement des données de la table `type`
--

INSERT INTO `types` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Action-aventure'),
(3, 'Aventure'),
(4, 'Jeu de rôle'),
(5, 'Réflexion'),
(6, 'Simulation'),
(7, 'Puzzle'),
(8, 'Casse-brique'),
(9, 'Programmation'),
(10, 'Bac à sable'),
(11, 'Sport');

-- --------------------------------------------------------

--
-- Structure de la table `videogame`
--

DROP TABLE IF EXISTS `videogames`;
CREATE TABLE IF NOT EXISTS `videogames` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dateoutput` date NOT NULL,
  `type_id` int NOT NULL,
  PRIMARY KEY (`id`)
);

--
-- Déchargement des données de la table `videogame`
--

INSERT INTO `videogames` (`id`, `name`, `dateoutput`, `type_id`) VALUES
(1, 'Fortnite', '2017-06-01', 3),
(2, 'DreamLeagues', '2018-07-30', 11),
(20, 'Human Resource Machine', '2018-02-05', 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
