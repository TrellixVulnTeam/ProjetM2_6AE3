-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 07 juin 2021 à 11:09
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `trombi_model`
--

-- --------------------------------------------------------

--
-- Structure de la table `checklist_info`
--

CREATE TABLE `checklist_info` (
  `List_id` varchar(5) NOT NULL,
  `Machine_Ref` varchar(20) DEFAULT NULL,
  `VPNServer_Statut` varchar(3) DEFAULT NULL,
  `VPNBPOC_Statut` varchar(3) DEFAULT NULL,
  `VPNBPORH_Statut` int(3) DEFAULT NULL,
  `OCS_Statut` varchar(3) DEFAULT NULL,
  `Partage00AMI_Statut` varchar(3) DEFAULT NULL,
  `Partage01Propales_Statut` varchar(3) DEFAULT NULL,
  `Partage02ProjetMission_Statut` varchar(3) DEFAULT NULL,
  `Partage04OutilsInternes_Statut` varchar(3) DEFAULT NULL,
  `Partage05Biblio_Statut` varchar(3) DEFAULT NULL,
  `Partage06Qualite_Statut` varchar(3) DEFAULT NULL,
  `Badge_Statut` varchar(3) DEFAULT NULL,
  `Badge_Num` varchar(8) DEFAULT NULL,
  `Habilitation_Statut` varchar(10) DEFAULT NULL,
  `Matricule` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `cursus`
--

CREATE TABLE `cursus` (
  `Cursus_id` varchar(10) NOT NULL,
  `Poste` varchar(100) DEFAULT NULL,
  `Cursus_DateDebut` date DEFAULT NULL,
  `Cursus_DateFin` date DEFAULT NULL,
  `Entreprise` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `cursus_personnel`
--

CREATE TABLE `cursus_personnel` (
  `Cursus_id` varchar(10) NOT NULL,
  `Matricule` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `Departement_id` varchar(4) NOT NULL,
  `Departement_Nom` varchar(25) DEFAULT NULL,
  `Departement_AdresseGroupE` varchar(40) DEFAULT NULL,
  `Departement_Partage` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `habilitation`
--

CREATE TABLE `habilitation` (
  `Habilitation_num` varchar(5) NOT NULL,
  `Habilitation_Statut` varchar(12) DEFAULT NULL,
  `Habilitation_nom` varchar(100) DEFAULT NULL,
  `Habilitation_DateDemande` date DEFAULT NULL,
  `Demandeur_Nom` varchar(60) DEFAULT NULL,
  `Date_Arrivee` date DEFAULT NULL,
  `Date_Depart` date DEFAULT NULL,
  `Badge_StatutCS` varchar(12) DEFAULT NULL,
  `BesoinMateriel_Statut` varchar(3) DEFAULT NULL,
  `PCFixe_Statut` varchar(3) DEFAULT NULL,
  `Portable_Statut` varchar(3) DEFAULT NULL,
  `AutreMatériel` varchar(100) DEFAULT NULL,
  `AncienUtilisateur` varchar(100) DEFAULT NULL,
  `Note` varchar(100) DEFAULT NULL,
  `Mail_Statut` varchar(12) DEFAULT NULL,
  `Mail_Extension` varchar(20) DEFAULT NULL,
  `Personnel_AdresseGroupE` varchar(30) DEFAULT NULL,
  `AutreAdresse` varchar(40) DEFAULT NULL,
  `Mail_Routage` varchar(50) DEFAULT NULL,
  `Routage_DateDebut` date DEFAULT NULL,
  `Routage_DateFin` date DEFAULT NULL,
  `ReponseAuto_Statut` varchar(3) DEFAULT NULL,
  `ReponseAuto_Contenu` varchar(250) DEFAULT NULL,
  `ReponseAutoSuppr_Statut` varchar(3) DEFAULT NULL,
  `ReponseAutoSuppr_Date` date DEFAULT NULL,
  `Repertoire_Statut` varchar(3) DEFAULT NULL,
  `AutrePartage` varchar(40) DEFAULT NULL,
  `Repertoire_Detail` varchar(40) DEFAULT NULL,
  `Libertempo_Statut` varchar(3) DEFAULT NULL,
  `Demandeur_Libertempo` varchar(60) DEFAULT NULL,
  `GLPI_Statut` varchar(3) DEFAULT NULL,
  `Timesheet_Statut` varchar(3) DEFAULT NULL,
  `Demandeur_GT` varchar(60) DEFAULT NULL,
  `Quadra_Statut` varchar(3) DEFAULT NULL,
  `SageCompta_Statut` varchar(3) DEFAULT NULL,
  `SageRH_Statut` varchar(3) DEFAULT NULL,
  `Matricule` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `historique_habilitation`
--

CREATE TABLE `historique_habilitation` (
  `Historique_id` varchar(10) NOT NULL,
  `Historique_date` date DEFAULT NULL,
  `Habilitation_Motif` varchar(100) DEFAULT NULL,
  `Habilitation_num` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

CREATE TABLE `personnel` (
  `Matricule` varchar(10) NOT NULL,
  `Personnel_Nom` varchar(30) DEFAULT NULL,
  `Personnel_Prenom` varchar(30) DEFAULT NULL,
  `Fonction` varchar(100) DEFAULT NULL,
  `Personnel_Statut` varchar(20) DEFAULT NULL,
  `Personnel_Mail` varchar(50) DEFAULT NULL,
  `Personnel_phone` varchar(20) DEFAULT NULL,
  `Departement_id` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `sauvegarde_mail`
--

CREATE TABLE `sauvegarde_mail` (
  `Sauvegarde_id` varchar(5) NOT NULL,
  `Sauvegarde_date` date DEFAULT NULL,
  `List_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `users` (
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `checklist_info`
--
ALTER TABLE `checklist_info`
  ADD PRIMARY KEY (`List_id`),
  ADD KEY `FKCHECKLIST_861305` (`Matricule`);

--
-- Index pour la table `cursus`
--
ALTER TABLE `cursus`
  ADD PRIMARY KEY (`Cursus_id`);

--
-- Index pour la table `cursus_personnel`
--
ALTER TABLE `cursus_personnel`
  ADD PRIMARY KEY (`Cursus_id`,`Matricule`),
  ADD KEY `FKCURSUS_PER468039` (`Matricule`);

--
-- Index pour la table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`Departement_id`);

--
-- Index pour la table `habilitation`
--
ALTER TABLE `habilitation`
  ADD PRIMARY KEY (`Habilitation_num`),
  ADD KEY `FKHABILITATI58136` (`Matricule`);

--
-- Index pour la table `historique_habilitation`
--
ALTER TABLE `historique_habilitation`
  ADD PRIMARY KEY (`Historique_id`),
  ADD KEY `FKHISTORIQUE230500` (`Habilitation_num`);

--
-- Index pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`Matricule`),
  ADD KEY `FKPERSONNEL255657` (`Departement_id`);

--
-- Index pour la table `sauvegarde_mail`
--
ALTER TABLE `sauvegarde_mail`
  ADD PRIMARY KEY (`Sauvegarde_id`),
  ADD KEY `FKSAUVEGARDE211902` (`List_id`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `checklist_info`
--
ALTER TABLE `checklist_info`
  ADD CONSTRAINT `FKCHECKLIST_861305` FOREIGN KEY (`Matricule`) REFERENCES `personnel` (`Matricule`);

--
-- Contraintes pour la table `cursus_personnel`
--
ALTER TABLE `cursus_personnel`
  ADD CONSTRAINT `FKCURSUS_PER468039` FOREIGN KEY (`Matricule`) REFERENCES `personnel` (`Matricule`),
  ADD CONSTRAINT `FKCURSUS_PER546289` FOREIGN KEY (`Cursus_id`) REFERENCES `cursus` (`Cursus_id`);

--
-- Contraintes pour la table `habilitation`
--
ALTER TABLE `habilitation`
  ADD CONSTRAINT `FKHABILITATI58136` FOREIGN KEY (`Matricule`) REFERENCES `personnel` (`Matricule`);

--
-- Contraintes pour la table `historique_habilitation`
--
ALTER TABLE `historique_habilitation`
  ADD CONSTRAINT `FKHISTORIQUE230500` FOREIGN KEY (`Habilitation_num`) REFERENCES `habilitation` (`Habilitation_num`);

--
-- Contraintes pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD CONSTRAINT `FKPERSONNEL255657` FOREIGN KEY (`Departement_id`) REFERENCES `departement` (`Departement_id`);

--
-- Contraintes pour la table `sauvegarde_mail`
--
ALTER TABLE `sauvegarde_mail`
  ADD CONSTRAINT `FKSAUVEGARDE211902` FOREIGN KEY (`List_id`) REFERENCES `checklist_info` (`List_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
