-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 03 juin 2021 à 14:44
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `reservations`
--

-- --------------------------------------------------------

--
-- Structure de la table `artists`
--

CREATE TABLE `artists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `artists`
--

INSERT INTO `artists` (`id`, `firstname`, `lastname`) VALUES
(1, 'Daniel', 'Marcelin'),
(2, 'Philippe', 'Laurent'),
(3, 'Marius', 'Von Mayenburg'),
(4, 'Olivier', 'Boudon'),
(5, 'Anne Marie', 'Loop'),
(6, 'Pietro', 'Varasso'),
(7, 'Laurent', 'Caron'),
(8, 'Élena', 'Perez'),
(9, 'Guillaume', 'Alexandre'),
(10, 'Claude', 'Semal'),
(11, 'Laurence', 'Warin'),
(12, 'Pierre', 'Wayburn'),
(13, 'Gwendoline', 'Gauthier');

-- --------------------------------------------------------

--
-- Structure de la table `artist_type`
--

CREATE TABLE `artist_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `artist_id` bigint(20) UNSIGNED NOT NULL,
  `type_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `artist_type`
--

INSERT INTO `artist_type` (`id`, `artist_id`, `type_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 1, 2),
(4, 2, 2),
(5, 1, 3),
(6, 3, 1),
(7, 4, 2),
(8, 5, 3),
(9, 6, 3),
(10, 7, 3),
(11, 8, 3),
(12, 9, 3),
(13, 10, 1),
(14, 11, 2),
(15, 10, 3),
(16, 12, 1),
(17, 13, 1),
(18, 2, 2),
(19, 12, 3),
(20, 13, 3);

-- --------------------------------------------------------

--
-- Structure de la table `artist_type_show`
--

CREATE TABLE `artist_type_show` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `artist_type_id` bigint(20) UNSIGNED NOT NULL,
  `show_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `artist_type_show`
--

INSERT INTO `artist_type_show` (`id`, `artist_type_id`, `show_id`) VALUES
(1, 1, 27),
(2, 15, 80),
(3, 7, 99),
(4, 9, 13),
(5, 19, 199),
(6, 2, 26),
(7, 10, 65),
(8, 6, 145),
(9, 9, 139),
(10, 7, 42),
(11, 15, 176),
(12, 2, 21),
(13, 5, 48),
(14, 15, 21),
(15, 15, 147),
(16, 5, 182),
(17, 20, 103),
(18, 12, 84),
(19, 6, 115),
(20, 19, 65),
(21, 13, 39),
(22, 3, 106),
(23, 13, 37),
(24, 6, 161),
(25, 10, 112),
(26, 13, 52),
(27, 5, 202),
(28, 17, 96),
(29, 16, 139),
(30, 18, 150),
(31, 8, 55),
(32, 11, 99),
(33, 12, 89),
(34, 15, 151),
(35, 15, 35),
(36, 6, 204),
(37, 2, 54),
(38, 5, 143),
(39, 20, 189),
(40, 7, 40),
(41, 14, 99),
(42, 9, 120),
(43, 7, 183),
(44, 2, 202),
(45, 11, 173),
(46, 6, 56),
(47, 2, 172),
(48, 3, 81),
(49, 11, 106),
(50, 8, 15),
(51, 12, 112),
(52, 8, 183),
(53, 9, 67),
(54, 6, 185),
(55, 19, 149),
(56, 9, 13),
(57, 20, 9),
(58, 8, 104),
(59, 2, 202),
(60, 6, 125),
(61, 20, 88),
(62, 8, 86),
(63, 7, 64),
(64, 14, 40),
(65, 7, 112),
(66, 14, 180),
(67, 2, 142),
(68, 6, 114),
(69, 4, 110),
(70, 3, 59),
(71, 17, 189),
(72, 8, 179),
(73, 17, 83),
(74, 14, 148),
(75, 10, 72),
(76, 15, 157),
(77, 8, 9),
(78, 19, 71),
(79, 8, 146),
(80, 5, 50),
(81, 6, 167),
(82, 16, 14),
(83, 12, 58),
(84, 7, 35),
(85, 19, 82),
(86, 20, 137),
(87, 9, 180),
(88, 7, 167),
(89, 16, 145),
(90, 13, 185),
(91, 1, 189),
(92, 18, 170),
(93, 16, 51),
(94, 17, 148),
(95, 18, 144),
(96, 11, 45),
(97, 6, 70),
(98, 13, 100),
(99, 2, 164),
(100, 12, 9),
(101, 5, 200),
(102, 14, 167),
(103, 15, 81),
(104, 10, 185),
(105, 3, 167),
(106, 10, 73),
(107, 8, 102),
(108, 5, 97),
(109, 1, 12),
(110, 6, 60),
(111, 3, 146),
(112, 13, 117),
(113, 4, 89),
(114, 20, 63),
(115, 12, 92),
(116, 5, 140),
(117, 15, 128),
(118, 18, 94),
(119, 19, 104),
(120, 4, 57),
(121, 18, 164),
(122, 13, 136),
(123, 11, 108),
(124, 17, 65),
(125, 16, 139),
(126, 20, 167),
(127, 5, 57),
(128, 5, 133),
(129, 6, 195),
(130, 11, 8),
(131, 9, 103),
(132, 9, 161),
(133, 14, 143),
(134, 3, 98),
(135, 2, 100),
(136, 16, 114),
(137, 19, 182),
(138, 13, 148),
(139, 18, 147),
(140, 6, 107),
(141, 18, 146),
(142, 15, 67),
(143, 19, 62),
(144, 6, 191),
(145, 17, 10),
(146, 12, 18),
(147, 15, 128),
(148, 9, 135),
(149, 16, 35),
(150, 4, 60),
(151, 13, 30),
(152, 17, 92),
(153, 10, 159),
(154, 2, 85),
(155, 14, 90),
(156, 7, 61),
(157, 17, 194),
(158, 20, 198),
(159, 2, 139),
(160, 9, 164),
(161, 2, 65),
(162, 18, 82),
(163, 16, 103),
(164, 11, 125),
(165, 4, 204),
(166, 20, 72),
(167, 19, 38),
(168, 10, 116),
(169, 17, 190),
(170, 19, 50),
(171, 19, 56),
(172, 4, 40),
(173, 16, 158),
(174, 14, 29),
(175, 15, 34),
(176, 9, 10),
(177, 11, 24),
(178, 20, 157),
(179, 12, 31),
(180, 16, 49),
(181, 5, 81),
(182, 7, 66),
(183, 12, 132),
(184, 5, 174),
(185, 20, 175),
(186, 3, 81),
(187, 6, 87),
(188, 1, 22),
(189, 18, 16),
(190, 3, 64),
(191, 18, 189),
(192, 18, 164),
(193, 15, 188),
(194, 1, 1),
(195, 2, 1),
(196, 3, 1),
(197, 4, 1),
(198, 5, 1),
(199, 6, 2),
(200, 7, 2),
(201, 8, 2),
(202, 9, 2),
(203, 10, 2),
(204, 11, 2),
(205, 12, 2),
(206, 13, 3),
(207, 14, 3),
(208, 15, 3),
(209, 16, 4),
(210, 17, 4),
(211, 4, 4),
(212, 19, 4),
(213, 20, 4);

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Nom', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Mot de passe', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Token de rappel', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Créé le', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Mis à jour le', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Rôle', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Nom', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Créé le', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Mis à jour le', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Nom', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Créé le', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Mis à jour le', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Nom d\'affichage', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Rôle', 0, 1, 1, 1, 1, 1, '{}', 9),
(30, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(31, 6, 'firstname', 'text', 'Firstname', 1, 1, 1, 1, 1, 1, '{}', 2),
(32, 6, 'lastname', 'text', 'Lastname', 1, 1, 1, 1, 1, 1, '{}', 3),
(33, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(34, 7, 'postal_code', 'text', 'Postal Code', 1, 1, 1, 1, 1, 1, '{}', 2),
(35, 7, 'locality', 'text', 'Locality', 1, 1, 1, 1, 1, 1, '{}', 3),
(36, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(37, 8, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(38, 8, 'designation', 'text', 'Designation', 1, 1, 1, 1, 1, 1, '{}', 4),
(39, 8, 'address', 'text', 'Address', 1, 1, 1, 1, 1, 1, '{}', 5),
(40, 8, 'locality_id', 'text', 'Locality Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(41, 8, 'website', 'text', 'Website', 0, 1, 1, 1, 1, 1, '{}', 6),
(42, 8, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 7),
(43, 8, 'longitude', 'text', 'Longitude', 0, 1, 1, 1, 1, 1, '{}', 8),
(44, 8, 'latitude', 'text', 'Latitude', 0, 1, 1, 1, 1, 1, '{}', 9),
(45, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(46, 9, 'type', 'text', 'Type', 1, 1, 1, 1, 1, 1, '{}', 2),
(47, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(48, 10, 'artist_id', 'text', 'Artist Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(49, 10, 'type_id', 'text', 'Type Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(50, 6, 'artist_belongstomany_type_relationship', 'relationship', 'types', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Type\",\"table\":\"types\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"artist_type\",\"pivot\":\"1\",\"taggable\":null}', 4),
(51, 7, 'locality_hasmany_location_relationship', 'relationship', 'locations', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Location\",\"table\":\"locations\",\"type\":\"hasMany\",\"column\":\"locality_id\",\"key\":\"id\",\"label\":\"designation\",\"pivot_table\":\"artist_type\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(52, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(53, 11, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(54, 11, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(55, 11, 'description', 'text', 'Description', 1, 1, 1, 1, 1, 1, '{}', 5),
(56, 11, 'poster_url', 'text', 'Poster Url', 1, 1, 1, 1, 1, 1, '{}', 6),
(57, 11, 'location_id', 'text', 'Location Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 11, 'bookable', 'text', 'Bookable', 1, 1, 1, 1, 1, 1, '{}', 7),
(59, 11, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{}', 8),
(60, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(61, 12, 'location_id', 'text', 'Location Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(62, 12, 'show_id', 'text', 'Show Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(63, 12, 'when', 'text', 'When', 1, 1, 1, 1, 1, 1, '{}', 4),
(64, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(65, 15, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(66, 15, 'representation_id', 'text', 'Representation Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(67, 15, 'places', 'text', 'Places', 0, 1, 1, 1, 1, 1, '{}', 4),
(68, 10, 'artist_type_belongstomany_type_relationship', 'relationship', 'types', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Type\",\"table\":\"types\",\"type\":\"belongsTo\",\"column\":\"type_id\",\"key\":\"id\",\"label\":\"type\",\"pivot_table\":\"artist_type\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(69, 10, 'artist_type_belongsto_artist_relationship', 'relationship', 'artists', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Artist\",\"table\":\"artists\",\"type\":\"belongsTo\",\"column\":\"artist_id\",\"key\":\"id\",\"label\":\"firstname\",\"pivot_table\":\"artist_type\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(70, 10, 'artist_type_belongstomany_show_relationship', 'relationship', 'shows', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Show\",\"table\":\"shows\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"artist_type_show\",\"pivot\":\"1\",\"taggable\":\"0\"}', 6),
(71, 8, 'location_belongsto_locality_relationship', 'relationship', 'localities', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Locality\",\"table\":\"localities\",\"type\":\"belongsTo\",\"column\":\"locality_id\",\"key\":\"id\",\"label\":\"locality\",\"pivot_table\":\"artist_type\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(72, 8, 'location_hasmany_show_relationship', 'relationship', 'shows', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Show\",\"table\":\"shows\",\"type\":\"hasMany\",\"column\":\"location_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"artist_type\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(73, 8, 'location_hasmany_representation_relationship', 'relationship', 'representations', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Representation\",\"table\":\"representations\",\"type\":\"hasMany\",\"column\":\"location_id\",\"key\":\"id\",\"label\":\"when\",\"pivot_table\":\"artist_type\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(74, 9, 'type_belongstomany_artist_relationship', 'relationship', 'artists', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Artist\",\"table\":\"artists\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"firstname\",\"pivot_table\":\"artist_type\",\"pivot\":\"1\",\"taggable\":\"0\"}', 3),
(75, 1, 'user_belongstomany_representation_relationship', 'relationship', 'representations', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Representation\",\"table\":\"representations\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"representation_user\",\"pivot\":\"1\",\"taggable\":\"0\"}', 13),
(76, 1, 'user_hasmany_representation_user_relationship', 'relationship', 'representation_user', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\RepresentationUser\",\"table\":\"representation_user\",\"type\":\"hasMany\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"places\",\"pivot_table\":\"artist_type\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(77, 1, 'firstname', 'text', 'Firstname', 0, 1, 1, 1, 1, 1, '{}', 4),
(78, 1, 'lastname', 'text', 'Lastname', 0, 1, 1, 1, 1, 1, '{}', 5),
(79, 1, 'langue', 'text', 'Langue', 1, 1, 1, 1, 1, 1, '{}', 6),
(80, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 9),
(81, 1, 'stripe_id', 'text', 'Stripe Id', 0, 1, 1, 1, 1, 1, '{}', 15),
(82, 1, 'card_brand', 'text', 'Card Brand', 0, 1, 1, 1, 1, 1, '{}', 16),
(83, 1, 'card_last_four', 'text', 'Card Last Four', 0, 1, 1, 1, 1, 1, '{}', 17),
(84, 1, 'trial_ends_at', 'timestamp', 'Trial Ends At', 0, 1, 1, 1, 1, 1, '{}', 18),
(85, 11, 'show_belongsto_location_relationship', 'relationship', 'locations', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Location\",\"table\":\"locations\",\"type\":\"belongsTo\",\"column\":\"location_id\",\"key\":\"id\",\"label\":\"designation\",\"pivot_table\":\"artist_type\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(86, 11, 'show_hasmany_representation_relationship', 'relationship', 'representations', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Representation\",\"table\":\"representations\",\"type\":\"hasMany\",\"column\":\"show_id\",\"key\":\"id\",\"label\":\"when\",\"pivot_table\":\"artist_type\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(87, 11, 'show_belongstomany_artist_type_relationship', 'relationship', 'artist_type', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ArtistType\",\"table\":\"artist_type\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"type_id\",\"pivot_table\":\"artist_type_show\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(88, 12, 'representation_belongsto_location_relationship', 'relationship', 'locations', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Location\",\"table\":\"locations\",\"type\":\"belongsTo\",\"column\":\"location_id\",\"key\":\"id\",\"label\":\"designation\",\"pivot_table\":\"artist_type\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(89, 12, 'representation_belongsto_show_relationship', 'relationship', 'shows', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Show\",\"table\":\"shows\",\"type\":\"belongsTo\",\"column\":\"show_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"artist_type\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(90, 12, 'representation_belongstomany_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"representation_user\",\"pivot\":\"1\",\"taggable\":\"0\"}', 7),
(91, 12, 'representation_hasmany_representation_user_relationship', 'relationship', 'representation_user', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\RepresentationUser\",\"table\":\"representation_user\",\"type\":\"hasMany\",\"column\":\"representation_id\",\"key\":\"id\",\"label\":\"places\",\"pivot_table\":\"artist_type\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(92, 15, 'representation_user_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"artist_type\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(93, 15, 'representation_user_belongsto_representation_relationship', 'relationship', 'representations', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Representation\",\"table\":\"representations\",\"type\":\"belongsTo\",\"column\":\"representation_id\",\"key\":\"id\",\"label\":\"when\",\"pivot_table\":\"artist_type\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'Utilisateur', 'Utilisateurs', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-06-01 11:15:51', '2021-06-01 21:09:24'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-06-01 11:15:51', '2021-06-01 11:15:51'),
(3, 'roles', 'roles', 'Rôle', 'Rôles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-06-01 11:15:51', '2021-06-01 11:15:51'),
(6, 'artists', 'artists', 'Artist', 'Artists', '[', 'App\\Models\\Artist', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-06-01 16:31:51', '2021-06-01 16:31:51'),
(7, 'localities', 'localities', 'Locality', 'Localities', NULL, 'App\\Models\\Locality', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-06-01 16:58:40', '2021-06-01 20:57:12'),
(8, 'locations', 'locations', 'Location', 'Locations', NULL, 'App\\Models\\Location', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-06-01 16:59:09', '2021-06-01 21:01:32'),
(9, 'types', 'types', 'Type', 'Types', NULL, 'App\\Models\\Type', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-06-01 16:59:40', '2021-06-01 21:03:20'),
(10, 'artist_type', 'artist-type', 'Artist Type', 'Artist Types', NULL, 'App\\Models\\ArtistType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-06-01 17:00:21', '2021-06-01 20:54:22'),
(11, 'shows', 'shows', 'Show', 'Shows', NULL, 'App\\Models\\Show', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":\"id\",\"scope\":null}', '2021-06-01 17:15:52', '2021-06-01 21:12:21'),
(12, 'representations', 'representations', 'Representation', 'Representations', NULL, 'App\\Models\\Representation', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-06-01 17:17:00', '2021-06-01 21:20:47'),
(15, 'representation_user', 'representation-user', 'Representation User', 'Representation Users', NULL, 'App\\Models\\RepresentationUser', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-06-01 20:41:20', '2021-06-01 21:20:04');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `localities`
--

CREATE TABLE `localities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `postal_code` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locality` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `localities`
--

INSERT INTO `localities` (`id`, `postal_code`, `locality`) VALUES
(1, '1000', 'Bruxelles'),
(2, '1170', 'Watermael-Boitsfort');

-- --------------------------------------------------------

--
-- Structure de la table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locality_id` bigint(20) UNSIGNED NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` decimal(10,5) DEFAULT NULL,
  `latitude` decimal(10,5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `locations`
--

INSERT INTO `locations` (`id`, `slug`, `designation`, `address`, `locality_id`, `website`, `phone`, `longitude`, `latitude`) VALUES
(1, 'espace-delvaux-la-venerie', 'Espace Delvaux / La Vénerie', '3 rue Gratès', 2, 'https://www.lavenerie.be', '+32 (0)2/663.85.50', '4.40000', '50.80900'),
(2, 'dexia-art-center', 'Dexia Art Center', '50 rue de l\'Ecuyer', 1, NULL, NULL, '4.35300', '50.84800'),
(3, 'la-samaritaine', 'La Samaritaine', '16 rue de la samaritaine', 1, 'http://www.lasamaritaine.be/', NULL, '4.35000', '50.84000'),
(4, 'espace-magh', 'Espace Magh', '17 rue du Poinçon', 1, 'http://www.espacemagh.be', '+32 (0)2/274.05.10', '4.34600', '50.84300');

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-06-01 11:15:52', '2021-06-01 11:15:52'),
(2, 'user', '2021-06-01 15:51:11', '2021-06-01 15:51:11');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Tableau de bord', '', '_self', '', NULL, NULL, 1, '2021-06-01 11:15:52', '2021-06-01 11:15:52', 'voyager.dashboard', NULL),
(2, 1, 'Médiathèque', '', '_self', 'voyager-images', NULL, 5, 1, '2021-06-01 11:15:52', '2021-06-01 21:43:10', 'voyager.media.index', NULL),
(3, 1, 'Utilisateurs', '', '_self', 'voyager-person', NULL, 25, 1, '2021-06-01 11:15:52', '2021-06-03 07:44:10', 'voyager.users.index', NULL),
(4, 1, 'Rôles', '', '_self', 'voyager-lock', NULL, 25, 2, '2021-06-01 11:15:52', '2021-06-03 07:44:15', 'voyager.roles.index', NULL),
(5, 1, 'Outils', '', '_self', 'voyager-tools', NULL, NULL, 4, '2021-06-01 11:15:52', '2021-06-03 07:44:10', NULL, NULL),
(6, 1, 'Créateur de menus', '', '_self', 'voyager-list', NULL, 5, 2, '2021-06-01 11:15:52', '2021-06-01 21:43:10', 'voyager.menus.index', NULL),
(7, 1, 'Base de données', '', '_self', 'voyager-data', NULL, 5, 3, '2021-06-01 11:15:52', '2021-06-01 21:43:10', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 4, '2021-06-01 11:15:52', '2021-06-01 21:43:10', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 5, '2021-06-01 11:15:52', '2021-06-01 21:43:10', 'voyager.bread.index', NULL),
(10, 1, 'Paramètres', '', '_self', 'voyager-settings', NULL, NULL, 6, '2021-06-01 11:15:52', '2021-06-03 07:44:10', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, NULL, 5, '2021-06-01 11:15:52', '2021-06-03 07:44:10', 'voyager.hooks', NULL),
(13, 1, 'Artists', '', '_self', '[', NULL, 21, 4, '2021-06-01 16:31:52', '2021-06-01 21:25:55', 'voyager.artists.index', NULL),
(14, 1, 'Localities', '', '_self', NULL, NULL, 21, 6, '2021-06-01 16:58:41', '2021-06-01 21:26:06', 'voyager.localities.index', NULL),
(15, 1, 'Locations', '', '_self', NULL, NULL, 21, 5, '2021-06-01 16:59:09', '2021-06-01 21:26:06', 'voyager.locations.index', NULL),
(16, 1, 'Types', '', '_self', NULL, NULL, 21, 7, '2021-06-01 16:59:40', '2021-06-01 21:25:55', 'voyager.types.index', NULL),
(17, 1, 'Artist Types', '', '_self', NULL, NULL, 21, 8, '2021-06-01 17:00:21', '2021-06-01 21:25:55', 'voyager.artist-type.index', NULL),
(18, 1, 'Shows', '', '_self', NULL, NULL, 21, 3, '2021-06-01 17:15:52', '2021-06-01 21:25:55', 'voyager.shows.index', NULL),
(19, 1, 'Representations', '', '_self', NULL, NULL, 21, 2, '2021-06-01 17:17:00', '2021-06-01 21:25:52', 'voyager.representations.index', NULL),
(20, 1, 'Representation Users', '', '_self', NULL, NULL, 21, 1, '2021-06-01 20:41:20', '2021-06-01 21:25:48', 'voyager.representation-user.index', NULL),
(21, 1, 'Données', '', '_self', 'voyager-folder', '#000000', NULL, 2, '2021-06-01 21:22:48', '2021-06-01 21:27:04', NULL, ''),
(22, 2, 'CustomLink', '', '_blank', 'voyager-eye', '#000000', NULL, 1, '2021-06-01 21:40:07', '2021-06-01 21:40:30', 'home', NULL),
(23, 1, 'Vers le site', '', '_blank', 'voyager-eye', '#000000', NULL, 7, '2021-06-01 21:41:33', '2021-06-03 07:44:10', 'home', NULL),
(24, 1, 'Données', '', '_self', NULL, '#000000', NULL, 8, '2021-06-03 06:04:37', '2021-06-03 07:44:10', NULL, ''),
(25, 1, 'Utilisateurs', '', '_self', 'voyager-person', '#000000', NULL, 3, '2021-06-03 07:43:59', '2021-06-03 07:44:07', NULL, '');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000001_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_05_03_000001_create_customer_columns', 1),
(24, '2019_05_03_000002_create_subscriptions_table', 1),
(25, '2019_05_03_000003_create_subscription_items_table', 1),
(26, '2019_08_19_000000_create_failed_jobs_table', 1),
(27, '2021_02_09_155409_create_artists_table', 1),
(28, '2021_02_09_213824_create_types_table', 1),
(29, '2021_02_10_205427_create_localities_table', 1),
(30, '2021_02_10_212512_create_locations_table', 1),
(31, '2021_02_24_214337_create_shows_table', 1),
(32, '2021_03_05_002137_create_representations_table', 1),
(33, '2021_03_19_181402_create_artist_type_table', 1),
(34, '2021_03_25_223519_create_artist_type_show_table', 1),
(35, '2021_03_26_215332_create_representation_user_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-06-01 11:15:52', '2021-06-01 11:15:52'),
(2, 'browse_bread', NULL, '2021-06-01 11:15:52', '2021-06-01 11:15:52'),
(3, 'browse_database', NULL, '2021-06-01 11:15:52', '2021-06-01 11:15:52'),
(4, 'browse_media', NULL, '2021-06-01 11:15:52', '2021-06-01 11:15:52'),
(5, 'browse_compass', NULL, '2021-06-01 11:15:52', '2021-06-01 11:15:52'),
(6, 'browse_menus', 'menus', '2021-06-01 11:15:52', '2021-06-01 11:15:52'),
(7, 'read_menus', 'menus', '2021-06-01 11:15:52', '2021-06-01 11:15:52'),
(8, 'edit_menus', 'menus', '2021-06-01 11:15:52', '2021-06-01 11:15:52'),
(9, 'add_menus', 'menus', '2021-06-01 11:15:52', '2021-06-01 11:15:52'),
(10, 'delete_menus', 'menus', '2021-06-01 11:15:52', '2021-06-01 11:15:52'),
(11, 'browse_roles', 'roles', '2021-06-01 11:15:52', '2021-06-01 11:15:52'),
(12, 'read_roles', 'roles', '2021-06-01 11:15:52', '2021-06-01 11:15:52'),
(13, 'edit_roles', 'roles', '2021-06-01 11:15:52', '2021-06-01 11:15:52'),
(14, 'add_roles', 'roles', '2021-06-01 11:15:52', '2021-06-01 11:15:52'),
(15, 'delete_roles', 'roles', '2021-06-01 11:15:52', '2021-06-01 11:15:52'),
(16, 'browse_users', 'users', '2021-06-01 11:15:52', '2021-06-01 11:15:52'),
(17, 'read_users', 'users', '2021-06-01 11:15:52', '2021-06-01 11:15:52'),
(18, 'edit_users', 'users', '2021-06-01 11:15:52', '2021-06-01 11:15:52'),
(19, 'add_users', 'users', '2021-06-01 11:15:52', '2021-06-01 11:15:52'),
(20, 'delete_users', 'users', '2021-06-01 11:15:52', '2021-06-01 11:15:52'),
(21, 'browse_settings', 'settings', '2021-06-01 11:15:52', '2021-06-01 11:15:52'),
(22, 'read_settings', 'settings', '2021-06-01 11:15:52', '2021-06-01 11:15:52'),
(23, 'edit_settings', 'settings', '2021-06-01 11:15:52', '2021-06-01 11:15:52'),
(24, 'add_settings', 'settings', '2021-06-01 11:15:52', '2021-06-01 11:15:52'),
(25, 'delete_settings', 'settings', '2021-06-01 11:15:52', '2021-06-01 11:15:52'),
(26, 'browse_hooks', NULL, '2021-06-01 11:15:52', '2021-06-01 11:15:52'),
(32, 'browse_artists', 'artists', '2021-06-01 16:31:52', '2021-06-01 16:31:52'),
(33, 'read_artists', 'artists', '2021-06-01 16:31:52', '2021-06-01 16:31:52'),
(34, 'edit_artists', 'artists', '2021-06-01 16:31:52', '2021-06-01 16:31:52'),
(35, 'add_artists', 'artists', '2021-06-01 16:31:52', '2021-06-01 16:31:52'),
(36, 'delete_artists', 'artists', '2021-06-01 16:31:52', '2021-06-01 16:31:52'),
(37, 'browse_localities', 'localities', '2021-06-01 16:58:40', '2021-06-01 16:58:40'),
(38, 'read_localities', 'localities', '2021-06-01 16:58:41', '2021-06-01 16:58:41'),
(39, 'edit_localities', 'localities', '2021-06-01 16:58:41', '2021-06-01 16:58:41'),
(40, 'add_localities', 'localities', '2021-06-01 16:58:41', '2021-06-01 16:58:41'),
(41, 'delete_localities', 'localities', '2021-06-01 16:58:41', '2021-06-01 16:58:41'),
(42, 'browse_locations', 'locations', '2021-06-01 16:59:09', '2021-06-01 16:59:09'),
(43, 'read_locations', 'locations', '2021-06-01 16:59:09', '2021-06-01 16:59:09'),
(44, 'edit_locations', 'locations', '2021-06-01 16:59:09', '2021-06-01 16:59:09'),
(45, 'add_locations', 'locations', '2021-06-01 16:59:09', '2021-06-01 16:59:09'),
(46, 'delete_locations', 'locations', '2021-06-01 16:59:09', '2021-06-01 16:59:09'),
(47, 'browse_types', 'types', '2021-06-01 16:59:40', '2021-06-01 16:59:40'),
(48, 'read_types', 'types', '2021-06-01 16:59:40', '2021-06-01 16:59:40'),
(49, 'edit_types', 'types', '2021-06-01 16:59:40', '2021-06-01 16:59:40'),
(50, 'add_types', 'types', '2021-06-01 16:59:40', '2021-06-01 16:59:40'),
(51, 'delete_types', 'types', '2021-06-01 16:59:40', '2021-06-01 16:59:40'),
(52, 'browse_artist_type', 'artist_type', '2021-06-01 17:00:21', '2021-06-01 17:00:21'),
(53, 'read_artist_type', 'artist_type', '2021-06-01 17:00:21', '2021-06-01 17:00:21'),
(54, 'edit_artist_type', 'artist_type', '2021-06-01 17:00:21', '2021-06-01 17:00:21'),
(55, 'add_artist_type', 'artist_type', '2021-06-01 17:00:21', '2021-06-01 17:00:21'),
(56, 'delete_artist_type', 'artist_type', '2021-06-01 17:00:21', '2021-06-01 17:00:21'),
(57, 'browse_shows', 'shows', '2021-06-01 17:15:52', '2021-06-01 17:15:52'),
(58, 'read_shows', 'shows', '2021-06-01 17:15:52', '2021-06-01 17:15:52'),
(59, 'edit_shows', 'shows', '2021-06-01 17:15:52', '2021-06-01 17:15:52'),
(60, 'add_shows', 'shows', '2021-06-01 17:15:52', '2021-06-01 17:15:52'),
(61, 'delete_shows', 'shows', '2021-06-01 17:15:52', '2021-06-01 17:15:52'),
(62, 'browse_representations', 'representations', '2021-06-01 17:17:00', '2021-06-01 17:17:00'),
(63, 'read_representations', 'representations', '2021-06-01 17:17:00', '2021-06-01 17:17:00'),
(64, 'edit_representations', 'representations', '2021-06-01 17:17:00', '2021-06-01 17:17:00'),
(65, 'add_representations', 'representations', '2021-06-01 17:17:00', '2021-06-01 17:17:00'),
(66, 'delete_representations', 'representations', '2021-06-01 17:17:00', '2021-06-01 17:17:00'),
(67, 'browse_representation_user', 'representation_user', '2021-06-01 20:41:20', '2021-06-01 20:41:20'),
(68, 'read_representation_user', 'representation_user', '2021-06-01 20:41:20', '2021-06-01 20:41:20'),
(69, 'edit_representation_user', 'representation_user', '2021-06-01 20:41:20', '2021-06-01 20:41:20'),
(70, 'add_representation_user', 'representation_user', '2021-06-01 20:41:20', '2021-06-01 20:41:20'),
(71, 'delete_representation_user', 'representation_user', '2021-06-01 20:41:20', '2021-06-01 20:41:20');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1);

-- --------------------------------------------------------

--
-- Structure de la table `representations`
--

CREATE TABLE `representations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location_id` bigint(20) UNSIGNED DEFAULT NULL,
  `show_id` bigint(20) UNSIGNED NOT NULL,
  `when` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `representations`
--

INSERT INTO `representations` (`id`, `location_id`, `show_id`, `when`) VALUES
(1, 1, 1, '2012-10-12 13:30:00'),
(2, 2, 1, '2012-10-12 20:30:00'),
(3, NULL, 2, '2012-10-02 20:30:00'),
(4, NULL, 3, '2012-10-16 20:30:00');

-- --------------------------------------------------------

--
-- Structure de la table `representation_user`
--

CREATE TABLE `representation_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `representation_id` bigint(20) UNSIGNED NOT NULL,
  `places` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-06-01 11:12:25', '2021-06-01 11:12:25'),
(2, 'user', 'Utilisateur standard', '2021-06-01 11:15:52', '2021-06-01 11:15:52'),
(3, 'affiliate', 'voyager::seeders.roles.affiliate', '2021-06-01 11:15:52', '2021-06-01 11:15:52');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Titre du site', 'Réservations', '', 'text', 1, 'Site'),
(2, 'site.description', 'Description du site', 'Boutique de réservations de place de théâtre.', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Logo du site', 'settings\\June2021\\JBCo5DCNAAaRxnnc6ck8.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics ID de Tracking', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Image de fond de l\'espace admin', 'settings\\June2021\\tB6Pl0bEmzyp1k8cEotw.jpeg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Titre de l\'espace admin', 'Administration', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Description de l\'espace admin', 'Bienvenue dans le panneau d\'administration du site Réservations.', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Chargement de l\'espace admin', 'settings\\June2021\\7F9juZ6xdRHKy7P6T0gP.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Icône de l\'espace admin', 'settings\\June2021\\fQBEz7zg1KX51ilm7STb.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics ID Client (Utilisé pour le panneau d\'administration)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `shows`
--

CREATE TABLE `shows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `poster_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bookable` tinyint(1) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `shows`
--

INSERT INTO `shows` (`id`, `slug`, `title`, `description`, `poster_url`, `location_id`, `bookable`, `price`) VALUES
(1, 'ayiti', 'Ayiti', 'Un homme est bloqué à l’aéroport.\n Questionné par les douaniers, il doit alors justifier son identité, et surtout prouver qu\'il est haïtien – qu\'est-ce qu\'être haïtien ?', 'ayiti.jpg', 1, 1, '8.50'),
(2, 'cible-mouvante', 'Cible mouvante', 'Dans ce « thriller d’anticipation », des adultes semblent alimenter et véhiculer une crainte féroce envers les enfants âgés entre 10 et 12 ans.', 'cible.jpg', 2, 1, '9.00'),
(3, 'ceci-nest-pas-un-chanteur-belge', 'Ceci n\'est pas un chanteur belge', 'Non peut-être ?!\nEntre Magritte (pour le surréalisme comique) et Maigret (pour le réalisme mélancolique), ce dixième opus semalien propose quatorze nouvelles chansons mêlées à de petits textes humoristiques et à quelques fortes images poétiques.', 'claudebelgesaison220.jpg', NULL, 0, '5.50'),
(4, 'manneke', 'Manneke… !', 'A tour de rôle, Pierre se joue de ses oncles, tantes, grands-parents et surtout de sa mère.', 'wayburn.jpg', 3, 1, '10.50'),
(5, 'qui-qui', 'Qui qui.', 'Quae est velit illum quis fugit unde facere et labore itaque optio natus et fuga non odio.', 'default.jpg', 1, 1, '30.83'),
(6, 'et-nisi-nam', 'Et nisi nam.', 'Suscipit ad et deserunt ut autem et sit blanditiis tempora omnis consectetur consequatur tenetur qui magni nemo voluptas nobis impedit vel.', 'default.jpg', 3, 0, '38.02'),
(7, 'ut-quam-impedit', 'Ut quam impedit.', 'Possimus et harum nulla quis ipsa eos fugit illum impedit dolore corporis omnis libero aut.', 'default.jpg', 3, 1, '18.71'),
(8, 'rerum-minus', 'Rerum minus.', 'Dolores quibusdam rerum laboriosam eaque similique voluptatem quisquam non esse et recusandae.', 'default.jpg', 1, 0, '38.48'),
(9, 'quia-velit', 'Quia velit.', 'Eveniet possimus temporibus aspernatur sed ex vero nobis facilis accusamus ut culpa maxime ipsam sit mollitia et aliquid consequatur.', 'default.jpg', 4, 1, '32.41'),
(10, 'consequatur-eaque-non', 'Consequatur eaque non.', 'Quibusdam accusantium ea ut non voluptatem repellendus neque in quis est enim nam at numquam quia.', 'default.jpg', 2, 1, '22.31'),
(11, 'itaque-asperiores', 'Itaque asperiores.', 'Est et occaecati dolores dignissimos provident eaque quo deserunt vitae harum distinctio accusantium atque quis aliquid eveniet laborum.', 'default.jpg', 4, 0, '10.92'),
(12, 'culpa-explicabo-laboriosam', 'Culpa explicabo laboriosam.', 'Quibusdam mollitia modi quos enim numquam fugit deleniti autem et eum.', 'default.jpg', 2, 0, '24.18'),
(13, 'similique-consectetur', 'Similique consectetur.', 'Quia nobis aut iusto rerum accusamus modi eos incidunt in aut blanditiis facere sed fugiat maxime.', 'default.jpg', 3, 1, '32.82'),
(14, 'sit-sit-unde', 'Sit sit unde.', 'Reprehenderit consequuntur voluptatem eveniet facilis iste assumenda velit beatae molestiae sapiente culpa libero ratione explicabo quo qui quia.', 'default.jpg', 4, 0, '27.96'),
(15, 'repudiandae-adipisci', 'Repudiandae adipisci.', 'Qui cum earum dolorem consequatur mollitia atque deleniti et molestiae aperiam ex et molestiae.', 'default.jpg', 4, 1, '16.53'),
(16, 'praesentium-placeat', 'Praesentium placeat.', 'Dolorem fugiat ab asperiores molestiae ut et repellendus est aut eos dolorem quia qui.', 'default.jpg', 1, 1, '27.11'),
(17, 'illo-a', 'Illo a.', 'Laudantium eum suscipit nihil qui facilis pariatur molestiae exercitationem inventore quod cumque eum odio fugit ex ipsum.', 'default.jpg', 1, 0, '16.23'),
(18, 'sit-quis-sunt', 'Sit quis sunt.', 'Et pariatur et ut sit architecto hic autem omnis nemo.', 'default.jpg', 3, 1, '35.47'),
(19, 'ducimus-vitae-ut', 'Ducimus vitae ut.', 'Alias rerum animi maxime velit quisquam unde consectetur facilis inventore molestias.', 'default.jpg', 1, 1, '19.06'),
(20, 'omnis-voluptate', 'Omnis voluptate.', 'Maxime et quibusdam totam harum excepturi voluptas omnis odit adipisci molestiae ut dolore omnis delectus ut laboriosam labore omnis.', 'default.jpg', 3, 0, '20.70'),
(21, 'odio-nihil', 'Odio nihil.', 'Qui omnis sint animi saepe provident a impedit numquam tempore molestias et possimus sequi dolores sit aut.', 'default.jpg', 4, 0, '29.04'),
(22, 'natus-cum-voluptas', 'Natus cum voluptas.', 'Commodi harum et quaerat ut dolore tenetur nihil quaerat dolorem ad autem nesciunt amet et ut omnis qui qui.', 'default.jpg', 4, 1, '15.90'),
(23, 'aut-sed-nesciunt', 'Aut sed nesciunt.', 'Nemo magnam aspernatur officia placeat iure ut et voluptates hic nobis sed optio nisi occaecati praesentium.', 'default.jpg', 3, 1, '25.22'),
(24, 'velit-aut-neque', 'Velit aut neque.', 'Iste ut dicta ullam aperiam suscipit explicabo accusantium voluptatibus repudiandae sed sequi explicabo.', 'default.jpg', 2, 1, '21.53'),
(25, 'quo-aut-aut', 'Quo aut aut.', 'Ex dolores minima est quia doloremque libero quia ipsam in eligendi corrupti odio facilis ipsa facilis quo debitis qui.', 'default.jpg', 4, 0, '36.41'),
(26, 'quasi-ipsam', 'Quasi ipsam.', 'Eos rerum quam modi autem assumenda sequi rerum est voluptatem laborum magnam.', 'default.jpg', 1, 0, '34.99'),
(27, 'sed-corrupti', 'Sed corrupti.', 'Quia dolorem qui velit eos esse neque quod vitae quam voluptatum possimus dolore est et rerum repudiandae tempora illum dolor.', 'default.jpg', 1, 0, '13.50'),
(28, 'eligendi-sed', 'Eligendi sed.', 'Facere quam unde iure et omnis minus eligendi voluptatum rerum eveniet corporis.', 'default.jpg', 4, 1, '36.69'),
(29, 'nisi-quis-dolor', 'Nisi quis dolor.', 'Architecto magnam asperiores consectetur et amet soluta aut totam vel.', 'default.jpg', 3, 0, '5.27'),
(30, 'magni-placeat', 'Magni placeat.', 'Iure quod in ut iure repellendus consectetur a ut consequatur suscipit modi ut aspernatur asperiores et quam mollitia illo omnis.', 'default.jpg', 2, 0, '39.96'),
(31, 'placeat-corporis-expedita', 'Placeat corporis expedita.', 'Officiis vel voluptatem aspernatur velit ducimus est ut rem amet est dolorum.', 'default.jpg', 1, 0, '22.85'),
(32, 'officiis-autem', 'Officiis autem.', 'Adipisci quaerat eum fugiat numquam vitae doloremque fugit voluptates laborum hic sed quas dolor molestiae.', 'default.jpg', 3, 1, '13.24'),
(33, 'et-animi', 'Et animi.', 'Suscipit sint pariatur aut corrupti saepe modi culpa ut eligendi praesentium architecto quibusdam eveniet assumenda repellat similique ex suscipit at dolor.', 'default.jpg', 3, 0, '21.97'),
(34, 'excepturi-ipsam-molestias', 'Excepturi ipsam molestias.', 'Omnis voluptates sunt aliquam dolor deleniti non veniam sit dolor.', 'default.jpg', 1, 1, '23.79'),
(35, 'tempora-molestiae-odit', 'Tempora molestiae odit.', 'Quaerat neque necessitatibus cumque neque eius nisi aut rerum enim enim consequatur velit quo dolorem magnam consequatur.', 'default.jpg', 3, 1, '17.28'),
(36, 'ullam-repellat', 'Ullam repellat.', 'Necessitatibus magni maxime dolorem rem sit culpa quam consequatur id tempore praesentium sapiente.', 'default.jpg', 4, 1, '30.62'),
(37, 'sapiente-commodi-animi', 'Sapiente commodi animi.', 'Et rem debitis quas corporis est aliquid amet ad voluptatem incidunt ea tempora in enim assumenda in amet ipsum quis blanditiis.', 'default.jpg', 2, 0, '39.46'),
(38, 'ipsa-dolorem', 'Ipsa dolorem.', 'Dicta et et maxime asperiores possimus numquam nam consectetur illo consequatur.', 'default.jpg', 1, 1, '18.65'),
(39, 'velit-nulla', 'Velit nulla.', 'Doloremque eaque voluptatem ea maxime impedit voluptatem modi dicta accusamus magni ea nemo facilis cum deserunt fugiat.', 'default.jpg', 3, 1, '5.56'),
(40, 'est-asperiores', 'Est asperiores.', 'Veniam provident architecto sed accusamus quas tempore esse voluptatibus temporibus in.', 'default.jpg', 1, 0, '31.73'),
(41, 'repudiandae-repellendus', 'Repudiandae repellendus.', 'Et fuga rerum aut placeat impedit et saepe id ut fuga neque repudiandae.', 'default.jpg', 2, 1, '38.59'),
(42, 'autem-eum-error', 'Autem eum error.', 'Esse minima itaque deserunt qui commodi et quos et vero velit laborum.', 'default.jpg', 1, 1, '11.74'),
(43, 'est-explicabo', 'Est explicabo.', 'Quae sint et blanditiis dolores magnam hic quia dolor occaecati minus amet quis minima sed consequatur reiciendis ducimus aliquam.', 'default.jpg', 4, 1, '17.86'),
(44, 'est-libero', 'Est libero.', 'Pariatur neque non rem voluptatem sed non minima libero illum voluptates.', 'default.jpg', 2, 0, '18.00'),
(45, 'sint-consequatur', 'Sint consequatur.', 'Quam velit doloribus quia fuga natus et eligendi maxime nihil tempore enim voluptatum quis fuga saepe.', 'default.jpg', 4, 0, '6.72'),
(46, 'in-sit', 'In sit.', 'Recusandae ipsam sint dolorem molestiae quia tempore quam vel velit.', 'default.jpg', 4, 1, '34.14'),
(47, 'deleniti-est-harum', 'Deleniti est harum.', 'Sint ad voluptatibus quis blanditiis ut aliquam facilis doloremque omnis maxime molestiae sapiente omnis.', 'default.jpg', 1, 1, '17.06'),
(48, 'quam-iusto-blanditiis', 'Quam iusto blanditiis.', 'Voluptates saepe sit necessitatibus sunt qui corporis ab voluptas quos est quasi debitis et voluptas nobis earum quo natus laudantium.', 'default.jpg', 3, 0, '36.25'),
(49, 'quis-sint', 'Quis sint.', 'Ea accusamus voluptas sapiente sit aut ut sed aliquam quas et sit mollitia totam ea ut exercitationem quis vel non.', 'default.jpg', 4, 0, '30.01'),
(50, 'sint-non-rem', 'Sint non rem.', 'Et debitis id sit animi quo ea facere aut dolores quod odio labore voluptatibus magnam delectus repellat odio in aut et.', 'default.jpg', 3, 1, '38.26'),
(51, 'impedit-ut-sunt', 'Impedit ut sunt.', 'Non quis ut repudiandae dolores animi omnis excepturi doloremque at adipisci maiores consequatur.', 'default.jpg', 2, 1, '39.92'),
(52, 'laborum-voluptas-fugit', 'Laborum voluptas fugit.', 'Ducimus nesciunt ipsum impedit culpa similique possimus aut qui enim ea quia.', 'default.jpg', 3, 1, '28.19'),
(53, 'tenetur-laborum-et', 'Tenetur laborum et.', 'Aut mollitia autem ut voluptas qui natus aut voluptatem ratione nemo nihil adipisci laborum sed modi aut excepturi.', 'default.jpg', 1, 0, '21.38'),
(54, 'dolorem-ut', 'Dolorem ut.', 'Cum et quaerat quaerat sed minima molestias aut error ut veritatis optio dignissimos.', 'default.jpg', 4, 0, '21.98'),
(55, 'qui-eos-accusantium', 'Qui eos accusantium.', 'Earum sit laudantium libero itaque rem enim consequatur tenetur quo et facilis vel esse ipsa illo officia.', 'default.jpg', 4, 1, '36.10'),
(56, 'similique-animi', 'Similique animi.', 'Ut esse minus occaecati officia dolore ullam eum laboriosam id.', 'default.jpg', 4, 0, '17.23'),
(57, 'quidem-fugit', 'Quidem fugit.', 'Est quia et esse ut sit in impedit itaque quas est.', 'default.jpg', 1, 0, '22.87'),
(58, 'rerum-consequatur', 'Rerum consequatur.', 'Dolorem eum aperiam id et natus a quam molestiae a sint id provident sit nihil suscipit similique exercitationem id et.', 'default.jpg', 4, 0, '6.16'),
(59, 'officia-optio', 'Officia optio.', 'Doloribus cumque laudantium doloribus aut minima vel vel at consequuntur similique vel fugiat repellat quibusdam molestiae velit nisi ut consectetur delectus.', 'default.jpg', 3, 1, '34.71'),
(60, 'et-voluptatum', 'Et voluptatum.', 'Dolorum repudiandae velit voluptas perspiciatis sed quo qui libero est perspiciatis aliquam cupiditate.', 'default.jpg', 2, 0, '29.39'),
(61, 'labore-magni-in', 'Labore magni in.', 'Totam porro et ut fugiat consectetur voluptatum dolore maiores qui mollitia qui veniam ducimus labore ea assumenda nobis expedita.', 'default.jpg', 3, 0, '28.55'),
(62, 'qui-assumenda-et', 'Qui assumenda et.', 'Sunt quis minus itaque maiores quam laboriosam laudantium adipisci dolor iste magni quasi eos provident incidunt beatae.', 'default.jpg', 3, 1, '38.17'),
(63, 'quaerat-consequatur', 'Quaerat consequatur.', 'Rerum optio error enim ratione dolorem voluptas tenetur qui quo qui omnis voluptas aut atque doloremque nisi veniam placeat ut aspernatur.', 'default.jpg', 2, 1, '9.04'),
(64, 'assumenda-quia-et', 'Assumenda quia et.', 'Velit illo voluptates porro porro quis repellat consequuntur cum vero voluptas id sunt est consectetur blanditiis.', 'default.jpg', 2, 0, '27.23'),
(65, 'et-doloremque-aut', 'Et doloremque aut.', 'Cumque quae et et quo quo et et similique quia debitis error natus aut a nobis odio et quae omnis.', 'default.jpg', 3, 1, '39.42'),
(66, 'atque-reprehenderit-itaque', 'Atque reprehenderit itaque.', 'Quis voluptatem possimus optio molestiae cupiditate amet alias suscipit porro quas quidem vero dignissimos vitae culpa quaerat deserunt.', 'default.jpg', 1, 0, '11.96'),
(67, 'molestiae-et', 'Molestiae et.', 'Dicta ut qui ut aut corporis sunt at distinctio doloribus.', 'default.jpg', 4, 0, '17.74'),
(68, 'quo-eum-nostrum', 'Quo eum nostrum.', 'Qui et nisi eius exercitationem accusamus facilis repudiandae omnis nisi aut.', 'default.jpg', 2, 0, '15.88'),
(69, 'error-sunt', 'Error sunt.', 'Ab voluptatibus magnam corporis saepe nobis a sit alias autem blanditiis voluptatem et illo eos.', 'default.jpg', 4, 1, '39.62'),
(70, 'numquam-non', 'Numquam non.', 'Harum aut est recusandae repudiandae qui labore placeat esse culpa velit.', 'default.jpg', 1, 0, '24.97'),
(71, 'neque-perferendis-blanditiis', 'Neque perferendis blanditiis.', 'Cum blanditiis quaerat at quisquam blanditiis blanditiis nam qui ut assumenda.', 'default.jpg', 3, 1, '20.04'),
(72, 'consectetur-vel-quo', 'Consectetur vel quo.', 'Molestias aut qui dolorem debitis laboriosam cum incidunt in laudantium velit molestias similique aut maiores minus illo.', 'default.jpg', 3, 1, '27.49'),
(73, 'qui-dolore', 'Qui dolore.', 'Nemo reiciendis molestias est magni provident blanditiis aspernatur omnis est enim alias unde sint voluptatibus repudiandae id quibusdam.', 'default.jpg', 2, 0, '7.24'),
(74, 'quia-asperiores', 'Quia asperiores.', 'Odit perspiciatis sed et sit a mollitia facere aut molestias pariatur corrupti delectus omnis libero est et odio reprehenderit.', 'default.jpg', 3, 1, '20.35'),
(75, 'facilis-laborum-tenetur', 'Facilis laborum tenetur.', 'Vero ipsam accusamus quia et harum id esse animi qui recusandae laborum earum perspiciatis.', 'default.jpg', 4, 0, '39.79'),
(76, 'quia-omnis-et', 'Quia omnis et.', 'Qui nostrum rerum quia natus et veritatis esse fuga fugit sint tenetur incidunt et error et.', 'default.jpg', 2, 1, '31.48'),
(77, 'atque-et-ut', 'Atque et ut.', 'Est eos aspernatur ut dolorem et qui facilis illo et rerum sequi nostrum consequuntur optio dicta.', 'default.jpg', 3, 1, '22.41'),
(78, 'ratione-aut', 'Ratione aut.', 'Optio consequatur amet vel voluptatem inventore eos delectus qui veniam perspiciatis dolore quia et quidem tempora sit nemo.', 'default.jpg', 2, 0, '17.77'),
(79, 'aut-corrupti-non', 'Aut corrupti non.', 'Dolor molestiae consequatur facilis rem sint deserunt quo qui accusamus inventore doloremque quas impedit autem vel laborum neque in suscipit.', 'default.jpg', 2, 1, '7.57'),
(80, 'dolor-expedita', 'Dolor expedita.', 'Voluptate consequatur odio atque consequatur at et alias fugit consequuntur corrupti ratione deleniti perferendis non qui libero corrupti quaerat molestiae.', 'default.jpg', 4, 0, '38.79'),
(81, 'cupiditate-id', 'Cupiditate id.', 'Numquam cupiditate qui natus quia dolorum omnis mollitia et sed suscipit.', 'default.jpg', 3, 1, '9.38'),
(82, 'veniam-suscipit', 'Veniam suscipit.', 'Aut enim tempora culpa voluptas itaque eos et dolor blanditiis perspiciatis ipsam ad omnis natus.', 'default.jpg', 1, 0, '20.41'),
(83, 'assumenda-consequatur-at', 'Assumenda consequatur at.', 'Officiis excepturi accusantium minus incidunt officiis quia et sint doloribus possimus sed qui consequatur odio numquam quae.', 'default.jpg', 3, 1, '23.66'),
(84, 'vel-ea-quia', 'Vel ea quia.', 'In adipisci nam maxime et omnis quos modi aut laborum eaque rerum voluptatem.', 'default.jpg', 3, 0, '7.41'),
(85, 'perferendis-incidunt', 'Perferendis incidunt.', 'Voluptates earum doloribus quam eos iusto amet odio voluptatem asperiores et velit aspernatur et quis cum.', 'default.jpg', 1, 0, '9.49'),
(86, 'dolor-voluptates-facere', 'Dolor voluptates facere.', 'Qui repellat sit sit numquam laborum illo quae tenetur assumenda similique.', 'default.jpg', 1, 1, '5.41'),
(87, 'aut-sapiente-delectus', 'Aut sapiente delectus.', 'Alias velit est dolor iste itaque aliquid aperiam dolor sunt nihil et iste qui.', 'default.jpg', 4, 1, '12.93'),
(88, 'molestias-quaerat', 'Molestias quaerat.', 'Molestiae voluptates ea omnis non dicta itaque ut aliquid iusto.', 'default.jpg', 1, 1, '21.03'),
(89, 'qui-est', 'Qui est.', 'Aut illo nulla eum quia reiciendis sit non praesentium debitis molestiae provident nesciunt voluptas sed quia tempora occaecati.', 'default.jpg', 4, 1, '26.93'),
(90, 'hic-libero', 'Hic libero.', 'Perspiciatis ut beatae quisquam eum suscipit quia fuga dolor fugit deleniti asperiores voluptatem voluptas odio saepe quas vitae mollitia.', 'default.jpg', 3, 0, '34.81'),
(91, 'minus-voluptatum-ut', 'Minus voluptatum ut.', 'Rem hic qui commodi sit qui minus nulla libero minima vel.', 'default.jpg', 2, 0, '31.88'),
(92, 'quia-dolorem', 'Quia dolorem.', 'Rerum quibusdam consequuntur doloribus omnis blanditiis vel similique delectus maxime vitae voluptatibus velit quia et repudiandae earum quia id laudantium enim.', 'default.jpg', 4, 1, '30.90'),
(93, 'qui-excepturi-omnis', 'Qui excepturi omnis.', 'Corporis itaque ea perferendis itaque consequatur tempora fuga aut qui deserunt vel veritatis est reiciendis labore.', 'default.jpg', 2, 0, '7.80'),
(94, 'itaque-voluptatem', 'Itaque voluptatem.', 'Deleniti laudantium sit minima qui suscipit velit provident molestiae quia facilis molestiae aperiam voluptatem.', 'default.jpg', 2, 0, '19.09'),
(95, 'temporibus-ut', 'Temporibus ut.', 'Blanditiis ab est fugiat exercitationem distinctio amet iusto molestias aut molestias dicta.', 'default.jpg', 2, 0, '21.57'),
(96, 'est-vitae', 'Est vitae.', 'Et cumque ipsam minima harum quis culpa ut assumenda sit voluptatem voluptas corrupti et aliquam iusto.', 'default.jpg', 4, 0, '39.28'),
(97, 'exercitationem-atque-reprehenderit', 'Exercitationem atque reprehenderit.', 'Ut totam maxime et cumque est vitae recusandae placeat ut sunt ut.', 'default.jpg', 1, 0, '26.28'),
(98, 'et-in', 'Et in.', 'Suscipit officia consequatur dolores et aliquam asperiores ducimus autem aliquam aut doloribus quaerat recusandae voluptatem sapiente occaecati rerum debitis ipsa consequatur.', 'default.jpg', 3, 0, '14.62'),
(99, 'quia-facilis', 'Quia facilis.', 'Dicta similique mollitia placeat quo aut eos labore sed quia minus quis ipsum omnis ut unde rerum cumque nemo.', 'default.jpg', 2, 0, '12.33'),
(100, 'maiores-est-voluptatem', 'Maiores est voluptatem.', 'Nulla ut corrupti corporis doloremque iure inventore ratione eaque suscipit ut quisquam iure eum sit modi.', 'default.jpg', 1, 0, '23.85'),
(101, 'similique-nostrum-id', 'Similique nostrum id.', 'Vel mollitia quaerat omnis possimus voluptas nihil sed atque repudiandae quis sapiente enim ratione explicabo quidem animi.', 'default.jpg', 1, 0, '31.18'),
(102, 'libero-non', 'Libero non.', 'Ut quis et aspernatur vitae fugiat sit quas perspiciatis consequatur rerum vero.', 'default.jpg', 4, 0, '27.68'),
(103, 'aperiam-laudantium-nobis', 'Aperiam laudantium nobis.', 'Debitis sequi et omnis eligendi omnis sit necessitatibus id quo vel dolorum aut dicta.', 'default.jpg', 2, 0, '32.76'),
(104, 'occaecati-et', 'Occaecati et.', 'Eius quis temporibus suscipit ipsum sit suscipit officia eos quas et repudiandae architecto sed.', 'default.jpg', 2, 0, '14.21'),
(105, 'ut-veniam-a', 'Ut veniam a.', 'Et ut fugiat accusamus totam vel iste inventore consequatur vel qui dolorem voluptas sequi cum praesentium laboriosam quo eveniet quos.', 'default.jpg', 3, 1, '29.74'),
(106, 'eum-aliquam-officiis', 'Eum aliquam officiis.', 'Nihil labore repudiandae voluptas sint ducimus aliquam consequatur tempore neque.', 'default.jpg', 4, 0, '31.30'),
(107, 'nostrum-voluptas', 'Nostrum voluptas.', 'Voluptatem cum sapiente et hic esse aut quisquam animi quod officiis consequuntur a sapiente eligendi consequatur.', 'default.jpg', 4, 0, '27.93'),
(108, 'nemo-delectus', 'Nemo delectus.', 'Ipsa voluptas voluptatem cum non veritatis ipsam nam quia labore.', 'default.jpg', 1, 1, '34.16'),
(109, 'qui-id-temporibus', 'Qui id temporibus.', 'Voluptas quia delectus quibusdam quae facilis facere in qui aspernatur sequi culpa quam et corporis ut soluta.', 'default.jpg', 4, 0, '12.99'),
(110, 'quibusdam-accusantium', 'Quibusdam accusantium.', 'Et quidem qui quasi eum neque saepe voluptas vel enim enim.', 'default.jpg', 1, 0, '26.95'),
(111, 'cupiditate-eveniet', 'Cupiditate eveniet.', 'Sunt laudantium id placeat alias et aliquam repellendus dolorem aut unde facere non.', 'default.jpg', 3, 0, '19.58'),
(112, 'quod-dolorem-voluptatem', 'Quod dolorem voluptatem.', 'In nemo saepe amet sit dolor at dignissimos eos assumenda quia provident consequatur qui dolorum.', 'default.jpg', 2, 1, '36.57'),
(113, 'inventore-architecto', 'Inventore architecto.', 'Ut aut amet eos deserunt unde incidunt eos odio sit atque.', 'default.jpg', 3, 1, '31.01'),
(114, 'eum-doloribus-perferendis', 'Eum doloribus perferendis.', 'Aut quos non deleniti dolore qui harum soluta sit reiciendis vitae et iure ipsa similique ullam optio minima laborum mollitia aut veniam.', 'default.jpg', 3, 1, '35.83'),
(115, 'natus-provident', 'Natus provident.', 'Perspiciatis veniam delectus doloribus voluptatem et fugiat qui et quia et similique ex ipsum.', 'default.jpg', 2, 1, '19.34'),
(116, 'temporibus-sequi', 'Temporibus sequi.', 'Asperiores vel repellat voluptatem voluptatem nihil qui non animi praesentium corporis nobis dolorem aspernatur.', 'default.jpg', 2, 0, '18.32'),
(117, 'numquam-corporis-praesentium', 'Numquam corporis praesentium.', 'Ipsum et omnis debitis sed sapiente dolores sapiente vel optio vel velit quia eligendi sapiente et.', 'default.jpg', 3, 1, '9.15'),
(118, 'commodi-sunt', 'Commodi sunt.', 'Dolores nesciunt eum rerum voluptate odio ullam earum voluptatem ipsam magni.', 'default.jpg', 4, 0, '25.46'),
(119, 'omnis-sit', 'Omnis sit.', 'Molestiae in est et fugit qui repellat incidunt iste et rerum et magnam qui quo odit.', 'default.jpg', 4, 1, '21.03'),
(120, 'nostrum-quos-tenetur', 'Nostrum quos tenetur.', 'Ut sit impedit ducimus dolores alias dolorum omnis aut et unde facere nihil dolor facere.', 'default.jpg', 3, 1, '20.18'),
(121, 'dolorum-dolorum-reiciendis', 'Dolorum dolorum reiciendis.', 'Nostrum molestiae in odio eius earum quae officiis quis quisquam est non voluptatum et nam nostrum animi tenetur dolore.', 'default.jpg', 2, 0, '28.59'),
(122, 'voluptas-labore-et', 'Voluptas labore et.', 'Laboriosam voluptatem dolorem voluptatibus ut animi facere officiis qui repellat et ut tempora nemo id doloremque necessitatibus corporis aut incidunt sunt.', 'default.jpg', 2, 0, '28.06'),
(123, 'iure-sint-libero', 'Iure sint libero.', 'Esse ipsam et maiores velit minus est sint asperiores nulla illum animi a labore et sed quaerat nesciunt quod a molestias nostrum.', 'default.jpg', 1, 1, '13.02'),
(124, 'maiores-commodi-quaerat', 'Maiores commodi quaerat.', 'Explicabo dolor vitae dicta voluptatibus blanditiis libero dolorum libero accusantium repudiandae aut ut nesciunt occaecati.', 'default.jpg', 1, 1, '21.15'),
(125, 'cum-est-non', 'Cum est non.', 'Doloremque veritatis et error ducimus vero voluptates quidem veniam earum molestias ut totam culpa incidunt quo.', 'default.jpg', 3, 1, '25.95'),
(126, 'eos-voluptatem-molestiae', 'Eos voluptatem molestiae.', 'Ipsa ad cum provident hic atque porro voluptates occaecati similique.', 'default.jpg', 1, 0, '17.60'),
(127, 'harum-optio-error', 'Harum optio error.', 'Voluptas dolor sunt doloribus ut laborum in error quaerat molestias nisi et repudiandae.', 'default.jpg', 4, 1, '28.98'),
(128, 'magni-dolorem-possimus', 'Magni dolorem possimus.', 'At velit animi deleniti totam id rerum minus voluptatem tempora beatae.', 'default.jpg', 2, 1, '32.58'),
(129, 'dolor-veritatis-nihil', 'Dolor veritatis nihil.', 'Dolor minima facere eos aliquid sunt cumque voluptatem hic dolor harum laudantium sunt aut et aut quisquam molestiae eligendi similique est sit.', 'default.jpg', 4, 0, '25.62'),
(130, 'error-facere', 'Error facere.', 'Sunt illo rerum harum suscipit excepturi voluptas quia cum cumque voluptatem autem blanditiis voluptate ad quibusdam eaque iste amet voluptatem aut.', 'default.jpg', 3, 1, '11.23'),
(131, 'id-ratione-qui', 'Id ratione qui.', 'Nulla dicta possimus optio vel iste corrupti aut et officia dolor aliquid accusantium molestias est aut hic deserunt.', 'default.jpg', 1, 0, '21.97'),
(132, 'rem-dolore', 'Rem dolore.', 'Facilis optio repudiandae soluta nam consequatur quo dolor vel quasi nisi modi aperiam veritatis vel tempora.', 'default.jpg', 4, 1, '5.08'),
(133, 'ea-enim-aut', 'Ea enim aut.', 'Impedit reiciendis facere voluptates in reprehenderit quaerat facere doloremque error dolor.', 'default.jpg', 1, 1, '9.71'),
(134, 'architecto-omnis-esse', 'Architecto omnis esse.', 'Ut soluta eum maiores exercitationem sed id nostrum eos occaecati rerum quibusdam numquam id deserunt sit voluptas omnis.', 'default.jpg', 4, 1, '37.43'),
(135, 'est-voluptatem-aut', 'Est voluptatem aut.', 'Hic adipisci et dolor ea fugiat deserunt temporibus totam tempora.', 'default.jpg', 3, 0, '32.66'),
(136, 'tempore-alias-at', 'Tempore alias at.', 'Reprehenderit dolor fugiat veritatis et beatae voluptatem incidunt numquam earum sit voluptas dolores asperiores quibusdam necessitatibus.', 'default.jpg', 2, 0, '32.15'),
(137, 'vitae-ducimus', 'Vitae ducimus.', 'Recusandae odit nisi soluta et quia deserunt quisquam voluptatem ab.', 'default.jpg', 3, 0, '20.94'),
(138, 'perferendis-et-tenetur', 'Perferendis et tenetur.', 'Quae corrupti ex quis id et maiores quod architecto libero iusto impedit voluptates quia.', 'default.jpg', 4, 0, '30.41'),
(139, 'aspernatur-quas', 'Aspernatur quas.', 'Ducimus fuga blanditiis libero ut assumenda molestias vitae veniam omnis laborum occaecati unde aut hic reiciendis doloribus et.', 'default.jpg', 4, 0, '13.62'),
(140, 'ut-deserunt-eveniet', 'Ut deserunt eveniet.', 'Corrupti et id hic quis ab ab minima natus dolores molestiae provident aliquid exercitationem maxime praesentium sed tempora natus.', 'default.jpg', 4, 0, '12.53'),
(141, 'voluptates-voluptate', 'Voluptates voluptate.', 'Reiciendis reiciendis quisquam qui expedita eum omnis qui inventore nihil et placeat quaerat corrupti sequi.', 'default.jpg', 3, 0, '28.27'),
(142, 'sapiente-pariatur', 'Sapiente pariatur.', 'Qui veritatis quia neque modi qui eum praesentium tempora minus accusantium a ea consequatur dicta maiores aliquid soluta.', 'default.jpg', 4, 0, '19.89'),
(143, 'sit-dolores-veritatis', 'Sit dolores veritatis.', 'Neque voluptas aspernatur est delectus saepe pariatur ab debitis sapiente qui officia eligendi excepturi id fugiat alias atque quos neque maiores.', 'default.jpg', 4, 1, '16.52'),
(144, 'quasi-autem', 'Quasi autem.', 'Voluptatibus maxime suscipit veritatis dolorum eligendi occaecati enim ut odio accusamus cupiditate sunt est.', 'default.jpg', 1, 1, '25.69'),
(145, 'ducimus-et', 'Ducimus et.', 'Tenetur quaerat vitae eius architecto quia error explicabo occaecati voluptas molestiae laudantium itaque amet sit voluptatem laborum est.', 'default.jpg', 3, 0, '20.39'),
(146, 'voluptatem-rerum-at', 'Voluptatem rerum at.', 'Totam voluptatem ut aut laborum nam ea eos omnis sapiente id et voluptatem.', 'default.jpg', 3, 0, '38.09'),
(147, 'temporibus-et-laudantium', 'Temporibus et laudantium.', 'Facilis ex debitis ex tenetur aliquid doloremque ex numquam commodi quod autem accusantium at explicabo et dignissimos sunt nemo architecto et.', 'default.jpg', 3, 0, '28.45'),
(148, 'eligendi-perspiciatis-quis', 'Eligendi perspiciatis quis.', 'Et consequatur suscipit quas incidunt rerum illo est aspernatur perferendis rerum.', 'default.jpg', 2, 0, '23.52'),
(149, 'ea-cupiditate', 'Ea cupiditate.', 'Molestiae fugit vel laudantium nihil numquam qui et quo nihil ea.', 'default.jpg', 4, 1, '26.38'),
(150, 'similique-natus', 'Similique natus.', 'Sed assumenda expedita tenetur excepturi est aut dolorem qui nesciunt libero vero consectetur necessitatibus incidunt nemo molestiae eos quidem.', 'default.jpg', 3, 0, '31.79'),
(151, 'sint-reprehenderit-ipsam', 'Sint reprehenderit ipsam.', 'Unde quis ut consequatur porro id sapiente ut error quaerat et.', 'default.jpg', 2, 1, '27.11'),
(152, 'qui-et', 'Qui et.', 'Atque ut maiores molestias tempora dolor numquam nihil enim corporis nostrum quis totam ut necessitatibus maiores.', 'default.jpg', 2, 1, '8.26'),
(153, 'quia-rem', 'Quia rem.', 'Necessitatibus voluptas animi officia nihil ut sed architecto vero et ea sit facilis.', 'default.jpg', 2, 1, '24.93'),
(154, 'quos-assumenda-earum', 'Quos assumenda earum.', 'Laudantium odit praesentium rerum deleniti aliquid quis rerum id voluptas illum molestiae ea.', 'default.jpg', 3, 0, '28.00'),
(155, 'est-incidunt-aut', 'Est incidunt aut.', 'Est quidem dicta velit unde excepturi excepturi quaerat praesentium minus voluptatem omnis impedit aperiam quia.', 'default.jpg', 2, 0, '20.45'),
(156, 'ad-quaerat-beatae', 'Ad quaerat beatae.', 'Iusto et rerum sunt sit molestias perspiciatis fugit necessitatibus fugiat dolore sit unde porro illum quo.', 'default.jpg', 4, 1, '32.01'),
(157, 'voluptatibus-nulla-ullam', 'Voluptatibus nulla ullam.', 'Qui nostrum non ut quasi eaque veritatis vel aut commodi veritatis quisquam quaerat corrupti rerum enim sapiente est at neque.', 'default.jpg', 4, 0, '18.19'),
(158, 'aliquid-omnis-perferendis', 'Aliquid omnis perferendis.', 'Ut maiores modi fugiat deleniti voluptates eos perspiciatis odio et et quibusdam labore quam deleniti in vitae.', 'default.jpg', 1, 0, '23.29'),
(159, 'eos-et', 'Eos et.', 'Et nihil consequatur reiciendis porro voluptatibus ut sed veniam dolorum aliquam esse corrupti ex doloremque impedit sequi asperiores laboriosam voluptate.', 'default.jpg', 3, 0, '10.44'),
(160, 'ipsa-iusto', 'Ipsa iusto.', 'Est nobis dolore magni qui non voluptatem non nihil est est voluptatem doloribus et et voluptas.', 'default.jpg', 2, 1, '10.05'),
(161, 'voluptatibus-repellendus', 'Voluptatibus repellendus.', 'Dolorum molestiae aspernatur tenetur dolores placeat est quaerat est aut cumque et laudantium doloribus.', 'default.jpg', 3, 0, '9.59'),
(162, 'facere-eum', 'Facere eum.', 'In beatae at aut et impedit minus ut dolore nihil amet soluta aperiam fugit suscipit.', 'default.jpg', 2, 1, '22.68'),
(163, 'occaecati-est', 'Occaecati est.', 'Deserunt saepe quis vel qui quis dolorem consequatur voluptatem laboriosam.', 'default.jpg', 4, 1, '32.85'),
(164, 'corrupti-et', 'Corrupti et.', 'At deserunt error et autem recusandae et fugiat laudantium quasi distinctio fugiat unde quasi ut.', 'default.jpg', 3, 1, '37.97'),
(165, 'voluptatibus-iusto', 'Voluptatibus iusto.', 'Optio commodi voluptas eligendi nihil dolorem eveniet accusamus sed cum in quos.', 'default.jpg', 3, 1, '37.34'),
(166, 'consequuntur-quis-nihil', 'Consequuntur quis nihil.', 'Et vitae sapiente commodi ipsa veniam molestiae provident molestiae molestiae natus tempora cum ullam exercitationem libero sint maiores.', 'default.jpg', 3, 1, '11.52'),
(167, 'sed-libero', 'Sed libero.', 'Nemo veniam sapiente inventore occaecati sint odio maiores perspiciatis quas culpa ab reprehenderit aut nemo molestiae dolorem molestiae aut consectetur dolor.', 'default.jpg', 3, 1, '31.23'),
(168, 'assumenda-suscipit-aut', 'Assumenda suscipit aut.', 'Sit quam reprehenderit id ducimus doloremque totam eum nisi iure omnis facilis quasi quas culpa est.', 'default.jpg', 4, 1, '35.91'),
(169, 'dolor-ratione-incidunt', 'Dolor ratione incidunt.', 'Ea consectetur aspernatur aperiam voluptates magni voluptas officiis accusantium enim impedit in ipsam architecto officia temporibus tempore nihil voluptas.', 'default.jpg', 4, 0, '7.90'),
(170, 'est-corporis', 'Est corporis.', 'Molestias voluptas consequatur minus laudantium adipisci molestias dolorem beatae velit magni.', 'default.jpg', 2, 0, '33.76'),
(171, 'consequatur-non', 'Consequatur non.', 'Delectus sed amet culpa tempora omnis sequi ullam deserunt fugit dolores commodi recusandae eligendi dolorem doloremque similique aut aut officiis qui.', 'default.jpg', 1, 0, '24.14'),
(172, 'maxime-quo', 'Maxime quo.', 'Ea voluptas repellat velit qui ea vel quis animi suscipit voluptatem ut in accusantium.', 'default.jpg', 3, 1, '39.78'),
(173, 'sit-est', 'Sit est.', 'Deserunt similique quisquam voluptatem sapiente ex reiciendis voluptatibus sequi aut quidem quasi impedit reiciendis illum recusandae.', 'default.jpg', 3, 0, '17.19'),
(174, 'adipisci-perspiciatis-esse', 'Adipisci perspiciatis esse.', 'Impedit illo ipsum quidem quis quas ut nihil rerum aut et.', 'default.jpg', 2, 0, '22.27'),
(175, 'quas-et', 'Quas et.', 'Officiis similique aut maxime deleniti iste ad distinctio est fugiat aut rerum qui dolores.', 'default.jpg', 2, 0, '17.30'),
(176, 'sint-nesciunt', 'Sint nesciunt.', 'Eos eligendi quis praesentium sit hic soluta rerum occaecati nam accusantium optio quasi optio labore perferendis eveniet consequatur qui quis.', 'default.jpg', 3, 0, '14.94'),
(177, 'unde-cupiditate-aut', 'Unde cupiditate aut.', 'Animi eius eos natus et voluptas qui error aut ut cumque qui est aliquid ipsa quia voluptatem dolore recusandae eum sit.', 'default.jpg', 3, 1, '14.26'),
(178, 'voluptas-doloremque', 'Voluptas doloremque.', 'Qui exercitationem iusto et velit sed eum et eveniet est et nihil qui.', 'default.jpg', 1, 1, '5.65'),
(179, 'hic-enim', 'Hic enim.', 'Labore et voluptas iste vitae voluptatem voluptas voluptas velit eius ut.', 'default.jpg', 4, 0, '22.74'),
(180, 'porro-sapiente-ullam', 'Porro sapiente ullam.', 'Perferendis vero illum numquam sequi qui placeat quia dolore eum optio vel fuga et est vitae consequatur.', 'default.jpg', 3, 0, '28.48'),
(181, 'repellat-natus', 'Repellat natus.', 'Aut eos quia occaecati sapiente exercitationem aut et odio omnis laudantium maxime placeat et ipsa voluptas veritatis voluptates.', 'default.jpg', 2, 0, '28.88'),
(182, 'qui-minus', 'Qui minus.', 'Ducimus aliquid sit non aut nostrum in animi aliquam modi aut cum non.', 'default.jpg', 2, 1, '8.77'),
(183, 'ducimus-rerum', 'Ducimus rerum.', 'Beatae saepe possimus voluptas quos inventore minus est laboriosam quasi.', 'default.jpg', 1, 0, '22.87'),
(184, 'quia-in-blanditiis', 'Quia in blanditiis.', 'Sint repudiandae voluptatum consequatur autem facere velit non ipsam aliquam debitis asperiores adipisci quos et.', 'default.jpg', 2, 0, '34.03'),
(185, 'beatae-mollitia', 'Beatae mollitia.', 'Earum quibusdam aut vitae quia molestiae eligendi dolores tempore laboriosam qui ullam.', 'default.jpg', 1, 1, '23.53'),
(186, 'sapiente-veniam', 'Sapiente veniam.', 'Iure voluptas dignissimos rerum in deserunt accusantium explicabo pariatur eveniet quidem.', 'default.jpg', 1, 0, '7.97'),
(187, 'quo-quae', 'Quo quae.', 'Voluptatem nobis non repellat dolores nihil voluptate reprehenderit vel eligendi accusamus velit optio facilis ad consequatur.', 'default.jpg', 2, 1, '16.85'),
(188, 'eligendi-ut-cum', 'Eligendi ut cum.', 'Magnam facilis qui consequatur rerum et non laborum quidem et quia aspernatur.', 'default.jpg', 1, 1, '32.10'),
(189, 'laborum-accusamus', 'Laborum accusamus.', 'Saepe architecto perspiciatis soluta animi non nobis veritatis consequatur sed blanditiis quia deserunt.', 'default.jpg', 2, 0, '24.09'),
(190, 'adipisci-rerum', 'Adipisci rerum.', 'Ea cum molestiae blanditiis minus voluptatem fuga voluptas omnis quia veritatis saepe ut aut qui voluptate nisi a maxime natus quam.', 'default.jpg', 4, 0, '9.20'),
(191, 'soluta-vero', 'Soluta vero.', 'Voluptatem consectetur voluptatem et aut sequi esse voluptates consequatur sapiente qui quae dolorum ut commodi.', 'default.jpg', 2, 0, '9.37'),
(192, 'officia-accusamus-cumque', 'Officia accusamus cumque.', 'Ex aut dolores voluptatem magnam maxime sequi qui non rerum dolorem velit aut et totam.', 'default.jpg', 1, 0, '16.74'),
(193, 'voluptate-sit-magnam', 'Voluptate sit magnam.', 'Ad et magni eum voluptatem accusantium odio et sit a facere.', 'default.jpg', 1, 1, '38.50'),
(194, 'at-ad', 'At ad.', 'Inventore reiciendis qui fugiat in rerum delectus odio iste dolores voluptatum nemo earum nobis non enim est et nihil.', 'default.jpg', 1, 0, '24.50'),
(195, 'commodi-rerum', 'Commodi rerum.', 'Dolor itaque ad voluptatem accusantium sed natus voluptatum totam numquam temporibus reiciendis hic natus iusto sint quisquam nisi ex autem.', 'default.jpg', 2, 0, '8.40'),
(196, 'veritatis-laborum', 'Veritatis laborum.', 'Totam ullam nisi dolorum et quidem enim hic magni et sint harum ut quas.', 'default.jpg', 3, 0, '5.03'),
(197, 'soluta-aut-recusandae', 'Soluta aut recusandae.', 'Corrupti molestiae rerum tempore consequuntur sit dolor ut vero aperiam incidunt est impedit et nostrum et dolores.', 'default.jpg', 2, 1, '8.18'),
(198, 'sunt-deleniti', 'Sunt deleniti.', 'Dicta facilis hic ipsa et numquam eos ratione sunt non sit asperiores illum labore itaque molestiae quasi libero quos quasi omnis.', 'default.jpg', 3, 0, '17.25'),
(199, 'in-ea', 'In ea.', 'Fugit soluta reprehenderit quos sit enim quisquam qui praesentium nisi neque.', 'default.jpg', 2, 0, '5.39'),
(200, 'officia-ullam-explicabo', 'Officia ullam explicabo.', 'Eveniet ab commodi veniam id est voluptatem in nihil dolores ea expedita quo consequatur qui amet.', 'default.jpg', 3, 1, '6.35'),
(201, 'velit-perspiciatis-enim', 'Velit perspiciatis enim.', 'Iure est natus tempore et odit quibusdam numquam molestias earum reiciendis iusto quia.', 'default.jpg', 1, 0, '12.18'),
(202, 'omnis-dolorem-ut', 'Omnis dolorem ut.', 'Possimus dolores eligendi iusto aut voluptatem eos quaerat ratione itaque autem fugiat laborum cum perferendis quo nihil nam rerum id.', 'default.jpg', 4, 1, '28.91'),
(203, 'autem-ipsa', 'Autem ipsa.', 'Iste et nihil eveniet minus distinctio eaque voluptatem dolores illum odit.', 'default.jpg', 4, 0, '11.41'),
(204, 'aut-eau', 'Aut ea.', 'Sapiente corrupti necessitatibus consectetur modi qui earum dignissimos voluptatem qui et fuga repellat facere dolor.', 'default.jpg', 2, 0, '7.93');

-- --------------------------------------------------------

--
-- Structure de la table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `types`
--

INSERT INTO `types` (`id`, `type`) VALUES
(1, 'auteur'),
(2, 'scénographe'),
(3, 'comédien');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `langue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'FR'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `firstname`, `lastname`, `langue`) VALUES
(1, 1, 'epfc223', 'epfc@epfc.com', 'users\\June2021\\ncl7dCgXj92Oz9E6DjPA.png', NULL, '$2y$10$ej/I18rcZ0BRCBy6SdkbieANeYn8Fk4i6wpp5i3/4ryG.GAcVRt4m', NULL, '{\"locale\":\"fr\"}', NULL, '2021-06-03 10:25:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, 'luc', 'luc@luc.com', 'users/default.png', NULL, '$2y$10$wbNxSb9DH2rF5dEdd.HF2OmfOo8Iq14eBvA1.MHtVLjBPoEE/5Nzq', NULL, '{\"locale\":\"fr\"}', '2021-06-01 16:56:23', '2021-06-01 16:56:23', NULL, NULL, NULL, NULL, NULL, NULL, 'FR'),
(4, 2, 'Grégory Van Ossel', 'vanosselgregory@gmail.com', 'users/default.png', NULL, '$2y$10$DU.2TfuP6axkMC6XzP3vRuCIQoCMv3PpbSiTYQSigNn5FXBzKbFEG', NULL, NULL, '2021-06-01 21:48:35', '2021-06-01 21:48:35', NULL, NULL, NULL, NULL, NULL, NULL, 'FR'),
(5, 2, 'jcvd2', 'jc@vd.com', 'users\\June2021\\5hkewYDr3kxztR0HX7TY.gif', NULL, '$2y$10$pE3LWJLQRSiJeehNGcEx3.H/SgrfWA94hf7DBuqGKKhDIZLknwV3.', NULL, '{\"locale\":\"fr\"}', '2021-06-03 10:26:55', '2021-06-03 10:27:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(3, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `artist_type`
--
ALTER TABLE `artist_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artist_type_artist_id_foreign` (`artist_id`),
  ADD KEY `artist_type_type_id_foreign` (`type_id`);

--
-- Index pour la table `artist_type_show`
--
ALTER TABLE `artist_type_show`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artist_type_show_artist_type_id_foreign` (`artist_type_id`),
  ADD KEY `artist_type_show_show_id_foreign` (`show_id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `localities`
--
ALTER TABLE `localities`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `locations_slug_unique` (`slug`),
  ADD KEY `locations_locality_id_foreign` (`locality_id`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `representations`
--
ALTER TABLE `representations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `representations_location_id_foreign` (`location_id`),
  ADD KEY `representations_show_id_foreign` (`show_id`);

--
-- Index pour la table `representation_user`
--
ALTER TABLE `representation_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `representation_user_user_id_foreign` (`user_id`),
  ADD KEY `representation_user_representation_id_foreign` (`representation_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shows_slug_unique` (`slug`),
  ADD KEY `shows_location_id_foreign` (`location_id`);

--
-- Index pour la table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Index pour la table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_plan_unique` (`subscription_id`,`stripe_plan`),
  ADD KEY `subscription_items_stripe_id_index` (`stripe_id`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `artist_type`
--
ALTER TABLE `artist_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `artist_type_show`
--
ALTER TABLE `artist_type_show`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `localities`
--
ALTER TABLE `localities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT pour la table `representations`
--
ALTER TABLE `representations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `representation_user`
--
ALTER TABLE `representation_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `shows`
--
ALTER TABLE `shows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT pour la table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `artist_type`
--
ALTER TABLE `artist_type`
  ADD CONSTRAINT `artist_type_artist_id_foreign` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`),
  ADD CONSTRAINT `artist_type_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`);

--
-- Contraintes pour la table `artist_type_show`
--
ALTER TABLE `artist_type_show`
  ADD CONSTRAINT `artist_type_show_artist_type_id_foreign` FOREIGN KEY (`artist_type_id`) REFERENCES `artist_type` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `artist_type_show_show_id_foreign` FOREIGN KEY (`show_id`) REFERENCES `shows` (`id`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_locality_id_foreign` FOREIGN KEY (`locality_id`) REFERENCES `localities` (`id`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `representations`
--
ALTER TABLE `representations`
  ADD CONSTRAINT `representations_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `representations_show_id_foreign` FOREIGN KEY (`show_id`) REFERENCES `shows` (`id`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `representation_user`
--
ALTER TABLE `representation_user`
  ADD CONSTRAINT `representation_user_representation_id_foreign` FOREIGN KEY (`representation_id`) REFERENCES `representations` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `representation_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `shows`
--
ALTER TABLE `shows`
  ADD CONSTRAINT `shows_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
