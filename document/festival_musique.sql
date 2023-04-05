-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 25 Janvier 2023 à 11:22
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `festival_musique`
--

-- --------------------------------------------------------

--
-- Structure de la table `musicien`
--

CREATE TABLE IF NOT EXISTS `musicien` (
  `Num_mus` int(20) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `Num_Rep` int(20) NOT NULL,
  PRIMARY KEY (`Num_mus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `musicien`
--

INSERT INTO `musicien` (`Num_mus`, `nom`, `Num_Rep`) VALUES
(1, 'jul', 1),
(2, 'ni', 2);

-- --------------------------------------------------------

--
-- Structure de la table `programmer`
--

CREATE TABLE IF NOT EXISTS `programmer` (
  `Date` date NOT NULL,
  `Num_Rep` int(20) NOT NULL,
  `tarif` int(20) NOT NULL,
  PRIMARY KEY (`Date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `programmer`
--

INSERT INTO `programmer` (`Date`, `Num_Rep`, `tarif`) VALUES
('2023-01-25', 1, 50),
('2020-01-18', 2, 35);

-- --------------------------------------------------------

--
-- Structure de la table `representation`
--

CREATE TABLE IF NOT EXISTS `representation` (
  `Num_Rep` int(20) NOT NULL,
  `titre_Rep` varchar(20) NOT NULL,
  `lieu` varchar(20) NOT NULL,
  PRIMARY KEY (`Num_Rep`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `representation`
--

INSERT INTO `representation` (`Num_Rep`, `titre_Rep`, `lieu`) VALUES
(1, 'azer', 'paris'),
(2, 'tyuiop', 'lille'),
(20, 'hfiuqhfd', 'théâtre allissa'),
(5, 'hfiuqhfd', 'théâtre allissa'),
(3, 'hfiuqhfd', 'théâtre allissa');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
