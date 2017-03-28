-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mar 28 Mars 2017 à 19:23
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
  `AdrAnnonce` varchar(60) DEFAULT NULL,
  `DescripAnnonce` varchar(500) DEFAULT NULL,
  `Recompense` int(255) DEFAULT NULL,
  `IdCategorie` int(11) DEFAULT NULL,
  `IdUser` int(20) DEFAULT NULL,
  `Longitude` int(11) DEFAULT NULL,
  `Latitude` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `annonce`
--

INSERT INTO `annonce` (`IdAnnonce`, `NomAnnonce`, `DateAnnonce`, `AdrAnnonce`, `DescripAnnonce`, `Recompense`, `IdCategorie`, `IdUser`, `Longitude`, `Latitude`) VALUES
(21, 'Aide', '2017-02-16', '75 rue des lilas', 'aide dns la rue des lilas', 500, 3, 1, 0, 0),
(20, 'Aide 2', '2017-02-16', '75 rue des lilas', 'Aide dns la rue des lilas', 500, 2, 2, 0, 0),
(19, 'BabySitting', '2017-02-16', '75 rue des lilas', 'BabySitting dns la rue des lilas', 500, 1, 1, 0, 0);

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
(0, 5),
(0, 52),
(0, 54),
(1, 1),
(1, 5),
(1, 52),
(1, 54),
(2, 1),
(2, 2),
(2, 5),
(2, 52),
(2, 54),
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
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `idMessage` int(11) NOT NULL,
  `Expediteur` varchar(30) NOT NULL,
  `Destinataire` varchar(30) NOT NULL,
  `objet` varchar(300) NOT NULL,
  `Texte` text NOT NULL,
  `Date` varchar(4000) NOT NULL,
  `Lu` tinyint(1) NOT NULL DEFAULT '0',
  `Favoris` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `message`
--

INSERT INTO `message` (`idMessage`, `Expediteur`, `Destinataire`, `objet`, `Texte`, `Date`, `Lu`, `Favoris`) VALUES
(22, '1', '1', 'Reponse : ', 'REponse', '2017-03-28 13:21:58', 0, 0),
(21, '1', '1', 'Reponse : ', 'REponse', '2017-03-28 13:20:12', 0, 0),
(20, '1', '1', 'YO je tue tout le monde', 'Yo je suis', '2017-03-28 13:18:28', 0, 0),
(19, '1', '1', 'Premier Message', 'Yoo\r\nMessage 2\r\nCordial', '2017-03-28 13:17:46', 0, 0),
(18, '1', '1', 'RÃ©ponse : ', 'Anis', '2017-03-28 13:15:02', 0, 0),
(17, '1', '1', 'RÃ©ponse : ', 'Yo', '2017-03-28 13:14:17', 0, 0),
(16, '', '', '', 'Salut', '2017-03-28 13:12:29', 0, 0),
(15, '1', '1', 'Retest 2', 'Salut\r\nVoila je retest la messagerie donc je sais pas quoi ecrire \r\nBye bye', '2017-03-28 13:01:18', 0, 0),
(14, '1', '1', 'Lettre a moi mÃªme', 'Bonjour moi, je vais bien la vie se passe bien , la famille elle va bien je te souhaite tout le bonheur\nComment va tu ?\nCordialement \n', '2017-03-28 12:11:26', 0, 0),
(23, '1', '1', 'Reponse : ', 'Je te repond', '2017-03-28 13:22:39', 0, 0),
(24, '1', '1', 'Reponse : ', 'Je te repond', '2017-03-28 13:22:45', 0, 0),
(25, '1', '1', 'Reponse : ', 'Salut', '2017-03-28 13:23:16', 0, 0),
(26, '1', '1', 'Reponse : ', 'pol\r\n', '2017-03-28 13:24:34', 0, 0),
(27, '1', '1', 'Reponse : ', 'pol\r\n', '2017-03-28 13:24:44', 0, 0),
(28, '1', '1', 'Reponse : ', 'lo', '2017-03-28 13:25:21', 0, 0),
(29, '1', '1', 'Reponse : ', 'lo', '2017-03-28 13:25:37', 0, 0),
(30, '1', '1', 'Test', 'Bonjou,\r\nYO,\r\nCordial', '2017-03-28 14:25:18', 0, 0),
(31, '1', '1', 'Test', 'Je test', '2017-03-28 14:31:24', 0, 0),
(32, '1', '1', 'YO', 'je te repnd', '2017-03-28 14:31:50', 0, 0),
(33, '1', '1', 'Premier', 'rep\r\n', '2017-03-28 14:32:08', 0, 0),
(34, '1', '1', 'Reponse:', 't', '2017-03-28 14:33:35', 0, 0),
(35, '1', '1', 'Reponse :Reponse:', 't', '2017-03-28 14:34:29', 0, 0),
(36, '1', '1', 'Reponse :YO', 'je te repo', '2017-03-28 14:34:38', 0, 0),
(37, '1', '1', 'Reponse : YO', 'r', '2017-03-28 14:34:58', 0, 0),
(38, '1', '1', 'Reponse : YO...', 'r', '2017-03-28 14:35:29', 0, 0),
(39, '1', '1', 'Reponse : YO...', 'pp\r\n', '2017-03-28 14:35:37', 0, 0),
(40, '1', '1', 'Reponse : YO...', 'pp\r\n', '2017-03-28 14:36:13', 0, 0);

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
(19, 1, 1),
(20, 1, 0);

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
(49, 'NOM', 'Prenom', 'Homme', '21/10/2010', '85 rue de paris', 'Les Lilas', '19', 'email@email.fr', 120212523, 'SalariÃ©', NULL, '25', NULL),
(50, 'PRE', 'Pre', 'Femme', '21/10/1999', 'dfdf', 'dfdf', '01', 'boris@boris.com', 122222222, 'Etudiant', NULL, '25', NULL),
(51, 'TEP', 'Pre', 'Femme', '21/10/2010', 'df', 'fdf', '01', 'boris@boris.c', 120202020, 'Etudiant', NULL, '25', NULL),
(52, 'pere', 'pere', 'Femme', '10/10/1995', 'dsd', 'fdf', '01', 'boris@boris.com', 12222222, 'Etudiant', NULL, '25', NULL),
(53, 'pere', 'pere', 'Femme', '12/10/2010', '5555', 'qsdqsd', '01', 'boris@boris.com', 12022122, 'Etudiant', NULL, '25', NULL),
(54, '21', '21', 'Femme', '22/04/1997', '95', 'lglg', '01', 'ohihi@gmai.com', 152225522, 'Etudiant', NULL, '', NULL);

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
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`idMessage`);

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
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `idMessage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `IdUser` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
