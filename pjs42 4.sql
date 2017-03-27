-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 27 Mars 2017 à 09:09
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pjs42`
--

-- --------------------------------------------------------

--
-- Structure de la table `annonce`
--

CREATE TABLE `annonce` (
  `IdAnnonce` int(20) NOT NULL,
  `NomAnnonce` varchar(25) DEFAULT NULL,
  `DateAnnonce` date DEFAULT NULL,
  `AdrAnnonce` varchar(60) DEFAULT NULL,
  `DescripAnnonce` varchar(500) DEFAULT NULL,
  `Recompense` int(255) DEFAULT NULL,
  `IdCategorie` int(11) DEFAULT NULL,
  `IdUser` int(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `annonce`
--

INSERT INTO `annonce` (`IdAnnonce`, `NomAnnonce`, `DateAnnonce`, `AdrAnnonce`, `DescripAnnonce`, `Recompense`, `IdCategorie`, `IdUser`) VALUES
(21, 'Aide', '2017-02-16', '75 rue des lilas', 'aide dns la rue des lilas', 500, 3, 1),
(20, 'Aide 2', '2017-02-16', '75 rue des lilas', 'Aide dns la rue des lilas', 500, 2, 2),
(19, 'BabySitting', '2017-02-16', '75 rue des lilas', 'BabySitting dns la rue des lilas', 500, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `IdCategorie` int(20) NOT NULL,
  `NomCategorie` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`IdCategorie`, `NomCategorie`) VALUES
(0, 'Jardinage'),
(1, 'Baby Sitting'),
(2, 'Bricolage'),
(3, 'Aide Cours');

-- --------------------------------------------------------

--
-- Structure de la table `categoriepref`
--

CREATE TABLE `categoriepref` (
  `IdCategorie` int(20) NOT NULL,
  `IdUser` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categoriepref`
--

INSERT INTO `categoriepref` (`IdCategorie`, `IdUser`) VALUES
(1, 1),
(2, 1),
(2, 2),
(3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `experience`
--

CREATE TABLE `experience` (
  `IdExperience` int(5) NOT NULL,
  `IdUser` int(5) NOT NULL,
  `Titre` varchar(100) CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL,
  `Description` varchar(100) CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE `formation` (
  `IdUser` int(5) NOT NULL,
  `Titre` varchar(100) CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL,
  `Description` varchar(200) CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL,
  `IdFormation` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `formation`
--

INSERT INTO `formation` (`IdUser`, `Titre`, `Description`, `IdFormation`) VALUES
(1, 'bac S', 'cool', 1);

-- --------------------------------------------------------

--
-- Structure de la table `loisir`
--

CREATE TABLE `loisir` (
  `IdLoisir` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `Titre` varchar(100) CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL,
  `Description` varchar(100) CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE `note` (
  `Note` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `postule`
--

CREATE TABLE `postule` (
  `IdAnnonce` int(20) NOT NULL,
  `IdUser` int(20) NOT NULL,
  `statut` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `postule`
--

INSERT INTO `postule` (`IdAnnonce`, `IdUser`, `statut`) VALUES
(19, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `IdUser` int(20) NOT NULL,
  `Nom` varchar(30) DEFAULT NULL,
  `Prenom` varchar(20) DEFAULT NULL,
  `Genre` varchar(10) DEFAULT NULL,
  `DateNaissance` varchar(10) CHARACTER SET armscii8 COLLATE armscii8_bin DEFAULT NULL,
  `Adresse` varchar(20) DEFAULT NULL,
  `Ville` varchar(300) NOT NULL,
  `Departement` varchar(300) NOT NULL,
  `Mail` varchar(20) DEFAULT NULL,
  `Telephone` int(10) DEFAULT NULL,
  `Situation` varchar(15) DEFAULT NULL,
  `NoteMoyenne` int(2) DEFAULT NULL,
  `Mdp` varchar(15) CHARACTER SET armscii8 COLLATE armscii8_bin DEFAULT NULL,
  `Photo` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`IdUser`, `Nom`, `Prenom`, `Genre`, `DateNaissance`, `Adresse`, `Ville`, `Departement`, `Mail`, `Telephone`, `Situation`, `NoteMoyenne`, `Mdp`, `Photo`) VALUES
(1, 'carou', 'cath', 'Femme', '1977-04-21', '85 rue de paris', 'Paris', 'Paris', 'carou.catherine@gmai', 782353362, 'etudiante', 0, 'a', NULL),
(2, 's', 's', 's', '1997-10-10', 's', '', '', 's', 10203, 's', NULL, 's', NULL),
(4, 'akrouche', 'anis', 'Homme', '1997-10-10', 'Les Lilas', '', '', 'anis', 102030405, 'Chomage', NULL, '123', NULL),
(5, 'carou', 'cat', 'Femme', '1950-10-10', 'Les Lilas', '', '', 'cat', 102050501, 'Etudiant', NULL, 'aze', NULL),
(6, 'gl', 'gl', 'Femme', '1998-10-10', 'Paris', '', '', 'gl', 20504020, 'Etudiant', NULL, 'gl', NULL),
(7, 'akrouche', 'amin', 'Homme', '1995-10-10', 'paris', '', '', 'amin', 105020204, 'Salarié', NULL, 'afdze', NULL),
(8, 'Nom', 'Prenom', 'Homme', '1010-10-10', 'Paris', '', '', 'Prenom', 102030405, 'Etudiant', NULL, '1234', NULL),
(9, 'anis', 'anis', 'Homme', '2021-02-10', 'Paris', '', '', 'anis', 102020202, 'SalariÃ©', NULL, 'fikgi*', NULL),
(10, 'Anis', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, 'tooy', NULL),
(11, 'A', 'A', 'Femme', '22/04/1999', 's', 'd', '01', 'af@gmail.com', 185445232, 'Etudiant', 0, 'a', '0'),
(12, 'A', 'A', 'Femme', '22/04/1999', 's', 'd', '01', 'af@gmail.com', 185445232, 'Etudiant', 0, 'a', '0'),
(13, 'A', 'A', 'Femme', '22/04/1999', 's', 'd', '01', 'af@gmail.com', 185445232, 'Etudiant', 0, 'a', '0');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `annonce`
--
ALTER TABLE `annonce`
  ADD PRIMARY KEY (`IdAnnonce`),
  ADD KEY `IdCategorie` (`IdCategorie`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`IdCategorie`);

--
-- Index pour la table `categoriepref`
--
ALTER TABLE `categoriepref`
  ADD PRIMARY KEY (`IdCategorie`,`IdUser`);

--
-- Index pour la table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`IdFormation`);

--
-- Index pour la table `postule`
--
ALTER TABLE `postule`
  ADD PRIMARY KEY (`IdAnnonce`,`IdUser`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`IdUser`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `annonce`
--
ALTER TABLE `annonce`
  MODIFY `IdAnnonce` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `IdUser` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
