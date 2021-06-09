-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 09 juin 2021 à 16:57
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
(1, 15, 21),
(2, 13, 17),
(3, 7, 17),
(4, 5, 21),
(5, 16, 11),
(6, 2, 23),
(7, 1, 7),
(8, 12, 20),
(9, 16, 15),
(10, 8, 22),
(11, 20, 10),
(12, 3, 8),
(13, 16, 20),
(14, 17, 20),
(15, 10, 21),
(16, 11, 6),
(17, 2, 24),
(18, 3, 16),
(19, 18, 13),
(20, 18, 10),
(21, 20, 22),
(22, 8, 19),
(23, 17, 14),
(24, 19, 15),
(25, 4, 24),
(26, 6, 15),
(27, 8, 24),
(28, 7, 8),
(29, 11, 9),
(30, 11, 18),
(31, 20, 6),
(32, 14, 16),
(33, 13, 15),
(34, 17, 24),
(35, 7, 18),
(36, 1, 7),
(37, 2, 8),
(38, 10, 23),
(39, 14, 17),
(40, 15, 22),
(41, 7, 18),
(42, 18, 11),
(43, 14, 10),
(44, 9, 20),
(45, 1, 18),
(46, 14, 11),
(47, 6, 8),
(48, 4, 18),
(49, 8, 16),
(50, 14, 7),
(51, 14, 12),
(52, 9, 24),
(53, 15, 7),
(54, 18, 19),
(55, 14, 8),
(56, 8, 12),
(57, 9, 6),
(58, 12, 6),
(59, 8, 14),
(60, 14, 17),
(61, 13, 12),
(62, 2, 15),
(63, 11, 23),
(64, 18, 12),
(65, 11, 20),
(66, 11, 15),
(67, 10, 15),
(68, 7, 23),
(69, 3, 7),
(70, 1, 16),
(71, 16, 15),
(72, 18, 9),
(73, 20, 14),
(74, 3, 23),
(75, 13, 19),
(76, 8, 16),
(77, 19, 6),
(78, 1, 18),
(79, 3, 22),
(80, 19, 16),
(81, 18, 14),
(82, 6, 22),
(83, 2, 7),
(84, 9, 15),
(85, 3, 14),
(86, 7, 17),
(87, 18, 7),
(88, 1, 19),
(89, 18, 15),
(90, 11, 20),
(91, 2, 18),
(92, 4, 9),
(93, 18, 22),
(94, 20, 21),
(95, 6, 16),
(96, 20, 13),
(97, 4, 24),
(98, 6, 9),
(99, 11, 21),
(100, 20, 24),
(101, 6, 13),
(102, 20, 16),
(103, 10, 17),
(104, 3, 9),
(105, 8, 6),
(106, 4, 18),
(107, 4, 22),
(108, 10, 17),
(109, 15, 19),
(110, 20, 16),
(111, 4, 8),
(112, 15, 24),
(113, 6, 24),
(114, 8, 12),
(115, 6, 24),
(116, 14, 22),
(117, 5, 12),
(118, 13, 7),
(119, 16, 15),
(120, 16, 23),
(121, 10, 18),
(122, 3, 6),
(123, 19, 24),
(124, 18, 20),
(125, 12, 13),
(126, 10, 13),
(127, 7, 18),
(128, 1, 19),
(129, 8, 10),
(130, 8, 10),
(131, 2, 14),
(132, 18, 16),
(133, 10, 8),
(134, 15, 8),
(135, 18, 14),
(136, 6, 21),
(137, 8, 7),
(138, 15, 11),
(139, 10, 23),
(140, 2, 8),
(141, 8, 12),
(142, 18, 21),
(143, 10, 23),
(144, 16, 23),
(145, 4, 24),
(146, 18, 9),
(147, 14, 21),
(148, 13, 14),
(149, 11, 14),
(150, 14, 13),
(151, 14, 16),
(152, 18, 18),
(153, 17, 20),
(154, 10, 15),
(155, 6, 23),
(156, 9, 6),
(157, 14, 20),
(158, 3, 9),
(159, 5, 21),
(160, 20, 20),
(161, 14, 21),
(162, 4, 11),
(163, 13, 8),
(164, 1, 12),
(165, 1, 1),
(166, 2, 1),
(167, 3, 1),
(168, 4, 1),
(169, 5, 1),
(170, 6, 2),
(171, 7, 2),
(172, 8, 2),
(173, 9, 2),
(174, 10, 2),
(175, 11, 2),
(176, 12, 2),
(177, 13, 3),
(178, 14, 3),
(179, 15, 3),
(180, 16, 4),
(181, 17, 4),
(182, 4, 4),
(183, 19, 4),
(184, 20, 4);

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
(35, '2021_03_26_215332_create_representation_user_table', 1),
(36, '2021_06_04_163020_create_agent_table', 2),
(37, '2021_06_04_164937_update_user_table', 3),
(38, '2021_06_04_165157_update_user_relations_agent_table', 4),
(39, '2021_06_04_170740_update_artist_table', 5),
(40, '2021_06_04_170748_update_artist_relation_table', 6),
(41, '2021_06_04_175357_create_favorites_locations_table', 7),
(42, '2021_06_04_175622_update_users_table', 8),
(43, '2021_06_04_181900_update_favorites_locations_table', 9);

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
  `when` datetime DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `places` int(11) DEFAULT NULL,
  `bookable` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `representations`
--

INSERT INTO `representations` (`id`, `location_id`, `show_id`, `when`, `price`, `places`, `bookable`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-10-12 13:30:00', '10.50', 97, 1, '2021-06-09 08:21:45', '2021-06-09 06:21:45'),
(2, 2, 1, '2021-10-12 20:30:00', '9.50', 80, 1, '2021-06-08 23:30:15', NULL),
(3, 2, 2, '2021-10-02 20:30:00', '12.50', 99, 0, '2021-06-09 14:21:30', '2021-06-09 12:21:30'),
(4, NULL, 3, '2021-10-16 20:30:00', '11.00', 150, 1, '2021-06-08 23:30:06', NULL),
(5, 3, 4, NULL, '21.00', 97, 1, '2021-06-09 13:53:51', '2021-06-09 11:53:51');

-- --------------------------------------------------------

--
-- Structure de la table `representation_user`
--

CREATE TABLE `representation_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `representation_id` bigint(20) UNSIGNED NOT NULL,
  `places` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
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
(3, 'affiliate', 'Utilisateur possédant des droits spéciaux', '2021-06-01 11:15:52', '2021-06-01 11:15:52');

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
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `shows`
--

INSERT INTO `shows` (`id`, `slug`, `title`, `description`, `poster_url`, `location_id`, `bookable`, `price`, `created_at`, `updated_at`) VALUES
(1, 'ayiti', 'Ayiti', 'Un homme est bloqué à l’aéroport.\n Questionné par les douaniers, il doit alors justifier son identité, et surtout prouver qu\'il est haïtien – qu\'est-ce qu\'être haïtien ?', 'ayiti.jpg', 1, 1, '10.50', NULL, NULL),
(2, 'cible-mouvante', 'Cible mouvante', 'Dans ce « thriller d’anticipation », des adultes semblent alimenter et véhiculer une crainte féroce envers les enfants âgés entre 10 et 12 ans.', 'cible.jpg', 2, 1, '9.50', NULL, NULL),
(3, 'ceci-nest-pas-un-chanteur-belge', 'Ceci n\'est pas un chanteur belge', 'Non peut-être ?!\nEntre Magritte (pour le surréalisme comique) et Maigret (pour le réalisme mélancolique), ce dixième opus semalien propose quatorze nouvelles chansons mêlées à de petits textes humoristiques et à quelques fortes images poétiques.', 'claudebelgesaison220.jpg', NULL, 0, '12.50', NULL, NULL),
(4, 'manneke', 'Manneke… !', 'A tour de rôle, Pierre se joue de ses oncles, tantes, grands-parents et surtout de sa mère.', 'wayburn.jpg', 3, 1, '11.00', NULL, NULL);

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
(3, 2, 'bot', '', 'users/default.png', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bot', 'bot', 'FR'),
(8, 1, 'admin', 'admin@epfc.com', 'users/default.png', NULL, '$2y$10$gWe33WHlMQWg2rUG5GkUH.Qyr5Yo6hOKTx0eo9Q5Se.Z51i3BvQ8.', NULL, NULL, '2021-06-09 12:53:19', '2021-06-09 12:53:19', NULL, NULL, NULL, NULL, 'Lucie', 'Epfc', 'FR'),
(9, 2, 'Mufasa Simba', 'epfc@epfc.com', 'users/default.png', NULL, '$2y$10$YSzsg1GGXd/BvViTfGFE1.zPwUis5wycO3f8mtbmr0Qyfr88k30MW', NULL, NULL, '2021-06-09 12:56:47', '2021-06-09 12:56:47', NULL, NULL, NULL, NULL, 'Simba', 'Mufasa', 'FR');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT pour la table `representations`
--
ALTER TABLE `representations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `representation_user`
--
ALTER TABLE `representation_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
