-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 31 Janvier 2017 à 00:00
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `pjs4`
--

-- --------------------------------------------------------

--
-- Structure de la table `annonce`
--

CREATE TABLE IF NOT EXISTS `annonce` (
  `IdAnnonce` int(20) NOT NULL,
  `NomAnnonce` varchar(25) NOT NULL,
  `DateAnnonce` date NOT NULL,
  `AdrAnnonce` varchar(30) NOT NULL,
  `DescripAnnonce` varchar(500) NOT NULL,
  `Recompense` int(255) NOT NULL,
  `IdCategorie` int(11) NOT NULL,
  `IdUser` int(20) NOT NULL,
  PRIMARY KEY (`IdAnnonce`),
  KEY `IdCategorie` (`IdCategorie`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `IdCategorie` int(20) NOT NULL,
  `NomCategorie` varchar(20) NOT NULL,
  PRIMARY KEY (`IdCategorie`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `categoriepref`
--

CREATE TABLE IF NOT EXISTS `categoriepref` (
  `IdCategorie` int(20) NOT NULL,
  `IdUser` int(20) NOT NULL,
  PRIMARY KEY (`IdCategorie`,`IdUser`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE IF NOT EXISTS `note` (
  `Note` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `postule`
--

CREATE TABLE IF NOT EXISTS `postule` (
  `IdAnnonce` int(20) NOT NULL,
  `IdUser` int(20) NOT NULL,
  PRIMARY KEY (`IdAnnonce`,`IdUser`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `IdUser` int(20) NOT NULL,
  `Nom` varchar(30) NOT NULL,
  `Prenom` varchar(20) NOT NULL,
  `Genre` varchar(10) NOT NULL,
  `Date naissance` date NOT NULL,
  `Adresse` varchar(20) NOT NULL,
  `Mail` varchar(20) NOT NULL,
  `Telephone` int(10) NOT NULL,
  `Situation` varchar(15) NOT NULL,
  `NoteMoyenne` int(2) NOT NULL,
  `Mdp` varchar(15) CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL,
  PRIMARY KEY (`IdUser`),
  UNIQUE KEY `mdp` (`Mdp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`IdUser`, `Nom`, `Prenom`, `Genre`, `Date naissance`, `Adresse`, `Mail`, `Telephone`, `Situation`, `NoteMoyenne`, `Mdp`) VALUES
(1, 'carou', 'cath', 'f', '1977-04-22', 'a', 'carou.catherine@gmai', 782353362, 'etudiante', 0, 'a');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
