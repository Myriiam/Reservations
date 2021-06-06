-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 06 juin 2021 à 11:52
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
(1, 12, 20),
(2, 3, 17),
(3, 8, 8),
(4, 5, 18),
(5, 14, 10),
(6, 16, 12),
(7, 4, 24),
(8, 17, 17),
(9, 12, 23),
(10, 16, 20),
(11, 13, 18),
(12, 17, 7),
(13, 7, 6),
(14, 6, 17),
(15, 13, 14),
(16, 10, 17),
(17, 11, 7),
(18, 19, 14),
(19, 10, 17),
(20, 5, 23),
(21, 1, 17),
(22, 17, 17),
(23, 6, 7),
(24, 11, 14),
(25, 4, 15),
(26, 13, 21),
(27, 6, 7),
(28, 7, 21),
(29, 6, 22),
(30, 6, 23),
(31, 1, 6),
(32, 7, 15),
(33, 2, 7),
(34, 14, 20),
(35, 2, 15),
(36, 18, 11),
(37, 3, 12),
(38, 4, 22),
(39, 4, 22),
(40, 16, 7),
(41, 14, 15),
(42, 13, 22),
(43, 9, 18),
(44, 17, 8),
(45, 4, 6),
(46, 15, 13),
(47, 7, 17),
(48, 20, 9),
(49, 9, 13),
(50, 1, 10),
(51, 3, 23),
(52, 7, 14),
(53, 6, 9),
(54, 15, 22),
(55, 10, 9),
(56, 7, 15),
(57, 15, 6),
(58, 20, 13),
(59, 14, 13),
(60, 8, 14),
(61, 19, 17),
(62, 18, 9),
(63, 4, 8),
(64, 9, 8),
(65, 14, 12),
(66, 7, 22),
(67, 10, 13),
(68, 12, 6),
(69, 6, 23),
(70, 8, 6),
(71, 1, 21),
(72, 17, 16),
(73, 18, 7),
(74, 18, 20),
(75, 1, 12),
(76, 13, 7),
(77, 5, 15),
(78, 16, 11),
(79, 11, 11),
(80, 1, 21),
(81, 5, 9),
(82, 12, 19),
(83, 15, 16),
(84, 12, 21),
(85, 19, 11),
(86, 18, 19),
(87, 18, 11),
(88, 12, 24),
(89, 2, 11),
(90, 6, 12),
(91, 2, 9),
(92, 12, 6),
(93, 10, 7),
(94, 12, 23),
(95, 20, 21),
(96, 17, 8),
(97, 8, 11),
(98, 7, 8),
(99, 11, 12),
(100, 9, 14),
(101, 10, 8),
(102, 20, 16),
(103, 14, 21),
(104, 4, 7),
(105, 13, 21),
(106, 3, 9),
(107, 11, 10),
(108, 13, 19),
(109, 14, 17),
(110, 6, 17),
(111, 8, 9),
(112, 19, 15),
(113, 3, 6),
(114, 18, 22),
(115, 18, 22),
(116, 7, 8),
(117, 10, 21),
(118, 20, 7),
(119, 10, 13),
(120, 3, 6),
(121, 3, 10),
(122, 18, 14),
(123, 5, 12),
(124, 13, 12),
(125, 3, 13),
(126, 4, 10),
(127, 9, 7),
(128, 5, 12),
(129, 20, 19),
(130, 18, 17),
(131, 4, 11),
(132, 14, 19),
(133, 14, 17),
(134, 16, 21),
(135, 9, 14),
(136, 7, 8),
(137, 17, 15),
(138, 6, 24),
(139, 2, 8),
(140, 13, 9),
(141, 19, 21),
(142, 13, 21),
(143, 5, 8),
(144, 20, 19),
(145, 20, 21),
(146, 8, 7),
(147, 18, 24),
(148, 1, 11),
(149, 7, 24),
(150, 9, 20),
(151, 7, 8),
(152, 4, 22),
(153, 13, 19),
(154, 20, 11),
(155, 8, 20),
(156, 18, 13),
(157, 6, 11),
(158, 3, 24),
(159, 1, 1),
(160, 2, 1),
(161, 3, 1),
(162, 4, 1),
(163, 5, 1),
(164, 6, 2),
(165, 7, 2),
(166, 8, 2),
(167, 9, 2),
(168, 10, 2),
(169, 11, 2),
(170, 12, 2),
(171, 13, 3),
(172, 14, 3),
(173, 15, 3),
(174, 16, 4),
(175, 17, 4),
(176, 4, 4),
(177, 19, 4),
(178, 20, 4);

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
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Nom', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Mot de passe', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Token de rappel', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Créé le', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Mis à jour le', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Rôle', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Nom', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Créé le', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Mis à jour le', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Nom', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Créé le', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Mis à jour le', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Nom d\'affichage', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Rôle', 1, 1, 1, 1, 1, 1, NULL, 9);

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
(1, 'users', 'users', 'Utilisateur', 'Utilisateurs', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-06-06 06:41:54', '2021-06-06 06:41:54'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-06-06 06:41:54', '2021-06-06 06:41:54'),
(3, 'roles', 'roles', 'Rôle', 'Rôles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-06-06 06:41:54', '2021-06-06 06:41:54');

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
(1, 'admin', '2021-06-06 06:41:54', '2021-06-06 06:41:54');

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
(1, 1, 'Tableau de bord', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-06-06 06:41:54', '2021-06-06 06:41:54', 'voyager.dashboard', NULL),
(2, 1, 'Médiathèque', '', '_self', 'voyager-images', NULL, NULL, 5, '2021-06-06 06:41:54', '2021-06-06 06:41:54', 'voyager.media.index', NULL),
(3, 1, 'Utilisateurs', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-06-06 06:41:54', '2021-06-06 06:41:54', 'voyager.users.index', NULL),
(4, 1, 'Rôles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-06-06 06:41:54', '2021-06-06 06:41:54', 'voyager.roles.index', NULL),
(5, 1, 'Outils', '', '_self', 'voyager-tools', NULL, NULL, 9, '2021-06-06 06:41:54', '2021-06-06 06:41:54', NULL, NULL),
(6, 1, 'Créateur de menus', '', '_self', 'voyager-list', NULL, 5, 10, '2021-06-06 06:41:54', '2021-06-06 06:41:54', 'voyager.menus.index', NULL),
(7, 1, 'Base de données', '', '_self', 'voyager-data', NULL, 5, 11, '2021-06-06 06:41:54', '2021-06-06 06:41:54', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2021-06-06 06:41:54', '2021-06-06 06:41:54', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2021-06-06 06:41:54', '2021-06-06 06:41:54', 'voyager.bread.index', NULL),
(10, 1, 'Paramètres', '', '_self', 'voyager-settings', NULL, NULL, 14, '2021-06-06 06:41:54', '2021-06-06 06:41:54', 'voyager.settings.index', NULL);

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
(1, 'browse_admin', NULL, '2021-06-06 06:41:55', '2021-06-06 06:41:55'),
(2, 'browse_bread', NULL, '2021-06-06 06:41:55', '2021-06-06 06:41:55'),
(3, 'browse_database', NULL, '2021-06-06 06:41:55', '2021-06-06 06:41:55'),
(4, 'browse_media', NULL, '2021-06-06 06:41:55', '2021-06-06 06:41:55'),
(5, 'browse_compass', NULL, '2021-06-06 06:41:55', '2021-06-06 06:41:55'),
(6, 'browse_menus', 'menus', '2021-06-06 06:41:55', '2021-06-06 06:41:55'),
(7, 'read_menus', 'menus', '2021-06-06 06:41:55', '2021-06-06 06:41:55'),
(8, 'edit_menus', 'menus', '2021-06-06 06:41:55', '2021-06-06 06:41:55'),
(9, 'add_menus', 'menus', '2021-06-06 06:41:55', '2021-06-06 06:41:55'),
(10, 'delete_menus', 'menus', '2021-06-06 06:41:55', '2021-06-06 06:41:55'),
(11, 'browse_roles', 'roles', '2021-06-06 06:41:55', '2021-06-06 06:41:55'),
(12, 'read_roles', 'roles', '2021-06-06 06:41:55', '2021-06-06 06:41:55'),
(13, 'edit_roles', 'roles', '2021-06-06 06:41:55', '2021-06-06 06:41:55'),
(14, 'add_roles', 'roles', '2021-06-06 06:41:55', '2021-06-06 06:41:55'),
(15, 'delete_roles', 'roles', '2021-06-06 06:41:55', '2021-06-06 06:41:55'),
(16, 'browse_users', 'users', '2021-06-06 06:41:55', '2021-06-06 06:41:55'),
(17, 'read_users', 'users', '2021-06-06 06:41:55', '2021-06-06 06:41:55'),
(18, 'edit_users', 'users', '2021-06-06 06:41:55', '2021-06-06 06:41:55'),
(19, 'add_users', 'users', '2021-06-06 06:41:55', '2021-06-06 06:41:55'),
(20, 'delete_users', 'users', '2021-06-06 06:41:55', '2021-06-06 06:41:55'),
(21, 'browse_settings', 'settings', '2021-06-06 06:41:55', '2021-06-06 06:41:55'),
(22, 'read_settings', 'settings', '2021-06-06 06:41:55', '2021-06-06 06:41:55'),
(23, 'edit_settings', 'settings', '2021-06-06 06:41:55', '2021-06-06 06:41:55'),
(24, 'add_settings', 'settings', '2021-06-06 06:41:55', '2021-06-06 06:41:55'),
(25, 'delete_settings', 'settings', '2021-06-06 06:41:55', '2021-06-06 06:41:55');

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
(25, 1);

-- --------------------------------------------------------

--
-- Structure de la table `representations`
--

CREATE TABLE `representations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location_id` bigint(20) UNSIGNED DEFAULT NULL,
  `show_id` bigint(20) UNSIGNED NOT NULL,
  `when` datetime NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `places` int(11) NOT NULL,
  `bookable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `representations`
--

INSERT INTO `representations` (`id`, `location_id`, `show_id`, `when`, `price`, `places`, `bookable`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2012-10-12 13:30:00', '10.50', 120, 1, NULL, NULL),
(2, 2, 1, '2012-10-12 20:30:00', '9.50', 80, 1, NULL, NULL),
(3, NULL, 2, '2012-10-02 20:30:00', '12.50', 100, 1, NULL, NULL),
(4, NULL, 3, '2012-10-16 20:30:00', '11.00', 150, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `representation_user`
--

CREATE TABLE `representation_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `representation_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `representation_user`
--

INSERT INTO `representation_user` (`id`, `user_id`, `representation_id`) VALUES
(1, 1, 1);

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
(1, 'admin', 'Administrateur', '2021-06-06 06:41:54', '2021-06-06 06:41:54'),
(2, 'user', 'Utilisateur standard', '2021-06-06 06:41:55', '2021-06-06 06:41:55'),
(3, 'affiliate', 'voyager::seeders.roles.affiliate', '2021-06-06 06:41:55', '2021-06-06 06:41:55');

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
(2, 'site.description', 'Description du site', 'Boutique de réservations de places de théâtre', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Logo du site', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics ID de Tracking', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Image de fond de l\'espace admin', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Titre de l\'espace admin', 'Réservations', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Description de l\'espace admin', 'Bienvenue dans Voyager, le panneau d\'administration qui manquait à Laravel.', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Chargement de l\'espace admin', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Icône de l\'espace admin', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics ID Client (Utilisé pour le panneau d\'administration)', '', '', 'text', 1, 'Admin');

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
  `price` decimal(10,2) DEFAULT NULL,
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
(4, 'manneke', 'Manneke… !', 'A tour de rôle, Pierre se joue de ses oncles, tantes, grands-parents et surtout de sa mère.', 'wayburn.jpg', 3, 1, '11.00', NULL, NULL),
(5, 'ut-perspiciatis-neque', 'Ut perspiciatis neque.', 'Minus tempora aut enim veniam laborum tenetur eum modi rerum beatae neque qui voluptatem omnis minima.', 'default.jpg', 2, 1, '17.47', '2021-06-06 06:41:52', '2021-06-06 06:41:52'),
(6, 'quas-quia', 'Quas quia.', 'Omnis animi ut quia velit consequatur reprehenderit nihil et rerum est et tempore aspernatur.', 'default.jpg', 3, 0, '22.21', '2021-06-06 06:41:52', '2021-06-06 06:41:52'),
(7, 'cum-soluta-odit', 'Cum soluta odit.', 'Odit soluta est autem ipsum distinctio et voluptatum rerum rerum doloribus rerum quas vero et odit ipsa hic.', 'default.jpg', 4, 1, '13.52', '2021-06-06 06:41:52', '2021-06-06 06:41:52'),
(8, 'expedita-sit-vitae', 'Expedita sit vitae.', 'Commodi quis vero numquam totam aut ex eum vel laboriosam.', 'default.jpg', 1, 0, '31.76', '2021-06-06 06:41:52', '2021-06-06 06:41:52'),
(9, 'ut-cupiditate-sunt', 'Ut cupiditate sunt.', 'Quibusdam quibusdam est enim occaecati recusandae in dignissimos est sequi vel quia et fugit veritatis incidunt.', 'default.jpg', 3, 0, '34.36', '2021-06-06 06:41:52', '2021-06-06 06:41:52'),
(10, 'quia-qui-mollitia', 'Quia qui mollitia.', 'Dolores magni provident quos eaque rerum iure voluptate tempora et architecto mollitia.', 'default.jpg', 2, 1, '18.35', '2021-06-06 06:41:52', '2021-06-06 06:41:52'),
(11, 'dicta-nobis-et', 'Dicta nobis et.', 'Necessitatibus architecto et officiis earum et porro qui iusto aut praesentium rerum tempore vel aut sapiente aperiam vitae aliquam molestiae aspernatur.', 'default.jpg', 4, 0, '22.30', '2021-06-06 06:41:52', '2021-06-06 06:41:52'),
(12, 'sint-recusandae-minus', 'Sint recusandae minus.', 'Quam incidunt et repellendus saepe pariatur nam quo ratione nihil magnam et sed perferendis nobis aperiam ut.', 'default.jpg', 2, 1, '7.23', '2021-06-06 06:41:52', '2021-06-06 06:41:52'),
(13, 'saepe-quod-amet', 'Saepe quod amet.', 'Odit adipisci sint et labore repellat repudiandae in quam facilis culpa reiciendis aut qui.', 'default.jpg', 4, 1, '29.55', '2021-06-06 06:41:52', '2021-06-06 06:41:52'),
(14, 'cupiditate-mollitia', 'Cupiditate mollitia.', 'Velit porro at quidem a dolorem quasi velit distinctio itaque eos atque eos odit.', 'default.jpg', 2, 1, '24.23', '2021-06-06 06:41:52', '2021-06-06 06:41:52'),
(15, 'assumenda-quae', 'Assumenda quae.', 'Quis recusandae officia molestiae commodi qui a dolorem sit nihil tenetur illum sunt ab accusantium perferendis ad sit sunt est reiciendis.', 'default.jpg', 4, 1, '39.66', '2021-06-06 06:41:52', '2021-06-06 06:41:52'),
(16, 'amet-asperiores-quaerat', 'Amet asperiores quaerat.', 'Distinctio ut et ut voluptatem nihil ut molestiae et id ea pariatur magni cumque non nam necessitatibus aut quia.', 'default.jpg', 3, 0, '35.22', '2021-06-06 06:41:52', '2021-06-06 06:41:52'),
(17, 'odio-eos', 'Odio eos.', 'Quia dolores consectetur iste sint quo quod et ea quia adipisci recusandae tenetur in et quasi voluptatem consequatur ex maxime voluptas tenetur.', 'default.jpg', 1, 1, '10.98', '2021-06-06 06:41:52', '2021-06-06 06:41:52'),
(18, 'facilis-reiciendis-repellendus', 'Facilis reiciendis repellendus.', 'Ad expedita sunt sint ipsa adipisci dignissimos impedit enim aut hic omnis et non rerum voluptate quia.', 'default.jpg', 3, 1, '16.20', '2021-06-06 06:41:52', '2021-06-06 06:41:52'),
(19, 'et-ut', 'Et ut.', 'Non cumque inventore veritatis et optio quis error est dolor vel mollitia natus rerum omnis perferendis ut magni aperiam quae ab.', 'default.jpg', 3, 1, '27.86', '2021-06-06 06:41:52', '2021-06-06 06:41:52'),
(20, 'aut-tempora', 'Aut tempora.', 'Eaque perferendis voluptatum in et id eum qui optio et autem est sunt aut aliquid.', 'default.jpg', 1, 1, '28.60', '2021-06-06 06:41:52', '2021-06-06 06:41:52'),
(21, 'facilis-harum-vel', 'Facilis harum vel.', 'Quis molestiae voluptatem ut deserunt accusamus aut id sint qui similique maxime qui est sit a quas optio.', 'default.jpg', 4, 0, '19.06', '2021-06-06 06:41:52', '2021-06-06 06:41:52'),
(22, 'autem-est-rerum', 'Autem est rerum.', 'Veritatis alias sunt dolorem doloribus excepturi facilis aspernatur similique earum consequuntur eius quos mollitia fuga nihil dolores aperiam.', 'default.jpg', 1, 1, '22.94', '2021-06-06 06:41:52', '2021-06-06 06:41:52'),
(23, 'quis-est', 'Quis est.', 'Iste labore autem consequatur aperiam sed officia dolores iusto id enim deleniti error quibusdam.', 'default.jpg', 4, 0, '37.41', '2021-06-06 06:41:52', '2021-06-06 06:41:52'),
(24, 'assumenda-laborum-nulla', 'Assumenda laborum nulla.', 'Iusto at ut ipsa ut totam harum cum laborum voluptas illo rerum minus vel ipsam cum facilis itaque.', 'default.jpg', 2, 1, '11.84', '2021-06-06 06:41:52', '2021-06-06 06:41:52');

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `langue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FR',
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
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `firstname`, `lastname`, `langue`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`) VALUES
(1, NULL, 'epfc', 'Simba', 'Moufassa', 'français', 'epfc@epfc.com', 'users/default.png', NULL, '$2y$10$fHaqYr52vXwMGF.CIQn9Ce4eKISdhnLt/GntIkj2p9dJ7k7YozRB2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
