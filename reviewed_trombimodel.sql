-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 26 août 2021 à 05:46
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
-- Base de données : `reviewed_trombimodel`
--

-- --------------------------------------------------------

--
-- Structure de la table `autre_adresse`
--

CREATE TABLE `autre_adresse` (
  `adresse_id` varchar(5) NOT NULL,
  `adresse_nom` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `autre_materiel`
--

CREATE TABLE `autre_materiel` (
  `materiel_id` varchar(5) NOT NULL,
  `materiel_denomination` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `autre_partage`
--

CREATE TABLE `autre_partage` (
  `partage_id` varchar(3) NOT NULL,
  `partage_nom` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `checklist_info`
--

CREATE TABLE `checklist_info` (
  `list_id` varchar(5) NOT NULL,
  `machine_ref` varchar(20) DEFAULT NULL,
  `VPNServer_statut` varchar(3) DEFAULT NULL,
  `VPNBPOC_statut` varchar(3) DEFAULT NULL,
  `OCS_Statut` varchar(3) DEFAULT NULL,
  `partage00AMI_statut` varchar(3) DEFAULT NULL,
  `partage01Propales_statut` varchar(3) DEFAULT NULL,
  `partage02ProjetMission_statut` varchar(3) DEFAULT NULL,
  `partage04OutilsInternes_statut` varchar(3) DEFAULT NULL,
  `partage05Biblio_statut` varchar(3) DEFAULT NULL,
  `badge_statut` varchar(3) DEFAULT NULL,
  `badge_num` varchar(8) DEFAULT NULL,
  `habilitation_statut` varchar(10) DEFAULT NULL,
  `matricule` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `cursus`
--

CREATE TABLE `cursus` (
  `cursus_id` varchar(10) NOT NULL,
  `poste` varchar(100) DEFAULT NULL,
  `cursus_datedebut` date DEFAULT NULL,
  `cursus_datefin` date DEFAULT NULL,
  `entreprise` varchar(100) DEFAULT NULL,
  `matricule` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `departement_id` varchar(4) NOT NULL,
  `departement_nom` varchar(25) DEFAULT NULL,
  `departement_adresseGroup` varchar(40) DEFAULT NULL,
  `departement_partage` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `extension_mail`
--

CREATE TABLE `extension_mail` (
  `extension_id` varchar(5) NOT NULL,
  `extension_nom` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `habilitation`
--

CREATE TABLE `habilitation` (
  `habilitation_num` varchar(5) NOT NULL,
  `habilitation_categorie` varchar(12) DEFAULT NULL,
  `habilitation_nom` varchar(100) DEFAULT NULL,
  `habilitation_datedemande` date DEFAULT NULL,
  `demandeur_nom` varchar(60) DEFAULT NULL,
  `date_arrivee` date DEFAULT NULL,
  `date_depart` date DEFAULT NULL,
  `badge_statutCS` varchar(12) DEFAULT NULL,
  `besoinMateriel_statut` varchar(3) DEFAULT NULL,
  `pcFixe_statut` varchar(3) DEFAULT NULL,
  `portable_statut` varchar(3) DEFAULT NULL,
  `ancienUtilisateur` varchar(100) DEFAULT NULL,
  `note` varchar(250) DEFAULT NULL,
  `mail_statut` varchar(3) DEFAULT NULL,
  `personnel_adresseGroup` varchar(30) DEFAULT NULL,
  `routage_datedebut` date DEFAULT NULL,
  `routage_datefin` date DEFAULT NULL,
  `reponseAuto_statut` varchar(3) DEFAULT NULL,
  `reponseAuto_contenu` varchar(250) DEFAULT NULL,
  `reponseAutoSuppr_statut` varchar(3) DEFAULT NULL,
  `reponseAutoSuppr_date` date DEFAULT NULL,
  `repertoire_statut` varchar(3) DEFAULT NULL,
  `repertBPORH_detail` varchar(100) DEFAULT NULL,
  `libertempo_statut` varchar(3) DEFAULT NULL,
  `libertempo_rattachement` varchar(60) DEFAULT NULL,
  `glpi_statut` varchar(3) DEFAULT NULL,
  `timesheet_statut` varchar(3) DEFAULT NULL,
  `glpiTS_rattachement` varchar(60) DEFAULT NULL,
  `quadra_statut` varchar(3) DEFAULT NULL,
  `sageCompta_statut` varchar(3) DEFAULT NULL,
  `sageRH_statut` varchar(3) DEFAULT NULL,
  `matricule` varchar(10) NOT NULL,
  `partage_id` varchar(3) NOT NULL,
  `adresse_id` varchar(5) NOT NULL,
  `materiel_id` varchar(5) NOT NULL,
  `extension_id` varchar(5) NOT NULL,
  `routage_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `historique_habilitation`
--

CREATE TABLE `historique_habilitation` (
  `historique_id` varchar(10) NOT NULL,
  `historique_date` date DEFAULT NULL,
  `habilitation_motif` varchar(100) DEFAULT NULL,
  `habilitation_num` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

CREATE TABLE `personnel` (
  `matricule` varchar(10) NOT NULL,
  `personnel_nom` varchar(30) DEFAULT NULL,
  `personnel_prenom` varchar(30) DEFAULT NULL,
  `fonction` varchar(100) DEFAULT NULL,
  `personnel_statut` varchar(20) DEFAULT NULL,
  `personnel_mail` varchar(50) DEFAULT NULL,
  `personnel_phone` varchar(20) DEFAULT NULL,
  `departement_id` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `routage_mail`
--

CREATE TABLE `routage_mail` (
  `routage_id` varchar(5) NOT NULL,
  `routage_mail` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `autre_adresse`
--
ALTER TABLE `autre_adresse`
  ADD PRIMARY KEY (`adresse_id`);

--
-- Index pour la table `autre_materiel`
--
ALTER TABLE `autre_materiel`
  ADD PRIMARY KEY (`materiel_id`);

--
-- Index pour la table `autre_partage`
--
ALTER TABLE `autre_partage`
  ADD PRIMARY KEY (`partage_id`);

--
-- Index pour la table `checklist_info`
--
ALTER TABLE `checklist_info`
  ADD PRIMARY KEY (`list_id`),
  ADD KEY `FKCHECKLIST_78638` (`matricule`);

--
-- Index pour la table `cursus`
--
ALTER TABLE `cursus`
  ADD PRIMARY KEY (`cursus_id`),
  ADD KEY `FKCURSUS281864` (`matricule`);

--
-- Index pour la table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`departement_id`);

--
-- Index pour la table `extension_mail`
--
ALTER TABLE `extension_mail`
  ADD PRIMARY KEY (`extension_id`);

--
-- Index pour la table `habilitation`
--
ALTER TABLE `habilitation`
  ADD PRIMARY KEY (`habilitation_num`),
  ADD KEY `FKHABILITATI973510` (`matricule`),
  ADD KEY `FKHABILITATI461126` (`partage_id`),
  ADD KEY `FKHABILITATI418212` (`adresse_id`),
  ADD KEY `FKHABILITATI195550` (`materiel_id`),
  ADD KEY `FKHABILITATI195771` (`extension_id`),
  ADD KEY `FKHABILITATI393008` (`routage_id`);

--
-- Index pour la table `historique_habilitation`
--
ALTER TABLE `historique_habilitation`
  ADD PRIMARY KEY (`historique_id`),
  ADD KEY `FKHISTORIQUE322225` (`habilitation_num`);

--
-- Index pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`matricule`),
  ADD KEY `FKPERSONNEL732714` (`departement_id`);

--
-- Index pour la table `routage_mail`
--
ALTER TABLE `routage_mail`
  ADD PRIMARY KEY (`routage_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `checklist_info`
--
ALTER TABLE `checklist_info`
  ADD CONSTRAINT `FKCHECKLIST_78638` FOREIGN KEY (`matricule`) REFERENCES `personnel` (`matricule`);

--
-- Contraintes pour la table `cursus`
--
ALTER TABLE `cursus`
  ADD CONSTRAINT `FKCURSUS281864` FOREIGN KEY (`matricule`) REFERENCES `personnel` (`matricule`);

--
-- Contraintes pour la table `habilitation`
--
ALTER TABLE `habilitation`
  ADD CONSTRAINT `FKHABILITATI195550` FOREIGN KEY (`materiel_id`) REFERENCES `autre_materiel` (`materiel_id`),
  ADD CONSTRAINT `FKHABILITATI195771` FOREIGN KEY (`extension_id`) REFERENCES `extension_mail` (`extension_id`),
  ADD CONSTRAINT `FKHABILITATI393008` FOREIGN KEY (`routage_id`) REFERENCES `routage_mail` (`routage_id`),
  ADD CONSTRAINT `FKHABILITATI418212` FOREIGN KEY (`adresse_id`) REFERENCES `autre_adresse` (`adresse_id`),
  ADD CONSTRAINT `FKHABILITATI461126` FOREIGN KEY (`partage_id`) REFERENCES `autre_partage` (`partage_id`),
  ADD CONSTRAINT `FKHABILITATI973510` FOREIGN KEY (`matricule`) REFERENCES `personnel` (`matricule`);

--
-- Contraintes pour la table `historique_habilitation`
--
ALTER TABLE `historique_habilitation`
  ADD CONSTRAINT `FKHISTORIQUE322225` FOREIGN KEY (`habilitation_num`) REFERENCES `habilitation` (`habilitation_num`);

--
-- Contraintes pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD CONSTRAINT `FKPERSONNEL732714` FOREIGN KEY (`departement_id`) REFERENCES `departement` (`departement_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
