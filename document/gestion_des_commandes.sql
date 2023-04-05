-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 11 Janvier 2023 à 11:56
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `gestion des commandes`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `num_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(20) NOT NULL,
  `det_reference` varchar(20) NOT NULL,
  `cat_remise` varchar(20) NOT NULL,
  PRIMARY KEY (`num_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`num_categorie`, `nom_categorie`, `det_reference`, `cat_remise`) VALUES
(1, 'ordinateur', '1234', '15'),
(2, 'ecran', '5678', '10');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) NOT NULL,
  `civilite` varchar(20) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `dep` varchar(11) NOT NULL,
  `ville` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`id`, `civilite`, `nom`, `prenom`, `dep`, `ville`) VALUES
(1, 'monsieur', 'samsoen', 'nicolas', 'essonne', 'massy'),
(2, 'madame', 'Hottiaux', 'Laurence', 'haut de sei', 'clichy'),
(3, 'monsieur', 'boush', 'walid', 'yvelines', 'rambouillet');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE IF NOT EXISTS `commandes` (
  `num` int(11) NOT NULL,
  `client` varchar(11) NOT NULL,
  `date` date NOT NULL,
  `montant` int(11) NOT NULL,
  PRIMARY KEY (`num`),
  UNIQUE KEY `client_2` (`client`),
  KEY `client` (`client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commandes`
--

INSERT INTO `commandes` (`num`, `client`, `date`, `montant`) VALUES
(6514, '3', '2022-10-20', 120),
(6655, '2', '2023-01-11', 150),
(7458, '1', '2022-12-06', 150);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE IF NOT EXISTS `produits` (
  `ref` varchar(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prix` int(20) NOT NULL,
  `poids` int(20) NOT NULL,
  `vues` varchar(11) NOT NULL,
  `stock` varchar(11) NOT NULL,
  `code` int(11) NOT NULL,
  PRIMARY KEY (`ref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`ref`, `nom`, `prix`, `poids`, `vues`, `stock`, `code`) VALUES
('10000', 'pc', 750, 5, 'oui', 'oui', 7878),
('20000', 'ecran', 150, 3, 'non', 'oui', 5566),
('3000', 'bureau', 100, 50, 'oui ', 'non', 9392);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
