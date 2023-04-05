-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 25 Janvier 2023 à 11:52
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `bd_air`
--

-- --------------------------------------------------------

--
-- Structure de la table `avion`
--

CREATE TABLE IF NOT EXISTS `avion` (
  `NUMAV` int(20) NOT NULL,
  `NOMAV` varchar(20) NOT NULL,
  `CAPACITE` int(20) NOT NULL,
  `VILLE` varchar(20) NOT NULL,
  PRIMARY KEY (`NUMAV`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `avion`
--

INSERT INTO `avion` (`NUMAV`, `NOMAV`, `CAPACITE`, `VILLE`) VALUES
(123, 'boeing', 400, 'marrackech'),
(999, 'azer', 2, 'Paris');

-- --------------------------------------------------------

--
-- Structure de la table `pilote`
--

CREATE TABLE IF NOT EXISTS `pilote` (
  `NUMPIL` int(20) NOT NULL,
  `NOMPIL` varchar(20) NOT NULL,
  `VILLE` varchar(20) NOT NULL,
  `SALAIRE` int(20) NOT NULL,
  PRIMARY KEY (`NUMPIL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `pilote`
--

INSERT INTO `pilote` (`NUMPIL`, `NOMPIL`, `VILLE`, `SALAIRE`) VALUES
(1, 'michel', 'marrackech', 3000),
(2, 'alex', 'marrackech', 3500);

-- --------------------------------------------------------

--
-- Structure de la table `vol`
--

CREATE TABLE IF NOT EXISTS `vol` (
  `NUMVOL` int(20) NOT NULL,
  `NUMPIL` int(20) NOT NULL,
  `NUMAV` int(20) NOT NULL,
  `VILLE_DEP` varchar(20) NOT NULL,
  `VILLE_ARR` varchar(20) NOT NULL,
  `H_DEP` int(20) NOT NULL,
  `H_ARR` int(20) NOT NULL,
  PRIMARY KEY (`NUMVOL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `vol`
--

INSERT INTO `vol` (`NUMVOL`, `NUMPIL`, `NUMAV`, `VILLE_DEP`, `VILLE_ARR`, `H_DEP`, `H_ARR`) VALUES
(78, 1, 123, 'guelmim', 'marrackech', 18, 19),
(412, 2, 999, 'paris', 'moskou', 6, 8);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
