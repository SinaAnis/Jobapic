-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Dim 05 Février 2017 à 19:34
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pjs4`
--

-- --------------------------------------------------------

--
-- Structure de la table `annonce`
--

CREATE TABLE `annonce` (
  `IdAnnonce` int(20) NOT NULL,
  `NomAnnonce` varchar(25) DEFAULT NULL,
  `DateAnnonce` date DEFAULT NULL,
  `AdrAnnonce` varchar(30) DEFAULT NULL,
  `DescripAnnonce` varchar(500) DEFAULT NULL,
  `Recompense` int(255) DEFAULT NULL,
  `IdCategorie` int(11) DEFAULT NULL,
  `IdUser` int(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `annonce`
--

INSERT INTO `annonce` (`IdAnnonce`, `NomAnnonce`, `DateAnnonce`, `AdrAnnonce`, `DescripAnnonce`, `Recompense`, `IdCategorie`, `IdUser`) VALUES
(1, 'test 1', NULL, NULL, 'test 1', NULL, NULL, 1),
(2, 'test 2', NULL, NULL, 'test 2', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `IdCategorie` int(20) NOT NULL,
  `NomCategorie` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `categoriepref`
--

CREATE TABLE `categoriepref` (
  `IdCategorie` int(20) NOT NULL,
  `IdUser` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `IdUser` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `IdUser` int(20) NOT NULL,
  `Nom` varchar(30) DEFAULT NULL,
  `Prenom` varchar(20) DEFAULT NULL,
  `Genre` varchar(10) DEFAULT NULL,
  `DateNaissance` date DEFAULT NULL,
  `Adresse` varchar(20) DEFAULT NULL,
  `Mail` varchar(20) DEFAULT NULL,
  `Telephone` int(10) DEFAULT NULL,
  `Situation` varchar(15) DEFAULT NULL,
  `NoteMoyenne` int(2) DEFAULT NULL,
  `Mdp` varchar(15) CHARACTER SET armscii8 COLLATE armscii8_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`IdUser`, `Nom`, `Prenom`, `Genre`, `DateNaissance`, `Adresse`, `Mail`, `Telephone`, `Situation`, `NoteMoyenne`, `Mdp`) VALUES
(1, 'carou', 'cath', 'f', '1977-04-22', 'a', 'carou.catherine@gmai', 782353362, 'etudiante', 0, 'a'),
(2, 's', 's', 's', '1997-10-10', 's', 's', 10203, 's', NULL, 's'),
(4, 'akrouche', 'anis', 'Homme', '1997-10-10', 'Les Lilas', 'anis', 102030405, 'Chomage', NULL, '123'),
(5, 'carou', 'cat', 'Femme', '1950-10-10', 'Les Lilas', 'cat', 102050501, 'Etudiant', NULL, 'aze'),
(6, 'gl', 'gl', 'Femme', '1998-10-10', 'Paris', 'gl', 20504020, 'Etudiant', NULL, 'gl'),
(7, 'akrouche', 'amin', 'Homme', '1995-10-10', 'paris', 'amin', 105020204, 'Salarié', NULL, 'afdze'),
(8, 'Nom', 'Prenom', 'Homme', '1010-10-10', 'Paris', 'Prenom', 102030405, 'Etudiant', NULL, '1234');

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
-- Index pour la table `postule`
--
ALTER TABLE `postule`
  ADD PRIMARY KEY (`IdAnnonce`,`IdUser`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`IdUser`),
  ADD UNIQUE KEY `mdp` (`Mdp`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `annonce`
--
ALTER TABLE `annonce`
  MODIFY `IdAnnonce` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `IdUser` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
