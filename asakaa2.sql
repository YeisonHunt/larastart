-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-05-2019 a las 17:47:16
-- Versión del servidor: 10.1.29-MariaDB
-- Versión de PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `asakaa2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `businesses`
--

CREATE TABLE `businesses` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `randString` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `businesses`
--

INSERT INTO `businesses` (`id`, `name`, `randString`, `created_at`, `updated_at`) VALUES
(3, 'Asakaa', 'ILze1L3ADD45s4ayMgtE', '2018-12-04 07:18:58', '2018-12-04 07:18:58'),
(4, 'test business', 'kmYBGh4O1BLS6yePhvmZ', '2018-12-19 04:56:47', '2018-12-19 04:56:47'),
(5, 'test business2', 'jnra5qPTw2tEfS5BOmF6', '2018-12-21 03:30:47', '2018-12-21 03:30:47'),
(6, 'pewdipie', '7IXthuBJOIax1WYjbjie', '2018-12-21 03:33:18', '2018-12-21 03:33:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(2, NULL, 1, 'Category 2', 'category-2', '2018-07-05 21:05:13', '2018-07-05 21:05:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chats`
--

CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `mensaje` varchar(800) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `chats`
--

INSERT INTO `chats` (`id`, `user_id`, `mensaje`, `fecha`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hola', '2018-07-28 21:37:56', '2018-07-29 02:37:56', '2018-07-29 02:37:56'),
(2, 1, 'Segundo hola', '2018-07-28 21:38:15', '2018-07-29 02:38:15', '2018-07-29 02:38:15'),
(3, 1, 'Tercer hola', '2018-07-28 21:40:13', '2018-07-29 02:40:13', '2018-07-29 02:40:13'),
(4, 2, 'Voyager', '2018-07-28 22:15:48', '2018-07-29 03:15:48', '2018-07-29 03:15:48'),
(5, 1, 'Probando last', '2018-07-28 22:40:26', '2018-07-29 03:40:26', '2018-07-29 03:40:26'),
(6, 1, 'Probando boton derecha', '2018-07-28 22:49:30', '2018-07-29 03:49:30', '2018-07-29 03:49:30'),
(7, 1, 'Probando sin header', '2018-07-28 23:13:14', '2018-07-29 04:13:14', '2018-07-29 04:13:14'),
(8, 1, 'Last messagge', '2018-07-28 23:15:58', '2018-07-29 04:15:58', '2018-07-29 04:15:58'),
(9, 1, 'Another message', '2018-07-30 22:11:24', '2018-07-31 03:11:24', '2018-07-31 03:11:24'),
(10, 1, 'Otro', '2018-07-30 22:13:45', '2018-07-31 03:13:45', '2018-07-31 03:13:45'),
(11, 1, 'asdasd', '2018-07-30 22:14:10', '2018-07-31 03:14:10', '2018-07-31 03:14:10'),
(12, 1, 'asdasdasd', '2018-07-30 22:15:30', '2018-07-31 03:15:30', '2018-07-31 03:15:30'),
(13, 1, 'asdasd', '2018-07-30 22:15:52', '2018-07-31 03:15:52', '2018-07-31 03:15:52'),
(14, 1, 'Otroooo', '2018-07-31 00:00:35', '2018-07-31 05:00:35', '2018-07-31 05:00:35'),
(15, 2, 'desde 2', '2018-08-01 14:31:28', '2018-08-01 19:31:28', '2018-08-01 19:31:28'),
(16, 1, 'hola asakaa', '2018-08-04 01:19:24', '2018-08-04 06:19:24', '2018-08-04 06:19:24'),
(17, 1, 'test', '2018-08-04 23:22:29', '2018-08-05 04:22:29', '2018-08-05 04:22:29'),
(18, 1, 'test de chat', '2018-08-11 15:41:33', '2018-08-11 20:41:33', '2018-08-11 20:41:33'),
(19, 1, 'probando chat', '2018-09-07 02:28:27', '2018-09-07 07:28:27', '2018-09-07 07:28:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `commentparent_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `text` varchar(1000) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`id`, `task_id`, `commentparent_id`, `user_id`, `text`, `created_at`, `updated_at`) VALUES
(9, 41, 0, 17, 'Primer comentario de ddd', '2018-11-10 23:21:38', '2018-11-10 23:21:38'),
(11, 28, 0, 17, 'cambio de [confirmar cambio 2]', '2018-11-10 23:27:55', '2018-11-10 23:27:55'),
(12, 28, 0, 17, 'Otro cambio perros', '2018-11-10 23:28:03', '2018-11-10 23:28:03'),
(13, 28, 0, 17, 'Otro cambio mas perros', '2018-11-10 23:28:13', '2018-11-10 23:28:13'),
(14, 41, 0, 17, 'Segundo comentario de ddd', '2018-11-10 23:39:31', '2018-11-10 23:39:31'),
(15, 41, 0, 17, 'tercer comentario de ddd', '2018-11-10 23:40:44', '2018-11-10 23:40:44'),
(16, 25, 0, 17, 'comentario de uu', '2018-11-10 23:49:04', '2018-11-10 23:49:04'),
(17, 25, 0, 17, 'segundo comentario de uuu', '2018-11-10 23:49:10', '2018-11-10 23:49:10'),
(18, 25, 0, 17, 'tercer comentario de uuu', '2018-11-10 23:49:16', '2018-11-10 23:49:16'),
(19, 0, 20, 17, 'Future change', '2018-11-11 00:13:11', '2018-11-11 00:13:11'),
(20, 24, 0, 17, 'Lels', '2018-11-11 00:13:19', '2018-11-11 00:13:19'),
(21, 41, 0, 17, 'cause i want', '2018-11-11 00:27:26', '2018-11-11 00:27:26'),
(22, 0, 21, 17, 'cause hell yeah', '2018-11-11 00:27:39', '2018-11-11 00:27:39'),
(23, 24, 0, 17, 'Otro comentario', '2018-11-11 01:30:41', '2018-11-11 01:30:41'),
(24, 28, 0, 17, 'last comment', '2018-11-11 03:13:28', '2018-11-11 03:13:28'),
(25, 28, 0, 17, 'SEXY LADIEEE', '2018-11-11 03:14:55', '2018-11-11 03:14:55'),
(26, 28, 0, 17, 'Otro comentario final perros', '2018-11-11 03:23:17', '2018-11-11 03:23:17'),
(27, 28, 0, 17, 'lel', '2018-11-11 03:26:06', '2018-11-11 03:26:06'),
(28, 28, 0, 17, 'asdasd', '2018-11-11 03:27:20', '2018-11-11 03:27:20'),
(29, 28, 0, 17, 'lulsssssssssss', '2018-11-11 03:27:49', '2018-11-11 03:27:49'),
(30, 28, 0, 17, 'numero de comentario', '2018-11-11 03:29:43', '2018-11-11 03:29:43'),
(31, 28, 0, 17, 'ahora perros', '2018-11-11 03:34:50', '2018-11-11 03:34:50'),
(32, 24, 0, 17, 'Another one', '2018-11-11 03:39:20', '2018-11-11 03:39:20'),
(33, 24, 0, 17, 'dos puntos uve', '2018-11-11 03:39:27', '2018-11-11 03:39:27'),
(34, 0, 11, 17, 'Primera respuesta perros', '2018-11-11 05:25:05', '2018-11-11 05:25:05'),
(35, 0, 26, 17, 'segunda respuesta perros', '2018-11-11 05:27:08', '2018-11-11 05:27:08'),
(36, 0, 11, 17, 'respuesta a la respuesta', '2018-11-11 05:30:47', '2018-11-11 05:30:47'),
(37, 0, 31, 17, 'respuesta a ahora perros', '2018-11-11 05:31:04', '2018-11-11 05:31:04'),
(38, 0, 26, 17, 'tecera', '2018-11-11 05:33:36', '2018-11-11 05:33:36'),
(39, 0, 26, 17, 'cuarta', '2018-11-11 05:34:09', '2018-11-11 05:34:09'),
(40, 0, 26, 17, 'quinta', '2018-11-11 05:34:16', '2018-11-11 05:34:16'),
(41, 0, 26, 17, 'sexta', '2018-11-11 05:34:25', '2018-11-11 05:34:25'),
(42, 28, 0, 17, 'Otro comentario chingon', '2018-11-11 05:37:00', '2018-11-11 05:37:00'),
(43, 0, 11, 17, 'lels', '2018-11-11 05:52:15', '2018-11-11 05:52:15'),
(44, 0, 11, 17, 'luls', '2018-11-11 05:55:06', '2018-11-11 05:55:06'),
(45, 0, 11, 17, 'hola bebesote', '2018-11-11 05:57:56', '2018-11-11 05:57:56'),
(46, 43, 0, 17, 'Otro cambio chidori', '2018-11-13 04:16:20', '2018-11-13 04:16:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 0, 0, 0, 0, 0, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 0, 0, 0, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 0, 0, 0, 0, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 0, 0, 0, 0, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 0, 0, 0, 0, 0, 0, NULL, 9),
(23, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(24, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(25, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(26, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 4),
(27, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '', 6),
(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(30, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(31, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(32, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(33, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(34, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(35, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(36, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(37, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(38, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 9),
(39, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 10),
(40, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(41, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 12),
(42, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 13),
(43, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '', 14),
(44, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '', 15),
(45, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(46, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '', 2),
(47, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 3),
(48, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(49, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 5),
(50, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(51, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 7),
(52, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 8),
(53, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(54, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '', 10),
(55, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '', 11),
(56, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '', 12),
(57, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(58, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(59, 7, 'inicio', 'date', 'Fecha Inicio', 1, 1, 1, 1, 1, 1, NULL, 3),
(60, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 4),
(61, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(62, 7, 'deadline', 'text', 'Deadline', 1, 1, 1, 1, 1, 1, NULL, 5),
(63, 7, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, NULL, 6),
(64, 7, 'leader', 'text', 'Leader', 0, 1, 1, 1, 1, 1, NULL, 7),
(65, 7, 'budget', 'text', 'Budget', 0, 1, 1, 1, 1, 1, NULL, 8),
(66, 7, 'status', 'text', 'Status', 1, 1, 1, 1, 1, 1, NULL, 9),
(67, 7, 'user_id', 'text', 'User Id', 0, 0, 0, 0, 0, 0, NULL, 2),
(68, 1, 'account_type', 'text', 'Account Type', 1, 1, 1, 1, 1, 1, NULL, 3),
(69, 1, 'businessName', 'text', 'BusinessName', 0, 1, 1, 1, 1, 1, NULL, 6),
(70, 1, 'code', 'text', 'Code', 1, 0, 0, 0, 0, 0, NULL, 9),
(71, 1, 'status', 'text', 'Status', 0, 0, 0, 0, 0, 0, NULL, 10),
(72, 1, 'active', 'number', 'Active', 1, 1, 1, 0, 0, 0, NULL, 11),
(73, 1, 'actualizador', 'text', 'Actualizador', 0, 0, 0, 0, 0, 0, NULL, 14),
(74, 1, 'business_id', 'text', 'Business Id', 0, 0, 0, 0, 0, 0, NULL, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-05 21:05:12', '2019-01-06 18:43:27'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-07-05 21:05:12', '2018-07-05 21:05:12'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-07-05 21:05:12', '2018-07-05 21:05:12'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2018-07-05 21:05:12', '2018-07-05 21:05:12'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(7, 'projects', 'projects', 'My Projects', 'Projects', 'voyager-bolt', 'App\\Project', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-07 07:38:48', '2018-07-14 02:27:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `discussions`
--

CREATE TABLE `discussions` (
  `id` int(11) NOT NULL,
  `idea_id` int(11) NOT NULL,
  `discussion_parent_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` varchar(2000) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `discussions`
--

INSERT INTO `discussions` (`id`, `idea_id`, `discussion_parent_id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 5, 0, 17, 'Este es el comentario PADRE', '2019-05-16 21:46:53', '2019-05-16 21:46:53'),
(2, 0, 1, 1, 'Este es el comentario HIJO', '2019-05-16 21:46:53', '2019-05-16 21:46:53'),
(3, 0, 1, 15, 'Otro comentario HIJO', '2019-05-16 21:50:14', '2019-05-16 21:50:14'),
(4, 5, 0, 17, 'Otro comentario PADRE', '2019-05-16 21:50:14', '2019-05-16 21:50:14'),
(5, 5, 0, 17, 'Nuevo comentario', '2019-05-17 05:23:00', '2019-05-17 05:23:00'),
(6, 5, 0, 17, 'Otro comentario mas', '2019-05-17 05:23:13', '2019-05-17 05:23:13'),
(7, 5, 0, 17, 'Yo pienso que esta idea es genial!', '2019-05-17 05:23:28', '2019-05-17 05:23:28'),
(8, 4, 0, 17, 'Me parece que la idea de arriba se puede mejorar haciendo uso del software Asakaa.com.', '2019-05-17 05:24:52', '2019-05-17 05:24:52'),
(9, 5, 0, 17, 'Another one', '2019-05-17 21:55:02', '2019-05-17 21:55:02'),
(10, 0, 1, 17, 'Otro comentario hijo', '2019-05-18 02:05:58', '2019-05-18 02:05:58'),
(11, 0, 1, 17, 'Otro comentario hijo mas', '2019-05-18 02:06:09', '2019-05-18 02:06:09'),
(12, 0, 9, 17, 'Comentario de ultimo padre', '2019-05-18 02:59:41', '2019-05-18 02:59:41'),
(13, 0, 7, 17, 'Comentario al penultimo comentario', '2019-05-18 03:01:10', '2019-05-18 03:01:10'),
(14, 0, 1, 17, 'creo que es por los hijos que se baja', '2019-05-18 03:07:20', '2019-05-18 03:07:20'),
(15, 0, 1, 17, 'pareciera', '2019-05-18 03:07:31', '2019-05-18 03:07:31'),
(16, 0, 4, 17, 'O no es asi?', '2019-05-18 03:07:39', '2019-05-18 03:07:39'),
(17, 0, 7, 17, 'quien sabe', '2019-05-18 03:07:50', '2019-05-18 03:07:50'),
(18, 4, 0, 17, 'Otro comentario padre', '2019-05-18 03:12:09', '2019-05-18 03:12:09'),
(19, 5, 0, 17, 'Cuando cumple anos una persona', '2019-05-18 05:45:16', '2019-05-18 05:45:16'),
(20, 5, 0, 17, 'Nuevo comentario inscrito', '2019-05-18 06:21:45', '2019-05-18 06:21:45'),
(21, 5, 0, 17, 'Nuevo comentario perros', '2019-05-18 06:24:27', '2019-05-18 06:24:27'),
(22, 5, 0, 17, 'Otro comentario mas', '2019-05-18 06:24:51', '2019-05-18 06:24:51'),
(23, 5, 0, 17, 'eee', '2019-05-18 06:25:50', '2019-05-18 06:25:50'),
(24, 5, 0, 17, 'Miremos a ver si funciona este', '2019-05-18 06:34:52', '2019-05-18 06:34:52'),
(25, 5, 0, 17, 'Otro comentariooooo', '2019-05-18 06:35:13', '2019-05-18 06:35:13'),
(26, 5, 0, 17, 'Este creo que es como el 26', '2019-05-18 06:44:24', '2019-05-18 06:44:24'),
(27, 5, 0, 17, 'salir de deudas', '2019-05-18 06:50:45', '2019-05-18 06:50:45'),
(28, 5, 0, 17, 'menfistores', '2019-05-18 06:56:02', '2019-05-18 06:56:02'),
(29, 5, 0, 17, 'diabetes', '2019-05-18 07:16:36', '2019-05-18 07:16:36'),
(30, 5, 0, 17, 'Habia una vez', '2019-05-18 07:19:05', '2019-05-18 07:19:05'),
(31, 5, 0, 17, 'Otro comentario mas', '2019-05-18 07:26:39', '2019-05-18 07:26:39'),
(32, 0, 1, 17, 'Respuesa a comentario padre', '2019-05-18 08:22:27', '2019-05-18 08:22:27'),
(33, 0, 1, 17, 'dream of californication', '2019-05-18 08:25:12', '2019-05-18 08:25:12'),
(34, 5, 0, 17, 'hay otro que no', '2019-05-18 08:25:24', '2019-05-18 08:25:24'),
(35, 4, 0, 17, 'Not so easy', '2019-05-18 20:42:36', '2019-05-18 20:42:36'),
(36, 4, 0, 17, 'Another comment', '2019-05-18 20:42:43', '2019-05-18 20:42:43'),
(37, 0, 8, 17, 'Comentario hijo', '2019-05-18 20:42:48', '2019-05-18 20:42:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `extras`
--

CREATE TABLE `extras` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `des` varchar(191) NOT NULL,
  `urgency` varchar(50) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hours`
--

CREATE TABLE `hours` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `idTask` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `extra` int(4) NOT NULL,
  `user_id` int(12) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `hours`
--

INSERT INTO `hours` (`id`, `fecha`, `idTask`, `value`, `project_id`, `extra`, `user_id`, `created_at`, `updated_at`) VALUES
(32, '2019-03-03', 0, 1, 127, 0, 1, '2019-03-04 05:30:27', '2019-03-04 05:35:55'),
(33, '2019-03-03', 0, 3, 127, 0, 17, '2019-03-04 05:41:44', '2019-03-04 05:41:44'),
(34, '2019-02-26', 1668, 4, 109, 1, 17, '2019-03-04 07:57:57', '2019-03-04 07:57:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `innovations`
--

CREATE TABLE `innovations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '''Awesome idea description...''',
  `body` longtext COLLATE utf8mb4_unicode_ci,
  `img` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `innovations`
--

INSERT INTO `innovations` (`id`, `title`, `description`, `body`, `img`, `category`, `type`, `language`, `tags`, `author`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Primera idea con editor nuevo', '\'Awesome idea description...\'', '<p>test</p>', 'https://images.unsplash.com/photo-1553356043-87636630a106?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80', 'homeandpets', NULL, 'de', NULL, 'showme', 17, '2019-04-27 07:09:56', '2019-04-27 07:09:56'),
(2, 'Segunda idea genial', '\'Awesome idea description...\'', '<p>Editor de texto rich</p>', 'https://images.unsplash.com/photo-1553356043-87636630a106?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80', 'homeandpets', NULL, 'de', NULL, 'showme', 17, '2019-04-27 08:05:46', '2019-04-27 08:05:46'),
(3, 'Idea excelente creada con VueJS', 'Idea de prueba de VueJS', '<p class=\"contenido\" id=\"p362514-m297-296-298\" style=\"margin-right: auto; margin-bottom: 0px; margin-left: auto; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 27px; font-family: roboto_slab_regular; font-size: 16px; vertical-align: baseline; color: rgb(57, 57, 57); -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">Si bien la tormenta que desató la no extradición de \'Jesús Santrich\' opacó la captura del magistrado Gustavo Malo y la acusación formal contra el expresidente de la Corte Suprema<b style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">&nbsp;<a href=\"https://www.eltiempo.com/noticias/leonidas-bustos\" style=\"margin: 0px; padding: 0px 2px 1px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-size: 1rem; vertical-align: baseline; -webkit-font-smoothing: antialiased; color: inherit; display: inline; position: relative; transition: background 0.125s ease-in-out 0s; background-image: linear-gradient(to right, rgb(3, 201, 234) 0px, rgb(3, 201, 234) 100%); background-position: 0px 100%; background-size: 100% 3px; background-repeat: repeat-x; background-attachment: initial; background-origin: initial; background-clip: initial;\">Leonidas Bustos</a></b>, \'por el llamado&nbsp;<a href=\"https://www.eltiempo.com/noticias/cartel-de-la-toga\" target=\"_blank\" style=\"margin: 0px; padding: 0px 2px 1px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-size: 1rem; vertical-align: baseline; -webkit-font-smoothing: antialiased; color: inherit; display: inline; position: relative; transition: background 0.125s ease-in-out 0s; background-image: linear-gradient(to right, rgb(3, 201, 234) 0px, rgb(3, 201, 234) 100%); background-position: 0px 100%; background-size: 100% 3px; background-repeat: repeat-x; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 16px; vertical-align: baseline;\">cartel de la toga\',&nbsp;</b></a>ambos casos avanza a buen ritmo.<br><br>Además de la acusación, la Comisión de Acusación de la Cámara ordenó<b style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">&nbsp;que se le congelaran todos los bienes a Bustos, incluido un lujoso apartamento que tiene a la venta en el exclusivo sector de La Cabrera, en Bogotá.</b></p><p class=\"contenido\" id=\"p362514-m341-2-342\" style=\"margin: 40px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 27px; font-family: roboto_slab_regular; font-size: 16px; vertical-align: baseline; color: rgb(57, 57, 57); -webkit-font-smoothing: antialiased; overflow-wrap: break-word;\">Si bien en la investigación se estableció que el dinero que le habrían cobrado a varios políticos, a manera de soborno, se usó para adquirir bienes, varios estarían a nombre de testaferros, que hoy están siendo rastreados.<br><br><a href=\"https://www.eltiempo.com/noticias/cartel-de-la-toga\" style=\"margin: 0px; padding: 0px 2px 1px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-size: 1rem; vertical-align: baseline; -webkit-font-smoothing: antialiased; color: inherit; display: inline; position: relative; transition: background 0.125s ease-in-out 0s; background-image: linear-gradient(to right, rgb(3, 201, 234) 0px, rgb(3, 201, 234) 100%); background-position: 0px 100%; background-size: 100% 3px; background-repeat: repeat-x; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 16px; vertical-align: baseline;\">(Lea todo el cubrimiento al escándalo del Cartel de la Toga)</b></a><br><br>Sin embargo, el apartamento, de 388 metros, ubicado en un tercer nivel,&nbsp;<b style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">está a nombre de Bustos quien, tal como lo reveló EL TIEMPO, salió desde finales de 2018 hacia Canadá.</b></p>', 'https://images.unsplash.com/photo-1493612276216-ee3925520721?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80', 'improvethis', NULL, 'en', NULL, 'showme', 17, '2019-05-01 04:03:28', '2019-05-18 20:47:01'),
(4, 'Vamos de nuevo', '\'Awesome idea description...\'', '<h1>Meet DHTMLX Rich Text Editor!</h1><p>This demo will show you the main features of our highly customizable JavaScript rich text editor.</p><p>Type in any text here, apply text formatting and use the controls below to change the editor\'s look and feel and convert your text into HTML, markdown or plain text.</p><p><strong>To learn more, read our </strong><a href=\"https://docs.dhtmlx.com/richtext/index.html\" title=\"documentation\"><strong>documentation</strong></a><strong> and check the </strong><a href=\"https://docs.dhtmlx.com/richtext/samples/\" title=\"samples\"><strong>samples</strong></a></p><blockquote><p>It\'s extremely easy and fast to build a fully working nice-looking application that normally would take weeks or months to build.</p></blockquote><p style=\"text-align: right;\"><a href=\"https://www.g2crowd.com/products/dhtmlxsuite/reviews\" title=\"G2Crowd\">G2Crowd</a></p>', 'https://images.unsplash.com/photo-1507668077129-56e32842fceb?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 'improvethis', NULL, 'en', NULL, 'showme', 17, '2019-05-01 04:15:53', '2019-05-16 21:16:39'),
(5, 'Another idea', 'Esta idea podria servir para mejorar el mundo que conocemos', '<p>Awesome music <b>Hold on</b></p><p><span style=\"color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;\"><br></span></p><p><span style=\"color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;\">The&nbsp;</span><a href=\"https://developer.mozilla.org/en-US/docs/Web/CSS/:lang\" style=\"color: rgb(0, 123, 255); background-color: rgb(255, 255, 255); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;\"><code class=\"highlighter-rouge\" style=\"font-size: 14px;\">:lang()</code>&nbsp;pseudo-class</a><span style=\"color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;\">&nbsp;is used to allow for translation of the “Browse” text into other languages. Override or add entries to the&nbsp;</span><code class=\"highlighter-rouge\" style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">$custom-file-text</code><span style=\"color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;\">&nbsp;Sass variable with the relevant&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/IETF_language_tag\" style=\"color: rgb(0, 123, 255); background-color: rgb(255, 255, 255); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;\">language tag</a><span style=\"color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;\">&nbsp;and localized strings. The English strings can be customized the same way. For example, here’s how one might add a Spanish translation (Spanish’s language code is&nbsp;</span><code class=\"highlighter-rouge\" style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">es</code><span style=\"color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;\">):</span><br></p>', 'https://images.unsplash.com/photo-1552664730-d307ca884978?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80', 'beautyandfaashion', NULL, 'es', NULL, 'anonymous', 17, '2019-05-09 05:25:46', '2019-05-12 08:58:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `links`
--

CREATE TABLE `links` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `links`
--

INSERT INTO `links` (`id`, `type`, `source`, `target`, `created_at`, `updated_at`, `project_id`) VALUES
(12, '0', 15, 16, '2018-08-01 20:04:47', '2018-08-01 20:04:47', NULL),
(16, '0', 17, 18, '2018-08-06 09:31:42', '2018-08-06 09:31:42', NULL),
(17, '1', 17, 19, '2018-08-06 09:31:46', '2018-08-06 09:31:46', NULL),
(18, '1', 20, 19, '2018-08-06 09:31:50', '2018-08-06 09:31:50', NULL),
(19, '0', 18, 19, '2018-08-06 09:31:53', '2018-08-06 09:31:53', NULL),
(20, '0', 19, 20, '2018-08-06 09:31:57', '2018-08-06 09:31:57', NULL),
(23, '0', 20, 21, '2018-08-06 09:33:00', '2018-08-06 09:33:00', NULL),
(24, '2', 162, 163, '2018-08-26 22:15:23', '2018-08-26 22:15:23', NULL),
(25, '1', 163, 164, '2018-08-26 22:15:29', '2018-08-26 22:15:29', NULL),
(26, '0', 165, 164, '2018-08-26 22:15:38', '2018-08-26 22:15:38', NULL),
(28, '3', 598, 596, '2018-10-02 20:40:57', '2018-10-02 20:40:57', NULL),
(29, '3', 596, 595, '2018-10-02 20:41:01', '2018-10-02 20:41:01', NULL),
(30, '3', 595, 594, '2018-10-02 20:41:17', '2018-10-02 20:41:17', NULL),
(31, '3', 627, 626, '2018-10-12 03:28:34', '2018-10-12 03:28:34', NULL),
(32, '0', 1518, 1519, '2019-02-03 22:01:46', '2019-02-03 22:01:46', NULL),
(33, '0', 1519, 1520, '2019-02-03 22:01:56', '2019-02-03 22:01:56', NULL),
(35, '0', 1520, 1522, '2019-02-03 22:02:11', '2019-02-03 22:02:11', NULL),
(36, '0', 1522, 1523, '2019-02-03 22:02:36', '2019-02-03 22:02:36', NULL),
(37, '0', 1523, 1524, '2019-02-03 22:02:42', '2019-02-03 22:02:42', NULL),
(38, '0', 1524, 1525, '2019-02-03 22:02:45', '2019-02-03 22:02:45', NULL),
(39, '0', 1525, 1526, '2019-02-03 22:02:47', '2019-02-03 22:02:47', NULL),
(40, '0', 1526, 1528, '2019-02-03 22:02:50', '2019-02-03 22:02:50', NULL),
(41, '0', 1528, 1529, '2019-02-03 22:02:52', '2019-02-03 22:02:52', NULL),
(42, '0', 1529, 1530, '2019-02-03 22:02:55', '2019-02-03 22:02:55', NULL),
(43, '0', 1530, 1532, '2019-02-03 22:02:57', '2019-02-03 22:02:57', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-07-05 21:05:12', '2018-07-05 21:05:12'),
(2, 'Asaka User Interface', '2018-07-15 00:54:01', '2018-07-15 00:54:01'),
(3, 'Business Users', '2019-01-14 02:50:14', '2019-01-14 02:50:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-company', '#000000', NULL, 1, '2018-07-05 21:05:12', '2018-09-04 09:56:13', 'voyager.dashboard', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 9, '2018-07-05 21:05:12', '2018-12-14 06:20:20', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', '#000000', NULL, 8, '2018-07-05 21:05:12', '2019-01-06 19:00:22', 'adminUsers', 'null'),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 7, '2018-07-05 21:05:12', '2018-12-14 06:20:20', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 13, '2018-07-05 21:05:12', '2018-12-14 06:20:20', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2018-07-05 21:05:12', '2018-07-07 03:20:10', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2018-07-05 21:05:12', '2018-07-07 03:20:10', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-07-05 21:05:12', '2018-07-07 03:20:10', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2018-07-05 21:05:12', '2018-07-07 03:20:11', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', '#000000', NULL, 14, '2018-07-05 21:05:12', '2018-12-14 06:20:21', 'voyager.settings.index', 'null'),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 12, '2018-07-05 21:05:13', '2018-12-14 06:20:20', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 10, '2018-07-05 21:05:13', '2018-12-14 06:20:20', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 11, '2018-07-05 21:05:13', '2018-12-14 06:20:20', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2018-07-05 21:05:13', '2018-07-07 03:20:11', 'voyager.hooks', NULL),
(15, 1, 'My Projects', '', '_self', 'voyager-bulb', '#3eabdf', NULL, 2, '2018-07-07 03:29:19', '2018-08-06 08:21:32', 'projects.index', 'null'),
(17, 2, 'My Projects', '', '_self', 'voyager-company', '#000000', NULL, 2, '2018-07-15 00:54:37', '2018-08-01 19:28:20', 'projects.index', 'null'),
(18, 1, 'My task history', '', '_self', 'voyager-check', '#000000', NULL, 4, '2018-07-23 23:03:01', '2018-09-12 20:08:14', 'taskHistory', 'null'),
(19, 1, 'Team Chat', '', '_self', 'voyager-chat', '#000000', NULL, 6, '2018-07-28 21:36:54', '2018-12-14 06:22:07', 'chat', 'null'),
(20, 2, 'Team Chat', '', '_self', 'voyager-paper-planevoyager-chat', '#000000', NULL, 6, '2018-08-01 19:24:22', '2018-12-14 06:19:32', 'chat', 'null'),
(21, 2, 'Task Historial', '', '_self', 'voyager-list', '#000000', NULL, 5, '2018-08-01 19:26:42', '2018-12-14 06:19:32', 'getTask', 'null'),
(22, 2, 'Dashboard', '', '_self', 'voyager-company', '#000000', NULL, 1, '2018-08-01 19:28:03', '2018-09-04 09:56:39', 'voyager.dashboard', 'null'),
(23, 2, 'Settings', 'voyager.settings.index', '_self', 'voyager-settings', '#000000', NULL, 7, '2018-08-01 19:34:33', '2018-12-14 06:19:32', NULL, ''),
(24, 1, 'Timesheets', '', '_self', 'voyager-file-text', '#000000', NULL, 3, '2018-09-12 20:06:10', '2018-09-12 20:08:14', 'timesheets', NULL),
(26, 2, 'Reports', '', '_self', 'voyager-pie-graph', '#000000', NULL, 3, '2018-12-14 06:19:22', '2018-12-14 06:19:32', 'reports_user.index', NULL),
(27, 1, 'Reports', '', '_self', 'voyager-pie-graph', '#000000', NULL, 5, '2018-12-14 06:20:08', '2018-12-14 06:22:07', 'reports_user.index', NULL),
(28, 3, 'Dashboard', '', '_self', 'voyager-company', '#000000', NULL, 1, '2019-01-14 03:06:59', '2019-01-14 03:23:16', 'voyager.dashboard', NULL),
(29, 3, 'My Projects', '', '_self', 'voyager-star', '#000000', NULL, 2, '2019-01-14 03:07:36', '2019-01-14 03:23:16', 'projects.index', 'null'),
(30, 3, 'Reports', '', '_self', 'voyager-pie-graph', '#000000', NULL, 5, '2019-01-14 03:10:57', '2019-01-14 03:24:58', 'reports_user.index', NULL),
(31, 3, 'Task History', '', '_self', 'voyager-list', '#000000', NULL, 4, '2019-01-14 03:12:03', '2019-01-14 03:24:58', 'taskHistory', NULL),
(32, 3, 'Admin', '', '_self', 'voyager-compass', '#000000', NULL, 6, '2019-01-14 03:23:02', '2019-01-14 03:25:23', 'admin-users', 'null'),
(33, 3, 'Timesheets', '', '_self', 'voyager-file-text', '#000000', NULL, 3, '2019-01-14 03:24:46', '2019-01-14 03:24:52', 'timesheets', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(2, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(4, '2016_06_01_000004_create_oauth_clients_table', 1),
(5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(6, '2019_05_13_213125_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2018-07-05 21:05:13', '2018-07-05 21:05:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'edit ideas', 'web', '2019-05-15 02:15:54', '2019-05-15 02:15:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\r\n                <h2>We can use all kinds of format!</h2>\r\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\r\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\r\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-07-05 21:05:13', '2018-07-05 21:05:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `identidad` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inicio` date NOT NULL,
  `deadline` date NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leader` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `budget` double(10,3) DEFAULT NULL,
  `status` enum('early','puased','working','almost','finished') COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `readonly` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `psreadonly` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `situation` int(11) DEFAULT NULL,
  `actualizador` int(11) DEFAULT NULL,
  `baseline` int(11) NOT NULL DEFAULT '0',
  `finished` int(11) DEFAULT '0',
  `ofertedD` int(11) DEFAULT NULL,
  `countWeekends` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `projects`
--

INSERT INTO `projects` (`id`, `identidad`, `name`, `inicio`, `deadline`, `description`, `leader`, `budget`, `status`, `user_id`, `readonly`, `psreadonly`, `situation`, `actualizador`, `baseline`, `finished`, `ofertedD`, `countWeekends`, `created_at`, `updated_at`) VALUES
(8, '001', 'Default project', '2018-07-18', '2027-10-18', 'Learning to use Asakaa tools', 'leader@gmail.com', 2000.000, '', 1, '12345', '12345', 1, 2644224, 1, 0, 10000, 'no', '2018-07-18 06:17:39', '2019-03-04 07:44:03'),
(9, NULL, 'Test Project', '2018-07-25', '2018-07-31', 'description', 'Leonel Caicedo', 2434.000, 'early', 1, 'q8zUHFCO2S', '12345', 1, NULL, 1, 0, NULL, 'no', '2018-07-18 07:08:53', '2018-07-18 07:08:53'),
(14, NULL, '333', '2018-07-11', '2018-07-31', '333', '333', 3232.000, 'early', 1, '11l10lKEahWyfOh', 'JNFC79XW4hgseq4', 1, NULL, 1, 0, NULL, 'no', '2018-07-18 08:14:21', '2018-07-18 08:14:21'),
(15, NULL, 'Asakaa Project', '2018-07-20', '2018-07-27', '12312', 'Bairon', 122121.000, 'early', 1, '2VSPu2LA2jGBU0a', 'Pww6FVWPHfsTtuH', 1, 9432579, 1, 0, NULL, 'no', '2018-07-18 08:24:40', '2018-09-08 06:47:03'),
(16, NULL, 'Default project', '2018-07-26', '2018-12-15', 'Learning to use Asakaa tools', 'Add a leader team here', 2000.000, 'early', 2, '12345', '12345', 1, NULL, 1, 0, NULL, 'no', '2018-07-26 10:26:36', '2018-07-26 10:26:36'),
(102, NULL, 'y', '2018-08-16', '2018-09-28', 'y', 'Isabel A', 1.000, 'early', 1, 'FxiCqNa3s3TBsQN', 'SGn5La2uDzzweEi', 1, NULL, 1, 0, NULL, 'no', '2018-08-17 07:52:22', '2018-08-17 07:52:22'),
(103, NULL, 'q', '2018-08-16', '2018-10-25', 'q', 'Andres Casimiro', 1.000, 'early', 1, 'PpptQd4pZPo82zz', 'SdsUGENSbqXrHAK', 1, 6486841, 1, 0, NULL, 'no', '2018-08-17 08:55:26', '2018-09-07 04:25:39'),
(104, NULL, 'Default project', '2018-09-03', '2018-12-03', 'Learning to use Asakaa tools', 'Add a leader team here', 2000.000, 'early', 5, '12345', '12345', 1, NULL, 1, 0, NULL, 'no', '2018-09-03 19:42:18', '2018-09-03 19:42:18'),
(105, NULL, 'Default project', '2018-09-03', '2018-12-03', 'Learning to use Asakaa tools', 'Add a leader team here', 2000.000, 'early', 6, '12345', '12345', 1, NULL, 1, 0, NULL, 'no', '2018-09-03 19:58:35', '2018-09-03 19:58:35'),
(106, NULL, 'Testing history', '2018-09-03', '2018-09-03', 'des', 'Yeison', 2000.000, 'early', 1, 'dgHfdtdmA8T5QkW', 'gUU7kI54d2CkT05', 0, 9179174, 0, 0, NULL, 'no', '2018-09-03 21:42:14', '2018-09-13 10:28:22'),
(107, NULL, 'w', '2018-09-03', '2018-09-14', 'w', 'Vilma Palma', 2.000, 'early', 1, '5hheeMBK3nIqOep', '79JC3k0vr9pyHbw', 1, 33497, 1, 0, NULL, 'no', '2018-09-03 21:55:33', '2019-01-21 04:42:52'),
(108, NULL, 'Default project', '2018-09-03', '2018-12-03', 'Learning to use Asakaa tools', 'Add a leader team here', 2000.000, 'early', 13, '12345', '12345', 1, NULL, 1, 0, NULL, 'no', '2018-09-04 00:57:28', '2018-09-04 00:57:28'),
(109, NULL, 'Default project', '2018-09-03', '2018-12-03', 'Learning to use Asakaa tools', 'Add a leader team here', 2000.000, 'early', 17, '12345', '12345', 1, NULL, 1, 0, NULL, 'no', '2018-09-04 01:18:24', '2018-09-04 01:18:24'),
(110, NULL, 'Testing shared', '2018-09-06', '2018-09-06', 'testing shared separator', 'Yeison', 2000.000, 'early', 17, 'kPCyCzRzTmkZbil', 'yGXbnZKcLrFrsHp', 1, 10176802, 1, 0, NULL, 'no', '2018-09-07 02:10:21', '2018-10-06 01:35:36'),
(112, NULL, 'Hey, no admin', '2018-09-07', '2018-12-07', 'asdasd', 'asd@mail.com', 121221.000, '', 17, 'n9N0bXZ9wl2Uw4O', '6qY5YuQydEVaksJ', 1, 958126, 1, 0, NULL, 'no', '2018-09-07 22:15:58', '2018-10-06 02:20:03'),
(114, '18002', 'Asdasdasd45', '2018-09-17', '2018-09-18', 'asdad', 'asdasdasd', 2000.000, '', 1, 'UttVrlBTJCEGrzm', '2ldfL0oS9iLHeri', 1, 10035523, 1, 0, NULL, 'no', '2018-09-13 23:33:31', '2018-09-21 21:46:49'),
(115, '23223', 'suministro gabinetes ecopetrol', '2018-09-22', '2019-02-22', 'qweqweqwe', 'leader@gmail.com', 21222.000, '', 1, 'YdjqXnS9g3ox6oj', 'dW7w1EDPMzckebR', 0, 11744828, 0, 0, NULL, '', '2018-09-22 04:47:54', '2019-03-12 02:00:41'),
(116, '123123', 'Testing', '2018-10-10', '2018-12-10', '2313', 'asasd@gmail.com', 9999999.999, 'early', 17, '3Pa4G7MBohZyqfO', 'kMyXcLa9NjWiZ2h', 1, 2293693, 1, 0, NULL, 'no', '2018-10-11 04:48:14', '2018-11-13 07:13:29'),
(117, NULL, 'Default project', '2018-10-12', '2019-01-12', 'Learning to use Asakaa tools', 'Add a leader team here', 2000.000, 'early', 18, '12345', '12345', NULL, NULL, 0, 0, NULL, 'no', '2018-10-13 03:00:22', '2018-10-13 03:00:22'),
(118, '121', 'Sdasd', '2018-10-12', '2019-10-12', 'asdasd', 'sadas', 12212.000, 'early', 18, 'Pv5Sc5jTIWJjZ1f', '6KwixmgfKjeVLPi', 0, 12105449, 0, 0, NULL, 'no', '2018-10-13 04:46:36', '2018-10-13 04:51:55'),
(119, '123', 'Asdasd', '2018-10-12', '2018-11-12', 'asdasd', 'asdasd@mail.com', 9999999.999, '', 17, 'r4vaLyvwSCETrkv', 'N3E1JhpWMYoMHxX', 0, 8712151, 0, 0, NULL, 'no', '2018-10-13 06:03:17', '2018-11-18 01:31:46'),
(120, '1212', 'Asdasd', '2018-10-17', '2018-11-15', 'asdasd', 'asdasd@mail.com', 122.000, '', 17, 'UMC51dWVhBje8Qx', 'wZA18H9FkHgiCor', 0, 7752543, 0, 0, NULL, 'no', '2018-10-18 00:35:31', '2018-11-18 01:29:21'),
(121, '123123', 'Asasa', '2018-10-18', '2019-01-18', 'asdasdasd', 'aassa@mail.com', 12121.000, 'early', 17, 'MBv1kxkvHi7vJtc', 'rtb0DazkCsu0Ao6', 1, 4414565, 1, 0, NULL, 'no', '2018-10-19 03:09:05', '2018-11-13 09:51:30'),
(122, NULL, 'Default project', '2018-11-08', '2019-02-08', 'Learning to use Asakaa tools', 'Add a leader team here', 2000.000, 'early', 10, '12345', '12345', NULL, NULL, 0, 0, NULL, 'no', '2018-11-08 19:31:09', '2018-11-08 19:31:09'),
(123, '12312', 'Proyecto prueba historial', '2018-11-12', '2019-01-12', '123123', 'historial@gmail.com', 9999999.999, 'early', 17, 'd8eoY8UlOBOYHAD', 'd3KkyGKVbgaBWcL', 1, 6330532, 1, 0, NULL, 'no', '2018-11-13 07:49:53', '2019-01-21 04:43:23'),
(124, '1221', 'Ssss', '2018-11-17', '2018-12-17', 'sss', 'asdasd', 1212.000, 'early', 17, 'dgEmc9vxnYdq9lb', '4RyTuNaHPSvYIk2', 0, 2104214, 0, 1, NULL, 'no', '2018-11-18 01:22:05', '2019-01-01 03:57:22'),
(125, NULL, 'Default project', '2018-12-03', '2019-03-03', 'Learning to use Asakaa tools', 'Add a leader team here', 2000.000, 'early', 37, '12345', '12345', NULL, NULL, 0, 0, NULL, 'no', '2018-12-04 02:03:35', '2018-12-04 02:03:35'),
(126, '12314a', 'YYYY', '2019-01-07', '2021-01-06', 'asdasdas', 'asdasd@mail.com', 2000.000, 'early', 17, 'jBiT9Bof4bfd2D6', 'msR6ICldh3IX8mz', 0, 12277908, 0, 0, 100, 'no', '2019-01-08 06:17:53', '2019-01-21 07:40:42'),
(127, '123123', '123456789 111315171920 22242628303234 3636840 4242464850 5254565860', '2019-01-20', '2019-03-21', 'testedassssssssssssssssssssssss asdasdasd asdasdasd asdasda sdasd asdasdas dasda sdasda adasdasdasd', 'testeedasdasdasdasdasd@gmail.com', 123123.000, '', 17, '0D10xFYUdssUd5h', 'k5J0K4ZrXlbgioY', 0, 10970337, 0, 0, 25, '', '2019-01-21 07:46:07', '2019-03-17 21:26:07'),
(128, '19000', 'Default project', '2019-02-03', '2019-05-03', 'Learning to use Asakaa tools', 'leader@mail.com', 2000.000, '', 55, '12345', '12345', NULL, NULL, 0, 0, 15, 'no', '2019-02-03 21:18:15', '2019-02-03 21:25:13'),
(129, '19001', 'Software development project [test]', '2019-02-03', '2021-02-02', 'An awesome test project in Asakaa', 'guest@mail.com', 10000.000, '', 55, 'eHdAUYZUg7F9Hvb', 'NsOZ6XGFXg5GRHk', 0, 2991268, 0, 0, 90, '', '2019-02-03 21:24:49', '2019-03-17 00:08:50'),
(130, '001', 'No project asignation', '2019-03-03', '2100-06-03', '---', 'admin@admin.com', 0.000, 'early', 1, 'kEhF4lNyM5oBDJ6', 'OvxpnLrl0RkdNuW', 0, 11123389, 0, 0, 1000, '', '2019-03-04 06:40:59', '2019-03-12 02:30:15'),
(131, NULL, 'Default project', '2019-03-15', '2019-06-15', 'Learning to use Asakaa tools', 'leader@gmail.com', 2000.000, 'early', 64, '12345', '12345', NULL, NULL, 0, 0, NULL, 'no', '2019-03-15 07:14:38', '2019-03-15 07:14:38'),
(132, '2312', 'Otro mas', '2019-03-17', '2019-05-17', 'des', 'leader@gmail.com', 1221.000, 'early', 55, 'JyJ6FPsRcDArPVi', 'eem54SdT1tbjXFK', 0, NULL, 0, 0, 12, 'no', '2019-03-17 22:10:45', '2019-03-17 22:10:45'),
(133, '12', 'Otro mas sensualones', '2019-03-17', '2019-05-17', '12313', 'leader@gmail.com', 12.000, 'early', 55, 'deZtfEg7EWVWQlo', 'VZK1dxgNYxhiBDV', 0, NULL, 0, 0, 12, 'no', '2019-03-17 22:11:54', '2019-03-17 22:11:54'),
(134, '12313', 'Y', '2019-03-17', '2019-05-17', '12', 'y@gmail.com', 0.000, 'early', 55, 'nNqApyHGdL1NM5M', '8rLNR93TYtkMCYj', 0, NULL, 0, 0, 0, 'no', '2019-03-17 22:17:18', '2019-03-17 22:17:18'),
(135, '12313', 'Y', '2019-03-17', '2019-05-17', '12', 'y@gmail.com', 0.000, 'early', 55, 'jknIn0WVkW5MEVu', 'FhOQT3u7NUvvFfE', 0, NULL, 0, 0, 0, 'no', '2019-03-17 22:17:24', '2019-03-17 22:17:24'),
(136, '12313', 'Y', '2019-03-17', '2019-05-17', '12', 'y@gmail.com', 0.000, 'early', 55, 'GlIrpbPYFel4QU7', 'Q2yz0KjmLa7uWnu', 0, NULL, 0, 0, 0, 'no', '2019-03-17 22:47:31', '2019-03-17 22:47:31'),
(137, '12', 'Asdasd', '2019-03-17', '2019-05-17', 'asd', 'asdasd@gmail.com', 12.000, 'early', 55, 'FxDXZAu99ZiktG2', 'nB034OtRohIMpY5', 0, NULL, 0, 0, 12, 'no', '2019-03-17 23:01:42', '2019-03-17 23:01:42'),
(138, '12', 'Xx', '2019-03-17', '2019-05-17', 'as', 'asdasd@gmail.com', 12.000, 'early', 55, 'dj2HtfVJcZXi9Yw', 'p5BarGBN6u15BFg', 0, NULL, 0, 0, 12, 'no', '2019-03-17 23:02:36', '2019-03-17 23:02:36'),
(139, '12', 'Otro2', '2019-03-17', '2021-03-16', 'asdas', 'otro2@gmail.com', 12.000, 'early', 55, 'E7dlDMGbUz7d3Rd', 'MviN32l4s2x9r2D', 1, 3048210, 1, 0, 12, '', '2019-03-17 23:06:12', '2019-05-08 06:10:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'business user', 'web', '2019-05-15 02:15:54', '2019-05-15 02:15:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Asakaa', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Project Manager', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\July2018\\a1.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', 'UA-12465121178-1', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\August2018\\t1fI7BhK4VBWfLpUQyOE.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Asakaa', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Project Management', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\August2018\\UXBpxskK1INwsKQmSs12.svg', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\July2018\\a2.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taskhistorys`
--

CREATE TABLE `taskhistorys` (
  `id` int(10) UNSIGNED NOT NULL,
  `task` int(10) UNSIGNED NOT NULL,
  `msg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `des` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `start_date` datetime NOT NULL,
  `duration` int(11) NOT NULL,
  `progress` double NOT NULL,
  `sortorder` int(11) NOT NULL,
  `parent` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isHistory` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `taskhistorys`
--

INSERT INTO `taskhistorys` (`id`, `task`, `msg`, `text`, `des`, `end_date`, `start_date`, `duration`, `progress`, `sortorder`, `parent`, `isHistory`, `created_at`, `updated_at`) VALUES
(1, 168, '[Yeison - 06/09/2018]: otro cambio', 'Text', 'des', '2018-09-02 00:00:00', '2018-09-01 00:00:00', 2, 0, 0, '0', NULL, '2018-09-05 05:00:00', '2018-09-06 19:39:43'),
(2, 170, '[Yeison - 06/09/2018]: cambio prueba', '[History]-New task', '[History]-asdasd', '0000-00-00 00:00:00', '2018-09-01 00:00:00', 1, 0.46, 0, '0', NULL, '2018-09-06 20:42:05', '2018-09-06 20:42:05'),
(3, 175, '[Yeison - 06/09/2018]: 2nd Change', '[History]-tarea no mostrada', '[History]-', '0000-00-00 00:00:00', '2018-09-01 00:00:00', 1, 0.39, 0, '0', NULL, '2018-09-06 22:53:56', '2018-09-07 00:01:31'),
(4, 175, '[Yeison - 06/09/2018]: 3rd change: retrasos con los proveedores', '[History]-tarea no mostrada', '[History]-', '0000-00-00 00:00:00', '2018-09-01 00:00:00', 1, 0.78, 0, '0', NULL, '2018-09-07 00:08:04', '2018-09-07 00:08:04'),
(5, 626, '[Yeison Caicedoe - 29/10/2018]: lels', '[History]-asdasd', '[History]-asdasdasd', '0000-00-00 00:00:00', '2018-10-13 00:00:00', 10, 0.63, 0, '0', NULL, '2018-10-29 22:23:11', '2018-10-29 22:23:11'),
(6, 626, '[Yeison Caicedoe - 29/10/2018]: col', '[History]-asdasd', '[History]-asdasdasd', '0000-00-00 00:00:00', '2018-10-13 00:00:00', 10, 0.79, 0, '0', NULL, '2018-10-29 22:29:58', '2018-10-29 22:29:58'),
(7, 626, '[Yeison Caicedoe - 29/10/2018]: Porque se me dio la gana', '[History]-asdasd', '[History]-asdasdasd', '0000-00-00 00:00:00', '2018-10-13 00:00:00', 10, 0.83, 0, '0', NULL, '2018-10-30 00:46:25', '2018-10-30 00:46:25'),
(8, 626, '[Yeison Caicedoe - 29/10/2018]: ookkiiuu', '[History]-asdasd', '[History]-asdasdasd', '0000-00-00 00:00:00', '2018-10-13 00:00:00', 10, 0.82, 0, '0', NULL, '2018-10-30 00:53:07', '2018-10-30 00:53:07'),
(9, 626, '[Yeison Caicedoe - 29/10/2018]: yyyyy', '[History]-asdasd', '[History]-asdasdasd', '0000-00-00 00:00:00', '2018-10-13 00:00:00', 10, 0.75, 0, '0', NULL, '2018-10-30 00:57:04', '2018-10-30 00:57:04'),
(10, 626, '[Yeison Caicedoe - 29/10/2018]: eeeeee', '[History]-asdasd', '[History]-asdasdasd', '0000-00-00 00:00:00', '2018-10-13 00:00:00', 10, 0.68, 0, '0', NULL, '2018-10-30 01:00:36', '2018-10-30 01:00:36'),
(11, 626, '[Yeison Caicedoe - 29/10/2018]: paturrita', '[History]-asdasd', '[History]-asdasdasd', '0000-00-00 00:00:00', '2018-10-13 00:00:00', 10, 0.76, 0, '0', NULL, '2018-10-30 01:29:29', '2018-10-30 01:29:29'),
(12, 626, '[Yeison Caicedoe - 29/10/2018]: oooo', '[History]-asdasd', '[History]-asdasdasd', '0000-00-00 00:00:00', '2018-10-13 00:00:00', 10, 0.77, 0, '0', NULL, '2018-10-30 01:48:24', '2018-10-30 01:48:24'),
(13, 626, '[Yeison Caicedoe - 29/10/2018]: reeee', '[History]-asdasd', '[History]-asdasdasd', '0000-00-00 00:00:00', '2018-10-13 00:00:00', 10, 0.78, 0, '0', NULL, '2018-10-30 02:11:56', '2018-10-30 02:11:56'),
(14, 626, '[Yeison Caicedoe - 29/10/2018]: paturrita2', '[History]-asdasd', '[History]-asdasdasd', '0000-00-00 00:00:00', '2018-10-13 00:00:00', 10, 0.84, 0, '0', NULL, '2018-10-30 02:19:48', '2018-10-30 02:19:48'),
(15, 626, '[Yeison Caicedoe - 29/10/2018]: wer', '[History]-asdasd', '[History]-asdasdasd', '0000-00-00 00:00:00', '2018-10-13 00:00:00', 10, 0.84, 0, '0', NULL, '2018-10-30 02:20:05', '2018-10-30 02:20:05'),
(16, 626, '[Yeison Caicedoe - 29/10/2018]: paturrita3', '[History]-asdasd', '[History]-asdasdasd', '0000-00-00 00:00:00', '2018-10-13 00:00:00', 10, 0.75, 0, '0', NULL, '2018-10-30 02:21:29', '2018-10-30 02:21:29'),
(17, 626, '[Yeison Caicedoe - 01/11/2018]: Yeison last', '[History]-tarea loca', '[History]-asdasdasd', '0000-00-00 00:00:00', '2018-10-13 00:00:00', 10, 1, 0, '0', NULL, '2018-11-01 22:38:02', '2018-11-01 22:38:02'),
(18, 626, '[Yeison Caicedoe - 01/11/2018]: yeyei el avioncito', '[History]-tarea loca', '[History]-asdasdasd', '0000-00-00 00:00:00', '2018-10-13 00:00:00', 8, 1, 0, '0', NULL, '2018-11-01 22:46:28', '2018-11-01 22:46:28'),
(19, 626, '[Yeison Caicedoe - 01/11/2018]: uuu', '[History]-tarea loca', '[History]-asdasdasd', '0000-00-00 00:00:00', '2018-10-13 00:00:00', 8, 0.76, 0, '0', NULL, '2018-11-01 22:47:42', '2018-11-01 22:47:42'),
(20, 626, '[Yeison Caicedoe - 01/11/2018]: i want it', '[History]-tarea loca', '[History]-asdasdasd', '0000-00-00 00:00:00', '2018-10-13 00:00:00', 8, 0.84, 0, '0', NULL, '2018-11-01 23:35:17', '2018-11-01 23:35:17'),
(21, 627, '[Yeison Caicedoe - 01/11/2018]: First change of this task', '[History]-asdasdasd', '[History]-', '0000-00-00 00:00:00', '2018-10-27 00:00:00', 11, 0.99, 0, '0', NULL, '2018-11-01 23:36:28', '2018-11-01 23:36:28'),
(22, 627, '[Yeison Caicedoe - 01/11/2018]: Second', '[History]-asdasdasd', '[History]-', '0000-00-00 00:00:00', '2018-10-27 00:00:00', 11, 0.7, 0, '0', NULL, '2018-11-01 23:37:00', '2018-11-01 23:37:00'),
(23, 627, '[Yeison Caicedoe - 01/11/2018]: Futureeee', '[History]-asdasdasd', '[History]-', '0000-00-00 00:00:00', '2018-10-27 00:00:00', 11, 0.82, 0, '0', NULL, '2018-11-01 23:48:46', '2018-11-01 23:48:46'),
(24, 626, '[Yeison Caicedoe - 01/11/2018]: Future', '[History]-tarea loca', '[History]-asdasdasd', '0000-00-00 00:00:00', '2018-10-13 00:00:00', 11, 0.79, 0, '0', NULL, '2018-11-01 23:49:10', '2018-11-01 23:49:10'),
(25, 627, '[Yeison Caicedoe - 02/11/2018]: uuu', '[History]-asdasdasd', '[History]-', '0000-00-00 00:00:00', '2018-10-27 00:00:00', 10, 0.73, 0, '0', NULL, '2018-11-02 07:44:47', '2018-11-02 07:44:47'),
(26, 626, '[Yeison Caicedoe - 02/11/2018]: probando tooltip', '[History]-Tarea # 1', '[History]-asdasdasd', '0000-00-00 00:00:00', '2018-10-13 00:00:00', 12, 0.79, 0, '0', NULL, '2018-11-02 08:33:12', '2018-11-02 08:33:12'),
(27, 948, '[Yeison Caicedoe - 02/11/2018]: Tarea pequena', '[History]-Tarea # 3', '[History]-', '0000-00-00 00:00:00', '2018-11-08 00:00:00', 2, 0, 0, '0', NULL, '2018-11-02 08:34:01', '2018-11-02 08:34:01'),
(28, 626, '[Yeison Caicedoe - 02/11/2018]: Confirmar cambio 2', '[History]-Tarea # 1', '[History]-asdasdasd', '0000-00-00 00:00:00', '2018-10-13 00:00:00', 12, 0.84, 0, '0', NULL, '2018-11-02 08:34:14', '2018-11-02 08:34:14'),
(29, 627, '[Yeison Caicedoe - 06/11/2018]: Added collaborator', '[History]-Tarea #2', '[History]-', '0000-00-00 00:00:00', '2018-10-27 00:00:00', 9, 0.73, 0, '0', NULL, '2018-11-06 23:12:04', '2018-11-06 23:12:04'),
(30, 1369, '[Yeison Caicedoe - 07/11/2018]: Tarea 4 cambio 1', '[History]-Tarea 4', '[History]-', '0000-00-00 00:00:00', '2018-10-28 00:00:00', 5, 0.46, 0, '0', NULL, '2018-11-07 06:03:23', '2018-11-07 06:03:23'),
(31, 1369, '[Yeison Caicedoe - 07/11/2018]: Tarea 4 Cambio 2', '[History]-Tarea 4', '[History]-', '0000-00-00 00:00:00', '2018-10-28 00:00:00', 5, 0.82, 0, '0', NULL, '2018-11-07 06:03:47', '2018-11-07 06:03:47'),
(32, 627, '[Yeison Caicedoe - 07/11/2018]: Last change', '[History]-Tarea #2', '[History]-', '0000-00-00 00:00:00', '2018-10-27 00:00:00', 9, 0.78, 0, '0', NULL, '2018-11-07 06:34:56', '2018-11-07 06:34:56'),
(33, 1372, '[Yeison Caicedoe - 07/11/2018]: Cambio en la hija', '[History]-Hija', '[History]-', '0000-00-00 00:00:00', '2018-11-07 00:00:00', 9, 0.12, 0, '0', NULL, '2018-11-07 21:06:23', '2018-11-07 21:06:23'),
(34, 1372, '[Yeison Caicedoe - 07/11/2018]: Cambio 2', '[History]-Hija', '[History]-', '0000-00-00 00:00:00', '2018-11-07 00:00:00', 9, 0.3, 0, '0', NULL, '2018-11-07 21:10:40', '2018-11-07 21:10:40'),
(35, 1375, '[Yeison Caicedoe - 07/11/2018]: 70% tarea', '[History]-Tarea HIJA full', '[History]-', '0000-00-00 00:00:00', '2018-11-08 00:00:00', 4, 0.72, 0, '0', NULL, '2018-11-07 22:20:43', '2018-11-07 22:20:43'),
(36, 1375, '[Yeison Caicedoe - 07/11/2018]: 30% tarea', '[History]-Tarea HIJA full', '[History]-', '0000-00-00 00:00:00', '2018-11-08 00:00:00', 4, 0.27, 0, '0', NULL, '2018-11-07 22:23:54', '2018-11-07 22:23:54'),
(37, 1375, '[Yeison Caicedoe - 07/11/2018]: 70%2', '[History]-Tarea HIJA full', '[History]-', '0000-00-00 00:00:00', '2018-11-08 00:00:00', 4, 0.76, 0, '0', NULL, '2018-11-07 22:24:37', '2018-11-07 22:24:37'),
(38, 1369, '[Yeison Caicedoe - 08/11/2018]: dsdds', '[History]-Tarea 4', '[History]-', '0000-00-00 00:00:00', '2018-10-28 00:00:00', 5, 0.67, 0, '0', NULL, '2018-11-08 19:50:53', '2018-11-08 19:50:53'),
(39, 1369, '[Yeison Caicedoe - 08/11/2018]: 4444', '[History]-Tarea 4', '[History]-', '0000-00-00 00:00:00', '2018-10-28 00:00:00', 5, 0.55, 0, '0', NULL, '2018-11-08 19:54:18', '2018-11-08 19:54:18'),
(40, 1369, '[Yeison Caicedoe - 08/11/2018]: rrr', '[History]-Tarea 4', '[History]-', '0000-00-00 00:00:00', '2018-10-28 00:00:00', 5, 0.41, 0, '0', NULL, '2018-11-08 19:58:37', '2018-11-08 19:58:37'),
(41, 627, '[Yeison Caicedoe - 08/11/2018]: ddd', '[History]-Tarea #2', '[History]-', '0000-00-00 00:00:00', '2018-10-27 00:00:00', 9, 0.68, 0, '0', NULL, '2018-11-08 19:59:02', '2018-11-08 19:59:02'),
(42, 1369, '[Yeison Caicedoe - 08/11/2018]: eeee', '[History]-Tarea 4', '[History]-', '0000-00-00 00:00:00', '2018-10-28 00:00:00', 5, 0.66, 0, '0', NULL, '2018-11-08 19:59:09', '2018-11-08 19:59:09'),
(43, 1369, '[Yeison Caicedoe - 08/11/2018]: uuu', '[History]-Tarea 4', '[History]-', '0000-00-00 00:00:00', '2018-10-28 00:00:00', 5, 0.67, 0, '0', NULL, '2018-11-08 20:31:18', '2018-11-08 20:31:18'),
(44, 1376, 'Baseline', '', 'Nueva tarea 1', '0000-00-00 00:00:00', '2018-11-12 00:00:00', 4, 0, 0, '0', NULL, '2018-11-13 08:09:46', '2018-11-13 08:09:46'),
(45, 1377, 'Baseline', '', 'Nueva tarea 2', '0000-00-00 00:00:00', '2018-11-21 00:00:00', 6, 0, 0, '0', NULL, '2018-11-13 08:09:46', '2018-11-13 08:09:46'),
(46, 1377, '[Yeison Caicedoe - 13/11/2018]: Segundo cambio', '[History]-Nueva tarea 2', '[History]-', '0000-00-00 00:00:00', '2018-11-21 00:00:00', 6, 0.44, 0, '0', NULL, '2018-11-13 09:26:11', '2018-11-13 09:26:11'),
(47, 1378, 'Baseline', '', 'Tarea as 1', '0000-00-00 00:00:00', '2018-11-12 00:00:00', 3, 0, 0, '', NULL, '2018-11-13 09:31:46', '2018-11-13 09:31:46'),
(48, 1379, 'Baseline', '', 'Tarea as 2', '0000-00-00 00:00:00', '2018-11-12 00:00:00', 6, 0, 0, '', NULL, '2018-11-13 09:31:46', '2018-11-13 09:31:46'),
(49, 1379, '[Yeison Caicedoe - 13/11/2018]: Primer cambio despues del baseline', '[History]-Tarea as 2', '[History]-', '0000-00-00 00:00:00', '2018-11-12 00:00:00', 6, 0.32, 0, '0', NULL, '2018-11-13 09:32:23', '2018-11-13 09:32:23'),
(50, 1376, '[Yeison Caicedoe - 15/11/2018]: Otro cambio', '[History]-Nueva tarea 1', '[History]-', '0000-00-00 00:00:00', '2018-11-12 00:00:00', 4, 0.29, 0, '0', NULL, '2018-11-15 07:31:34', '2018-11-15 07:31:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taskhs`
--

CREATE TABLE `taskhs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_origin` int(10) UNSIGNED DEFAULT NULL,
  `mod_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `des` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` int(10) UNSIGNED DEFAULT NULL,
  `progress` double DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `parent` int(10) UNSIGNED DEFAULT NULL,
  `type` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socket` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` char(100) COLLATE utf8mb4_unicode_ci DEFAULT 'Early',
  `event` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sortorder` int(10) UNSIGNED DEFAULT NULL,
  `project_id` int(10) UNSIGNED DEFAULT NULL,
  `workedHours` int(10) UNSIGNED DEFAULT '0',
  `assigned` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `taskhs`
--

INSERT INTO `taskhs` (`id`, `id_origin`, `mod_date`, `des`, `editor`, `email`, `text`, `duration`, `progress`, `start_date`, `parent`, `type`, `priority`, `socket`, `status`, `event`, `sortorder`, `project_id`, `workedHours`, `assigned`, `created_at`, `updated_at`) VALUES
(284, 4294967295, '2018-09-07 12:16:17', 'no admin', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'no admin', 1, NULL, '2018-09-06 00:00:00', 0, NULL, 'Normal', 'ZRwc7AZ6gO', NULL, 'Change Name Task', NULL, 112, NULL, 'Yeison Caicedoe', '2018-09-07 22:16:17', '2018-09-07 22:16:17'),
(285, 4294967295, '2018-09-07 12:16:17', 'no admin', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'no admin', 1, NULL, '2018-09-06 00:00:00', 0, NULL, 'Normal', 'ZRwc7AZ6gO', NULL, 'Change Description', NULL, 112, NULL, 'Yeison Caicedoe', '2018-09-07 22:16:17', '2018-09-07 22:16:17'),
(286, 4294967295, '2018-09-07 12:16:18', 'no admin', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'no admin', 1, NULL, '2018-09-06 00:00:00', 0, NULL, 'Normal', 'ZRwc7AZ6gO', NULL, 'Change Assigned', NULL, 112, NULL, 'Yeison Caicedoe', '2018-09-07 22:16:18', '2018-09-07 22:16:18'),
(287, 4294967295, '2018-09-07 12:16:20', 'no admin', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'no admin', 1, NULL, '2018-09-06 00:00:00', 0, NULL, 'Normal', 'ZRwc7AZ6gO', NULL, 'Add Task', NULL, 112, NULL, 'Yeison Caicedoe', '2018-09-07 22:16:20', '2018-09-07 22:16:20'),
(288, 270, '2018-09-07 15:47:55', 'descripcion de tarea esta sera un poco larga para simular lo que se tiene que hacer exactamente', 'Yeison', 'admin@admin.com', 'probando historial tareasasdasd', 1, 0.31, '2018-09-05 00:00:00', 0, NULL, 'Normal', 'bt0ZxRe3DD', 'working', 'Change Description', 160, 111, NULL, 'Yeison Caicedoe', '2018-09-08 01:47:55', '2018-09-08 01:47:55'),
(289, 267, '2018-09-08 14:17:09', 'Tarea finalizada', 'Yeison', 'admin@admin.com', 'New task', 1, 1, '2018-09-05 00:00:00', 0, NULL, 'high', 'z9M91xR5sG', 'done', 'Task Resize', 157, 111, 13, 'Yeison', '2018-09-09 00:17:09', '2018-09-09 00:17:09'),
(290, 267, '2018-09-08 14:17:10', 'Tarea finalizada', 'Yeison', 'admin@admin.com', 'New task', 1, 0.6204081632653061, '2018-09-05 00:00:00', 0, NULL, 'high', 'z9M91xR5sG', 'done', 'Progress Update', 157, 111, 13, 'Yeison', '2018-09-09 00:17:10', '2018-09-09 00:17:10'),
(291, 270, '2018-09-08 14:17:13', 'descripcion de tarea esta sera un poco larga para simular lo que se tiene que hacer exactamente', 'Yeison', 'admin@admin.com', 'probando historial tareasasdasd', 1, 0.45714285714285713, '2018-09-05 00:00:00', 0, NULL, 'normal', 'bt0ZxRe3DD', 'done', 'Progress Update', 160, 111, NULL, 'Yeison Caicedoe', '2018-09-09 00:17:13', '2018-09-09 00:17:13'),
(292, 4294967295, '2018-09-08 16:18:29', NULL, 'Yeison', 'admin@admin.com', 'tarea no asignada', 1, NULL, '2018-09-05 00:00:00', 0, NULL, 'Normal', 'ymFbuRFTl4', NULL, 'Change Name Task', NULL, 111, NULL, NULL, '2018-09-09 02:18:29', '2018-09-09 02:18:29'),
(293, 4294967295, '2018-09-08 16:18:30', NULL, 'Yeison', 'admin@admin.com', 'tarea no asignada', 1, NULL, '2018-09-05 00:00:00', 0, NULL, 'Normal', 'ymFbuRFTl4', NULL, 'Change Description', NULL, 111, NULL, NULL, '2018-09-09 02:18:30', '2018-09-09 02:18:30'),
(294, 4294967295, '2018-09-08 16:18:30', NULL, 'Yeison', 'admin@admin.com', 'tarea no asignada', 1, NULL, '2018-09-05 00:00:00', 0, NULL, 'Normal', 'ymFbuRFTl4', NULL, 'Change Assigned', NULL, 111, NULL, NULL, '2018-09-09 02:18:30', '2018-09-09 02:18:30'),
(295, 4294967295, '2018-09-08 16:18:30', NULL, 'Yeison', 'admin@admin.com', 'tarea no asignada', 1, NULL, '2018-09-05 00:00:00', 0, NULL, 'Normal', 'ymFbuRFTl4', NULL, 'Add Task', NULL, 111, NULL, NULL, '2018-09-09 02:18:30', '2018-09-09 02:18:30'),
(296, 4294967295, '2018-09-09 11:20:07', 'Tarea status started', 'Yeison', 'admin@admin.com', 'Tarea1', 1, NULL, '2018-09-08 00:00:00', 0, NULL, 'Normal', '9eCbj7JW4S', NULL, 'Change Name Task', NULL, 113, NULL, 'admin@admin.com', '2018-09-09 21:20:07', '2018-09-09 21:20:07'),
(297, 4294967295, '2018-09-09 11:20:09', 'Tarea status started', 'Yeison', 'admin@admin.com', 'Tarea1', 1, NULL, '2018-09-08 00:00:00', 0, NULL, 'Normal', '9eCbj7JW4S', NULL, 'Change Description', NULL, 113, NULL, 'admin@admin.com', '2018-09-09 21:20:09', '2018-09-09 21:20:09'),
(298, 4294967295, '2018-09-09 11:20:09', 'Tarea status started', 'Yeison', 'admin@admin.com', 'Tarea1', 1, NULL, '2018-09-08 00:00:00', 0, NULL, 'Normal', '9eCbj7JW4S', NULL, 'Change Assigned', NULL, 113, NULL, 'admin@admin.com', '2018-09-09 21:20:09', '2018-09-09 21:20:09'),
(299, 4294967295, '2018-09-09 11:20:09', 'Tarea status started', 'Yeison', 'admin@admin.com', 'Tarea1', 1, NULL, '2018-09-08 00:00:00', 0, NULL, 'Normal', '9eCbj7JW4S', NULL, 'Add Task', NULL, 113, NULL, 'admin@admin.com', '2018-09-09 21:20:09', '2018-09-09 21:20:09'),
(300, 4294967295, '2018-09-09 11:20:15', NULL, 'Yeison', 'admin@admin.com', 'Tarea 2 working', 1, NULL, '2018-09-08 00:00:00', 0, NULL, 'Normal', '9eCbj7JW4S', NULL, 'Change Name Task', NULL, 113, NULL, NULL, '2018-09-09 21:20:15', '2018-09-09 21:20:15'),
(301, 4294967295, '2018-09-09 11:20:15', NULL, 'Yeison', 'admin@admin.com', 'Tarea 2 working', 1, NULL, '2018-09-08 00:00:00', 0, NULL, 'Normal', '9eCbj7JW4S', NULL, 'Change Description', NULL, 113, NULL, NULL, '2018-09-09 21:20:15', '2018-09-09 21:20:15'),
(302, 4294967295, '2018-09-09 11:20:16', NULL, 'Yeison', 'admin@admin.com', 'Tarea 2 working', 1, NULL, '2018-09-08 00:00:00', 0, NULL, 'Normal', '9eCbj7JW4S', NULL, 'Add Task', NULL, 113, NULL, NULL, '2018-09-09 21:20:16', '2018-09-09 21:20:16'),
(303, 4294967295, '2018-09-09 11:20:16', NULL, 'Yeison', 'admin@admin.com', 'Tarea 2 working', 1, NULL, '2018-09-08 00:00:00', 0, NULL, 'Normal', '9eCbj7JW4S', NULL, 'Change Assigned', NULL, 113, NULL, NULL, '2018-09-09 21:20:16', '2018-09-09 21:20:16'),
(304, 4294967295, '2018-09-09 11:20:25', NULL, 'Yeison', 'admin@admin.com', 'Tarea 3 stuck', 1, NULL, '2018-09-08 00:00:00', 0, NULL, 'Normal', '9eCbj7JW4S', NULL, 'Change Name Task', NULL, 113, NULL, NULL, '2018-09-09 21:20:25', '2018-09-09 21:20:25'),
(305, 4294967295, '2018-09-09 11:20:27', NULL, 'Yeison', 'admin@admin.com', 'Tarea 3 stuck', 1, NULL, '2018-09-08 00:00:00', 0, NULL, 'Normal', '9eCbj7JW4S', NULL, 'Change Description', NULL, 113, NULL, NULL, '2018-09-09 21:20:27', '2018-09-09 21:20:27'),
(306, 4294967295, '2018-09-09 11:20:27', NULL, 'Yeison', 'admin@admin.com', 'Tarea 3 stuck', 1, NULL, '2018-09-08 00:00:00', 0, NULL, 'Normal', '9eCbj7JW4S', NULL, 'Change Assigned', NULL, 113, NULL, NULL, '2018-09-09 21:20:27', '2018-09-09 21:20:27'),
(307, 4294967295, '2018-09-09 11:20:27', NULL, 'Yeison', 'admin@admin.com', 'Tarea 3 stuck', 1, NULL, '2018-09-08 00:00:00', 0, NULL, 'Normal', '9eCbj7JW4S', NULL, 'Add Task', NULL, 113, NULL, NULL, '2018-09-09 21:20:27', '2018-09-09 21:20:27'),
(308, 4294967295, '2018-09-09 11:20:40', NULL, 'Yeison', 'admin@admin.com', 'Tarea 4 done', 1, NULL, '2018-09-08 00:00:00', 0, NULL, 'Normal', '9eCbj7JW4S', NULL, 'Change Name Task', NULL, 113, NULL, NULL, '2018-09-09 21:20:40', '2018-09-09 21:20:40'),
(309, 4294967295, '2018-09-09 11:20:40', NULL, 'Yeison', 'admin@admin.com', 'Tarea 4 done', 1, NULL, '2018-09-08 00:00:00', 0, NULL, 'Normal', '9eCbj7JW4S', NULL, 'Change Assigned', NULL, 113, NULL, NULL, '2018-09-09 21:20:40', '2018-09-09 21:20:40'),
(310, 4294967295, '2018-09-09 11:20:40', NULL, 'Yeison', 'admin@admin.com', 'Tarea 4 done', 1, NULL, '2018-09-08 00:00:00', 0, NULL, 'Normal', '9eCbj7JW4S', NULL, 'Change Description', NULL, 113, NULL, NULL, '2018-09-09 21:20:40', '2018-09-09 21:20:40'),
(311, 4294967295, '2018-09-09 11:20:41', NULL, 'Yeison', 'admin@admin.com', 'Tarea 4 done', 1, NULL, '2018-09-08 00:00:00', 0, NULL, 'Normal', '9eCbj7JW4S', NULL, 'Add Task', NULL, 113, NULL, NULL, '2018-09-09 21:20:41', '2018-09-09 21:20:41'),
(312, 276, '2018-09-09 11:20:50', NULL, 'Yeison', 'admin@admin.com', 'Tarea 4 done', 1, 0.3180428134556575, '2018-09-08 00:00:00', 0, NULL, 'Normal', '9eCbj7JW4S', NULL, 'Progress Update', NULL, 113, NULL, NULL, '2018-09-09 21:20:50', '2018-09-09 21:20:50'),
(313, 275, '2018-09-09 11:20:55', NULL, 'Yeison', 'admin@admin.com', 'Tarea 3 stuck', 1, 0.3136094674556213, '2018-09-08 00:00:00', 0, NULL, 'Normal', '9eCbj7JW4S', NULL, 'Progress Update', NULL, 113, NULL, NULL, '2018-09-09 21:20:55', '2018-09-09 21:20:55'),
(314, 274, '2018-09-09 11:20:57', NULL, 'Yeison', 'admin@admin.com', 'Tarea 2 working', 1, 0.29289940828402367, '2018-09-08 00:00:00', 0, NULL, 'Normal', '9eCbj7JW4S', NULL, 'Progress Update', NULL, 113, NULL, NULL, '2018-09-09 21:20:57', '2018-09-09 21:20:57'),
(315, 273, '2018-09-09 11:21:08', 'Tarea status started', 'Yeison', 'admin@admin.com', 'Tarea1', 1, 0.26548672566371684, '2018-09-08 00:00:00', 0, NULL, 'Normal', '9eCbj7JW4S', NULL, 'Progress Update', NULL, 113, NULL, 'admin@admin.com', '2018-09-09 21:21:08', '2018-09-09 21:21:08'),
(316, 4294967295, '2018-09-10 22:40:42', NULL, 'Yeison', 'admin@admin.com', 'asdasd', 1, NULL, '2018-09-07 00:00:00', 0, NULL, 'Normal', 'iaClpy350E', NULL, 'Change Name Task', NULL, 113, NULL, NULL, '2018-09-11 08:40:42', '2018-09-11 08:40:42'),
(317, 4294967295, '2018-09-10 22:40:42', NULL, 'Yeison', 'admin@admin.com', 'asdasd', 1, NULL, '2018-09-07 00:00:00', 0, NULL, 'Normal', 'iaClpy350E', NULL, 'Change Description', NULL, 113, NULL, NULL, '2018-09-11 08:40:42', '2018-09-11 08:40:42'),
(318, 4294967295, '2018-09-10 22:40:42', NULL, 'Yeison', 'admin@admin.com', 'asdasd', 1, NULL, '2018-09-07 00:00:00', 0, NULL, 'Normal', 'iaClpy350E', NULL, 'Change Assigned', NULL, 113, NULL, NULL, '2018-09-11 08:40:42', '2018-09-11 08:40:42'),
(319, 4294967295, '2018-09-10 22:40:44', NULL, 'Yeison', 'admin@admin.com', 'asdasd', 1, NULL, '2018-09-07 00:00:00', 0, NULL, 'Normal', 'iaClpy350E', NULL, 'Add Task', NULL, 113, NULL, NULL, '2018-09-11 08:40:44', '2018-09-11 08:40:44'),
(320, 4294967295, '2018-09-11 14:41:26', NULL, 'Yeison', 'admin@admin.com', 'Tarea hija', 1, NULL, '2018-09-07 00:00:00', 273, NULL, 'Normal', 'LZMJeJ2Eem', NULL, 'Change Name Task', NULL, 113, NULL, NULL, '2018-09-12 00:41:26', '2018-09-12 00:41:26'),
(321, 4294967295, '2018-09-11 14:41:27', NULL, 'Yeison', 'admin@admin.com', 'Tarea hija', 1, NULL, '2018-09-07 00:00:00', 273, NULL, 'Normal', 'LZMJeJ2Eem', NULL, 'Change Description', NULL, 113, NULL, NULL, '2018-09-12 00:41:27', '2018-09-12 00:41:27'),
(322, 4294967295, '2018-09-11 14:41:27', NULL, 'Yeison', 'admin@admin.com', 'Tarea hija', 1, NULL, '2018-09-07 00:00:00', 273, NULL, 'Normal', 'LZMJeJ2Eem', NULL, 'Change Assigned', NULL, 113, NULL, NULL, '2018-09-12 00:41:27', '2018-09-12 00:41:27'),
(323, 4294967295, '2018-09-11 14:41:27', NULL, 'Yeison', 'admin@admin.com', 'Tarea hija', 1, NULL, '2018-09-07 00:00:00', 273, NULL, 'Normal', 'LZMJeJ2Eem', NULL, 'Add Task', NULL, 113, NULL, NULL, '2018-09-12 00:41:27', '2018-09-12 00:41:27'),
(324, 274, '2018-09-11 14:50:27', NULL, 'Yeison', 'admin@admin.com', 'Tarea 2 working', 1, 1, '2018-09-11 00:00:00', 0, NULL, 'Normal', '9eCbj7JW4S', 'done', 'Delete Task', 164, 113, 1, NULL, '2018-09-12 00:50:27', '2018-09-12 00:50:27'),
(325, 275, '2018-09-11 14:50:32', NULL, 'Yeison', 'admin@admin.com', 'Tarea 3 stuck', 1, 0.1, '2018-09-10 00:00:00', 0, NULL, 'Normal', '9eCbj7JW4S', 'started', 'Delete Task', 165, 113, NULL, NULL, '2018-09-12 00:50:32', '2018-09-12 00:50:32'),
(326, 276, '2018-09-11 14:50:36', NULL, 'Yeison', 'admin@admin.com', 'Tarea 4 done', 1, 1, '2018-09-08 00:00:00', 0, NULL, 'Normal', '9eCbj7JW4S', 'done', 'Delete Task', 166, 113, NULL, NULL, '2018-09-12 00:50:36', '2018-09-12 00:50:36'),
(327, 279, '2018-09-11 14:50:42', NULL, 'Yeison', 'admin@admin.com', 'asdasd', 1, 0, '2018-09-07 00:00:00', 0, NULL, 'Normal', 'iaClpy350E', 'working', 'Delete Task', 167, 113, NULL, NULL, '2018-09-12 00:50:42', '2018-09-12 00:50:42'),
(328, 273, '2018-09-11 14:50:53', NULL, 'Yeison', 'admin@admin.com', 'Tarea padre 1', 1, 1, '2018-09-07 00:00:00', 0, NULL, 'Normal', '9eCbj7JW4S', 'done', 'Change Name Task', 168, 113, 3, 'admin@admin.com', '2018-09-12 00:50:53', '2018-09-12 00:50:53'),
(329, 273, '2018-09-11 14:50:53', NULL, 'Yeison', 'admin@admin.com', 'Tarea padre 1', 1, 1, '2018-09-07 00:00:00', 0, NULL, 'Normal', '9eCbj7JW4S', 'done', 'Change Description', 168, 113, 3, 'admin@admin.com', '2018-09-12 00:50:53', '2018-09-12 00:50:53'),
(330, 4294967295, '2018-09-11 14:51:02', NULL, 'Yeison', 'admin@admin.com', 'Tarea padre 2', 1, NULL, '2018-09-07 00:00:00', 0, NULL, 'Normal', 'oiKsrL8Pnq', NULL, 'Change Name Task', NULL, 113, NULL, NULL, '2018-09-12 00:51:02', '2018-09-12 00:51:02'),
(331, 4294967295, '2018-09-11 14:51:03', NULL, 'Yeison', 'admin@admin.com', 'Tarea padre 2', 1, NULL, '2018-09-07 00:00:00', 0, NULL, 'Normal', 'oiKsrL8Pnq', NULL, 'Change Description', NULL, 113, NULL, NULL, '2018-09-12 00:51:03', '2018-09-12 00:51:03'),
(332, 4294967295, '2018-09-11 14:51:03', NULL, 'Yeison', 'admin@admin.com', 'Tarea padre 2', 1, NULL, '2018-09-07 00:00:00', 0, NULL, 'Normal', 'oiKsrL8Pnq', NULL, 'Change Assigned', NULL, 113, NULL, NULL, '2018-09-12 00:51:03', '2018-09-12 00:51:03'),
(333, 4294967295, '2018-09-11 14:51:04', NULL, 'Yeison', 'admin@admin.com', 'Tarea padre 2', 1, NULL, '2018-09-07 00:00:00', 0, NULL, 'Normal', 'oiKsrL8Pnq', NULL, 'Add Task', NULL, 113, NULL, NULL, '2018-09-12 00:51:04', '2018-09-12 00:51:04'),
(334, 4294967295, '2018-09-11 14:52:14', NULL, 'Yeison', 'admin@admin.com', 'Tarea hija de padre 1', 1, NULL, '2018-09-07 00:00:00', 273, NULL, 'Normal', 'oiKsrL8Pnq', NULL, 'Change Name Task', NULL, 113, NULL, NULL, '2018-09-12 00:52:14', '2018-09-12 00:52:14'),
(335, 4294967295, '2018-09-11 14:52:15', NULL, 'Yeison', 'admin@admin.com', 'Tarea hija de padre 1', 1, NULL, '2018-09-07 00:00:00', 273, NULL, 'Normal', 'oiKsrL8Pnq', NULL, 'Change Assigned', NULL, 113, NULL, NULL, '2018-09-12 00:52:15', '2018-09-12 00:52:15'),
(336, 4294967295, '2018-09-11 14:52:15', NULL, 'Yeison', 'admin@admin.com', 'Tarea hija de padre 1', 1, NULL, '2018-09-07 00:00:00', 273, NULL, 'Normal', 'oiKsrL8Pnq', NULL, 'Change Description', NULL, 113, NULL, NULL, '2018-09-12 00:52:15', '2018-09-12 00:52:15'),
(337, 4294967295, '2018-09-11 14:52:16', NULL, 'Yeison', 'admin@admin.com', 'Tarea hija de padre 1', 1, NULL, '2018-09-07 00:00:00', 273, NULL, 'Normal', 'oiKsrL8Pnq', NULL, 'Add Task', NULL, 113, NULL, NULL, '2018-09-12 00:52:16', '2018-09-12 00:52:16'),
(338, 4294967295, '2018-09-11 15:48:32', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-10-01 00:00:00', 0, NULL, 'Normal', 'qmGeeYA8U3', NULL, 'Change Description', NULL, 113, NULL, NULL, '2018-09-12 01:48:32', '2018-09-12 01:48:32'),
(339, 4294967295, '2018-09-11 15:48:32', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-10-01 00:00:00', 0, NULL, 'Normal', 'qmGeeYA8U3', NULL, 'Change Assigned', NULL, 113, NULL, NULL, '2018-09-12 01:48:32', '2018-09-12 01:48:32'),
(340, 4294967295, '2018-09-11 15:48:34', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-10-01 00:00:00', 0, NULL, 'Normal', 'qmGeeYA8U3', NULL, 'Add Task', NULL, 113, NULL, NULL, '2018-09-12 01:48:34', '2018-09-12 01:48:34'),
(341, 284, '2018-09-11 15:50:28', NULL, 'Yeison', 'admin@admin.com', 'New task', 6, 0, '2018-10-01 00:00:00', 0, NULL, 'Normal', 'qmGeeYA8U3', 'working', 'Task Resize', 172, 113, NULL, NULL, '2018-09-12 01:50:28', '2018-09-12 01:50:28'),
(342, 4294967295, '2018-09-11 16:03:03', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-10-01 00:00:00', 0, NULL, 'Normal', 'zGM3JXQZ3L', NULL, 'Change Description', NULL, 113, NULL, NULL, '2018-09-12 02:03:03', '2018-09-12 02:03:03'),
(343, 4294967295, '2018-09-11 16:03:04', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-10-01 00:00:00', 0, NULL, 'Normal', 'zGM3JXQZ3L', NULL, 'Change Assigned', NULL, 113, NULL, NULL, '2018-09-12 02:03:04', '2018-09-12 02:03:04'),
(344, 4294967295, '2018-09-11 16:03:04', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-10-01 00:00:00', 0, NULL, 'Normal', 'zGM3JXQZ3L', NULL, 'Add Task', NULL, 113, NULL, NULL, '2018-09-12 02:03:04', '2018-09-12 02:03:04'),
(345, 285, '2018-09-11 16:03:08', NULL, 'Yeison', 'admin@admin.com', 'New task', 2, NULL, '2018-10-01 00:00:00', 0, NULL, 'Normal', 'zGM3JXQZ3L', NULL, 'Task Resize', NULL, 113, NULL, NULL, '2018-09-12 02:03:08', '2018-09-12 02:03:08'),
(346, 285, '2018-09-11 16:03:13', NULL, 'Yeison', 'admin@admin.com', 'New task', 3, NULL, '2018-10-01 00:00:00', 0, NULL, 'Normal', 'zGM3JXQZ3L', NULL, 'Task Resize', NULL, 113, NULL, NULL, '2018-09-12 02:03:13', '2018-09-12 02:03:13'),
(347, 4294967295, '2018-09-11 16:03:29', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-10-01 00:00:00', 0, NULL, 'Normal', 'zGM3JXQZ3L', NULL, 'Change Description', NULL, 113, NULL, NULL, '2018-09-12 02:03:29', '2018-09-12 02:03:29'),
(348, 4294967295, '2018-09-11 16:03:30', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-10-01 00:00:00', 0, NULL, 'Normal', 'zGM3JXQZ3L', NULL, 'Change Assigned', NULL, 113, NULL, NULL, '2018-09-12 02:03:30', '2018-09-12 02:03:30'),
(349, 4294967295, '2018-09-11 16:03:30', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-10-01 00:00:00', 0, NULL, 'Normal', 'zGM3JXQZ3L', NULL, 'Add Task', NULL, 113, NULL, NULL, '2018-09-12 02:03:30', '2018-09-12 02:03:30'),
(350, 4294967295, '2018-09-11 16:05:16', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-10-01 00:00:00', 0, NULL, 'Normal', 'D0r5HqJhxi', NULL, 'Change Description', NULL, 113, NULL, NULL, '2018-09-12 02:05:16', '2018-09-12 02:05:16'),
(351, 4294967295, '2018-09-11 16:05:16', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-10-01 00:00:00', 0, NULL, 'Normal', 'D0r5HqJhxi', NULL, 'Change Assigned', NULL, 113, NULL, NULL, '2018-09-12 02:05:16', '2018-09-12 02:05:16'),
(352, 4294967295, '2018-09-11 16:05:16', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-10-01 00:00:00', 0, NULL, 'Normal', 'D0r5HqJhxi', NULL, 'Add Task', NULL, 113, NULL, NULL, '2018-09-12 02:05:16', '2018-09-12 02:05:16'),
(353, 4294967295, '2018-09-11 16:06:02', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-10-01 00:00:00', 0, NULL, 'Normal', 'LOBCzXhCR7', NULL, 'Change Description', NULL, 113, NULL, NULL, '2018-09-12 02:06:02', '2018-09-12 02:06:02'),
(354, 4294967295, '2018-09-11 16:06:02', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-10-01 00:00:00', 0, NULL, 'Normal', 'LOBCzXhCR7', NULL, 'Change Assigned', NULL, 113, NULL, NULL, '2018-09-12 02:06:02', '2018-09-12 02:06:02'),
(355, 4294967295, '2018-09-11 16:06:03', NULL, 'Yeison', 'admin@admin.com', 'New task', 3, NULL, '2018-10-01 00:00:00', 0, NULL, 'Normal', 'LOBCzXhCR7', NULL, 'Add Task', NULL, 113, NULL, NULL, '2018-09-12 02:06:03', '2018-09-12 02:06:03'),
(356, 287, '2018-09-11 16:56:55', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-10-01 00:00:00', 0, NULL, 'Normal', 'D0r5HqJhxi', 'working', 'Delete Task', 175, 113, NULL, NULL, '2018-09-12 02:56:55', '2018-09-12 02:56:55'),
(357, 288, '2018-09-11 16:56:59', NULL, 'Yeison', 'admin@admin.com', 'New task', 3, 0, '2018-10-01 00:00:00', 0, NULL, 'Normal', 'LOBCzXhCR7', 'working', 'Delete Task', 176, 113, NULL, NULL, '2018-09-12 02:56:59', '2018-09-12 02:56:59'),
(358, 286, '2018-09-11 16:57:05', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-10-01 00:00:00', 0, NULL, 'Normal', 'zGM3JXQZ3L', 'working', 'Delete Task', 174, 113, NULL, NULL, '2018-09-12 02:57:05', '2018-09-12 02:57:05'),
(359, 285, '2018-09-11 16:57:09', NULL, 'Yeison', 'admin@admin.com', 'New task', 3, 0, '2018-10-01 00:00:00', 0, NULL, 'Normal', 'zGM3JXQZ3L', 'working', 'Delete Task', 173, 113, NULL, NULL, '2018-09-12 02:57:09', '2018-09-12 02:57:09'),
(360, 284, '2018-09-11 16:57:13', NULL, 'Yeison', 'admin@admin.com', 'New task', 6, 0, '2018-10-01 00:00:00', 0, NULL, 'Normal', 'qmGeeYA8U3', 'working', 'Delete Task', 172, 113, NULL, NULL, '2018-09-12 02:57:13', '2018-09-12 02:57:13'),
(361, 283, '2018-09-11 16:57:17', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-10-01 00:00:00', 0, NULL, 'Normal', 'SryccSQPft', 'working', 'Delete Task', 171, 113, NULL, NULL, '2018-09-12 02:57:17', '2018-09-12 02:57:17'),
(362, 4294967295, '2018-09-11 19:04:44', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-07 00:00:00', 0, NULL, 'Normal', '21aZcuQLt6', NULL, 'Change Description', NULL, 113, NULL, NULL, '2018-09-12 05:04:44', '2018-09-12 05:04:44'),
(363, 4294967295, '2018-09-11 19:04:45', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-07 00:00:00', 0, NULL, 'Normal', '21aZcuQLt6', NULL, 'Change Assigned', NULL, 113, NULL, NULL, '2018-09-12 05:04:45', '2018-09-12 05:04:45'),
(364, 4294967295, '2018-09-11 19:04:45', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-07 00:00:00', 0, NULL, 'Normal', '21aZcuQLt6', NULL, 'Add Task', NULL, 113, NULL, NULL, '2018-09-12 05:04:45', '2018-09-12 05:04:45'),
(365, 4294967295, '2018-09-11 19:05:10', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-07 00:00:00', 0, NULL, 'Normal', 'KwD7TB5I9N', NULL, 'Change Description', NULL, 113, NULL, NULL, '2018-09-12 05:05:10', '2018-09-12 05:05:10'),
(366, 4294967295, '2018-09-11 19:05:10', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-07 00:00:00', 0, NULL, 'Normal', 'KwD7TB5I9N', NULL, 'Change Assigned', NULL, 113, NULL, NULL, '2018-09-12 05:05:10', '2018-09-12 05:05:10'),
(367, 4294967295, '2018-09-11 19:05:11', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-07 00:00:00', 0, NULL, 'Normal', 'KwD7TB5I9N', NULL, 'Add Task', NULL, 113, NULL, NULL, '2018-09-12 05:05:11', '2018-09-12 05:05:11'),
(368, 289, '2018-09-11 19:07:29', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0.425, '2018-09-07 00:00:00', 0, NULL, 'Normal', 'KwD7TB5I9N', 'working', 'Progress Update', 171, 113, NULL, 'unassigned', '2018-09-12 05:07:29', '2018-09-12 05:07:29'),
(369, 289, '2018-09-11 19:47:55', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0.42, '2018-09-08 00:00:00', 0, NULL, 'Normal', 'KwD7TB5I9N', 'working', 'Drag Date', 171, 113, NULL, 'unassigned', '2018-09-12 05:47:55', '2018-09-12 05:47:55'),
(370, 289, '2018-09-11 19:47:58', NULL, 'Yeison', 'admin@admin.com', 'New task', 2, 0.42, '2018-09-07 00:00:00', 0, NULL, 'Normal', 'KwD7TB5I9N', 'working', 'Task Resize', 171, 113, NULL, 'unassigned', '2018-09-12 05:47:58', '2018-09-12 05:47:58'),
(371, 289, '2018-09-11 19:48:00', NULL, 'Yeison', 'admin@admin.com', 'New task', 2, 0.42, '2018-09-07 00:00:00', 0, NULL, 'Normal', 'KwD7TB5I9N', 'working', 'Drag Date', 171, 113, NULL, 'unassigned', '2018-09-12 05:48:00', '2018-09-12 05:48:00'),
(372, 289, '2018-09-11 19:48:11', NULL, 'Yeison', 'admin@admin.com', 'New task', 2, 1, '2018-09-07 00:00:00', 0, NULL, 'Normal', 'KwD7TB5I9N', 'working', 'Progress Update', 171, 113, NULL, 'unassigned', '2018-09-12 05:48:11', '2018-09-12 05:48:11'),
(373, 289, '2018-09-11 19:48:15', NULL, 'Yeison', 'admin@admin.com', 'New task', 2, 1, '2018-09-09 00:00:00', 0, NULL, 'Normal', 'KwD7TB5I9N', 'working', 'Drag Date', 171, 113, NULL, 'unassigned', '2018-09-12 05:48:15', '2018-09-12 05:48:15'),
(374, 289, '2018-09-12 12:46:58', NULL, 'Yeison', 'admin@admin.com', 'Asigned to Yeison 1', 2, 1, '2018-09-09 00:00:00', 0, NULL, 'Normal', 'KwD7TB5I9N', 'working', 'Change Name Task', 171, 113, NULL, NULL, '2018-09-12 22:46:58', '2018-09-12 22:46:58'),
(375, 289, '2018-09-12 12:46:59', NULL, 'Yeison', 'admin@admin.com', 'Asigned to Yeison 1', 2, 1, '2018-09-09 00:00:00', 0, NULL, 'Normal', 'KwD7TB5I9N', 'working', 'Change Description', 171, 113, NULL, NULL, '2018-09-12 22:46:59', '2018-09-12 22:46:59'),
(376, 289, '2018-09-12 12:46:59', NULL, 'Yeison', 'admin@admin.com', 'Asigned to Yeison 1', 2, 1, '2018-09-09 00:00:00', 0, NULL, 'Normal', 'KwD7TB5I9N', 'working', 'Change Assigned', 171, 113, NULL, NULL, '2018-09-12 22:46:59', '2018-09-12 22:46:59'),
(377, 273, '2018-09-12 12:47:33', NULL, 'Yeison', 'admin@admin.com', 'Asigned to yeison2', 1, 1, '2018-09-07 00:00:00', 0, NULL, 'Normal', '9eCbj7JW4S', 'done', 'Change Name Task', 168, 113, 3, 'admin@admin.com', '2018-09-12 22:47:33', '2018-09-12 22:47:33'),
(378, 273, '2018-09-12 12:47:34', NULL, 'Yeison', 'admin@admin.com', 'Asigned to yeison2', 1, 1, '2018-09-07 00:00:00', 0, NULL, 'Normal', '9eCbj7JW4S', 'done', 'Change Description', 168, 113, 3, 'admin@admin.com', '2018-09-12 22:47:34', '2018-09-12 22:47:34'),
(379, 281, '2018-09-12 12:47:42', NULL, 'Yeison', 'admin@admin.com', 'Tarea padre 3', 1, 1, '2018-09-07 00:00:00', 0, NULL, 'Normal', 'oiKsrL8Pnq', 'done', 'Change Name Task', 169, 113, NULL, NULL, '2018-09-12 22:47:42', '2018-09-12 22:47:42'),
(380, 281, '2018-09-12 12:47:43', NULL, 'Yeison', 'admin@admin.com', 'Tarea padre 3', 1, 1, '2018-09-07 00:00:00', 0, NULL, 'Normal', 'oiKsrL8Pnq', 'done', 'Change Description', 169, 113, NULL, NULL, '2018-09-12 22:47:43', '2018-09-12 22:47:43'),
(381, 281, '2018-09-12 12:47:44', NULL, 'Yeison', 'admin@admin.com', 'Tarea padre 3', 1, 1, '2018-09-07 00:00:00', 0, NULL, 'Normal', 'oiKsrL8Pnq', 'done', 'Change Assigned', 169, 113, NULL, NULL, '2018-09-12 22:47:44', '2018-09-12 22:47:44'),
(382, 4294967295, '2018-09-13 18:09:40', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-02 00:00:00', 0, NULL, 'Normal', 'm6ESjjXBzL', NULL, 'Change Description', NULL, 114, NULL, NULL, '2018-09-14 04:09:40', '2018-09-14 04:09:40'),
(383, 4294967295, '2018-09-13 18:09:40', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-02 00:00:00', 0, NULL, 'Normal', 'm6ESjjXBzL', NULL, 'Change Assigned', NULL, 114, NULL, NULL, '2018-09-14 04:09:40', '2018-09-14 04:09:40'),
(384, 4294967295, '2018-09-13 18:09:41', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-02 00:00:00', 0, NULL, 'Normal', 'm6ESjjXBzL', NULL, 'Add Task', NULL, 114, NULL, NULL, '2018-09-14 04:09:41', '2018-09-14 04:09:41'),
(385, 292, '2018-09-13 18:09:46', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-02 00:00:00', 0, NULL, 'Normal', 'm6ESjjXBzL', NULL, 'Task Resize', NULL, 114, NULL, NULL, '2018-09-14 04:09:46', '2018-09-14 04:09:46'),
(386, 292, '2018-09-13 18:10:25', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-02 00:00:00', 0, NULL, 'Normal', 'm6ESjjXBzL', NULL, 'Task Resize', NULL, 114, NULL, NULL, '2018-09-14 04:10:25', '2018-09-14 04:10:25'),
(387, 292, '2018-09-13 18:10:43', NULL, 'Yeison', 'admin@admin.com', 'New task', 2, NULL, '2018-09-02 00:00:00', 0, NULL, 'Normal', 'm6ESjjXBzL', NULL, 'Task Resize', NULL, 114, NULL, NULL, '2018-09-14 04:10:43', '2018-09-14 04:10:43'),
(388, 292, '2018-09-13 18:10:56', NULL, 'Yeison', 'admin@admin.com', 'New task', 19, 0, '2018-09-02 00:00:00', 0, NULL, 'Normal', 'm6ESjjXBzL', 'working', 'Task Resize', 172, 114, NULL, NULL, '2018-09-14 04:10:56', '2018-09-14 04:10:56'),
(389, 4294967295, '2018-09-13 18:13:06', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 1, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 04:13:06', '2018-09-14 04:13:06'),
(390, 4294967295, '2018-09-13 18:13:07', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 2, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 04:13:07', '2018-09-14 04:13:07'),
(391, 4294967295, '2018-09-13 18:13:08', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 19, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 04:13:08', '2018-09-14 04:13:08'),
(392, 4294967295, '2018-09-13 18:13:16', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 1, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 04:13:16', '2018-09-14 04:13:16'),
(393, 4294967295, '2018-09-13 18:13:16', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 2, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 04:13:16', '2018-09-14 04:13:16'),
(394, 4294967295, '2018-09-13 18:13:16', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 19, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 04:13:16', '2018-09-14 04:13:16'),
(395, 292, '2018-09-13 18:50:28', NULL, 'Yeison', 'admin@admin.com', 'New task', 4, 0, '2018-09-02 00:00:00', 0, NULL, 'Normal', 'm6ESjjXBzL', 'working', 'Task Resize', 172, 114, NULL, NULL, '2018-09-14 04:50:28', '2018-09-14 04:50:28'),
(396, 292, '2018-09-13 18:55:20', NULL, 'Yeison', 'admin@admin.com', 'New task', 14, 0, '2018-09-02 00:00:00', 0, NULL, 'Normal', 'm6ESjjXBzL', 'working', 'Task Resize', 172, 114, NULL, NULL, '2018-09-14 04:55:20', '2018-09-14 04:55:20'),
(397, 4294967295, '2018-09-13 18:55:41', NULL, 'Yeison', 'admin@admin.com', 'asdasdasd11', 1, NULL, '2018-09-02 00:00:00', 0, NULL, 'Normal', '8yeLfeL9JL', NULL, 'Change Name Task', NULL, 114, NULL, NULL, '2018-09-14 04:55:41', '2018-09-14 04:55:41'),
(398, 4294967295, '2018-09-13 18:55:41', NULL, 'Yeison', 'admin@admin.com', 'asdasdasd11', 1, NULL, '2018-09-02 00:00:00', 0, NULL, 'Normal', '8yeLfeL9JL', NULL, 'Add Task', NULL, 114, NULL, NULL, '2018-09-14 04:55:41', '2018-09-14 04:55:41'),
(399, 4294967295, '2018-09-13 18:55:41', NULL, 'Yeison', 'admin@admin.com', 'asdasdasd11', 1, NULL, '2018-09-02 00:00:00', 0, NULL, 'Normal', '8yeLfeL9JL', NULL, 'Change Description', NULL, 114, NULL, NULL, '2018-09-14 04:55:41', '2018-09-14 04:55:41'),
(400, 4294967295, '2018-09-13 18:55:41', NULL, 'Yeison', 'admin@admin.com', 'asdasdasd11', 1, NULL, '2018-09-02 00:00:00', 0, NULL, 'Normal', '8yeLfeL9JL', NULL, 'Change Assigned', NULL, 114, NULL, NULL, '2018-09-14 04:55:41', '2018-09-14 04:55:41'),
(401, 292, '2018-09-13 18:55:47', NULL, 'Yeison', 'admin@admin.com', 'New task', 15, 0, '2018-09-02 00:00:00', 0, NULL, 'Normal', 'm6ESjjXBzL', 'working', 'Task Resize', 172, 114, NULL, NULL, '2018-09-14 04:55:47', '2018-09-14 04:55:47'),
(402, 292, '2018-09-13 19:13:18', NULL, 'Yeison', 'admin@admin.com', 'New task', 14, 0, '2018-09-02 00:00:00', 0, NULL, 'Normal', 'm6ESjjXBzL', 'working', 'Task Resize', 172, 114, NULL, NULL, '2018-09-14 05:13:18', '2018-09-14 05:13:18'),
(403, 292, '2018-09-13 19:16:35', NULL, 'Yeison', 'admin@admin.com', 'New task', 14, 0, '2018-09-02 00:00:00', 0, NULL, 'Normal', 'm6ESjjXBzL', 'working', 'Drag Date', 172, 114, NULL, NULL, '2018-09-14 05:16:35', '2018-09-14 05:16:35'),
(404, 292, '2018-09-13 19:19:25', NULL, 'Yeison', 'admin@admin.com', 'New task', 15, 0, '2018-09-02 00:00:00', 0, NULL, 'Normal', 'm6ESjjXBzL', 'working', 'Task Resize', 172, 114, NULL, NULL, '2018-09-14 05:19:25', '2018-09-14 05:19:25'),
(405, 299, '2018-09-13 19:19:41', NULL, 'Yeison', 'admin@admin.com', 'asdasdasd11', 1, 0, '2018-09-03 00:00:00', 0, NULL, 'Normal', '8yeLfeL9JL', 'working', 'Task Resize', 179, 114, NULL, 'unassigned', '2018-09-14 05:19:41', '2018-09-14 05:19:41'),
(406, 299, '2018-09-13 19:19:45', NULL, 'Yeison', 'admin@admin.com', 'asdasdasd11', 1, 0, '2018-09-03 00:00:00', 0, NULL, 'Normal', '8yeLfeL9JL', 'working', 'Task Resize', 179, 114, NULL, 'unassigned', '2018-09-14 05:19:45', '2018-09-14 05:19:45'),
(407, 4294967295, '2018-09-13 22:37:49', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 1, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 08:37:49', '2018-09-14 08:37:49'),
(408, 4294967295, '2018-09-13 22:37:50', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 2, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 08:37:50', '2018-09-14 08:37:50'),
(409, 4294967295, '2018-09-13 22:37:50', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 19, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 08:37:50', '2018-09-14 08:37:50'),
(410, 4294967295, '2018-09-13 22:37:51', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 16, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 08:37:51', '2018-09-14 08:37:51'),
(411, 4294967295, '2018-09-13 22:39:43', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 1, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 08:39:43', '2018-09-14 08:39:43'),
(412, 4294967295, '2018-09-13 22:39:44', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 2, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 08:39:44', '2018-09-14 08:39:44'),
(413, 4294967295, '2018-09-13 22:39:45', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 19, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 08:39:45', '2018-09-14 08:39:45'),
(414, 4294967295, '2018-09-13 22:39:46', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 16, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 08:39:46', '2018-09-14 08:39:46'),
(415, 4294967295, '2018-09-13 22:40:00', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 1, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 08:40:00', '2018-09-14 08:40:00'),
(416, 4294967295, '2018-09-13 22:40:00', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 2, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 08:40:00', '2018-09-14 08:40:00'),
(417, 4294967295, '2018-09-13 22:40:01', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 19, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 08:40:01', '2018-09-14 08:40:01'),
(418, 4294967295, '2018-09-13 22:40:02', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 16, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 08:40:02', '2018-09-14 08:40:02'),
(419, 4294967295, '2018-09-13 22:40:02', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 16, 0.62, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 08:40:02', '2018-09-14 08:40:02'),
(420, 4294967295, '2018-09-13 22:51:17', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 1, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 08:51:17', '2018-09-14 08:51:17'),
(421, 4294967295, '2018-09-13 22:51:18', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 2, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 08:51:18', '2018-09-14 08:51:18'),
(422, 4294967295, '2018-09-13 22:51:18', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 19, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 08:51:18', '2018-09-14 08:51:18'),
(423, 4294967295, '2018-09-13 22:51:19', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 16, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 08:51:19', '2018-09-14 08:51:19'),
(424, 4294967295, '2018-09-13 22:51:20', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 16, 0.62, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 08:51:20', '2018-09-14 08:51:20'),
(425, 4294967295, '2018-09-13 22:51:21', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 17, 0.62, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 08:51:21', '2018-09-14 08:51:21'),
(426, 4294967295, '2018-09-13 23:22:44', 'Helouu', 'Yeison', 'admin@admin.com', 'Nueva tarea de pruebas', 1, NULL, '2018-09-03 00:00:00', 0, NULL, 'Normal', '8GvBkycl3s', NULL, 'Change Name Task', NULL, 114, NULL, 'admin@admin.com', '2018-09-14 09:22:44', '2018-09-14 09:22:44'),
(427, 4294967295, '2018-09-13 23:22:45', 'Helouu', 'Yeison', 'admin@admin.com', 'Nueva tarea de pruebas', 1, NULL, '2018-09-03 00:00:00', 0, NULL, 'Normal', '8GvBkycl3s', NULL, 'Change Description', NULL, 114, NULL, 'admin@admin.com', '2018-09-14 09:22:45', '2018-09-14 09:22:45'),
(428, 4294967295, '2018-09-13 23:22:45', 'Helouu', 'Yeison', 'admin@admin.com', 'Nueva tarea de pruebas', 1, NULL, '2018-09-03 00:00:00', 0, NULL, 'Normal', '8GvBkycl3s', NULL, 'Change Assigned', NULL, 114, NULL, 'admin@admin.com', '2018-09-14 09:22:45', '2018-09-14 09:22:45'),
(429, 4294967295, '2018-09-13 23:22:45', 'Helouu', 'Yeison', 'admin@admin.com', 'Nueva tarea de pruebas', 1, NULL, '2018-09-03 00:00:00', 0, NULL, 'Normal', '8GvBkycl3s', NULL, 'Add Task', NULL, 114, NULL, 'admin@admin.com', '2018-09-14 09:22:45', '2018-09-14 09:22:45'),
(430, 4294967295, '2018-09-13 23:23:20', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 22, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:23:20', '2018-09-14 09:23:20'),
(431, 4294967295, '2018-09-13 23:29:11', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 22, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:29:11', '2018-09-14 09:29:11'),
(432, 4294967295, '2018-09-13 23:29:12', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 21, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:29:12', '2018-09-14 09:29:12'),
(433, 4294967295, '2018-09-13 23:29:12', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 19, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:29:12', '2018-09-14 09:29:12'),
(434, 4294967295, '2018-09-13 23:29:13', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 20, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:29:13', '2018-09-14 09:29:13'),
(435, 4294967295, '2018-09-13 23:37:27', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 22, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:37:27', '2018-09-14 09:37:27'),
(436, 4294967295, '2018-09-13 23:37:28', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 21, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:37:28', '2018-09-14 09:37:28'),
(437, 4294967295, '2018-09-13 23:37:29', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 19, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:37:29', '2018-09-14 09:37:29'),
(438, 4294967295, '2018-09-13 23:37:30', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 20, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:37:30', '2018-09-14 09:37:30'),
(439, 4294967295, '2018-09-13 23:37:31', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 19, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:37:31', '2018-09-14 09:37:31'),
(440, 4294967295, '2018-09-13 23:37:32', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 19, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:37:32', '2018-09-14 09:37:32'),
(441, 4294967295, '2018-09-13 23:37:33', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 20, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:37:33', '2018-09-14 09:37:33'),
(442, 4294967295, '2018-09-13 23:37:33', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 21, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:37:33', '2018-09-14 09:37:33'),
(443, 4294967295, '2018-09-13 23:38:06', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 22, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:38:06', '2018-09-14 09:38:06'),
(444, 4294967295, '2018-09-13 23:38:07', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 21, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:38:07', '2018-09-14 09:38:07'),
(445, 4294967295, '2018-09-13 23:38:08', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 19, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:38:08', '2018-09-14 09:38:08'),
(446, 4294967295, '2018-09-13 23:38:08', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 20, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:38:08', '2018-09-14 09:38:08'),
(447, 4294967295, '2018-09-13 23:38:09', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 19, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:38:09', '2018-09-14 09:38:09'),
(448, 4294967295, '2018-09-13 23:38:10', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 19, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:38:10', '2018-09-14 09:38:10'),
(449, 4294967295, '2018-09-13 23:38:11', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 20, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:38:11', '2018-09-14 09:38:11'),
(450, 4294967295, '2018-09-13 23:38:12', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 21, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:38:12', '2018-09-14 09:38:12'),
(451, 4294967295, '2018-09-13 23:38:12', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 26, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:38:12', '2018-09-14 09:38:12'),
(452, 4294967295, '2018-09-13 23:39:23', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 22, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:39:23', '2018-09-14 09:39:23'),
(453, 4294967295, '2018-09-13 23:39:23', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 21, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:39:23', '2018-09-14 09:39:23'),
(454, 4294967295, '2018-09-13 23:39:24', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 19, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:39:24', '2018-09-14 09:39:24'),
(455, 4294967295, '2018-09-13 23:39:24', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 20, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:39:24', '2018-09-14 09:39:24'),
(456, 4294967295, '2018-09-13 23:39:25', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 19, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:39:25', '2018-09-14 09:39:25'),
(457, 4294967295, '2018-09-13 23:39:27', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 19, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:39:27', '2018-09-14 09:39:27'),
(458, 4294967295, '2018-09-13 23:39:27', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 20, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:39:27', '2018-09-14 09:39:27'),
(459, 4294967295, '2018-09-13 23:39:28', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 21, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:39:28', '2018-09-14 09:39:28'),
(460, 4294967295, '2018-09-13 23:39:29', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 26, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:39:29', '2018-09-14 09:39:29'),
(461, 4294967295, '2018-09-13 23:39:30', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 26, 0.73, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:39:30', '2018-09-14 09:39:30'),
(462, 4294967295, '2018-09-13 23:43:23', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 22, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:43:23', '2018-09-14 09:43:23'),
(463, 4294967295, '2018-09-13 23:43:24', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 21, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:43:24', '2018-09-14 09:43:24'),
(464, 4294967295, '2018-09-13 23:43:25', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 19, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:43:25', '2018-09-14 09:43:25'),
(465, 4294967295, '2018-09-13 23:43:26', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 20, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:43:26', '2018-09-14 09:43:26'),
(466, 4294967295, '2018-09-13 23:43:26', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 19, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:43:26', '2018-09-14 09:43:26'),
(467, 4294967295, '2018-09-13 23:43:27', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 19, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:43:27', '2018-09-14 09:43:27'),
(468, 4294967295, '2018-09-13 23:43:28', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 20, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:43:28', '2018-09-14 09:43:28'),
(469, 4294967295, '2018-09-13 23:43:29', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 21, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:43:29', '2018-09-14 09:43:29'),
(470, 4294967295, '2018-09-13 23:43:30', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 26, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:43:30', '2018-09-14 09:43:30'),
(471, 4294967295, '2018-09-13 23:43:31', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 26, 0.73, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:43:31', '2018-09-14 09:43:31'),
(472, 4294967295, '2018-09-13 23:43:31', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 26, 0.91, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 09:43:31', '2018-09-14 09:43:31'),
(473, 319, '2018-09-13 23:59:06', 'Helouu', 'Yeison', 'admin@admin.com', 'Nueva tarea de pruebas', 26, 0.8492307692307692, '2018-09-02 00:00:00', 0, NULL, 'Normal', '8GvBkycl3s', 'working', 'Progress Update', 199, 114, NULL, 'admin@admin.com', '2018-09-14 09:59:06', '2018-09-14 09:59:06'),
(474, 319, '2018-09-13 23:59:10', 'Helouu', 'Yeison', 'admin@admin.com', 'Nueva tarea de pruebas', 26, 0.7138461538461538, '2018-09-02 00:00:00', 0, NULL, 'Normal', '8GvBkycl3s', 'working', 'Progress Update', 199, 114, NULL, 'admin@admin.com', '2018-09-14 09:59:10', '2018-09-14 09:59:10'),
(475, 319, '2018-09-14 09:17:12', 'Helouu', 'Yeison', 'admin@admin.com', 'Nueva tarea de pruebas', 20, 0.73, '2018-09-02 00:00:00', 0, NULL, 'Normal', '8GvBkycl3s', 'working', 'Task Resize', 199, 114, NULL, 'admin@admin.com', '2018-09-14 19:17:12', '2018-09-14 19:17:12'),
(476, 319, '2018-09-14 09:17:18', 'Helouu', 'Yeison', 'admin@admin.com', 'Nueva tarea de pruebas', 19, 0.73, '2018-09-02 00:00:00', 0, NULL, 'Normal', '8GvBkycl3s', 'working', 'Task Resize', 199, 114, NULL, 'admin@admin.com', '2018-09-14 19:17:18', '2018-09-14 19:17:18'),
(477, 319, '2018-09-14 09:17:34', 'Helouu', 'Yeison', 'admin@admin.com', 'Nueva tarea de pruebas', 19, 0.9284210526315789, '2018-09-02 00:00:00', 0, NULL, 'Normal', '8GvBkycl3s', 'working', 'Progress Update', 199, 114, NULL, 'admin@admin.com', '2018-09-14 19:17:34', '2018-09-14 19:17:34'),
(478, 319, '2018-09-14 09:18:18', 'Helouu', 'Yeison', 'admin@admin.com', 'Nueva tarea de pruebas', 19, 0.751578947368421, '2018-09-02 00:00:00', 0, NULL, 'Normal', '8GvBkycl3s', 'working', 'Progress Update', 199, 114, NULL, 'admin@admin.com', '2018-09-14 19:18:18', '2018-09-14 19:18:18'),
(479, 4294967295, '2018-09-14 09:32:47', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 22, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 19:32:47', '2018-09-14 19:32:47'),
(480, 4294967295, '2018-09-14 09:32:48', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 21, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 19:32:48', '2018-09-14 19:32:48'),
(481, 4294967295, '2018-09-14 09:32:49', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 19, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 19:32:49', '2018-09-14 19:32:49');
INSERT INTO `taskhs` (`id`, `id_origin`, `mod_date`, `des`, `editor`, `email`, `text`, `duration`, `progress`, `start_date`, `parent`, `type`, `priority`, `socket`, `status`, `event`, `sortorder`, `project_id`, `workedHours`, `assigned`, `created_at`, `updated_at`) VALUES
(482, 4294967295, '2018-09-14 09:32:49', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 20, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 19:32:49', '2018-09-14 19:32:49'),
(483, 4294967295, '2018-09-14 09:32:50', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 19, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 19:32:50', '2018-09-14 19:32:50'),
(484, 4294967295, '2018-09-14 09:32:51', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 19, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 19:32:51', '2018-09-14 19:32:51'),
(485, 4294967295, '2018-09-14 09:32:52', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 20, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 19:32:52', '2018-09-14 19:32:52'),
(486, 4294967295, '2018-09-14 09:32:53', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 21, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 19:32:53', '2018-09-14 19:32:53'),
(487, 4294967295, '2018-09-14 09:32:54', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 26, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 19:32:54', '2018-09-14 19:32:54'),
(488, 4294967295, '2018-09-14 09:32:55', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 26, 0.73, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 19:32:55', '2018-09-14 19:32:55'),
(489, 4294967295, '2018-09-14 09:32:56', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 26, 0.91, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 19:32:56', '2018-09-14 19:32:56'),
(490, 4294967295, '2018-09-14 09:32:56', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 19, 0.75, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 19:32:56', '2018-09-14 19:32:56'),
(491, 319, '2018-09-14 09:33:30', 'Helouu', 'Yeison', 'admin@admin.com', 'Nueva tarea de pruebas', 19, 0.8063157894736842, '2018-09-02 00:00:00', 0, NULL, 'Normal', '8GvBkycl3s', 'working', 'Progress Update', 199, 114, NULL, 'admin@admin.com', '2018-09-14 19:33:30', '2018-09-14 19:33:30'),
(492, 319, '2018-09-14 09:33:33', 'Helouu', 'Yeison', 'admin@admin.com', 'Nueva tarea de pruebas', 19, 0.9094736842105263, '2018-09-02 00:00:00', 0, NULL, 'Normal', '8GvBkycl3s', 'working', 'Progress Update', 199, 114, NULL, 'admin@admin.com', '2018-09-14 19:33:33', '2018-09-14 19:33:33'),
(493, 4294967295, '2018-09-14 09:33:54', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 22, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 19:33:54', '2018-09-14 19:33:54'),
(494, 4294967295, '2018-09-14 09:33:55', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 21, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 19:33:55', '2018-09-14 19:33:55'),
(495, 4294967295, '2018-09-14 09:33:56', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 19, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 19:33:56', '2018-09-14 19:33:56'),
(496, 4294967295, '2018-09-14 09:33:57', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 20, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 19:33:57', '2018-09-14 19:33:57'),
(497, 4294967295, '2018-09-14 09:33:58', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 19, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 19:33:58', '2018-09-14 19:33:58'),
(498, 4294967295, '2018-09-14 09:33:58', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 19, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 19:33:58', '2018-09-14 19:33:58'),
(499, 4294967295, '2018-09-14 09:33:59', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 20, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 19:33:59', '2018-09-14 19:33:59'),
(500, 4294967295, '2018-09-14 09:34:00', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 21, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 19:34:00', '2018-09-14 19:34:00'),
(501, 4294967295, '2018-09-14 09:34:01', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 26, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 19:34:01', '2018-09-14 19:34:01'),
(502, 4294967295, '2018-09-14 09:34:03', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 26, 0.73, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 19:34:03', '2018-09-14 19:34:03'),
(503, 4294967295, '2018-09-14 09:34:03', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 26, 0.91, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 19:34:03', '2018-09-14 19:34:03'),
(504, 4294967295, '2018-09-14 09:34:04', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 19, 0.75, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 19:34:04', '2018-09-14 19:34:04'),
(505, 4294967295, '2018-09-14 09:34:05', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 19, 0.91, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 19:34:05', '2018-09-14 19:34:05'),
(506, 4294967295, '2018-09-14 11:20:19', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 22, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 21:20:19', '2018-09-14 21:20:19'),
(507, 4294967295, '2018-09-14 11:20:20', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 21, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 21:20:20', '2018-09-14 21:20:20'),
(508, 4294967295, '2018-09-14 11:20:21', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 19, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 21:20:21', '2018-09-14 21:20:21'),
(509, 4294967295, '2018-09-14 11:20:21', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 20, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 21:20:21', '2018-09-14 21:20:21'),
(510, 4294967295, '2018-09-14 11:20:22', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 19, 0, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 21:20:22', '2018-09-14 21:20:22'),
(511, 4294967295, '2018-09-14 11:20:23', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 19, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 21:20:23', '2018-09-14 21:20:23'),
(512, 4294967295, '2018-09-14 11:20:24', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 20, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 21:20:24', '2018-09-14 21:20:24'),
(513, 4294967295, '2018-09-14 11:20:25', NULL, 'Yeison', 'admin@admin.com', '[History]-Nueva tarea de pruebas', 21, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-14 21:20:25', '2018-09-14 21:20:25'),
(514, 319, '2018-09-14 11:20:30', 'Helouu', 'Yeison', 'admin@admin.com', 'Nueva tarea de pruebas', 20, 0.91, '2018-09-02 00:00:00', 0, NULL, 'Normal', '8GvBkycl3s', 'working', 'Task Resize', 199, 114, NULL, 'admin@admin.com', '2018-09-14 21:20:30', '2018-09-14 21:20:30'),
(515, 319, '2018-09-14 11:23:17', 'Helouu', 'Yeison', 'admin@admin.com', 'Nueva tarea de pruebas', 21, 0.91, '2018-09-02 00:00:00', 0, NULL, 'Normal', '8GvBkycl3s', 'working', 'Task Resize', 199, 114, NULL, 'admin@admin.com', '2018-09-14 21:23:17', '2018-09-14 21:23:17'),
(516, 319, '2018-09-14 11:32:54', 'Helouu', 'Yeison', 'admin@admin.com', 'Nueva tarea de pruebas', 22, 0.91, '2018-09-02 00:00:00', 0, NULL, 'Normal', '8GvBkycl3s', 'working', 'Task Resize', 199, 114, NULL, 'admin@admin.com', '2018-09-14 21:32:54', '2018-09-14 21:32:54'),
(517, 319, '2018-09-14 11:33:17', 'Helouu', 'Yeison', 'admin@admin.com', 'Nueva tarea de pruebas', 29, 0.91, '2018-09-02 00:00:00', 0, NULL, 'Normal', '8GvBkycl3s', 'working', 'Task Resize', 199, 114, NULL, 'admin@admin.com', '2018-09-14 21:33:17', '2018-09-14 21:33:17'),
(518, 319, '2018-09-14 11:33:20', 'Helouu', 'Yeison', 'admin@admin.com', 'Nueva tarea de pruebas', 24, 0.91, '2018-09-02 00:00:00', 0, NULL, 'Normal', '8GvBkycl3s', 'working', 'Task Resize', 199, 114, NULL, 'admin@admin.com', '2018-09-14 21:33:20', '2018-09-14 21:33:20'),
(519, 319, '2018-09-14 11:33:21', 'Helouu', 'Yeison', 'admin@admin.com', 'Nueva tarea de pruebas', 24, 0.91, '2018-09-02 00:00:00', 0, NULL, 'Normal', '8GvBkycl3s', 'working', 'Drag Date', 199, 114, NULL, 'admin@admin.com', '2018-09-14 21:33:21', '2018-09-14 21:33:21'),
(520, 319, '2018-09-14 11:33:22', 'Helouu', 'Yeison', 'admin@admin.com', 'Nueva tarea de pruebas', 20, 0.91, '2018-09-02 00:00:00', 0, NULL, 'Normal', '8GvBkycl3s', 'working', 'Task Resize', 199, 114, NULL, 'admin@admin.com', '2018-09-14 21:33:22', '2018-09-14 21:33:22'),
(521, 319, '2018-09-14 11:33:26', 'Helouu', 'Yeison', 'admin@admin.com', 'Nueva tarea de pruebas', 26, 0.91, '2018-09-02 00:00:00', 0, NULL, 'Normal', '8GvBkycl3s', 'working', 'Task Resize', 199, 114, NULL, 'admin@admin.com', '2018-09-14 21:33:26', '2018-09-14 21:33:26'),
(522, 319, '2018-09-14 11:33:29', 'Helouu', 'Yeison', 'admin@admin.com', 'Nueva tarea de pruebas', 32, 0.91, '2018-09-02 00:00:00', 0, NULL, 'Normal', '8GvBkycl3s', 'working', 'Task Resize', 199, 114, NULL, 'admin@admin.com', '2018-09-14 21:33:29', '2018-09-14 21:33:29'),
(523, 4294967295, '2018-09-14 12:07:50', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'cmMcQWebZm', NULL, 'Change Description', NULL, 114, NULL, 'admin@admin.com', '2018-09-14 22:07:50', '2018-09-14 22:07:50'),
(524, 4294967295, '2018-09-14 12:07:51', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'cmMcQWebZm', NULL, 'Change Assigned', NULL, 114, NULL, 'admin@admin.com', '2018-09-14 22:07:51', '2018-09-14 22:07:51'),
(525, 4294967295, '2018-09-14 12:07:51', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'cmMcQWebZm', NULL, 'Add Task', NULL, 114, NULL, 'admin@admin.com', '2018-09-14 22:07:51', '2018-09-14 22:07:51'),
(526, 4294967295, '2018-09-14 18:50:26', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 1, NULL, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', NULL, 'Change Name Task', NULL, 115, NULL, NULL, '2018-09-15 04:50:26', '2018-09-15 04:50:26'),
(527, 4294967295, '2018-09-14 18:50:27', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 1, NULL, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', NULL, 'Change Description', NULL, 115, NULL, NULL, '2018-09-15 04:50:27', '2018-09-15 04:50:27'),
(528, 4294967295, '2018-09-14 18:50:27', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 1, NULL, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', NULL, 'Change Assigned', NULL, 115, NULL, NULL, '2018-09-15 04:50:27', '2018-09-15 04:50:27'),
(529, 4294967295, '2018-09-14 18:50:28', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 1, NULL, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', NULL, 'Add Task', NULL, 115, NULL, NULL, '2018-09-15 04:50:28', '2018-09-15 04:50:28'),
(530, 397, '2018-09-14 18:50:31', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 9, NULL, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', NULL, 'Task Resize', NULL, 115, NULL, NULL, '2018-09-15 04:50:31', '2018-09-15 04:50:31'),
(531, 397, '2018-09-14 18:58:02', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 9, 0.6768558951965066, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', NULL, 'Progress Update', NULL, 115, NULL, NULL, '2018-09-15 04:58:02', '2018-09-15 04:58:02'),
(532, 397, '2018-09-14 21:52:26', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 11, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-15 07:52:26', '2018-09-15 07:52:26'),
(533, 397, '2018-09-14 21:52:32', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 13, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-15 07:52:32', '2018-09-15 07:52:32'),
(534, 397, '2018-09-14 21:52:50', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 15, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-15 07:52:50', '2018-09-15 07:52:50'),
(535, 397, '2018-09-14 21:53:06', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 16, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-15 07:53:06', '2018-09-15 07:53:06'),
(536, 397, '2018-09-14 21:53:17', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 17, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-15 07:53:17', '2018-09-15 07:53:17'),
(537, 397, '2018-09-14 21:54:20', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 19, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-15 07:54:20', '2018-09-15 07:54:20'),
(538, 397, '2018-09-14 21:54:39', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 20, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-15 07:54:39', '2018-09-15 07:54:39'),
(539, 397, '2018-09-14 21:55:05', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 19, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-15 07:55:05', '2018-09-15 07:55:05'),
(540, 397, '2018-09-14 21:57:04', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 20, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-15 07:57:04', '2018-09-15 07:57:04'),
(541, 397, '2018-09-14 21:58:08', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 19, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-15 07:58:08', '2018-09-15 07:58:08'),
(542, 397, '2018-09-14 21:58:19', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 20, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-15 07:58:19', '2018-09-15 07:58:19'),
(543, 4294967295, '2018-09-14 21:59:20', NULL, 'Yeison', 'admin@admin.com', '[History]-Byeeeeee', 20, 0.68, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-15 07:59:20', '2018-09-15 07:59:20'),
(544, 30, '2018-09-14 22:05:13', NULL, 'Yeison', 'admin@admin.com', '[History]-Byeeeeee', 20, 0.68, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-15 08:05:13', '2018-09-15 08:05:13'),
(545, 319, '2018-09-15 10:58:59', 'Helouu', 'Yeison', 'admin@admin.com', 'Nueva tarea de pruebas', 32, 0.91, '2018-09-14 00:00:00', 0, NULL, 'Normal', '8GvBkycl3s', 'working', 'Drag Date', 199, 114, NULL, 'admin@admin.com', '2018-09-15 20:58:59', '2018-09-15 20:58:59'),
(546, 289, '2018-09-15 11:29:57', NULL, 'Yeison', 'admin@admin.com', 'Asigned to Yeison 1', 2, 1, '2018-09-17 00:00:00', 0, NULL, 'Normal', 'KwD7TB5I9N', 'working', 'Drag Date', 171, 113, NULL, 'admin@admin.com', '2018-09-15 21:29:57', '2018-09-15 21:29:57'),
(547, 289, '2018-09-15 11:48:58', NULL, 'Yeison', 'admin@admin.com', 'Asigned to Yeison 1', 2, 1, '2018-09-17 00:00:00', 0, NULL, 'Normal', 'KwD7TB5I9N', 'working', 'Drag Date', 171, 113, NULL, 'admin@admin.com', '2018-09-15 21:48:58', '2018-09-15 21:48:58'),
(548, 289, '2018-09-15 11:49:15', NULL, 'Yeison', 'admin@admin.com', 'Asigned to Yeison 1', 2, 1, '2018-10-09 00:00:00', 0, NULL, 'Normal', 'KwD7TB5I9N', 'working', 'Drag Date', 171, 113, NULL, 'admin@admin.com', '2018-09-15 21:49:15', '2018-09-15 21:49:15'),
(549, 289, '2018-09-15 11:49:26', NULL, 'Yeison', 'admin@admin.com', 'Asigned to Yeison 1', 2, 1, '2018-09-14 00:00:00', 0, NULL, 'Normal', 'KwD7TB5I9N', 'working', 'Drag Date', 171, 113, NULL, 'admin@admin.com', '2018-09-15 21:49:27', '2018-09-15 21:49:27'),
(550, 397, '2018-09-15 14:00:35', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 22, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-16 00:00:35', '2018-09-16 00:00:35'),
(551, 397, '2018-09-15 14:03:19', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 21, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-16 00:03:19', '2018-09-16 00:03:19'),
(552, 397, '2018-09-15 14:14:07', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 18, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-16 00:14:07', '2018-09-16 00:14:07'),
(553, 397, '2018-09-15 14:14:23', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 17, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-16 00:14:23', '2018-09-16 00:14:23'),
(554, 397, '2018-09-15 14:14:29', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 18, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-16 00:14:29', '2018-09-16 00:14:29'),
(555, 397, '2018-09-15 14:14:32', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 19, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-16 00:14:32', '2018-09-16 00:14:32'),
(556, 397, '2018-09-15 14:14:47', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 20, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-16 00:14:47', '2018-09-16 00:14:47'),
(557, 397, '2018-09-15 14:14:51', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 21, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-16 00:14:51', '2018-09-16 00:14:51'),
(558, 397, '2018-09-15 14:14:53', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 22, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-16 00:14:53', '2018-09-16 00:14:53'),
(559, 397, '2018-09-15 14:23:10', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 15, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-16 00:23:10', '2018-09-16 00:23:10'),
(560, 397, '2018-09-15 14:26:48', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 14, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-16 00:26:48', '2018-09-16 00:26:48'),
(561, 397, '2018-09-15 14:27:46', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 14, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-16 00:27:46', '2018-09-16 00:27:46'),
(562, 397, '2018-09-15 14:28:06', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 16, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-16 00:28:06', '2018-09-16 00:28:06'),
(563, 397, '2018-09-15 14:28:13', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 15, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-16 00:28:13', '2018-09-16 00:28:13'),
(564, 397, '2018-09-15 14:30:39', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 16, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-16 00:30:39', '2018-09-16 00:30:39'),
(565, 397, '2018-09-15 14:34:08', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 16, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-16 00:34:08', '2018-09-16 00:34:08'),
(566, 397, '2018-09-15 14:41:08', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 16, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-16 00:41:08', '2018-09-16 00:41:08'),
(567, 397, '2018-09-15 14:46:02', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 15, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-16 00:46:02', '2018-09-16 00:46:02'),
(568, 397, '2018-09-15 14:49:46', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 16, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-16 00:49:46', '2018-09-16 00:49:46'),
(569, 397, '2018-09-15 14:52:06', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 18, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-16 00:52:06', '2018-09-16 00:52:06'),
(570, 397, '2018-09-15 14:53:21', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 17, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-16 00:53:21', '2018-09-16 00:53:21'),
(571, 30, '2018-09-15 14:53:28', NULL, 'Yeison', 'admin@admin.com', '[History]-Byeeeeee', 20, 0.68, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-16 00:53:28', '2018-09-16 00:53:28'),
(572, 31, '2018-09-15 14:53:29', NULL, 'Yeison', 'admin@admin.com', '[History]-Byeeeeee', 18, 0.68, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-16 00:53:29', '2018-09-16 00:53:29'),
(573, 32, '2018-09-15 14:53:30', NULL, 'Yeison', 'admin@admin.com', '[History]-Byeeeeee', 17, 0.68, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-16 00:53:30', '2018-09-16 00:53:30'),
(574, 397, '2018-09-15 14:54:26', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 18, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-16 00:54:26', '2018-09-16 00:54:26'),
(575, 397, '2018-09-15 14:59:02', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 17, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-16 00:59:02', '2018-09-16 00:59:02'),
(576, 397, '2018-09-15 15:00:53', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 18, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-16 01:00:53', '2018-09-16 01:00:53'),
(577, 397, '2018-09-15 15:01:17', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 19, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-16 01:01:17', '2018-09-16 01:01:17'),
(578, 397, '2018-09-15 15:04:17', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 20, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-16 01:04:17', '2018-09-16 01:04:17'),
(579, 397, '2018-09-15 15:05:23', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 20, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Drag Date', 277, 115, NULL, NULL, '2018-09-16 01:05:23', '2018-09-16 01:05:23'),
(580, 397, '2018-09-15 15:24:24', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 18, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-16 01:24:24', '2018-09-16 01:24:24'),
(581, 397, '2018-09-15 15:24:48', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 16, 0.68, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Task Resize', 277, 115, NULL, NULL, '2018-09-16 01:24:48', '2018-09-16 01:24:48'),
(582, 397, '2018-09-15 20:53:02', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 16, 0.7339285714285714, '2018-09-04 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Progress Update', 277, 115, NULL, NULL, '2018-09-16 06:53:02', '2018-09-16 06:53:02'),
(583, 397, '2018-09-15 20:54:31', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 16, 0.7535714285714286, '2018-09-04 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Progress Update', 277, 115, NULL, NULL, '2018-09-16 06:54:31', '2018-09-16 06:54:31'),
(584, 397, '2018-09-15 20:55:22', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 16, 0.7321428571428571, '2018-09-04 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Progress Update', 277, 115, NULL, NULL, '2018-09-16 06:55:22', '2018-09-16 06:55:22'),
(585, 397, '2018-09-15 20:56:39', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 16, 0.7607142857142857, '2018-09-04 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Progress Update', 277, 115, NULL, NULL, '2018-09-16 06:56:39', '2018-09-16 06:56:39'),
(586, 397, '2018-09-15 20:58:13', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 16, 0.775, '2018-09-04 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Progress Update', 277, 115, NULL, NULL, '2018-09-16 06:58:13', '2018-09-16 06:58:13'),
(587, 397, '2018-09-15 20:59:35', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 16, 0.7821428571428571, '2018-09-04 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Progress Update', 277, 115, NULL, NULL, '2018-09-16 06:59:35', '2018-09-16 06:59:35'),
(588, 270, '2018-09-15 21:01:02', 'descripcion de tarea esta sera un poco larga para simular lo que se tiene que hacer exactamente', 'Yeison', 'admin@admin.com', 'probando historial tareasasdasd', 18, 0.6, '2018-09-05 00:00:00', 0, NULL, 'normal', 'bt0ZxRe3DD', 'working', 'Task Resize', 160, 111, NULL, 'admin@admin.com', '2018-09-16 07:01:02', '2018-09-16 07:01:02'),
(589, 270, '2018-09-15 21:01:42', 'descripcion de tarea esta sera un poco larga para simular lo que se tiene que hacer exactamente', 'Yeison', 'admin@admin.com', 'probando historial tareasasdasd', 18, 0.6, '2018-09-05 00:00:00', 0, NULL, 'normal', 'bt0ZxRe3DD', 'working', 'Task Resize', 160, 111, NULL, 'admin@admin.com', '2018-09-16 07:01:42', '2018-09-16 07:01:42'),
(590, 270, '2018-09-15 21:02:20', 'descripcion de tarea esta sera un poco larga para simular lo que se tiene que hacer exactamente', 'Yeison', 'admin@admin.com', 'probando historial tareasasdasd', 17, 0.6, '2018-09-05 00:00:00', 0, NULL, 'normal', 'bt0ZxRe3DD', 'working', 'Task Resize', 160, 111, NULL, 'admin@admin.com', '2018-09-16 07:02:20', '2018-09-16 07:02:20'),
(591, 270, '2018-09-15 21:02:29', 'descripcion de tarea esta sera un poco larga para simular lo que se tiene que hacer exactamente', 'Yeison', 'admin@admin.com', 'probando historial tareasasdasd', 16, 0.6, '2018-09-05 00:00:00', 0, NULL, 'normal', 'bt0ZxRe3DD', 'working', 'Task Resize', 160, 111, NULL, 'admin@admin.com', '2018-09-16 07:02:29', '2018-09-16 07:02:29'),
(592, 270, '2018-09-15 21:02:44', 'descripcion de tarea esta sera un poco larga para simular lo que se tiene que hacer exactamente', 'Yeison', 'admin@admin.com', 'probando historial tareasasdasd', 16, 0.6303571428571428, '2018-09-05 00:00:00', 0, NULL, 'normal', 'bt0ZxRe3DD', 'working', 'Progress Update', 160, 111, NULL, 'admin@admin.com', '2018-09-16 07:02:44', '2018-09-16 07:02:44'),
(593, 292, '2018-09-17 10:28:18', NULL, 'Yeison', 'admin@admin.com', 'New task', 17, 0.7445378151260504, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'm6ESjjXBzL', 'working', 'Progress Update', 172, 114, NULL, NULL, '2018-09-17 20:28:18', '2018-09-17 20:28:18'),
(594, 292, '2018-09-17 10:31:24', NULL, 'Yeison', 'admin@admin.com', 'New task', 17, 0.6991596638655462, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'm6ESjjXBzL', 'working', 'Progress Update', 172, 114, NULL, NULL, '2018-09-17 20:31:24', '2018-09-17 20:31:24'),
(595, 292, '2018-09-17 10:32:48', NULL, 'Yeison', 'admin@admin.com', 'New task', 17, 0.7210084033613445, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'm6ESjjXBzL', 'working', 'Progress Update', 172, 114, NULL, NULL, '2018-09-17 20:32:48', '2018-09-17 20:32:48'),
(596, 292, '2018-09-17 10:33:25', NULL, 'Yeison', 'admin@admin.com', 'New task', 17, 0.7747899159663866, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'm6ESjjXBzL', 'working', 'Progress Update', 172, 114, NULL, NULL, '2018-09-17 20:33:25', '2018-09-17 20:33:25'),
(597, 292, '2018-09-17 10:34:59', NULL, 'Yeison', 'admin@admin.com', 'New task', 17, 0.7243697478991596, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'm6ESjjXBzL', 'working', 'Progress Update', 172, 114, NULL, NULL, '2018-09-17 20:34:59', '2018-09-17 20:34:59'),
(598, 292, '2018-09-17 10:35:18', NULL, 'Yeison', 'admin@admin.com', 'New task', 17, 0.680672268907563, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'm6ESjjXBzL', 'working', 'Progress Update', 172, 114, NULL, NULL, '2018-09-17 20:35:18', '2018-09-17 20:35:18'),
(599, 292, '2018-09-17 10:36:27', NULL, 'Yeison', 'admin@admin.com', 'New task', 17, 0.7210084033613445, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'm6ESjjXBzL', 'working', 'Progress Update', 172, 114, NULL, NULL, '2018-09-17 20:36:27', '2018-09-17 20:36:27'),
(600, 292, '2018-09-17 10:36:47', NULL, 'Yeison', 'admin@admin.com', 'New task', 17, 0.7327731092436974, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'm6ESjjXBzL', 'working', 'Progress Update', 172, 114, NULL, NULL, '2018-09-17 20:36:47', '2018-09-17 20:36:47'),
(601, 5, '2018-09-17 10:37:03', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 1, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-17 20:37:03', '2018-09-17 20:37:03'),
(602, 6, '2018-09-17 10:37:04', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 2, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-17 20:37:04', '2018-09-17 20:37:04'),
(603, 7, '2018-09-17 10:37:05', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 19, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-17 20:37:05', '2018-09-17 20:37:05'),
(604, 8, '2018-09-17 10:37:07', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 16, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-17 20:37:07', '2018-09-17 20:37:07'),
(605, 9, '2018-09-17 10:37:08', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 16, 0.62, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-17 20:37:08', '2018-09-17 20:37:08'),
(606, 10, '2018-09-17 10:37:10', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 17, 0.62, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-17 20:37:10', '2018-09-17 20:37:10'),
(607, 11, '2018-09-17 10:37:11', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 17, 0.68, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-17 20:37:11', '2018-09-17 20:37:11'),
(608, 12, '2018-09-17 10:37:13', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 17, 0.67, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-17 20:37:13', '2018-09-17 20:37:13'),
(609, 35, '2018-09-17 10:37:14', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 17, 0.73, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-17 20:37:14', '2018-09-17 20:37:14'),
(610, 292, '2018-09-17 10:45:26', NULL, 'Yeison', 'admin@admin.com', 'New task', 17, 0.7680672268907563, '2018-09-03 00:00:00', 0, NULL, 'Normal', 'm6ESjjXBzL', 'working', 'Progress Update', 172, 114, NULL, NULL, '2018-09-17 20:45:26', '2018-09-17 20:45:26'),
(611, 5, '2018-09-17 10:45:43', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 1, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-17 20:45:43', '2018-09-17 20:45:43'),
(612, 6, '2018-09-17 10:45:43', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 2, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-17 20:45:43', '2018-09-17 20:45:43'),
(613, 7, '2018-09-17 10:45:44', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 19, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-17 20:45:44', '2018-09-17 20:45:44'),
(614, 8, '2018-09-17 10:45:46', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 16, 0, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-17 20:45:46', '2018-09-17 20:45:46'),
(615, 9, '2018-09-17 10:45:47', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 16, 0.62, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-17 20:45:47', '2018-09-17 20:45:47'),
(616, 10, '2018-09-17 10:45:48', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 17, 0.62, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-17 20:45:48', '2018-09-17 20:45:48'),
(617, 11, '2018-09-17 10:45:50', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 17, 0.68, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-17 20:45:50', '2018-09-17 20:45:50'),
(618, 12, '2018-09-17 10:45:52', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 17, 0.67, '2018-09-02 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-17 20:45:52', '2018-09-17 20:45:52'),
(619, 35, '2018-09-17 10:45:53', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 17, 0.73, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-17 20:45:53', '2018-09-17 20:45:53'),
(620, 36, '2018-09-17 10:45:55', NULL, 'Yeison', 'admin@admin.com', '[History]-New task', 17, 0.77, '2018-09-03 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-09-17 20:45:55', '2018-09-17 20:45:55'),
(621, 4294967295, '2018-09-17 21:56:47', NULL, 'Yeison', 'admin@admin.com', 'yeison task', 1, NULL, '2018-09-15 00:00:00', 0, NULL, 'Normal', 'z4hxlJqhq1', NULL, 'Change Name Task', NULL, 114, NULL, NULL, '2018-09-18 07:56:47', '2018-09-18 07:56:47'),
(622, 4294967295, '2018-09-17 21:56:47', NULL, 'Yeison', 'admin@admin.com', 'yeison task', 1, NULL, '2018-09-15 00:00:00', 0, NULL, 'Normal', 'z4hxlJqhq1', NULL, 'Change Assigned', NULL, 114, NULL, NULL, '2018-09-18 07:56:47', '2018-09-18 07:56:47'),
(623, 4294967295, '2018-09-17 21:56:47', NULL, 'Yeison', 'admin@admin.com', 'yeison task', 1, NULL, '2018-09-15 00:00:00', 0, NULL, 'Normal', 'z4hxlJqhq1', NULL, 'Change Description', NULL, 114, NULL, NULL, '2018-09-18 07:56:47', '2018-09-18 07:56:47'),
(624, 4294967295, '2018-09-17 21:56:49', NULL, 'Yeison', 'admin@admin.com', 'yeison task', 1, NULL, '2018-09-15 00:00:00', 0, NULL, 'Normal', 'z4hxlJqhq1', NULL, 'Add Task', NULL, 114, NULL, NULL, '2018-09-18 07:56:49', '2018-09-18 07:56:49'),
(625, 4294967295, '2018-09-18 08:49:51', NULL, 'Yeison', 'admin@admin.com', 'Tarea 1', 1, NULL, '2018-09-15 00:00:00', 0, NULL, 'Normal', 'zXMlUpf4gv', NULL, 'Change Name Task', NULL, 114, NULL, NULL, '2018-09-18 18:49:51', '2018-09-18 18:49:51'),
(626, 4294967295, '2018-09-18 08:49:53', NULL, 'Yeison', 'admin@admin.com', 'Tarea 1', 1, NULL, '2018-09-15 00:00:00', 0, NULL, 'Normal', 'zXMlUpf4gv', NULL, 'Change Description', NULL, 114, NULL, NULL, '2018-09-18 18:49:53', '2018-09-18 18:49:53'),
(627, 4294967295, '2018-09-18 08:49:53', NULL, 'Yeison', 'admin@admin.com', 'Tarea 1', 1, NULL, '2018-09-15 00:00:00', 0, NULL, 'Normal', 'zXMlUpf4gv', NULL, 'Change Assigned', NULL, 114, NULL, NULL, '2018-09-18 18:49:53', '2018-09-18 18:49:53'),
(628, 4294967295, '2018-09-18 08:49:54', NULL, 'Yeison', 'admin@admin.com', 'Tarea 1', 1, NULL, '2018-09-15 00:00:00', 0, NULL, 'Normal', 'zXMlUpf4gv', NULL, 'Add Task', NULL, 114, NULL, NULL, '2018-09-18 18:49:54', '2018-09-18 18:49:54'),
(629, 4294967295, '2018-09-18 08:50:05', NULL, 'Yeison', 'admin@admin.com', 'tarea2', 1, NULL, '2018-09-15 00:00:00', 0, NULL, 'Normal', 'zXMlUpf4gv', NULL, 'Change Name Task', NULL, 114, NULL, NULL, '2018-09-18 18:50:05', '2018-09-18 18:50:05'),
(630, 4294967295, '2018-09-18 08:50:06', NULL, 'Yeison', 'admin@admin.com', 'tarea2', 1, NULL, '2018-09-15 00:00:00', 0, NULL, 'Normal', 'zXMlUpf4gv', NULL, 'Change Description', NULL, 114, NULL, NULL, '2018-09-18 18:50:06', '2018-09-18 18:50:06'),
(631, 4294967295, '2018-09-18 08:50:07', NULL, 'Yeison', 'admin@admin.com', 'tarea2', 1, NULL, '2018-09-15 00:00:00', 0, NULL, 'Normal', 'zXMlUpf4gv', NULL, 'Change Assigned', NULL, 114, NULL, NULL, '2018-09-18 18:50:07', '2018-09-18 18:50:07'),
(632, 4294967295, '2018-09-18 08:50:07', NULL, 'Yeison', 'admin@admin.com', 'tarea2', 2, NULL, '2018-09-15 00:00:00', 0, NULL, 'Normal', 'zXMlUpf4gv', NULL, 'Add Task', NULL, 114, NULL, NULL, '2018-09-18 18:50:07', '2018-09-18 18:50:07'),
(633, 4294967295, '2018-09-18 08:50:13', NULL, 'Yeison', 'admin@admin.com', 'tarea 3', 1, NULL, '2018-09-15 00:00:00', 0, NULL, 'Normal', 'zXMlUpf4gv', NULL, 'Change Name Task', NULL, 114, NULL, NULL, '2018-09-18 18:50:13', '2018-09-18 18:50:13'),
(634, 4294967295, '2018-09-18 08:50:13', NULL, 'Yeison', 'admin@admin.com', 'tarea 3', 1, NULL, '2018-09-15 00:00:00', 0, NULL, 'Normal', 'zXMlUpf4gv', NULL, 'Change Description', NULL, 114, NULL, NULL, '2018-09-18 18:50:13', '2018-09-18 18:50:13'),
(635, 4294967295, '2018-09-18 08:50:14', NULL, 'Yeison', 'admin@admin.com', 'tarea 3', 1, NULL, '2018-09-15 00:00:00', 0, NULL, 'Normal', 'zXMlUpf4gv', NULL, 'Change Assigned', NULL, 114, NULL, NULL, '2018-09-18 18:50:14', '2018-09-18 18:50:14'),
(636, 4294967295, '2018-09-18 08:50:15', NULL, 'Yeison', 'admin@admin.com', 'tarea 3', 11, NULL, '2018-09-15 00:00:00', 0, NULL, 'Normal', 'zXMlUpf4gv', NULL, 'Add Task', NULL, 114, NULL, NULL, '2018-09-18 18:50:15', '2018-09-18 18:50:15'),
(637, 4294967295, '2018-09-20 14:26:59', NULL, 'Yeison', 'admin@admin.com', 'asdasdasd', 1, NULL, '2018-09-15 00:00:00', 0, NULL, 'Normal', 'l1iQBn58rH', NULL, 'Change Name Task', NULL, 114, NULL, NULL, '2018-09-21 00:26:59', '2018-09-21 00:26:59'),
(638, 4294967295, '2018-09-20 14:26:59', NULL, 'Yeison', 'admin@admin.com', 'asdasdasd', 1, NULL, '2018-09-15 00:00:00', 0, NULL, 'Normal', 'l1iQBn58rH', NULL, 'Change Assigned', NULL, 114, NULL, NULL, '2018-09-21 00:26:59', '2018-09-21 00:26:59'),
(639, 4294967295, '2018-09-20 14:27:00', NULL, 'Yeison', 'admin@admin.com', 'asdasdasd', 1, NULL, '2018-09-15 00:00:00', 0, NULL, 'Normal', 'l1iQBn58rH', NULL, 'Change Description', NULL, 114, NULL, NULL, '2018-09-21 00:27:00', '2018-09-21 00:27:00'),
(640, 4294967295, '2018-09-20 14:27:01', NULL, 'Yeison', 'admin@admin.com', 'asdasdasd', 1, NULL, '2018-09-15 00:00:00', 0, NULL, 'Normal', 'l1iQBn58rH', NULL, 'Add Task', NULL, 114, NULL, NULL, '2018-09-21 00:27:01', '2018-09-21 00:27:01'),
(641, 423, '2018-09-20 14:39:41', NULL, 'Yeison', 'admin@admin.com', 'Tarea 1', 1, 0, '2018-09-16 00:00:00', 0, NULL, 'Normal', 'zXMlUpf4gv', 'working', 'Drag Date', 302, 114, NULL, 'admin@admin.com', '2018-09-21 00:39:41', '2018-09-21 00:39:41'),
(642, 4294967295, '2018-09-20 14:41:47', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-16 00:00:00', 0, NULL, 'Normal', 'XtjSVZ3RER', NULL, 'Change Description', NULL, 114, NULL, NULL, '2018-09-21 00:41:47', '2018-09-21 00:41:47'),
(643, 4294967295, '2018-09-20 14:41:47', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-16 00:00:00', 0, NULL, 'Normal', 'XtjSVZ3RER', NULL, 'Change Assigned', NULL, 114, NULL, NULL, '2018-09-21 00:41:47', '2018-09-21 00:41:47'),
(644, 4294967295, '2018-09-20 14:41:49', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-16 00:00:00', 0, NULL, 'Normal', 'XtjSVZ3RER', NULL, 'Add Task', NULL, 114, NULL, NULL, '2018-09-21 00:41:49', '2018-09-21 00:41:49'),
(645, 4294967295, '2018-09-20 14:41:59', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-16 00:00:00', 0, NULL, 'Normal', 'XtjSVZ3RER', NULL, 'Change Description', NULL, 114, NULL, NULL, '2018-09-21 00:41:59', '2018-09-21 00:41:59'),
(646, 4294967295, '2018-09-20 14:42:00', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-16 00:00:00', 0, NULL, 'Normal', 'XtjSVZ3RER', NULL, 'Change Assigned', NULL, 114, NULL, NULL, '2018-09-21 00:42:00', '2018-09-21 00:42:00'),
(647, 4294967295, '2018-09-20 14:42:01', NULL, 'Yeison', 'admin@admin.com', 'New task', 9, NULL, '2018-09-16 00:00:00', 0, NULL, 'Normal', 'XtjSVZ3RER', NULL, 'Add Task', NULL, 114, NULL, NULL, '2018-09-21 00:42:01', '2018-09-21 00:42:01'),
(648, 4294967295, '2018-09-20 14:42:07', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-16 00:00:00', 0, NULL, 'Normal', 'XtjSVZ3RER', NULL, 'Change Description', NULL, 114, NULL, NULL, '2018-09-21 00:42:07', '2018-09-21 00:42:07'),
(649, 4294967295, '2018-09-20 14:42:08', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-16 00:00:00', 0, NULL, 'Normal', 'XtjSVZ3RER', NULL, 'Change Assigned', NULL, 114, NULL, NULL, '2018-09-21 00:42:08', '2018-09-21 00:42:08'),
(650, 4294967295, '2018-09-20 14:42:09', NULL, 'Yeison', 'admin@admin.com', 'New task', 8, NULL, '2018-09-16 00:00:00', 0, NULL, 'Normal', 'XtjSVZ3RER', NULL, 'Add Task', NULL, 114, NULL, NULL, '2018-09-21 00:42:09', '2018-09-21 00:42:09'),
(651, 426, '2018-09-20 14:44:20', NULL, 'Yeison', 'admin@admin.com', 'asdasdasd', 1, 0, '2018-09-16 00:00:00', 0, NULL, 'Normal', 'l1iQBn58rH', 'working', 'Drag Date', 305, 114, NULL, 'unassigned', '2018-09-21 00:44:20', '2018-09-21 00:44:20'),
(652, 425, '2018-09-20 14:44:21', NULL, 'Yeison', 'admin@admin.com', 'tarea 3', 11, 1, '2018-09-16 00:00:00', 0, NULL, 'Normal', 'zXMlUpf4gv', 'working', 'Drag Date', 304, 114, NULL, 'unassigned', '2018-09-21 00:44:21', '2018-09-21 00:44:21'),
(653, 425, '2018-09-20 14:44:22', NULL, 'Yeison', 'admin@admin.com', 'tarea 3', 11, 1, '2018-09-16 00:00:00', 0, NULL, 'Normal', 'zXMlUpf4gv', 'working', 'Drag Date', 304, 114, NULL, 'unassigned', '2018-09-21 00:44:22', '2018-09-21 00:44:22'),
(654, 424, '2018-09-20 14:44:24', NULL, 'Yeison', 'admin@admin.com', 'tarea2', 2, 0, '2018-09-16 00:00:00', 0, NULL, 'Normal', 'zXMlUpf4gv', 'working', 'Drag Date', 303, 114, NULL, 'unassigned', '2018-09-21 00:44:24', '2018-09-21 00:44:24'),
(655, 424, '2018-09-20 14:44:27', NULL, 'Yeison', 'admin@admin.com', 'tarea2', 2, 0, '2018-09-16 00:00:00', 0, NULL, 'Normal', 'zXMlUpf4gv', 'working', 'Task Resize', 303, 114, NULL, 'unassigned', '2018-09-21 00:44:27', '2018-09-21 00:44:27'),
(656, 423, '2018-09-20 14:45:01', NULL, 'Yeison', 'admin@admin.com', 'Tarea 1', 1, 0, '2018-09-17 00:00:00', 0, NULL, 'Normal', 'zXMlUpf4gv', 'working', 'Drag Date', 302, 114, NULL, 'admin@admin.com', '2018-09-21 00:45:01', '2018-09-21 00:45:01'),
(657, 4294967295, '2018-09-20 17:44:54', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-17 00:00:00', 0, NULL, 'Normal', 'mFNb50PhaZ', NULL, 'Change Description', NULL, 114, NULL, NULL, '2018-09-21 03:44:54', '2018-09-21 03:44:54'),
(658, 4294967295, '2018-09-20 17:44:56', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-17 00:00:00', 0, NULL, 'Normal', 'mFNb50PhaZ', NULL, 'Change Assigned', NULL, 114, NULL, NULL, '2018-09-21 03:44:56', '2018-09-21 03:44:56'),
(659, 4294967295, '2018-09-20 17:44:56', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-17 00:00:00', 0, NULL, 'Normal', 'mFNb50PhaZ', NULL, 'Add Task', NULL, 114, NULL, NULL, '2018-09-21 03:44:56', '2018-09-21 03:44:56'),
(660, 430, '2018-09-20 17:45:02', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, 1, '2018-09-17 00:00:00', 0, NULL, 'Normal', 'mFNb50PhaZ', NULL, 'Progress Update', NULL, 114, NULL, NULL, '2018-09-21 03:45:02', '2018-09-21 03:45:02'),
(661, 4294967295, '2018-09-20 17:48:16', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-17 00:00:00', 0, NULL, 'Normal', 'qFXwMYYfVM', NULL, 'Change Description', NULL, 114, NULL, NULL, '2018-09-21 03:48:16', '2018-09-21 03:48:16'),
(662, 4294967295, '2018-09-20 17:48:16', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-17 00:00:00', 0, NULL, 'Normal', 'qFXwMYYfVM', NULL, 'Change Assigned', NULL, 114, NULL, NULL, '2018-09-21 03:48:16', '2018-09-21 03:48:16'),
(663, 4294967295, '2018-09-20 17:48:18', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-17 00:00:00', 0, NULL, 'Normal', 'qFXwMYYfVM', NULL, 'Add Task', NULL, 114, NULL, NULL, '2018-09-21 03:48:18', '2018-09-21 03:48:18'),
(664, 4294967295, '2018-09-20 17:51:47', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-17 00:00:00', 0, NULL, 'Normal', '7yOCV2NbGf', NULL, 'Change Description', NULL, 114, NULL, NULL, '2018-09-21 03:51:47', '2018-09-21 03:51:47'),
(665, 4294967295, '2018-09-20 17:51:48', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-17 00:00:00', 0, NULL, 'Normal', '7yOCV2NbGf', NULL, 'Change Assigned', NULL, 114, NULL, NULL, '2018-09-21 03:51:48', '2018-09-21 03:51:48'),
(666, 4294967295, '2018-09-20 17:51:49', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-17 00:00:00', 0, NULL, 'Normal', '7yOCV2NbGf', NULL, 'Add Task', NULL, 114, NULL, NULL, '2018-09-21 03:51:49', '2018-09-21 03:51:49'),
(667, 4294967295, '2018-09-20 17:53:27', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-17 00:00:00', 0, NULL, 'Normal', 'UpRH5oL2rA', NULL, 'Change Description', NULL, 114, NULL, NULL, '2018-09-21 03:53:27', '2018-09-21 03:53:27'),
(668, 4294967295, '2018-09-20 17:53:29', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-17 00:00:00', 0, NULL, 'Normal', 'UpRH5oL2rA', NULL, 'Change Assigned', NULL, 114, NULL, NULL, '2018-09-21 03:53:29', '2018-09-21 03:53:29'),
(669, 4294967295, '2018-09-20 17:53:30', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-17 00:00:00', 0, NULL, 'Normal', 'UpRH5oL2rA', NULL, 'Add Task', NULL, 114, NULL, NULL, '2018-09-21 03:53:30', '2018-09-21 03:53:30'),
(670, 4294967295, '2018-09-21 11:44:40', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-17 00:00:00', 0, NULL, 'Normal', 'IvrbtgAlIH', NULL, 'Change Description', NULL, 114, NULL, NULL, '2018-09-21 21:44:40', '2018-09-21 21:44:40'),
(671, 4294967295, '2018-09-21 11:44:41', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-17 00:00:00', 0, NULL, 'Normal', 'IvrbtgAlIH', NULL, 'Change Assigned', NULL, 114, NULL, NULL, '2018-09-21 21:44:41', '2018-09-21 21:44:41'),
(672, 4294967295, '2018-09-21 11:44:41', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-17 00:00:00', 0, NULL, 'Normal', 'IvrbtgAlIH', NULL, 'Add Task', NULL, 114, NULL, NULL, '2018-09-21 21:44:41', '2018-09-21 21:44:41'),
(673, 4294967295, '2018-09-21 11:44:53', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-04 00:00:00', 0, NULL, 'Normal', 'E3e9pg9fDZ', NULL, 'Change Description', NULL, 110, NULL, NULL, '2018-09-21 21:44:53', '2018-09-21 21:44:53'),
(674, 4294967295, '2018-09-21 11:44:54', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-04 00:00:00', 0, NULL, 'Normal', 'E3e9pg9fDZ', NULL, 'Change Assigned', NULL, 110, NULL, NULL, '2018-09-21 21:44:54', '2018-09-21 21:44:54'),
(675, 4294967295, '2018-09-21 11:44:55', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-04 00:00:00', 0, NULL, 'Normal', 'E3e9pg9fDZ', NULL, 'Add Task', NULL, 110, NULL, NULL, '2018-09-21 21:44:55', '2018-09-21 21:44:55'),
(676, 4294967295, '2018-09-21 11:46:20', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-17 00:00:00', 0, NULL, 'Normal', 'gKRlLslYvl', NULL, 'Change Description', NULL, 114, NULL, NULL, '2018-09-21 21:46:20', '2018-09-21 21:46:20'),
(677, 4294967295, '2018-09-21 11:46:20', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-17 00:00:00', 0, NULL, 'Normal', 'gKRlLslYvl', NULL, 'Change Assigned', NULL, 114, NULL, NULL, '2018-09-21 21:46:20', '2018-09-21 21:46:20'),
(678, 4294967295, '2018-09-21 11:46:22', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-17 00:00:00', 0, NULL, 'Normal', 'gKRlLslYvl', NULL, 'Add Task', NULL, 114, NULL, NULL, '2018-09-21 21:46:22', '2018-09-21 21:46:22'),
(679, 439, '2018-09-21 11:47:01', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-17 00:00:00', 0, NULL, 'Normal', 'gKRlLslYvl', 'working', 'Delete Task', 318, 114, NULL, 'unassigned', '2018-09-21 21:47:01', '2018-09-21 21:47:01'),
(680, 437, '2018-09-21 11:47:06', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-17 00:00:00', 0, NULL, 'Normal', 'IvrbtgAlIH', 'working', 'Delete Task', 316, 114, NULL, 'unassigned', '2018-09-21 21:47:06', '2018-09-21 21:47:06');
INSERT INTO `taskhs` (`id`, `id_origin`, `mod_date`, `des`, `editor`, `email`, `text`, `duration`, `progress`, `start_date`, `parent`, `type`, `priority`, `socket`, `status`, `event`, `sortorder`, `project_id`, `workedHours`, `assigned`, `created_at`, `updated_at`) VALUES
(681, 4294967295, '2018-09-21 11:47:10', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-17 00:00:00', 0, NULL, 'Normal', 'dvO4ZPcJ53', NULL, 'Change Description', NULL, 114, NULL, NULL, '2018-09-21 21:47:10', '2018-09-21 21:47:10'),
(682, 4294967295, '2018-09-21 11:47:10', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-17 00:00:00', 0, NULL, 'Normal', 'dvO4ZPcJ53', NULL, 'Change Assigned', NULL, 114, NULL, NULL, '2018-09-21 21:47:10', '2018-09-21 21:47:10'),
(683, 4294967295, '2018-09-21 11:47:11', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-17 00:00:00', 0, NULL, 'Normal', 'dvO4ZPcJ53', NULL, 'Add Task', NULL, 114, NULL, NULL, '2018-09-21 21:47:11', '2018-09-21 21:47:11'),
(684, 397, '2018-09-21 18:48:29', NULL, 'Yeison', 'admin@admin.com', 'Byeeeeee', 17, 0.78, '2018-09-04 00:00:00', 0, NULL, 'Normal', 'UBEYzj5N7O', 'working', 'Delete Task', 277, 115, NULL, NULL, '2018-09-22 04:48:29', '2018-09-22 04:48:29'),
(685, 4294967295, '2018-09-21 21:15:49', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-21 00:00:00', 0, 'project', 'Normal', 'Az4bgXUnth', NULL, 'Add Task', NULL, 115, NULL, NULL, '2018-09-22 07:15:49', '2018-09-22 07:15:49'),
(686, 4294967295, '2018-09-22 12:23:27', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-21 00:00:00', 0, 'milestone', 'Normal', 'iHrvpRt4Du', NULL, 'Add Task', NULL, 115, NULL, NULL, '2018-09-22 22:23:27', '2018-09-22 22:23:27'),
(687, 457, '2018-09-22 12:23:36', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, 0, '2018-09-25 00:00:00', 0, 'milestone', 'Normal', 'iHrvpRt4Du', 'working', 'Drag Date', 335, 115, NULL, 'unassigned', '2018-09-22 22:23:36', '2018-09-22 22:23:36'),
(688, 457, '2018-09-22 12:23:38', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, 0, '2018-09-30 00:00:00', 0, 'milestone', 'Normal', 'iHrvpRt4Du', 'working', 'Drag Date', 335, 115, NULL, 'unassigned', '2018-09-22 22:23:38', '2018-09-22 22:23:38'),
(689, 456, '2018-09-22 12:24:47', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-21 00:00:00', 0, 'project', 'Normal', 'Az4bgXUnth', 'working', 'Change Description', 334, 115, NULL, NULL, '2018-09-22 22:24:47', '2018-09-22 22:24:47'),
(690, 456, '2018-09-22 12:24:47', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-21 00:00:00', 0, 'project', 'Normal', 'Az4bgXUnth', 'working', 'Change Assigned', 334, 115, NULL, NULL, '2018-09-22 22:24:47', '2018-09-22 22:24:47'),
(691, 4294967295, '2018-09-22 12:24:57', NULL, 'Yeison', 'admin@admin.com', 'Tarea Hija', 1, NULL, '2018-09-21 00:00:00', 456, 'task', 'Normal', 'CpbHUU8O1d', NULL, 'Change Name Task', NULL, 115, NULL, NULL, '2018-09-22 22:24:57', '2018-09-22 22:24:57'),
(692, 4294967295, '2018-09-22 12:24:59', NULL, 'Yeison', 'admin@admin.com', 'Tarea Hija', 1, NULL, '2018-09-21 00:00:00', 456, 'task', 'Normal', 'CpbHUU8O1d', NULL, 'Change Description', NULL, 115, NULL, NULL, '2018-09-22 22:24:59', '2018-09-22 22:24:59'),
(693, 4294967295, '2018-09-22 12:24:59', NULL, 'Yeison', 'admin@admin.com', 'Tarea Hija', 1, NULL, '2018-09-21 00:00:00', 456, 'task', 'Normal', 'CpbHUU8O1d', NULL, 'Change Assigned', NULL, 115, NULL, NULL, '2018-09-22 22:24:59', '2018-09-22 22:24:59'),
(694, 4294967295, '2018-09-22 12:25:00', NULL, 'Yeison', 'admin@admin.com', 'Tarea Hija', 1, NULL, '2018-09-21 00:00:00', 456, 'task', 'Normal', 'CpbHUU8O1d', NULL, 'Add Task', NULL, 115, NULL, NULL, '2018-09-22 22:25:00', '2018-09-22 22:25:00'),
(695, 458, '2018-09-22 12:25:01', NULL, 'Yeison', 'admin@admin.com', 'Tarea Hija', 1, NULL, '2018-09-22 00:00:00', 456, 'task', 'Normal', 'CpbHUU8O1d', NULL, 'Drag Date', NULL, 115, NULL, NULL, '2018-09-22 22:25:01', '2018-09-22 22:25:01'),
(696, 458, '2018-09-22 12:25:06', NULL, 'Yeison', 'admin@admin.com', 'Tarea Hija', 1, 0, '2018-09-21 00:00:00', 456, 'task', 'Normal', 'CpbHUU8O1d', 'working', 'Change Description', 336, 115, NULL, NULL, '2018-09-22 22:25:06', '2018-09-22 22:25:06'),
(697, 458, '2018-09-22 12:25:07', NULL, 'Yeison', 'admin@admin.com', 'Tarea Hija', 1, 0, '2018-09-21 00:00:00', 456, 'task', 'Normal', 'CpbHUU8O1d', 'working', 'Change Assigned', 336, 115, NULL, NULL, '2018-09-22 22:25:07', '2018-09-22 22:25:07'),
(698, 458, '2018-09-22 12:25:09', NULL, 'Yeison', 'admin@admin.com', 'Tarea Hija', 6, 0.2897959183673469, '2018-09-21 00:00:00', 456, 'task', 'Normal', 'CpbHUU8O1d', 'working', 'Progress Update', 336, 115, NULL, NULL, '2018-09-22 22:25:09', '2018-09-22 22:25:09'),
(699, 456, '2018-09-22 12:25:16', NULL, 'Yeison', 'admin@admin.com', 'Tarea Proyecto', 6, 0, '2018-09-21 00:00:00', 0, 'project', 'Normal', 'Az4bgXUnth', 'working', 'Change Name Task', 334, 115, NULL, NULL, '2018-09-22 22:25:16', '2018-09-22 22:25:16'),
(700, 456, '2018-09-22 12:25:18', NULL, 'Yeison', 'admin@admin.com', 'Tarea Proyecto', 6, 0, '2018-09-21 00:00:00', 0, 'project', 'Normal', 'Az4bgXUnth', 'working', 'Change Description', 334, 115, NULL, NULL, '2018-09-22 22:25:18', '2018-09-22 22:25:18'),
(701, 456, '2018-09-22 12:25:18', NULL, 'Yeison', 'admin@admin.com', 'Tarea Proyecto', 6, 0, '2018-09-21 00:00:00', 0, 'project', 'Normal', 'Az4bgXUnth', 'working', 'Change Assigned', 334, 115, NULL, NULL, '2018-09-22 22:25:18', '2018-09-22 22:25:18'),
(702, 458, '2018-09-22 15:10:36', NULL, 'Yeison', 'admin@admin.com', 'Tarea Hija', 6, 0.37142857142857144, '2018-09-21 00:00:00', 456, 'task', 'Normal', 'CpbHUU8O1d', 'working', 'Progress Update', 336, 115, NULL, NULL, '2018-09-23 01:10:36', '2018-09-23 01:10:36'),
(703, 458, '2018-09-22 15:10:37', NULL, 'Yeison', 'admin@admin.com', 'Tarea Hija', 6, 0.4897959183673469, '2018-09-21 00:00:00', 456, 'task', 'Normal', 'CpbHUU8O1d', 'working', 'Progress Update', 336, 115, NULL, NULL, '2018-09-23 01:10:37', '2018-09-23 01:10:37'),
(704, 4294967295, '2018-09-22 15:11:04', 'asdasd', 'Yeison', 'admin@admin.com', 'Hija 2', 1, NULL, '2018-09-21 00:00:00', 456, 'task', 'Normal', 'nWwqF3CJWp', NULL, 'Change Name Task', NULL, 115, NULL, 'admin@admin.com', '2018-09-23 01:11:04', '2018-09-23 01:11:04'),
(705, 4294967295, '2018-09-22 15:11:05', 'asdasd', 'Yeison', 'admin@admin.com', 'Hija 2', 1, NULL, '2018-09-21 00:00:00', 456, 'task', 'Normal', 'nWwqF3CJWp', NULL, 'Change Description', NULL, 115, NULL, 'admin@admin.com', '2018-09-23 01:11:05', '2018-09-23 01:11:05'),
(706, 4294967295, '2018-09-22 15:11:06', 'asdasd', 'Yeison', 'admin@admin.com', 'Hija 2', 1, NULL, '2018-09-21 00:00:00', 456, 'task', 'Normal', 'nWwqF3CJWp', NULL, 'Change Assigned', NULL, 115, NULL, 'admin@admin.com', '2018-09-23 01:11:06', '2018-09-23 01:11:06'),
(707, 4294967295, '2018-09-22 15:11:06', 'asdasd', 'Yeison', 'admin@admin.com', 'Hija 2', 1, NULL, '2018-09-21 00:00:00', 456, 'task', 'Normal', 'nWwqF3CJWp', NULL, 'Add Task', NULL, 115, NULL, 'admin@admin.com', '2018-09-23 01:11:06', '2018-09-23 01:11:06'),
(708, 459, '2018-09-22 15:11:15', 'asdasd', 'Yeison', 'admin@admin.com', 'Hija 2', 9, 0, '2018-09-21 00:00:00', 456, 'task', 'Normal', 'nWwqF3CJWp', 'working', 'Task Resize', 337, 115, NULL, 'admin@admin.com', '2018-09-23 01:11:15', '2018-09-23 01:11:15'),
(709, 458, '2018-09-22 15:11:20', NULL, 'Yeison', 'admin@admin.com', 'Tarea Hija', 6, 1, '2018-09-21 00:00:00', 456, 'task', 'Normal', 'CpbHUU8O1d', 'working', 'Progress Update', 336, 115, NULL, NULL, '2018-09-23 01:11:20', '2018-09-23 01:11:20'),
(710, 457, '2018-09-22 15:26:03', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, 0, '2018-10-05 00:00:00', 0, 'milestone', 'Normal', 'iHrvpRt4Du', 'working', 'Drag Date', 335, 115, NULL, 'unassigned', '2018-09-23 01:26:03', '2018-09-23 01:26:03'),
(711, 459, '2018-09-22 15:26:12', 'asdasd', 'Yeison', 'admin@admin.com', 'Hija 2', 9, 0, '2018-09-25 00:00:00', 456, 'task', 'Normal', 'nWwqF3CJWp', 'working', 'Drag Date', 337, 115, NULL, 'admin@admin.com', '2018-09-23 01:26:12', '2018-09-23 01:26:12'),
(712, 4294967295, '2018-09-25 13:58:21', 'Its comingggggggggggggg', 'Yeison', 'admin@admin.com', 'From yesterdayyy', 1, NULL, '2018-07-16 00:00:00', 0, 'task', 'Normal', 'BHlyyl0IRW', NULL, 'Change Name Task', NULL, 8, NULL, NULL, '2018-09-25 23:58:21', '2018-09-25 23:58:21'),
(713, 4294967295, '2018-09-25 13:58:23', 'Its comingggggggggggggg', 'Yeison', 'admin@admin.com', 'From yesterdayyy', 1, NULL, '2018-07-16 00:00:00', 0, 'task', 'Normal', 'BHlyyl0IRW', NULL, 'Change Description', NULL, 8, NULL, NULL, '2018-09-25 23:58:23', '2018-09-25 23:58:23'),
(714, 4294967295, '2018-09-25 13:58:23', 'Its comingggggggggggggg', 'Yeison', 'admin@admin.com', 'From yesterdayyy', 1, NULL, '2018-07-16 00:00:00', 0, 'task', 'Normal', 'BHlyyl0IRW', NULL, 'Change Assigned', NULL, 8, NULL, NULL, '2018-09-25 23:58:23', '2018-09-25 23:58:23'),
(715, 4294967295, '2018-09-25 13:58:23', 'Its comingggggggggggggg', 'Yeison', 'admin@admin.com', 'From yesterdayyy', 1, NULL, '2018-07-16 00:00:00', 0, 'task', 'Normal', 'BHlyyl0IRW', NULL, 'Add Task', NULL, 8, NULL, NULL, '2018-09-25 23:58:23', '2018-09-25 23:58:23'),
(716, 4294967295, '2018-09-25 13:58:30', NULL, 'Yeison', 'admin@admin.com', 'asdasd', 1, NULL, '2018-07-16 00:00:00', 460, 'task', 'Normal', 'BHlyyl0IRW', NULL, 'Change Name Task', NULL, 8, NULL, NULL, '2018-09-25 23:58:30', '2018-09-25 23:58:30'),
(717, 4294967295, '2018-09-25 13:58:31', NULL, 'Yeison', 'admin@admin.com', 'asdasd', 1, NULL, '2018-07-16 00:00:00', 460, 'task', 'Normal', 'BHlyyl0IRW', NULL, 'Change Description', NULL, 8, NULL, NULL, '2018-09-25 23:58:31', '2018-09-25 23:58:31'),
(718, 4294967295, '2018-09-25 13:58:31', NULL, 'Yeison', 'admin@admin.com', 'asdasd', 1, NULL, '2018-07-16 00:00:00', 460, 'task', 'Normal', 'BHlyyl0IRW', NULL, 'Change Assigned', NULL, 8, NULL, NULL, '2018-09-25 23:58:31', '2018-09-25 23:58:31'),
(719, 4294967295, '2018-09-25 13:58:32', NULL, 'Yeison', 'admin@admin.com', 'asdasd', 1, NULL, '2018-07-16 00:00:00', 460, 'task', 'Normal', 'BHlyyl0IRW', NULL, 'Add Task', NULL, 8, NULL, NULL, '2018-09-25 23:58:32', '2018-09-25 23:58:32'),
(720, 4294967295, '2018-09-25 13:58:34', 'asdasdasd', 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-07-16 00:00:00', 0, 'task', 'Normal', 'BHlyyl0IRW', NULL, 'Change Description', NULL, 8, NULL, NULL, '2018-09-25 23:58:34', '2018-09-25 23:58:34'),
(721, 4294967295, '2018-09-25 13:58:34', 'asdasdasd', 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-07-16 00:00:00', 0, 'task', 'Normal', 'BHlyyl0IRW', NULL, 'Change Assigned', NULL, 8, NULL, NULL, '2018-09-25 23:58:34', '2018-09-25 23:58:34'),
(722, 4294967295, '2018-09-25 13:58:35', 'asdasdasd', 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-07-16 00:00:00', 0, 'task', 'Normal', 'BHlyyl0IRW', NULL, 'Add Task', NULL, 8, NULL, NULL, '2018-09-25 23:58:35', '2018-09-25 23:58:35'),
(723, 462, '2018-09-25 14:35:24', 'asdasdasd', 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-07-17 00:00:00', 0, 'task', 'Normal', 'BHlyyl0IRW', 'working', 'Drag Date', 340, 8, NULL, 'unassigned', '2018-09-26 00:35:24', '2018-09-26 00:35:24'),
(724, 461, '2018-09-25 14:35:25', NULL, 'Yeison', 'admin@admin.com', 'asdasd', 1, 0, '2018-07-17 00:00:00', 460, 'task', 'Normal', 'BHlyyl0IRW', 'working', 'Drag Date', 339, 8, NULL, 'unassigned', '2018-09-26 00:35:25', '2018-09-26 00:35:25'),
(725, 460, '2018-09-25 14:35:26', 'Its comingggggggggggggg', 'Yeison', 'admin@admin.com', 'From yesterdayyy', 10, 0, '2018-07-17 00:00:00', 0, 'task', 'Normal', 'BHlyyl0IRW', 'working', 'Drag Date', 338, 8, NULL, NULL, '2018-09-26 00:35:26', '2018-09-26 00:35:26'),
(726, 461, '2018-09-25 14:35:28', NULL, 'Yeison', 'admin@admin.com', 'asdasd', 1, 0, '2018-07-17 00:00:00', 460, 'task', 'Normal', 'BHlyyl0IRW', 'working', 'Drag Date', 339, 8, NULL, 'unassigned', '2018-09-26 00:35:28', '2018-09-26 00:35:28'),
(727, 460, '2018-09-25 14:35:32', 'Its comingggggggggggggg', 'Yeison', 'admin@admin.com', 'From yesterdayyy', 10, 0, '2018-07-17 00:00:00', 0, 'task', 'Normal', 'BHlyyl0IRW', 'working', 'Drag Date', 338, 8, NULL, NULL, '2018-09-26 00:35:32', '2018-09-26 00:35:32'),
(728, 460, '2018-09-25 15:00:14', 'Its comingggggggggggggg', 'Yeison', 'admin@admin.com', 'From yesterdayyy', 10, 0.4051948051948052, '2018-07-17 00:00:00', 0, 'task', 'Normal', 'BHlyyl0IRW', 'working', 'Progress Update', 338, 8, NULL, NULL, '2018-09-26 01:00:14', '2018-09-26 01:00:14'),
(729, 460, '2018-09-25 15:00:17', 'Its comingggggggggggggg', 'Yeison', 'admin@admin.com', 'From yesterdayyy', 10, 1, '2018-07-17 00:00:00', 0, 'task', 'Normal', 'BHlyyl0IRW', 'working', 'Progress Update', 338, 8, NULL, NULL, '2018-09-26 01:00:17', '2018-09-26 01:00:17'),
(730, 460, '2018-09-25 15:15:36', 'Its comingggggggggggggg', 'Yeison', 'admin@admin.com', 'From yesterdayyy', 10, 1, '2018-07-21 00:00:00', 0, 'task', 'Normal', 'BHlyyl0IRW', 'working', 'Drag Date', 338, 8, NULL, 'admin@admin.com', '2018-09-26 01:15:36', '2018-09-26 01:15:36'),
(731, 460, '2018-09-25 15:16:08', 'Its comingggggggggggggg', 'Yeison', 'admin@admin.com', 'From yesterdayyy', 10, 1, '2018-07-19 00:00:00', 0, 'task', 'Normal', 'BHlyyl0IRW', 'working', 'Drag Date', 338, 8, NULL, 'admin@admin.com', '2018-09-26 01:16:08', '2018-09-26 01:16:08'),
(732, 460, '2018-09-25 15:21:00', 'Its comingggggggggggggg', 'Yeison', 'admin@admin.com', 'From yesterdayyy', 10, 1, '2018-07-21 00:00:00', 0, 'task', 'Normal', 'BHlyyl0IRW', 'working', 'Delete Task', 338, 8, NULL, 'admin@admin.com', '2018-09-26 01:21:00', '2018-09-26 01:21:00'),
(733, 462, '2018-09-25 15:21:08', 'asdasdasd', 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-07-17 00:00:00', 0, 'task', 'Normal', 'BHlyyl0IRW', 'working', 'Delete Task', 340, 8, NULL, 'unassigned', '2018-09-26 01:21:08', '2018-09-26 01:21:08'),
(734, 4294967295, '2018-09-25 15:39:02', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-07-18 00:00:00', 0, 'task', 'Normal', 'MgkiugH5Tb', NULL, 'Change Description', NULL, 8, NULL, NULL, '2018-09-26 01:39:02', '2018-09-26 01:39:02'),
(735, 4294967295, '2018-09-25 15:39:03', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-07-18 00:00:00', 0, 'task', 'Normal', 'MgkiugH5Tb', NULL, 'Change Assigned', NULL, 8, NULL, NULL, '2018-09-26 01:39:03', '2018-09-26 01:39:03'),
(736, 4294967295, '2018-09-25 15:39:04', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-07-18 00:00:00', 0, 'task', 'Normal', 'MgkiugH5Tb', NULL, 'Add Task', NULL, 8, NULL, NULL, '2018-09-26 01:39:04', '2018-09-26 01:39:04'),
(737, 4294967295, '2018-09-25 15:39:07', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-07-18 00:00:00', 0, 'task', 'Normal', 'MgkiugH5Tb', NULL, 'Change Description', NULL, 8, NULL, NULL, '2018-09-26 01:39:07', '2018-09-26 01:39:07'),
(738, 4294967295, '2018-09-25 15:39:07', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-07-18 00:00:00', 0, 'task', 'Normal', 'MgkiugH5Tb', NULL, 'Change Assigned', NULL, 8, NULL, NULL, '2018-09-26 01:39:07', '2018-09-26 01:39:07'),
(739, 4294967295, '2018-09-25 15:39:08', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-07-18 00:00:00', 0, 'task', 'Normal', 'MgkiugH5Tb', NULL, 'Add Task', NULL, 8, NULL, NULL, '2018-09-26 01:39:08', '2018-09-26 01:39:08'),
(740, 4294967295, '2018-09-25 15:39:10', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-07-18 00:00:00', 0, 'task', 'Normal', 'MgkiugH5Tb', NULL, 'Change Description', NULL, 8, NULL, NULL, '2018-09-26 01:39:10', '2018-09-26 01:39:10'),
(741, 4294967295, '2018-09-25 15:39:11', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-07-18 00:00:00', 0, 'task', 'Normal', 'MgkiugH5Tb', NULL, 'Change Assigned', NULL, 8, NULL, NULL, '2018-09-26 01:39:11', '2018-09-26 01:39:11'),
(742, 4294967295, '2018-09-25 15:39:11', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-07-18 00:00:00', 0, 'task', 'Normal', 'MgkiugH5Tb', NULL, 'Add Task', NULL, 8, NULL, NULL, '2018-09-26 01:39:11', '2018-09-26 01:39:11'),
(743, 4294967295, '2018-09-25 15:39:12', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-07-18 00:00:00', 0, 'task', 'Normal', 'MgkiugH5Tb', NULL, 'Change Description', NULL, 8, NULL, NULL, '2018-09-26 01:39:12', '2018-09-26 01:39:12'),
(744, 4294967295, '2018-09-25 15:39:12', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-07-18 00:00:00', 0, 'task', 'Normal', 'MgkiugH5Tb', NULL, 'Change Assigned', NULL, 8, NULL, NULL, '2018-09-26 01:39:12', '2018-09-26 01:39:12'),
(745, 4294967295, '2018-09-25 15:39:13', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-07-18 00:00:00', 0, 'task', 'Normal', 'MgkiugH5Tb', NULL, 'Add Task', NULL, 8, NULL, NULL, '2018-09-26 01:39:13', '2018-09-26 01:39:13'),
(746, 4294967295, '2018-09-25 15:39:49', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'agOG7D5bUV', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 01:39:49', '2018-09-26 01:39:49'),
(747, 4294967295, '2018-09-25 15:39:50', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'agOG7D5bUV', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 01:39:50', '2018-09-26 01:39:50'),
(748, 4294967295, '2018-09-25 15:39:50', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'agOG7D5bUV', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-09-26 01:39:50', '2018-09-26 01:39:50'),
(749, 4294967295, '2018-09-25 15:39:52', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'agOG7D5bUV', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 01:39:52', '2018-09-26 01:39:52'),
(750, 4294967295, '2018-09-25 15:39:52', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'agOG7D5bUV', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 01:39:52', '2018-09-26 01:39:52'),
(751, 4294967295, '2018-09-25 15:39:53', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'agOG7D5bUV', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-09-26 01:39:53', '2018-09-26 01:39:53'),
(752, 484, '2018-09-25 15:49:22', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, 0.5934959349593496, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'agOG7D5bUV', 'working', 'Progress Update', 359, 116, NULL, 'unassigned', '2018-09-26 01:49:22', '2018-09-26 01:49:22'),
(753, 4294967295, '2018-09-25 15:58:23', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '2Dok77GGLf', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 01:58:23', '2018-09-26 01:58:23'),
(754, 4294967295, '2018-09-25 15:58:23', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '2Dok77GGLf', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 01:58:23', '2018-09-26 01:58:23'),
(755, 4294967295, '2018-09-25 15:58:24', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '2Dok77GGLf', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-09-26 01:58:24', '2018-09-26 01:58:24'),
(756, 4294967295, '2018-09-25 15:58:50', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '2Dok77GGLf', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 01:58:50', '2018-09-26 01:58:50'),
(757, 4294967295, '2018-09-25 15:58:50', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '2Dok77GGLf', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-09-26 01:58:50', '2018-09-26 01:58:50'),
(758, 4294967295, '2018-09-25 15:58:50', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '2Dok77GGLf', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 01:58:50', '2018-09-26 01:58:50'),
(759, 4294967295, '2018-09-25 16:03:28', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '6XOfFpP706', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 02:03:28', '2018-09-26 02:03:28'),
(760, 4294967295, '2018-09-25 16:03:28', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '6XOfFpP706', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 02:03:28', '2018-09-26 02:03:28'),
(761, 4294967295, '2018-09-25 16:03:30', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '6XOfFpP706', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-09-26 02:03:30', '2018-09-26 02:03:30'),
(762, 4294967295, '2018-09-25 16:05:01', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '6XOfFpP706', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 02:05:01', '2018-09-26 02:05:01'),
(763, 4294967295, '2018-09-25 16:05:01', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '6XOfFpP706', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-09-26 02:05:01', '2018-09-26 02:05:01'),
(764, 4294967295, '2018-09-25 16:05:01', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '6XOfFpP706', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 02:05:01', '2018-09-26 02:05:01'),
(765, 4294967295, '2018-09-25 16:08:44', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'UPNrtxcXqn', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 02:08:44', '2018-09-26 02:08:44'),
(766, 4294967295, '2018-09-25 16:08:45', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'UPNrtxcXqn', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 02:08:45', '2018-09-26 02:08:45'),
(767, 4294967295, '2018-09-25 16:08:46', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'UPNrtxcXqn', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-09-26 02:08:46', '2018-09-26 02:08:46'),
(768, 4294967295, '2018-09-25 16:09:51', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'nx04RRh8fN', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 02:09:51', '2018-09-26 02:09:51'),
(769, 4294967295, '2018-09-25 16:09:52', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'nx04RRh8fN', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 02:09:52', '2018-09-26 02:09:52'),
(770, 4294967295, '2018-09-25 16:09:53', NULL, 'Yeison', 'admin@admin.com', 'New task', 2, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'nx04RRh8fN', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-09-26 02:09:53', '2018-09-26 02:09:53'),
(771, 4294967295, '2018-09-25 16:10:02', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'nx04RRh8fN', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 02:10:02', '2018-09-26 02:10:02'),
(772, 4294967295, '2018-09-25 16:10:02', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'nx04RRh8fN', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 02:10:02', '2018-09-26 02:10:02'),
(773, 4294967295, '2018-09-25 16:10:03', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'nx04RRh8fN', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-09-26 02:10:03', '2018-09-26 02:10:03'),
(774, 4294967295, '2018-09-25 16:10:05', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'nx04RRh8fN', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 02:10:05', '2018-09-26 02:10:05'),
(775, 4294967295, '2018-09-25 16:10:05', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'nx04RRh8fN', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 02:10:05', '2018-09-26 02:10:05'),
(776, 4294967295, '2018-09-25 16:10:06', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'nx04RRh8fN', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-09-26 02:10:06', '2018-09-26 02:10:06'),
(777, 4294967295, '2018-09-25 16:13:39', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'PsFXkI9yHM', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 02:13:39', '2018-09-26 02:13:39'),
(778, 4294967295, '2018-09-25 16:13:40', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'PsFXkI9yHM', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 02:13:40', '2018-09-26 02:13:40'),
(779, 4294967295, '2018-09-25 16:13:40', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'PsFXkI9yHM', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-09-26 02:13:40', '2018-09-26 02:13:40'),
(780, 4294967295, '2018-09-25 16:13:43', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'PsFXkI9yHM', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 02:13:43', '2018-09-26 02:13:43'),
(781, 4294967295, '2018-09-25 16:13:43', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'PsFXkI9yHM', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 02:13:43', '2018-09-26 02:13:43'),
(782, 4294967295, '2018-09-25 16:13:44', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'PsFXkI9yHM', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-09-26 02:13:44', '2018-09-26 02:13:44'),
(783, 4294967295, '2018-09-25 16:14:03', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'PsFXkI9yHM', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 02:14:03', '2018-09-26 02:14:03'),
(784, 4294967295, '2018-09-25 16:14:04', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'PsFXkI9yHM', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 02:14:04', '2018-09-26 02:14:04'),
(785, 4294967295, '2018-09-25 16:14:05', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'PsFXkI9yHM', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-09-26 02:14:05', '2018-09-26 02:14:05'),
(786, 496, '2018-09-25 16:26:28', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'PsFXkI9yHM', 'working', 'Delete Task', 371, 116, NULL, 'unassigned', '2018-09-26 02:26:28', '2018-09-26 02:26:28'),
(787, 495, '2018-09-25 16:26:34', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'PsFXkI9yHM', 'working', 'Delete Task', 370, 116, NULL, 'unassigned', '2018-09-26 02:26:34', '2018-09-26 02:26:34'),
(788, 494, '2018-09-25 16:26:38', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'PsFXkI9yHM', 'working', 'Delete Task', 369, 116, NULL, 'unassigned', '2018-09-26 02:26:38', '2018-09-26 02:26:38'),
(789, 493, '2018-09-25 16:26:42', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'nx04RRh8fN', 'working', 'Delete Task', 368, 116, NULL, 'unassigned', '2018-09-26 02:26:42', '2018-09-26 02:26:42'),
(790, 492, '2018-09-25 16:26:48', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'nx04RRh8fN', 'working', 'Delete Task', 367, 116, NULL, 'unassigned', '2018-09-26 02:26:48', '2018-09-26 02:26:48'),
(791, 491, '2018-09-25 16:26:55', NULL, 'Yeison', 'admin@admin.com', 'New task', 2, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'nx04RRh8fN', 'working', 'Delete Task', 366, 116, NULL, 'unassigned', '2018-09-26 02:26:55', '2018-09-26 02:26:55'),
(792, 490, '2018-09-25 16:26:59', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'UPNrtxcXqn', 'working', 'Delete Task', 365, 116, NULL, 'unassigned', '2018-09-26 02:26:59', '2018-09-26 02:26:59'),
(793, 489, '2018-09-25 16:27:05', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', '6XOfFpP706', 'working', 'Delete Task', 364, 116, NULL, 'unassigned', '2018-09-26 02:27:05', '2018-09-26 02:27:05'),
(794, 488, '2018-09-25 16:27:13', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', '6XOfFpP706', 'working', 'Delete Task', 363, 116, NULL, 'unassigned', '2018-09-26 02:27:13', '2018-09-26 02:27:13'),
(795, 487, '2018-09-25 16:27:18', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', '2Dok77GGLf', 'working', 'Delete Task', 362, 116, NULL, 'unassigned', '2018-09-26 02:27:18', '2018-09-26 02:27:18'),
(796, 486, '2018-09-25 16:27:23', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', '2Dok77GGLf', 'working', 'Delete Task', 361, 116, NULL, 'unassigned', '2018-09-26 02:27:23', '2018-09-26 02:27:23'),
(797, 485, '2018-09-25 16:27:31', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'agOG7D5bUV', 'working', 'Delete Task', 360, 116, NULL, 'unassigned', '2018-09-26 02:27:31', '2018-09-26 02:27:31'),
(798, 4294967295, '2018-09-25 16:27:46', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'UXQSkUSV7I', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 02:27:46', '2018-09-26 02:27:46'),
(799, 4294967295, '2018-09-25 16:27:47', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'UXQSkUSV7I', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 02:27:47', '2018-09-26 02:27:47'),
(800, 4294967295, '2018-09-25 16:27:47', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'UXQSkUSV7I', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-09-26 02:27:47', '2018-09-26 02:27:47'),
(801, 497, '2018-09-25 16:28:26', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-24 00:00:00', 0, 'task', 'Normal', 'UXQSkUSV7I', NULL, 'Drag Date', NULL, 116, NULL, NULL, '2018-09-26 02:28:26', '2018-09-26 02:28:26'),
(802, 4294967295, '2018-09-25 16:31:10', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'UXQSkUSV7I', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 02:31:10', '2018-09-26 02:31:10'),
(803, 4294967295, '2018-09-25 16:31:11', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'UXQSkUSV7I', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 02:31:11', '2018-09-26 02:31:11'),
(804, 4294967295, '2018-09-25 16:31:11', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'UXQSkUSV7I', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-09-26 02:31:11', '2018-09-26 02:31:11'),
(805, 4294967295, '2018-09-25 16:31:23', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-24 00:00:00', 0, 'task', 'Normal', 'UXQSkUSV7I', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 02:31:23', '2018-09-26 02:31:23'),
(806, 4294967295, '2018-09-25 16:31:23', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-24 00:00:00', 0, 'task', 'Normal', 'UXQSkUSV7I', NULL, 'Change Start Date', NULL, 116, NULL, NULL, '2018-09-26 02:31:23', '2018-09-26 02:31:23'),
(807, 4294967295, '2018-09-25 16:31:23', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-24 00:00:00', 0, 'task', 'Normal', 'UXQSkUSV7I', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 02:31:23', '2018-09-26 02:31:23'),
(808, 4294967295, '2018-09-25 16:31:24', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-24 00:00:00', 0, 'task', 'Normal', 'UXQSkUSV7I', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-09-26 02:31:24', '2018-09-26 02:31:24'),
(809, 4294967295, '2018-09-25 16:39:06', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'UXQSkUSV7I', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 02:39:06', '2018-09-26 02:39:06'),
(810, 4294967295, '2018-09-25 16:39:07', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'UXQSkUSV7I', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 02:39:07', '2018-09-26 02:39:07'),
(811, 4294967295, '2018-09-25 16:39:07', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'UXQSkUSV7I', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-09-26 02:39:07', '2018-09-26 02:39:07'),
(812, 4294967295, '2018-09-25 16:39:33', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'UXQSkUSV7I', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 02:39:33', '2018-09-26 02:39:33'),
(813, 4294967295, '2018-09-25 16:39:33', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'UXQSkUSV7I', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 02:39:33', '2018-09-26 02:39:33'),
(814, 4294967295, '2018-09-25 16:39:34', NULL, 'Yeison', 'admin@admin.com', 'New task', 2, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'UXQSkUSV7I', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-09-26 02:39:34', '2018-09-26 02:39:34'),
(815, 4294967295, '2018-09-25 16:40:31', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-24 00:00:00', 0, 'task', 'Normal', 'pVTuIy6DcW', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 02:40:31', '2018-09-26 02:40:31'),
(816, 4294967295, '2018-09-25 16:40:32', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-24 00:00:00', 0, 'task', 'Normal', 'pVTuIy6DcW', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 02:40:32', '2018-09-26 02:40:32'),
(817, 4294967295, '2018-09-25 16:40:33', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-24 00:00:00', 0, 'task', 'Normal', 'pVTuIy6DcW', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-09-26 02:40:33', '2018-09-26 02:40:33'),
(818, 502, '2018-09-25 16:41:01', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-24 00:00:00', 0, 'task', 'Normal', 'pVTuIy6DcW', 'working', 'Delete Task', 365, 116, NULL, 'unassigned', '2018-09-26 02:41:01', '2018-09-26 02:41:01'),
(819, 501, '2018-09-25 16:41:06', NULL, 'Yeison', 'admin@admin.com', 'New task', 2, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'UXQSkUSV7I', 'working', 'Delete Task', 364, 116, NULL, 'unassigned', '2018-09-26 02:41:06', '2018-09-26 02:41:06'),
(820, 500, '2018-09-25 16:41:14', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'UXQSkUSV7I', 'working', 'Delete Task', 363, 116, NULL, 'unassigned', '2018-09-26 02:41:14', '2018-09-26 02:41:14'),
(821, 499, '2018-09-25 16:41:21', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-24 00:00:00', 0, 'task', 'Normal', 'UXQSkUSV7I', 'working', 'Delete Task', 362, 116, NULL, 'unassigned', '2018-09-26 02:41:21', '2018-09-26 02:41:21'),
(822, 498, '2018-09-25 16:41:28', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'UXQSkUSV7I', 'working', 'Delete Task', 361, 116, NULL, 'unassigned', '2018-09-26 02:41:28', '2018-09-26 02:41:28'),
(823, 497, '2018-09-25 16:41:36', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-24 00:00:00', 0, 'task', 'Normal', 'UXQSkUSV7I', 'working', 'Delete Task', 360, 116, NULL, NULL, '2018-09-26 02:41:36', '2018-09-26 02:41:36'),
(824, 4294967295, '2018-09-25 16:41:44', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'yVIuifmRNb', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 02:41:44', '2018-09-26 02:41:44'),
(825, 4294967295, '2018-09-25 16:41:44', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'yVIuifmRNb', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 02:41:44', '2018-09-26 02:41:44'),
(826, 4294967295, '2018-09-25 16:41:45', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'yVIuifmRNb', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-09-26 02:41:45', '2018-09-26 02:41:45'),
(827, 503, '2018-09-25 16:44:10', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'yVIuifmRNb', NULL, 'Delete Task', NULL, 116, NULL, NULL, '2018-09-26 02:44:10', '2018-09-26 02:44:10'),
(828, 484, '2018-09-25 16:44:13', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0.59, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'agOG7D5bUV', 'working', 'Delete Task', 359, 116, NULL, 'unassigned', '2018-09-26 02:44:13', '2018-09-26 02:44:13'),
(829, 4294967295, '2018-09-25 16:44:25', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'CqK4QRpuP4', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 02:44:25', '2018-09-26 02:44:25'),
(830, 4294967295, '2018-09-25 16:44:26', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'CqK4QRpuP4', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 02:44:26', '2018-09-26 02:44:26'),
(831, 4294967295, '2018-09-25 16:44:27', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'CqK4QRpuP4', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-09-26 02:44:27', '2018-09-26 02:44:27'),
(832, 504, '2018-09-25 16:47:02', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'CqK4QRpuP4', 'working', 'Delete Task', 359, 116, NULL, 'unassigned', '2018-09-26 02:47:02', '2018-09-26 02:47:02'),
(833, 4294967295, '2018-09-25 16:47:11', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'juvpRsilVV', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 02:47:11', '2018-09-26 02:47:11'),
(834, 4294967295, '2018-09-25 16:47:11', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'juvpRsilVV', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 02:47:11', '2018-09-26 02:47:11'),
(835, 4294967295, '2018-09-25 16:47:12', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'juvpRsilVV', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-09-26 02:47:12', '2018-09-26 02:47:12'),
(836, 505, '2018-09-25 16:48:59', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'juvpRsilVV', 'working', 'Delete Task', 359, 116, NULL, 'unassigned', '2018-09-26 02:48:59', '2018-09-26 02:48:59'),
(837, 4294967295, '2018-09-25 16:49:11', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'D5IAfvwV9d', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 02:49:11', '2018-09-26 02:49:11'),
(838, 4294967295, '2018-09-25 16:49:11', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'D5IAfvwV9d', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 02:49:11', '2018-09-26 02:49:11'),
(839, 4294967295, '2018-09-25 16:49:12', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'D5IAfvwV9d', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-09-26 02:49:12', '2018-09-26 02:49:12'),
(840, 4294967295, '2018-09-25 16:54:19', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'pM3mFq50uI', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 02:54:19', '2018-09-26 02:54:19'),
(841, 4294967295, '2018-09-25 16:54:19', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'pM3mFq50uI', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 02:54:19', '2018-09-26 02:54:19'),
(842, 4294967295, '2018-09-25 16:54:21', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'pM3mFq50uI', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-09-26 02:54:21', '2018-09-26 02:54:21'),
(843, 507, '2018-09-25 16:54:28', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'pM3mFq50uI', NULL, 'Delete Task', NULL, 116, NULL, NULL, '2018-09-26 02:54:28', '2018-09-26 02:54:28'),
(844, 506, '2018-09-25 16:54:31', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'D5IAfvwV9d', 'working', 'Delete Task', 359, 116, NULL, 'unassigned', '2018-09-26 02:54:31', '2018-09-26 02:54:31'),
(845, 4294967295, '2018-09-25 16:54:41', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '375hMSDSWt', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 02:54:41', '2018-09-26 02:54:41'),
(846, 4294967295, '2018-09-25 16:54:41', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '375hMSDSWt', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 02:54:41', '2018-09-26 02:54:41'),
(847, 4294967295, '2018-09-25 16:54:42', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '375hMSDSWt', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-09-26 02:54:42', '2018-09-26 02:54:42'),
(848, 508, '2018-09-25 16:58:51', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '375hMSDSWt', NULL, 'Delete Task', NULL, 116, NULL, NULL, '2018-09-26 02:58:51', '2018-09-26 02:58:51'),
(849, 4294967295, '2018-09-25 16:59:00', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'K5NO4UK7NC', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 02:59:00', '2018-09-26 02:59:00'),
(850, 4294967295, '2018-09-25 16:59:00', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'K5NO4UK7NC', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 02:59:00', '2018-09-26 02:59:00'),
(851, 4294967295, '2018-09-25 16:59:01', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'K5NO4UK7NC', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-09-26 02:59:01', '2018-09-26 02:59:01'),
(852, 509, '2018-09-25 17:01:05', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'K5NO4UK7NC', NULL, 'Delete Task', NULL, 116, NULL, NULL, '2018-09-26 03:01:05', '2018-09-26 03:01:05'),
(853, 4294967295, '2018-09-25 17:01:14', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-24 00:00:00', 0, 'task', 'Normal', 'rt7Clk86de', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 03:01:14', '2018-09-26 03:01:14'),
(854, 4294967295, '2018-09-25 17:01:14', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-24 00:00:00', 0, 'task', 'Normal', 'rt7Clk86de', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 03:01:14', '2018-09-26 03:01:14'),
(855, 4294967295, '2018-09-25 17:01:15', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-24 00:00:00', 0, 'task', 'Normal', 'rt7Clk86de', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-09-26 03:01:15', '2018-09-26 03:01:15'),
(856, 510, '2018-09-25 17:03:54', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-24 00:00:00', 0, 'task', 'Normal', 'rt7Clk86de', 'working', 'Delete Task', 359, 116, NULL, 'unassigned', '2018-09-26 03:03:54', '2018-09-26 03:03:54'),
(857, 4294967295, '2018-09-25 17:33:36', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '9nHXho4Nxd', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 03:33:36', '2018-09-26 03:33:36'),
(858, 4294967295, '2018-09-25 17:33:36', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '9nHXho4Nxd', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 03:33:36', '2018-09-26 03:33:36'),
(859, 4294967295, '2018-09-25 17:33:38', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '9nHXho4Nxd', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-09-26 03:33:38', '2018-09-26 03:33:38'),
(860, 511, '2018-09-25 17:33:55', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-24 00:00:00', 0, 'task', 'Normal', '9nHXho4Nxd', 'working', 'Task Resize', 359, 116, NULL, 'unassigned', '2018-09-26 03:33:55', '2018-09-26 03:33:55'),
(861, 511, '2018-09-25 17:39:33', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-24 00:00:00', 0, 'task', 'Normal', '9nHXho4Nxd', 'working', 'Delete Task', 359, 116, NULL, 'unassigned', '2018-09-26 03:39:33', '2018-09-26 03:39:33'),
(862, 4294967295, '2018-09-25 17:39:51', 'dssaassad', 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'CaSGk7dUqV', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 03:39:51', '2018-09-26 03:39:51'),
(863, 4294967295, '2018-09-25 17:39:52', 'dssaassad', 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'CaSGk7dUqV', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 03:39:52', '2018-09-26 03:39:52'),
(864, 512, '2018-09-25 17:42:16', 'dssaassad', 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'CaSGk7dUqV', 'working', 'Delete Task', 359, 116, NULL, NULL, '2018-09-26 03:42:16', '2018-09-26 03:42:16'),
(865, 4294967295, '2018-09-25 17:42:20', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'PlURx6WQPb', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 03:42:20', '2018-09-26 03:42:20'),
(866, 4294967295, '2018-09-25 17:42:22', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'PlURx6WQPb', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 03:42:22', '2018-09-26 03:42:22'),
(867, 513, '2018-09-25 17:42:56', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'PlURx6WQPb', NULL, 'Delete Task', NULL, 116, NULL, NULL, '2018-09-26 03:42:56', '2018-09-26 03:42:56'),
(868, 4294967295, '2018-09-25 17:43:04', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'PlURx6WQPb', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 03:43:04', '2018-09-26 03:43:04'),
(869, 4294967295, '2018-09-25 17:43:04', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'PlURx6WQPb', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 03:43:04', '2018-09-26 03:43:04'),
(870, 514, '2018-09-25 17:43:36', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'PlURx6WQPb', 'working', 'Delete Task', 359, 116, NULL, 'unassigned', '2018-09-26 03:43:36', '2018-09-26 03:43:36'),
(871, 4294967295, '2018-09-25 17:43:41', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '5nFWfI3W9E', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 03:43:41', '2018-09-26 03:43:41'),
(872, 4294967295, '2018-09-25 17:43:42', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '5nFWfI3W9E', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 03:43:42', '2018-09-26 03:43:42'),
(873, 4294967295, '2018-09-25 17:43:49', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '5nFWfI3W9E', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 03:43:49', '2018-09-26 03:43:49'),
(874, 4294967295, '2018-09-25 17:43:49', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '5nFWfI3W9E', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 03:43:49', '2018-09-26 03:43:49'),
(875, 4294967295, '2018-09-25 17:43:55', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '5nFWfI3W9E', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 03:43:55', '2018-09-26 03:43:55'),
(876, 4294967295, '2018-09-25 17:43:55', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '5nFWfI3W9E', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 03:43:55', '2018-09-26 03:43:55'),
(877, 517, '2018-09-25 17:45:39', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', '5nFWfI3W9E', 'working', 'Delete Task', 361, 116, NULL, 'unassigned', '2018-09-26 03:45:39', '2018-09-26 03:45:39'),
(878, 516, '2018-09-25 17:45:41', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', '5nFWfI3W9E', 'working', 'Delete Task', 360, 116, NULL, 'unassigned', '2018-09-26 03:45:41', '2018-09-26 03:45:41'),
(879, 515, '2018-09-25 17:45:45', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', '5nFWfI3W9E', 'working', 'Delete Task', 359, 116, NULL, 'unassigned', '2018-09-26 03:45:45', '2018-09-26 03:45:45');
INSERT INTO `taskhs` (`id`, `id_origin`, `mod_date`, `des`, `editor`, `email`, `text`, `duration`, `progress`, `start_date`, `parent`, `type`, `priority`, `socket`, `status`, `event`, `sortorder`, `project_id`, `workedHours`, `assigned`, `created_at`, `updated_at`) VALUES
(880, 4294967295, '2018-09-25 17:45:50', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '5nFWfI3W9E', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 03:45:50', '2018-09-26 03:45:50'),
(881, 4294967295, '2018-09-25 17:45:51', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '5nFWfI3W9E', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 03:45:51', '2018-09-26 03:45:51'),
(882, 518, '2018-09-25 17:46:10', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', '5nFWfI3W9E', 'working', 'Delete Task', 359, 116, NULL, 'unassigned', '2018-09-26 03:46:10', '2018-09-26 03:46:10'),
(883, 4294967295, '2018-09-25 17:46:19', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '5nFWfI3W9E', NULL, 'Change Description', NULL, 116, NULL, NULL, '2018-09-26 03:46:19', '2018-09-26 03:46:19'),
(884, 4294967295, '2018-09-25 17:46:21', NULL, 'Yeison', 'admin@admin.com', 'New task', 0, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', '5nFWfI3W9E', NULL, 'Change Assigned', NULL, 116, NULL, NULL, '2018-09-26 03:46:21', '2018-09-26 03:46:21'),
(885, 521, '2018-09-25 17:50:08', NULL, 'Yeison', 'admin@admin.com', 'New task', 7, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'qeLmg7WSKR', 'working', 'Delete Task', 361, 116, NULL, 'unassigned', '2018-09-26 03:50:08', '2018-09-26 03:50:08'),
(886, 520, '2018-09-25 17:50:10', NULL, 'Yeison', 'admin@admin.com', 'New task', 6, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'dJHqctxFS6', 'working', 'Delete Task', 360, 116, NULL, 'unassigned', '2018-09-26 03:50:10', '2018-09-26 03:50:10'),
(887, 519, '2018-09-25 17:50:12', NULL, 'Yeison', 'admin@admin.com', 'New task', 5, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', '5nFWfI3W9E', 'working', 'Delete Task', 359, 116, NULL, 'unassigned', '2018-09-26 03:50:12', '2018-09-26 03:50:12'),
(888, 526, '2018-09-25 17:59:13', NULL, 'Yeison', 'admin@admin.com', 'New task', 6, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'aBw3NweQQI', 'working', 'Delete Task', 363, 116, NULL, 'unassigned', '2018-09-26 03:59:13', '2018-09-26 03:59:13'),
(889, 525, '2018-09-25 17:59:15', NULL, 'Yeison', 'admin@admin.com', 'New task', 7, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'aBw3NweQQI', 'working', 'Delete Task', 362, 116, NULL, 'unassigned', '2018-09-26 03:59:15', '2018-09-26 03:59:15'),
(890, 524, '2018-09-25 17:59:17', NULL, 'Yeison', 'admin@admin.com', 'New task', 7, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'aBw3NweQQI', 'working', 'Delete Task', 361, 116, NULL, 'unassigned', '2018-09-26 03:59:17', '2018-09-26 03:59:17'),
(891, 523, '2018-09-25 17:59:20', NULL, 'Yeison', 'admin@admin.com', 'New task', 4, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'TyL4ORdFM9', 'working', 'Delete Task', 360, 116, NULL, 'unassigned', '2018-09-26 03:59:20', '2018-09-26 03:59:20'),
(892, 522, '2018-09-25 17:59:23', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'TyL4ORdFM9', 'working', 'Delete Task', 359, 116, NULL, 'unassigned', '2018-09-26 03:59:23', '2018-09-26 03:59:23'),
(893, 534, '2018-09-25 19:17:42', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'us1RN8liLn', NULL, 'Delete Task', NULL, 116, NULL, NULL, '2018-09-26 05:17:42', '2018-09-26 05:17:42'),
(894, 533, '2018-09-25 19:17:44', NULL, 'Yeison', 'admin@admin.com', 'New task', 6, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', '9c1irQKeDr', 'working', 'Delete Task', 365, 116, NULL, 'unassigned', '2018-09-26 05:17:44', '2018-09-26 05:17:44'),
(895, 532, '2018-09-25 19:17:48', NULL, 'Yeison', 'admin@admin.com', 'New task', 2, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', '9c1irQKeDr', 'working', 'Delete Task', 364, 116, NULL, 'unassigned', '2018-09-26 05:17:48', '2018-09-26 05:17:48'),
(896, 531, '2018-09-25 19:17:53', NULL, 'Yeison', 'admin@admin.com', 'xxx', 1, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'yXxwDYY5kH', 'working', 'Delete Task', 363, 116, NULL, NULL, '2018-09-26 05:17:53', '2018-09-26 05:17:53'),
(897, 530, '2018-09-25 19:17:57', NULL, 'Yeison', 'admin@admin.com', 'New task', 6, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'yXxwDYY5kH', 'working', 'Delete Task', 362, 116, NULL, 'unassigned', '2018-09-26 05:17:57', '2018-09-26 05:17:57'),
(898, 529, '2018-09-25 19:18:01', NULL, 'Yeison', 'admin@admin.com', 'New task', 2, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'yXxwDYY5kH', 'working', 'Delete Task', 361, 116, NULL, 'unassigned', '2018-09-26 05:18:01', '2018-09-26 05:18:01'),
(899, 527, '2018-09-25 19:18:06', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'yXxwDYY5kH', 'working', 'Delete Task', 359, 116, NULL, 'unassigned', '2018-09-26 05:18:06', '2018-09-26 05:18:06'),
(900, 535, '2018-09-25 19:18:35', NULL, 'Yeison', 'admin@admin.com', 'New task', 4, NULL, '2018-09-24 00:00:00', 0, 'task', 'Normal', 'EaKAKHbFxo', NULL, 'Drag Date', NULL, 116, NULL, NULL, '2018-09-26 05:18:35', '2018-09-26 05:18:35'),
(901, 535, '2018-09-25 19:18:38', NULL, 'Yeison', 'admin@admin.com', 'New task', 5, NULL, '2018-09-24 00:00:00', 0, 'task', 'Normal', 'EaKAKHbFxo', NULL, 'Task Resize', NULL, 116, NULL, NULL, '2018-09-26 05:18:38', '2018-09-26 05:18:38'),
(902, 536, '2018-09-25 19:19:28', NULL, 'Yeison', 'admin@admin.com', 'New task', 1, NULL, '2018-09-24 00:00:00', 0, 'task', 'Normal', 'EaKAKHbFxo', NULL, 'Delete Task', NULL, 116, NULL, NULL, '2018-09-26 05:19:28', '2018-09-26 05:19:28'),
(903, 535, '2018-09-25 19:19:31', NULL, 'Yeison', 'admin@admin.com', 'New task', 5, NULL, '2018-09-24 00:00:00', 0, 'task', 'Normal', 'EaKAKHbFxo', NULL, 'Delete Task', NULL, 116, NULL, NULL, '2018-09-26 05:19:31', '2018-09-26 05:19:31'),
(904, 537, '2018-09-25 19:23:46', NULL, 'Yeison', 'admin@admin.com', 'paturrito', 1, 0, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'H8CiWJ5Rs3', 'working', 'Delete Task', 359, 116, NULL, 'unassigned', '2018-09-26 05:23:46', '2018-09-26 05:23:46'),
(905, 538, '2018-09-25 19:24:31', NULL, 'Yeison', 'admin@admin.com', 'New task', 5, NULL, '2018-09-23 00:00:00', 0, 'task', 'Normal', 'AYwO1NmbPc', NULL, 'Delete Task', NULL, 116, NULL, NULL, '2018-09-26 05:24:31', '2018-09-26 05:24:31'),
(906, 4294967295, '2018-10-18 09:49:01', 'asas', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'mountain naska', 3, NULL, '2018-10-18 00:00:00', 0, 'normal', 'Normal', 'BSzLK8AQ9j', NULL, 'Add Task', NULL, 120, NULL, NULL, '2018-10-18 19:49:01', '2018-10-18 19:49:01'),
(907, 626, '2018-10-23 21:27:42', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasd', 9, 0.27111111111111114, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-10-24 07:27:42', '2018-10-24 07:27:42'),
(908, 627, '2018-10-23 21:30:45', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasdasd', 7, 0.3314285714285714, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'unassigned', '2018-10-24 07:30:45', '2018-10-24 07:30:45'),
(909, 627, '2018-10-23 21:30:56', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasdasd', 7, 0.9885714285714285, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'unassigned', '2018-10-24 07:30:56', '2018-10-24 07:30:56'),
(910, 626, '2018-10-25 14:47:55', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasd', 9, 0.6088888888888889, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-10-26 00:47:55', '2018-10-26 00:47:55'),
(911, 626, '2018-10-29 11:21:09', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasd', 10, 0.61, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 371, 116, NULL, NULL, '2018-10-29 21:21:09', '2018-10-29 21:21:09'),
(912, 626, '2018-10-29 11:51:55', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasd', 10, 0, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-10-29 21:51:55', '2018-10-29 21:51:55'),
(913, 626, '2018-10-29 11:51:57', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasd', 10, 0.268, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-10-29 21:51:57', '2018-10-29 21:51:57'),
(914, 626, '2018-10-29 12:18:25', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasd', 10, 0.32, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-10-29 22:18:25', '2018-10-29 22:18:25'),
(915, 626, '2018-10-29 12:19:08', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasd', 10, 0.368, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-10-29 22:19:08', '2018-10-29 22:19:08'),
(916, 626, '2018-10-29 12:19:12', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasd', 10, 0.512, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-10-29 22:19:12', '2018-10-29 22:19:12'),
(917, 626, '2018-10-29 14:52:48', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-10-30 00:52:48', '2018-10-30 00:52:48'),
(918, 5, '2018-10-29 14:55:30', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-10-30 00:55:30', '2018-10-30 00:55:30'),
(919, 6, '2018-10-29 14:55:32', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-10-30 00:55:32', '2018-10-30 00:55:32'),
(920, 7, '2018-10-29 14:55:34', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-10-30 00:55:34', '2018-10-30 00:55:34'),
(921, 8, '2018-10-29 14:55:36', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-10-30 00:55:36', '2018-10-30 00:55:36'),
(922, 626, '2018-10-29 14:55:46', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasd', 10, 0.752, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-10-30 00:55:46', '2018-10-30 00:55:46'),
(923, 5, '2018-10-29 14:59:55', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-10-30 00:59:55', '2018-10-30 00:59:55'),
(924, 6, '2018-10-29 14:59:57', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-10-30 00:59:57', '2018-10-30 00:59:57'),
(925, 7, '2018-10-29 14:59:59', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-10-30 00:59:59', '2018-10-30 00:59:59'),
(926, 8, '2018-10-29 15:00:01', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-10-30 01:00:01', '2018-10-30 01:00:01'),
(927, 9, '2018-10-29 15:00:03', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-10-30 01:00:03', '2018-10-30 01:00:03'),
(928, 626, '2018-10-29 15:00:30', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasd', 10, 0.676, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-10-30 01:00:30', '2018-10-30 01:00:30'),
(929, 626, '2018-10-29 15:29:23', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasd', 10, 0.756, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-10-30 01:29:23', '2018-10-30 01:29:23'),
(930, 5, '2018-10-29 15:29:42', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-10-30 01:29:42', '2018-10-30 01:29:42'),
(931, 6, '2018-10-29 15:29:44', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-10-30 01:29:44', '2018-10-30 01:29:44'),
(932, 7, '2018-10-29 15:29:46', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-10-30 01:29:46', '2018-10-30 01:29:46'),
(933, 8, '2018-10-29 15:29:48', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-10-30 01:29:48', '2018-10-30 01:29:48'),
(934, 9, '2018-10-29 15:29:50', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-10-30 01:29:50', '2018-10-30 01:29:50'),
(935, 10, '2018-10-29 15:29:52', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-10-30 01:29:52', '2018-10-30 01:29:52'),
(936, 11, '2018-10-29 15:29:53', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-10-30 01:29:54', '2018-10-30 01:29:54'),
(937, 626, '2018-10-29 15:48:18', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasd', 10, 0.772, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-10-30 01:48:18', '2018-10-30 01:48:18'),
(938, 626, '2018-10-29 16:11:42', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasd', 10, 0.784, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-10-30 02:11:42', '2018-10-30 02:11:42'),
(939, 626, '2018-10-29 16:19:44', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-10-30 02:19:44', '2018-10-30 02:19:44'),
(940, 626, '2018-10-29 16:21:22', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasd', 10, 0.752, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-10-30 02:21:22', '2018-10-30 02:21:22'),
(941, 5, '2018-10-29 16:21:47', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-10-30 02:21:47', '2018-10-30 02:21:47'),
(942, 6, '2018-10-29 16:21:49', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-10-30 02:21:49', '2018-10-30 02:21:49'),
(943, 7, '2018-10-29 16:21:51', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-10-30 02:21:51', '2018-10-30 02:21:51'),
(944, 8, '2018-10-29 16:21:54', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-10-30 02:21:54', '2018-10-30 02:21:54'),
(945, 9, '2018-10-29 16:21:56', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-10-30 02:21:56', '2018-10-30 02:21:56'),
(946, 10, '2018-10-29 16:21:58', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-10-30 02:21:58', '2018-10-30 02:21:58'),
(947, 11, '2018-10-29 16:22:00', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-10-30 02:22:00', '2018-10-30 02:22:00'),
(948, 12, '2018-10-29 16:22:03', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-10-30 02:22:03', '2018-10-30 02:22:03'),
(949, 13, '2018-10-29 16:22:05', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-10-30 02:22:05', '2018-10-30 02:22:05'),
(950, 14, '2018-10-29 16:22:07', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-10-30 02:22:07', '2018-10-30 02:22:07'),
(951, 15, '2018-10-29 16:22:09', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-10-30 02:22:09', '2018-10-30 02:22:09'),
(952, 16, '2018-10-29 16:22:11', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-10-30 02:22:11', '2018-10-30 02:22:11'),
(953, 626, '2018-11-01 10:21:07', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasd', 11, 0.75, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 371, 116, NULL, NULL, '2018-11-01 20:21:07', '2018-11-01 20:21:07'),
(954, 626, '2018-11-01 11:06:48', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasd', 11, 0.7700729927007299, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-01 21:06:48', '2018-11-01 21:06:48'),
(955, 626, '2018-11-01 11:10:40', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasd', 11, 0.7846715328467153, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-01 21:10:40', '2018-11-01 21:10:40'),
(956, 626, '2018-11-01 11:12:03', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasd', 11, 0.8357664233576643, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-01 21:12:03', '2018-11-01 21:12:03'),
(957, 626, '2018-11-01 11:12:20', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasd', 11, 0.7335766423357665, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-01 21:12:20', '2018-11-01 21:12:20'),
(958, 626, '2018-11-01 11:18:17', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 11, 0.6788321167883211, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-01 21:18:17', '2018-11-01 21:18:17'),
(959, 626, '2018-11-01 11:18:32', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 11, 0.791970802919708, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-01 21:18:32', '2018-11-01 21:18:32'),
(960, 626, '2018-11-01 11:21:55', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 11, 0.6605839416058394, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-01 21:21:55', '2018-11-01 21:21:55'),
(961, 626, '2018-11-01 11:26:28', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 11, 0.7992700729927007, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-01 21:26:28', '2018-11-01 21:26:28'),
(962, 626, '2018-11-01 11:27:36', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 11, 0.7226277372262774, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-01 21:27:36', '2018-11-01 21:27:36'),
(963, 626, '2018-11-01 11:28:50', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 11, 0.7773722627737226, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-01 21:28:50', '2018-11-01 21:28:50'),
(964, 626, '2018-11-01 11:29:34', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 11, 0.7153284671532847, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-01 21:29:34', '2018-11-01 21:29:34'),
(965, 626, '2018-11-01 11:30:07', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 10, 0.72, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 371, 116, NULL, NULL, '2018-11-01 21:30:07', '2018-11-01 21:30:07'),
(966, 626, '2018-11-01 11:30:38', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 10, 0.776, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-01 21:30:38', '2018-11-01 21:30:38'),
(967, 626, '2018-11-01 11:31:42', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 9, 0.78, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 371, 116, NULL, NULL, '2018-11-01 21:31:42', '2018-11-01 21:31:42'),
(968, 626, '2018-11-01 11:32:05', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 2, 0.78, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 371, 116, NULL, NULL, '2018-11-01 21:32:05', '2018-11-01 21:32:05'),
(969, 626, '2018-11-01 11:32:07', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 6, 0.78, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 371, 116, NULL, NULL, '2018-11-01 21:32:07', '2018-11-01 21:32:07'),
(970, 626, '2018-11-01 11:32:09', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 9, 0.78, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 371, 116, NULL, NULL, '2018-11-01 21:32:09', '2018-11-01 21:32:09'),
(971, 626, '2018-11-01 11:42:32', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 2, 0.78, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 371, 116, NULL, NULL, '2018-11-01 21:42:32', '2018-11-01 21:42:32'),
(972, 626, '2018-11-01 11:42:36', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 2, 1, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-01 21:42:36', '2018-11-01 21:42:36'),
(973, 626, '2018-11-01 11:42:37', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 2, 1, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Drag Date', 371, 116, NULL, NULL, '2018-11-01 21:42:37', '2018-11-01 21:42:37'),
(974, 626, '2018-11-01 11:42:40', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 8, 1, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 371, 116, NULL, NULL, '2018-11-01 21:42:40', '2018-11-01 21:42:40'),
(975, 626, '2018-11-01 11:45:18', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 8, 0.795, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-01 21:45:18', '2018-11-01 21:45:18'),
(976, 626, '2018-11-01 11:51:10', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 7, 0.8, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 371, 116, NULL, NULL, '2018-11-01 21:51:10', '2018-11-01 21:51:10'),
(977, 626, '2018-11-01 11:51:23', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 3, 0.8, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 371, 116, NULL, NULL, '2018-11-01 21:51:23', '2018-11-01 21:51:23'),
(978, 626, '2018-11-01 11:54:06', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 5, 0.8, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 371, 116, NULL, NULL, '2018-11-01 21:54:06', '2018-11-01 21:54:06'),
(979, 626, '2018-11-01 11:56:23', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 5, 0.72, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-01 21:56:23', '2018-11-01 21:56:23'),
(980, 626, '2018-11-01 11:56:41', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 5, 0.808, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-01 21:56:41', '2018-11-01 21:56:41'),
(981, 626, '2018-11-01 11:57:02', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 5, 0.848, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-01 21:57:02', '2018-11-01 21:57:02'),
(982, 626, '2018-11-01 11:57:58', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 5, 0.85, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 371, 116, NULL, NULL, '2018-11-01 21:57:58', '2018-11-01 21:57:58'),
(983, 626, '2018-11-01 12:00:44', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 4, 0.85, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 371, 116, NULL, NULL, '2018-11-01 22:00:44', '2018-11-01 22:00:44'),
(984, 626, '2018-11-01 12:02:44', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 4, 1, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-01 22:02:44', '2018-11-01 22:02:44'),
(985, 626, '2018-11-01 12:05:41', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 4, 0.85, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-01 22:05:41', '2018-11-01 22:05:41'),
(986, 626, '2018-11-01 12:06:47', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 3, 0.85, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 371, 116, NULL, NULL, '2018-11-01 22:06:47', '2018-11-01 22:06:47'),
(987, 5, '2018-11-01 12:13:45', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:13:45', '2018-11-01 22:13:45'),
(988, 6, '2018-11-01 12:13:46', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:13:46', '2018-11-01 22:13:46'),
(989, 7, '2018-11-01 12:13:47', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:13:47', '2018-11-01 22:13:47'),
(990, 8, '2018-11-01 12:13:48', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:13:48', '2018-11-01 22:13:48'),
(991, 9, '2018-11-01 12:13:49', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:13:49', '2018-11-01 22:13:49'),
(992, 10, '2018-11-01 12:13:50', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:13:50', '2018-11-01 22:13:50'),
(993, 11, '2018-11-01 12:13:51', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:13:51', '2018-11-01 22:13:51'),
(994, 12, '2018-11-01 12:13:52', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:13:52', '2018-11-01 22:13:52'),
(995, 13, '2018-11-01 12:13:52', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:13:52', '2018-11-01 22:13:52'),
(996, 14, '2018-11-01 12:13:53', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:13:53', '2018-11-01 22:13:53'),
(997, 15, '2018-11-01 12:13:54', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:13:54', '2018-11-01 22:13:54'),
(998, 16, '2018-11-01 12:13:55', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:13:55', '2018-11-01 22:13:55'),
(999, 626, '2018-11-01 12:25:41', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 3, 1, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-01 22:25:41', '2018-11-01 22:25:41'),
(1000, 626, '2018-11-01 12:26:21', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 10, 1, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 371, 116, NULL, NULL, '2018-11-01 22:26:21', '2018-11-01 22:26:21'),
(1001, 627, '2018-11-01 12:26:27', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasdasd', 10, 0.99, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 372, 116, NULL, 'unassigned', '2018-11-01 22:26:27', '2018-11-01 22:26:27'),
(1002, 626, '2018-11-01 12:26:29', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 12, 1, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 371, 116, NULL, NULL, '2018-11-01 22:26:29', '2018-11-01 22:26:29'),
(1003, 626, '2018-11-01 12:26:42', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 10, 1, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 371, 116, NULL, NULL, '2018-11-01 22:26:42', '2018-11-01 22:26:42'),
(1004, 627, '2018-11-01 12:26:43', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasdasd', 12, 0.99, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 372, 116, NULL, 'unassigned', '2018-11-01 22:26:43', '2018-11-01 22:26:43'),
(1005, 626, '2018-11-01 12:27:05', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 11, 1, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 371, 116, NULL, NULL, '2018-11-01 22:27:05', '2018-11-01 22:27:05'),
(1006, 627, '2018-11-01 12:27:07', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasdasd', 12, 0.99, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Drag Date', 372, 116, NULL, 'unassigned', '2018-11-01 22:27:07', '2018-11-01 22:27:07'),
(1007, 627, '2018-11-01 12:27:08', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasdasd', 13, 0.99, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 372, 116, NULL, 'unassigned', '2018-11-01 22:27:08', '2018-11-01 22:27:08'),
(1008, 626, '2018-11-01 12:37:57', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 10, 1, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 371, 116, NULL, NULL, '2018-11-01 22:37:57', '2018-11-01 22:37:57'),
(1009, 626, '2018-11-01 12:46:21', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 8, 1, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 371, 116, NULL, NULL, '2018-11-01 22:46:21', '2018-11-01 22:46:21'),
(1010, 626, '2018-11-01 12:47:38', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 8, 0.755, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-01 22:47:38', '2018-11-01 22:47:38'),
(1011, 5, '2018-11-01 12:47:52', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:47:52', '2018-11-01 22:47:52'),
(1012, 6, '2018-11-01 12:47:53', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:47:53', '2018-11-01 22:47:53'),
(1013, 7, '2018-11-01 12:47:54', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:47:54', '2018-11-01 22:47:54'),
(1014, 8, '2018-11-01 12:47:55', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:47:55', '2018-11-01 22:47:55'),
(1015, 9, '2018-11-01 12:47:56', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:47:56', '2018-11-01 22:47:56'),
(1016, 10, '2018-11-01 12:47:57', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:47:57', '2018-11-01 22:47:57'),
(1017, 11, '2018-11-01 12:47:58', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:47:58', '2018-11-01 22:47:58'),
(1018, 12, '2018-11-01 12:47:59', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:47:59', '2018-11-01 22:47:59'),
(1019, 13, '2018-11-01 12:48:00', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:48:00', '2018-11-01 22:48:00'),
(1020, 14, '2018-11-01 12:48:01', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:48:01', '2018-11-01 22:48:01'),
(1021, 15, '2018-11-01 12:48:02', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:48:02', '2018-11-01 22:48:02'),
(1022, 16, '2018-11-01 12:48:03', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:48:03', '2018-11-01 22:48:03'),
(1023, 17, '2018-11-01 12:48:04', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:48:04', '2018-11-01 22:48:04'),
(1024, 18, '2018-11-01 12:48:05', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:48:05', '2018-11-01 22:48:05'),
(1025, 19, '2018-11-01 12:48:06', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:48:06', '2018-11-01 22:48:06'),
(1026, 5, '2018-11-01 12:50:05', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:50:05', '2018-11-01 22:50:05'),
(1027, 6, '2018-11-01 12:50:06', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:50:06', '2018-11-01 22:50:06'),
(1028, 7, '2018-11-01 12:50:07', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:50:07', '2018-11-01 22:50:07'),
(1029, 8, '2018-11-01 12:50:08', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:50:08', '2018-11-01 22:50:08'),
(1030, 9, '2018-11-01 12:50:09', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:50:09', '2018-11-01 22:50:09'),
(1031, 10, '2018-11-01 12:50:10', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:50:10', '2018-11-01 22:50:10'),
(1032, 11, '2018-11-01 12:50:11', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:50:11', '2018-11-01 22:50:11'),
(1033, 12, '2018-11-01 12:50:11', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:50:12', '2018-11-01 22:50:12'),
(1034, 13, '2018-11-01 12:50:12', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:50:12', '2018-11-01 22:50:12'),
(1035, 14, '2018-11-01 12:50:13', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:50:13', '2018-11-01 22:50:13'),
(1036, 15, '2018-11-01 12:50:14', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:50:14', '2018-11-01 22:50:14'),
(1037, 16, '2018-11-01 12:50:15', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:50:15', '2018-11-01 22:50:15'),
(1038, 17, '2018-11-01 12:50:16', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:50:16', '2018-11-01 22:50:16'),
(1039, 18, '2018-11-01 12:50:17', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:50:17', '2018-11-01 22:50:17'),
(1040, 19, '2018-11-01 12:50:18', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 22:50:18', '2018-11-01 22:50:18'),
(1041, 5, '2018-11-01 13:18:23', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:18:23', '2018-11-01 23:18:23'),
(1042, 6, '2018-11-01 13:18:24', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:18:24', '2018-11-01 23:18:24'),
(1043, 7, '2018-11-01 13:18:25', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:18:25', '2018-11-01 23:18:25'),
(1044, 8, '2018-11-01 13:18:25', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:18:25', '2018-11-01 23:18:25'),
(1045, 9, '2018-11-01 13:18:26', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:18:26', '2018-11-01 23:18:26'),
(1046, 10, '2018-11-01 13:18:27', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:18:27', '2018-11-01 23:18:27'),
(1047, 11, '2018-11-01 13:18:28', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:18:28', '2018-11-01 23:18:28'),
(1048, 12, '2018-11-01 13:18:29', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:18:29', '2018-11-01 23:18:29'),
(1049, 13, '2018-11-01 13:18:30', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:18:30', '2018-11-01 23:18:30'),
(1050, 14, '2018-11-01 13:18:31', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:18:31', '2018-11-01 23:18:31'),
(1051, 15, '2018-11-01 13:18:32', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:18:32', '2018-11-01 23:18:32'),
(1052, 16, '2018-11-01 13:18:33', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:18:33', '2018-11-01 23:18:33'),
(1053, 17, '2018-11-01 13:18:35', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:18:35', '2018-11-01 23:18:35'),
(1054, 18, '2018-11-01 13:18:36', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:18:36', '2018-11-01 23:18:36'),
(1055, 626, '2018-11-01 13:18:42', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 8, 0.775, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-01 23:18:42', '2018-11-01 23:18:42'),
(1056, 5, '2018-11-01 13:18:45', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:18:45', '2018-11-01 23:18:45'),
(1057, 6, '2018-11-01 13:18:46', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:18:46', '2018-11-01 23:18:46'),
(1058, 7, '2018-11-01 13:18:47', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:18:47', '2018-11-01 23:18:47'),
(1059, 8, '2018-11-01 13:18:48', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:18:48', '2018-11-01 23:18:48'),
(1060, 9, '2018-11-01 13:18:49', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:18:49', '2018-11-01 23:18:49'),
(1061, 10, '2018-11-01 13:18:50', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:18:50', '2018-11-01 23:18:50'),
(1062, 11, '2018-11-01 13:18:51', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:18:51', '2018-11-01 23:18:51'),
(1063, 12, '2018-11-01 13:18:51', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:18:51', '2018-11-01 23:18:51'),
(1064, 13, '2018-11-01 13:18:52', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:18:52', '2018-11-01 23:18:52'),
(1065, 14, '2018-11-01 13:18:54', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:18:54', '2018-11-01 23:18:54'),
(1066, 15, '2018-11-01 13:18:55', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:18:55', '2018-11-01 23:18:55'),
(1067, 5, '2018-11-01 13:20:57', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:20:57', '2018-11-01 23:20:57'),
(1068, 6, '2018-11-01 13:20:58', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:20:58', '2018-11-01 23:20:58'),
(1069, 7, '2018-11-01 13:20:58', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:20:58', '2018-11-01 23:20:58'),
(1070, 8, '2018-11-01 13:20:59', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:20:59', '2018-11-01 23:20:59'),
(1071, 9, '2018-11-01 13:21:00', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:21:00', '2018-11-01 23:21:00'),
(1072, 10, '2018-11-01 13:21:01', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:21:01', '2018-11-01 23:21:01');
INSERT INTO `taskhs` (`id`, `id_origin`, `mod_date`, `des`, `editor`, `email`, `text`, `duration`, `progress`, `start_date`, `parent`, `type`, `priority`, `socket`, `status`, `event`, `sortorder`, `project_id`, `workedHours`, `assigned`, `created_at`, `updated_at`) VALUES
(1073, 11, '2018-11-01 13:21:02', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:21:02', '2018-11-01 23:21:02'),
(1074, 12, '2018-11-01 13:21:03', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:21:03', '2018-11-01 23:21:03'),
(1075, 13, '2018-11-01 13:21:04', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:21:04', '2018-11-01 23:21:04'),
(1076, 14, '2018-11-01 13:21:05', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:21:05', '2018-11-01 23:21:05'),
(1077, 15, '2018-11-01 13:21:06', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:21:06', '2018-11-01 23:21:06'),
(1078, 16, '2018-11-01 13:21:07', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:21:07', '2018-11-01 23:21:07'),
(1079, 17, '2018-11-01 13:21:08', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:21:08', '2018-11-01 23:21:08'),
(1080, 18, '2018-11-01 13:21:09', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:21:09', '2018-11-01 23:21:09'),
(1081, 19, '2018-11-01 13:21:09', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:21:09', '2018-11-01 23:21:09'),
(1082, 5, '2018-11-01 13:22:35', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:22:35', '2018-11-01 23:22:35'),
(1083, 6, '2018-11-01 13:22:36', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:22:36', '2018-11-01 23:22:36'),
(1084, 7, '2018-11-01 13:22:37', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:22:37', '2018-11-01 23:22:37'),
(1085, 8, '2018-11-01 13:22:38', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:22:38', '2018-11-01 23:22:38'),
(1086, 9, '2018-11-01 13:22:39', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:22:39', '2018-11-01 23:22:39'),
(1087, 10, '2018-11-01 13:22:40', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:22:40', '2018-11-01 23:22:40'),
(1088, 11, '2018-11-01 13:22:41', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:22:41', '2018-11-01 23:22:41'),
(1089, 12, '2018-11-01 13:22:42', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:22:42', '2018-11-01 23:22:42'),
(1090, 13, '2018-11-01 13:22:43', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:22:43', '2018-11-01 23:22:43'),
(1091, 14, '2018-11-01 13:22:44', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:22:44', '2018-11-01 23:22:44'),
(1092, 15, '2018-11-01 13:22:45', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:22:45', '2018-11-01 23:22:45'),
(1093, 16, '2018-11-01 13:22:46', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:22:46', '2018-11-01 23:22:46'),
(1094, 17, '2018-11-01 13:22:47', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:22:47', '2018-11-01 23:22:47'),
(1095, 18, '2018-11-01 13:22:48', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:22:48', '2018-11-01 23:22:48'),
(1096, 19, '2018-11-01 13:22:49', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:22:49', '2018-11-01 23:22:49'),
(1097, 5, '2018-11-01 13:23:55', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:23:55', '2018-11-01 23:23:55'),
(1098, 6, '2018-11-01 13:23:56', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:23:56', '2018-11-01 23:23:56'),
(1099, 7, '2018-11-01 13:23:57', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:23:57', '2018-11-01 23:23:57'),
(1100, 8, '2018-11-01 13:23:58', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:23:58', '2018-11-01 23:23:58'),
(1101, 9, '2018-11-01 13:23:59', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:23:59', '2018-11-01 23:23:59'),
(1102, 10, '2018-11-01 13:24:00', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:24:00', '2018-11-01 23:24:00'),
(1103, 11, '2018-11-01 13:24:01', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:24:01', '2018-11-01 23:24:01'),
(1104, 12, '2018-11-01 13:24:02', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:24:02', '2018-11-01 23:24:02'),
(1105, 13, '2018-11-01 13:24:02', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:24:02', '2018-11-01 23:24:02'),
(1106, 14, '2018-11-01 13:24:03', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:24:03', '2018-11-01 23:24:03'),
(1107, 15, '2018-11-01 13:24:04', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:24:04', '2018-11-01 23:24:04'),
(1108, 16, '2018-11-01 13:24:05', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:24:05', '2018-11-01 23:24:05'),
(1109, 17, '2018-11-01 13:24:06', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:24:06', '2018-11-01 23:24:06'),
(1110, 18, '2018-11-01 13:24:07', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:24:07', '2018-11-01 23:24:07'),
(1111, 19, '2018-11-01 13:24:08', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:24:08', '2018-11-01 23:24:08'),
(1112, 626, '2018-11-01 13:35:10', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 8, 0.845, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-01 23:35:10', '2018-11-01 23:35:10'),
(1113, 5, '2018-11-01 13:35:38', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:35:38', '2018-11-01 23:35:38'),
(1114, 6, '2018-11-01 13:35:39', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:35:39', '2018-11-01 23:35:39'),
(1115, 7, '2018-11-01 13:35:40', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:35:40', '2018-11-01 23:35:40'),
(1116, 8, '2018-11-01 13:35:41', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:35:41', '2018-11-01 23:35:41'),
(1117, 9, '2018-11-01 13:35:42', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:35:42', '2018-11-01 23:35:42'),
(1118, 10, '2018-11-01 13:35:43', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:35:43', '2018-11-01 23:35:43'),
(1119, 11, '2018-11-01 13:35:44', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:35:44', '2018-11-01 23:35:44'),
(1120, 12, '2018-11-01 13:35:45', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:35:45', '2018-11-01 23:35:45'),
(1121, 13, '2018-11-01 13:35:46', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:35:46', '2018-11-01 23:35:46'),
(1122, 14, '2018-11-01 13:35:47', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:35:47', '2018-11-01 23:35:47'),
(1123, 15, '2018-11-01 13:35:47', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:35:47', '2018-11-01 23:35:47'),
(1124, 16, '2018-11-01 13:35:48', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:35:48', '2018-11-01 23:35:48'),
(1125, 17, '2018-11-01 13:35:49', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:35:49', '2018-11-01 23:35:49'),
(1126, 18, '2018-11-01 13:35:50', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:35:50', '2018-11-01 23:35:50'),
(1127, 19, '2018-11-01 13:35:51', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:35:51', '2018-11-01 23:35:51'),
(1128, 20, '2018-11-01 13:35:52', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:35:52', '2018-11-01 23:35:52'),
(1129, 626, '2018-11-01 13:36:12', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 11, 0.84, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 371, 116, NULL, NULL, '2018-11-01 23:36:12', '2018-11-01 23:36:12'),
(1130, 627, '2018-11-01 13:36:19', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasdasd', 11, 0.99, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 372, 116, NULL, 'unassigned', '2018-11-01 23:36:19', '2018-11-01 23:36:19'),
(1131, 21, '2018-11-01 13:36:51', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.99, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:36:51', '2018-11-01 23:36:51'),
(1132, 627, '2018-11-01 13:36:57', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasdasd', 11, 0.6981818181818182, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'unassigned', '2018-11-01 23:36:57', '2018-11-01 23:36:57'),
(1133, 21, '2018-11-01 13:37:08', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.99, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:37:08', '2018-11-01 23:37:08'),
(1134, 22, '2018-11-01 13:37:09', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.7, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:37:09', '2018-11-01 23:37:09'),
(1135, 627, '2018-11-01 13:48:40', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasdasd', 11, 0.8181818181818182, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'unassigned', '2018-11-01 23:48:40', '2018-11-01 23:48:40'),
(1136, 21, '2018-11-01 13:48:51', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.99, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:48:51', '2018-11-01 23:48:51'),
(1137, 22, '2018-11-01 13:48:52', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.7, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:48:52', '2018-11-01 23:48:52'),
(1138, 23, '2018-11-01 13:48:52', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.82, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:48:52', '2018-11-01 23:48:52'),
(1139, 626, '2018-11-01 13:49:03', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 11, 0.791970802919708, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-01 23:49:03', '2018-11-01 23:49:03'),
(1140, 627, '2018-11-01 13:49:05', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasdasd', 11, 0.6327272727272727, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'unassigned', '2018-11-01 23:49:05', '2018-11-01 23:49:05'),
(1141, 5, '2018-11-01 13:49:13', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:49:13', '2018-11-01 23:49:13'),
(1142, 6, '2018-11-01 13:49:14', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:49:14', '2018-11-01 23:49:14'),
(1143, 7, '2018-11-01 13:49:15', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:49:15', '2018-11-01 23:49:15'),
(1144, 8, '2018-11-01 13:49:16', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:49:16', '2018-11-01 23:49:16'),
(1145, 9, '2018-11-01 13:49:17', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:49:17', '2018-11-01 23:49:17'),
(1146, 10, '2018-11-01 13:49:18', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:49:18', '2018-11-01 23:49:18'),
(1147, 11, '2018-11-01 13:49:19', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:49:19', '2018-11-01 23:49:19'),
(1148, 12, '2018-11-01 13:49:20', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:49:20', '2018-11-01 23:49:20'),
(1149, 13, '2018-11-01 13:49:21', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:49:21', '2018-11-01 23:49:21'),
(1150, 14, '2018-11-01 13:49:22', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:49:22', '2018-11-01 23:49:22'),
(1151, 15, '2018-11-01 13:49:23', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:49:23', '2018-11-01 23:49:23'),
(1152, 16, '2018-11-01 13:49:24', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:49:24', '2018-11-01 23:49:24'),
(1153, 17, '2018-11-01 13:49:25', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:49:25', '2018-11-01 23:49:25'),
(1154, 18, '2018-11-01 13:49:26', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:49:26', '2018-11-01 23:49:26'),
(1155, 19, '2018-11-01 13:49:26', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:49:26', '2018-11-01 23:49:26'),
(1156, 20, '2018-11-01 13:49:27', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:49:27', '2018-11-01 23:49:27'),
(1157, 24, '2018-11-01 13:49:28', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 11, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:49:28', '2018-11-01 23:49:28'),
(1158, 5, '2018-11-01 13:50:43', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:50:43', '2018-11-01 23:50:43'),
(1159, 6, '2018-11-01 13:50:44', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:50:44', '2018-11-01 23:50:44'),
(1160, 7, '2018-11-01 13:50:45', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:50:45', '2018-11-01 23:50:45'),
(1161, 8, '2018-11-01 13:50:46', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:50:46', '2018-11-01 23:50:46'),
(1162, 9, '2018-11-01 13:50:47', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:50:47', '2018-11-01 23:50:47'),
(1163, 10, '2018-11-01 13:50:47', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:50:47', '2018-11-01 23:50:47'),
(1164, 11, '2018-11-01 13:50:48', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:50:48', '2018-11-01 23:50:48'),
(1165, 12, '2018-11-01 13:50:49', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:50:49', '2018-11-01 23:50:49'),
(1166, 13, '2018-11-01 13:50:50', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:50:50', '2018-11-01 23:50:50'),
(1167, 14, '2018-11-01 13:50:51', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:50:51', '2018-11-01 23:50:51'),
(1168, 15, '2018-11-01 13:50:52', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:50:52', '2018-11-01 23:50:52'),
(1169, 16, '2018-11-01 13:50:53', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:50:53', '2018-11-01 23:50:53'),
(1170, 17, '2018-11-01 13:50:54', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:50:54', '2018-11-01 23:50:54'),
(1171, 18, '2018-11-01 13:50:56', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:50:56', '2018-11-01 23:50:56'),
(1172, 19, '2018-11-01 13:50:57', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:50:57', '2018-11-01 23:50:57'),
(1173, 20, '2018-11-01 13:50:57', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:50:57', '2018-11-01 23:50:57'),
(1174, 24, '2018-11-01 13:50:58', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 11, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:50:58', '2018-11-01 23:50:58'),
(1175, 5, '2018-11-01 13:53:22', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:53:22', '2018-11-01 23:53:22'),
(1176, 6, '2018-11-01 13:53:23', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:53:23', '2018-11-01 23:53:23'),
(1177, 7, '2018-11-01 13:53:24', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:53:24', '2018-11-01 23:53:24'),
(1178, 8, '2018-11-01 13:53:25', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:53:25', '2018-11-01 23:53:25'),
(1179, 9, '2018-11-01 13:53:26', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:53:26', '2018-11-01 23:53:26'),
(1180, 10, '2018-11-01 13:53:27', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:53:27', '2018-11-01 23:53:27'),
(1181, 11, '2018-11-01 13:53:28', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:53:28', '2018-11-01 23:53:28'),
(1182, 12, '2018-11-01 13:53:29', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:53:29', '2018-11-01 23:53:29'),
(1183, 13, '2018-11-01 13:53:30', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:53:30', '2018-11-01 23:53:30'),
(1184, 14, '2018-11-01 13:53:30', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:53:30', '2018-11-01 23:53:30'),
(1185, 15, '2018-11-01 13:53:32', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:53:32', '2018-11-01 23:53:32'),
(1186, 16, '2018-11-01 13:53:33', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:53:33', '2018-11-01 23:53:33'),
(1187, 17, '2018-11-01 13:53:34', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:53:34', '2018-11-01 23:53:34'),
(1188, 18, '2018-11-01 13:53:35', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:53:35', '2018-11-01 23:53:35'),
(1189, 19, '2018-11-01 13:53:36', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:53:36', '2018-11-01 23:53:36'),
(1190, 20, '2018-11-01 13:53:37', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:53:37', '2018-11-01 23:53:37'),
(1191, 24, '2018-11-01 13:53:38', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 11, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-01 23:53:38', '2018-11-01 23:53:38'),
(1192, 626, '2018-11-01 14:03:14', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 11, 0.8832116788321168, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-02 00:03:14', '2018-11-02 00:03:14'),
(1193, 21, '2018-11-01 14:03:21', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.99, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:03:21', '2018-11-02 00:03:21'),
(1194, 22, '2018-11-01 14:03:22', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.7, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:03:22', '2018-11-02 00:03:22'),
(1195, 23, '2018-11-01 14:03:23', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.82, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:03:23', '2018-11-02 00:03:23'),
(1196, 626, '2018-11-01 14:04:08', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 11, 0.7627737226277372, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-02 00:04:08', '2018-11-02 00:04:08'),
(1197, 627, '2018-11-01 14:04:10', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasdasd', 11, 0.7454545454545455, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'unassigned', '2018-11-02 00:04:10', '2018-11-02 00:04:10'),
(1198, 21, '2018-11-01 14:04:18', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.99, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:04:18', '2018-11-02 00:04:18'),
(1199, 22, '2018-11-01 14:04:19', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.7, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:04:19', '2018-11-02 00:04:19'),
(1200, 23, '2018-11-01 14:04:20', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.82, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:04:20', '2018-11-02 00:04:20'),
(1201, 626, '2018-11-01 14:13:44', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea loca', 11, 0.6824817518248175, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-02 00:13:44', '2018-11-02 00:13:44'),
(1202, 627, '2018-11-01 14:13:48', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasdasd', 11, 0.6472727272727272, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'unassigned', '2018-11-02 00:13:48', '2018-11-02 00:13:48'),
(1203, 627, '2018-11-01 14:13:51', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasdasd', 10, 0.6472727272727272, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 372, 116, NULL, 'unassigned', '2018-11-02 00:13:51', '2018-11-02 00:13:51'),
(1204, 21, '2018-11-01 14:13:56', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.99, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:13:56', '2018-11-02 00:13:56'),
(1205, 22, '2018-11-01 14:13:57', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.7, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:13:57', '2018-11-02 00:13:57'),
(1206, 23, '2018-11-01 14:13:58', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.82, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:13:58', '2018-11-02 00:13:58'),
(1207, 5, '2018-11-01 14:24:10', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:24:10', '2018-11-02 00:24:10'),
(1208, 6, '2018-11-01 14:24:11', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:24:11', '2018-11-02 00:24:11'),
(1209, 7, '2018-11-01 14:24:13', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:24:13', '2018-11-02 00:24:13'),
(1210, 8, '2018-11-01 14:24:14', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:24:14', '2018-11-02 00:24:14'),
(1211, 9, '2018-11-01 14:24:15', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:24:15', '2018-11-02 00:24:15'),
(1212, 10, '2018-11-01 14:24:16', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:24:16', '2018-11-02 00:24:16'),
(1213, 11, '2018-11-01 14:24:17', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:24:17', '2018-11-02 00:24:17'),
(1214, 12, '2018-11-01 14:24:18', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:24:18', '2018-11-02 00:24:18'),
(1215, 13, '2018-11-01 14:24:18', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:24:18', '2018-11-02 00:24:18'),
(1216, 14, '2018-11-01 14:24:19', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:24:19', '2018-11-02 00:24:19'),
(1217, 15, '2018-11-01 14:24:20', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:24:20', '2018-11-02 00:24:20'),
(1218, 16, '2018-11-01 14:24:21', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:24:21', '2018-11-02 00:24:21'),
(1219, 17, '2018-11-01 14:24:22', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:24:22', '2018-11-02 00:24:22'),
(1220, 18, '2018-11-01 14:24:23', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:24:23', '2018-11-02 00:24:23'),
(1221, 19, '2018-11-01 14:24:24', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:24:24', '2018-11-02 00:24:24'),
(1222, 20, '2018-11-01 14:24:25', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:24:25', '2018-11-02 00:24:25'),
(1223, 24, '2018-11-01 14:24:26', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 11, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:24:26', '2018-11-02 00:24:26'),
(1224, 5, '2018-11-01 14:25:18', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:25:18', '2018-11-02 00:25:18'),
(1225, 6, '2018-11-01 14:25:19', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:25:19', '2018-11-02 00:25:19'),
(1226, 7, '2018-11-01 14:25:20', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:25:20', '2018-11-02 00:25:20'),
(1227, 8, '2018-11-01 14:25:21', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:25:21', '2018-11-02 00:25:21'),
(1228, 9, '2018-11-01 14:25:22', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:25:22', '2018-11-02 00:25:22'),
(1229, 10, '2018-11-01 14:25:23', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:25:23', '2018-11-02 00:25:23'),
(1230, 11, '2018-11-01 14:25:24', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:25:24', '2018-11-02 00:25:24'),
(1231, 12, '2018-11-01 14:25:25', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:25:25', '2018-11-02 00:25:25'),
(1232, 13, '2018-11-01 14:25:26', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:25:26', '2018-11-02 00:25:26'),
(1233, 14, '2018-11-01 14:25:27', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:25:27', '2018-11-02 00:25:27'),
(1234, 15, '2018-11-01 14:25:28', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:25:28', '2018-11-02 00:25:28'),
(1235, 16, '2018-11-01 14:25:29', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:25:29', '2018-11-02 00:25:29'),
(1236, 17, '2018-11-01 14:25:30', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:25:30', '2018-11-02 00:25:30'),
(1237, 18, '2018-11-01 14:25:31', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:25:31', '2018-11-02 00:25:31'),
(1238, 19, '2018-11-01 14:25:32', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:25:32', '2018-11-02 00:25:32'),
(1239, 20, '2018-11-01 14:25:32', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:25:32', '2018-11-02 00:25:32'),
(1240, 24, '2018-11-01 14:25:33', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 11, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:25:33', '2018-11-02 00:25:33'),
(1241, 5, '2018-11-01 14:28:04', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:04', '2018-11-02 00:28:04'),
(1242, 6, '2018-11-01 14:28:05', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:05', '2018-11-02 00:28:05'),
(1243, 7, '2018-11-01 14:28:06', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:06', '2018-11-02 00:28:06'),
(1244, 8, '2018-11-01 14:28:07', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:07', '2018-11-02 00:28:07'),
(1245, 9, '2018-11-01 14:28:08', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:08', '2018-11-02 00:28:08'),
(1246, 10, '2018-11-01 14:28:09', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:09', '2018-11-02 00:28:09'),
(1247, 11, '2018-11-01 14:28:10', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:10', '2018-11-02 00:28:10'),
(1248, 12, '2018-11-01 14:28:11', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:11', '2018-11-02 00:28:11'),
(1249, 13, '2018-11-01 14:28:12', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:12', '2018-11-02 00:28:12'),
(1250, 14, '2018-11-01 14:28:13', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:13', '2018-11-02 00:28:13'),
(1251, 15, '2018-11-01 14:28:14', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:14', '2018-11-02 00:28:14'),
(1252, 16, '2018-11-01 14:28:15', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:15', '2018-11-02 00:28:15'),
(1253, 17, '2018-11-01 14:28:16', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:16', '2018-11-02 00:28:16'),
(1254, 18, '2018-11-01 14:28:16', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:16', '2018-11-02 00:28:16'),
(1255, 19, '2018-11-01 14:28:17', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:17', '2018-11-02 00:28:17'),
(1256, 20, '2018-11-01 14:28:18', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:18', '2018-11-02 00:28:18'),
(1257, 24, '2018-11-01 14:28:19', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 11, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:19', '2018-11-02 00:28:19'),
(1258, 5, '2018-11-01 14:28:39', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:39', '2018-11-02 00:28:39'),
(1259, 6, '2018-11-01 14:28:41', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:41', '2018-11-02 00:28:41'),
(1260, 7, '2018-11-01 14:28:42', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:42', '2018-11-02 00:28:42'),
(1261, 8, '2018-11-01 14:28:43', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:43', '2018-11-02 00:28:43'),
(1262, 9, '2018-11-01 14:28:44', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:44', '2018-11-02 00:28:44'),
(1263, 10, '2018-11-01 14:28:45', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:45', '2018-11-02 00:28:45'),
(1264, 11, '2018-11-01 14:28:46', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:46', '2018-11-02 00:28:46'),
(1265, 12, '2018-11-01 14:28:47', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:47', '2018-11-02 00:28:47'),
(1266, 13, '2018-11-01 14:28:47', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:47', '2018-11-02 00:28:47'),
(1267, 14, '2018-11-01 14:28:48', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:48', '2018-11-02 00:28:48'),
(1268, 15, '2018-11-01 14:28:49', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:49', '2018-11-02 00:28:49'),
(1269, 16, '2018-11-01 14:28:50', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:50', '2018-11-02 00:28:50');
INSERT INTO `taskhs` (`id`, `id_origin`, `mod_date`, `des`, `editor`, `email`, `text`, `duration`, `progress`, `start_date`, `parent`, `type`, `priority`, `socket`, `status`, `event`, `sortorder`, `project_id`, `workedHours`, `assigned`, `created_at`, `updated_at`) VALUES
(1270, 17, '2018-11-01 14:28:51', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:51', '2018-11-02 00:28:51'),
(1271, 18, '2018-11-01 14:28:52', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:52', '2018-11-02 00:28:52'),
(1272, 19, '2018-11-01 14:28:53', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:53', '2018-11-02 00:28:53'),
(1273, 20, '2018-11-01 14:28:54', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:54', '2018-11-02 00:28:54'),
(1274, 24, '2018-11-01 14:28:55', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 11, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:28:55', '2018-11-02 00:28:55'),
(1275, 5, '2018-11-01 14:33:28', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:33:28', '2018-11-02 00:33:28'),
(1276, 6, '2018-11-01 14:33:30', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:33:30', '2018-11-02 00:33:30'),
(1277, 7, '2018-11-01 14:33:31', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:33:31', '2018-11-02 00:33:31'),
(1278, 8, '2018-11-01 14:33:32', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:33:32', '2018-11-02 00:33:32'),
(1279, 9, '2018-11-01 14:33:33', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:33:33', '2018-11-02 00:33:33'),
(1280, 10, '2018-11-01 14:33:34', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:33:34', '2018-11-02 00:33:34'),
(1281, 11, '2018-11-01 14:33:35', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:33:35', '2018-11-02 00:33:35'),
(1282, 12, '2018-11-01 14:33:36', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:33:36', '2018-11-02 00:33:36'),
(1283, 13, '2018-11-01 14:33:37', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:33:37', '2018-11-02 00:33:37'),
(1284, 14, '2018-11-01 14:33:38', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:33:38', '2018-11-02 00:33:38'),
(1285, 15, '2018-11-01 14:33:39', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:33:39', '2018-11-02 00:33:39'),
(1286, 16, '2018-11-01 14:33:40', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:33:40', '2018-11-02 00:33:40'),
(1287, 17, '2018-11-01 14:33:41', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:33:41', '2018-11-02 00:33:41'),
(1288, 18, '2018-11-01 14:33:42', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:33:42', '2018-11-02 00:33:42'),
(1289, 19, '2018-11-01 14:33:43', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:33:43', '2018-11-02 00:33:43'),
(1290, 20, '2018-11-01 14:33:44', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:33:44', '2018-11-02 00:33:44'),
(1291, 24, '2018-11-01 14:33:45', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 11, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 00:33:45', '2018-11-02 00:33:45'),
(1292, 21, '2018-11-01 21:44:08', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.99, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 07:44:08', '2018-11-02 07:44:08'),
(1293, 22, '2018-11-01 21:44:09', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.7, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 07:44:09', '2018-11-02 07:44:09'),
(1294, 23, '2018-11-01 21:44:11', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.82, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 07:44:11', '2018-11-02 07:44:11'),
(1295, 627, '2018-11-01 21:44:45', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasdasd', 10, 0.728, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'unassigned', '2018-11-02 07:44:45', '2018-11-02 07:44:45'),
(1296, 21, '2018-11-01 21:44:52', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.99, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 07:44:52', '2018-11-02 07:44:52'),
(1297, 22, '2018-11-01 21:44:53', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.7, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 07:44:53', '2018-11-02 07:44:53'),
(1298, 23, '2018-11-01 21:44:54', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.82, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 07:44:54', '2018-11-02 07:44:54'),
(1299, 25, '2018-11-01 21:44:55', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 10, 0.73, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 07:44:55', '2018-11-02 07:44:55'),
(1300, 4294967295, '2018-11-01 22:03:20', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 3', 3, NULL, '2018-11-01 00:00:00', 0, 'normal', 'Normal', 'UOy2qkSAQa', NULL, 'Add Task', NULL, 116, NULL, NULL, '2018-11-02 08:03:20', '2018-11-02 08:03:20'),
(1301, 948, '2018-11-01 22:03:26', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 3', 3, 0, '2018-11-08 00:00:00', 0, 'normal', 'Normal', 'UOy2qkSAQa', 'working', 'Drag Date', 693, 116, NULL, 'unassigned', '2018-11-02 08:03:26', '2018-11-02 08:03:26'),
(1302, 948, '2018-11-01 22:03:32', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 3', 5, 0, '2018-11-08 00:00:00', 0, 'normal', 'Normal', 'UOy2qkSAQa', 'working', 'Task Resize', 693, 116, NULL, 'unassigned', '2018-11-02 08:03:32', '2018-11-02 08:03:32'),
(1303, 948, '2018-11-01 22:06:06', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 3', 4, 0, '2018-11-08 00:00:00', 0, 'normal', 'Normal', 'UOy2qkSAQa', 'working', 'Task Resize', 693, 116, NULL, 'unassigned', '2018-11-02 08:06:06', '2018-11-02 08:06:06'),
(1304, 626, '2018-11-01 22:30:50', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 1', 12, 0.7491638795986622, '2018-10-13 00:00:00', 0, 'normal', NULL, '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-02 08:30:50', '2018-11-02 08:30:50'),
(1305, 626, '2018-11-01 22:32:53', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 1', 12, 0.7859531772575251, '2018-10-13 00:00:00', 0, 'normal', NULL, '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-02 08:32:53', '2018-11-02 08:32:53'),
(1306, 626, '2018-11-01 22:33:39', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 1', 12, 0.8394648829431438, '2018-10-13 00:00:00', 0, 'normal', NULL, '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-02 08:33:39', '2018-11-02 08:33:39'),
(1307, 627, '2018-11-01 22:33:46', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 10, 0.828, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'unassigned', '2018-11-02 08:33:46', '2018-11-02 08:33:46'),
(1308, 948, '2018-11-01 22:33:51', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 3', 2, 0, '2018-11-08 00:00:00', 0, 'normal', 'Normal', 'UOy2qkSAQa', 'working', 'Task Resize', 693, 116, NULL, 'unassigned', '2018-11-02 08:33:51', '2018-11-02 08:33:51'),
(1309, 5, '2018-11-01 22:34:17', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 08:34:17', '2018-11-02 08:34:17'),
(1310, 6, '2018-11-01 22:34:18', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 08:34:18', '2018-11-02 08:34:18'),
(1311, 7, '2018-11-01 22:34:20', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 08:34:20', '2018-11-02 08:34:20'),
(1312, 8, '2018-11-01 22:34:21', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 08:34:21', '2018-11-02 08:34:21'),
(1313, 9, '2018-11-01 22:34:22', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 08:34:22', '2018-11-02 08:34:22'),
(1314, 10, '2018-11-01 22:34:23', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 08:34:23', '2018-11-02 08:34:23'),
(1315, 11, '2018-11-01 22:34:24', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 08:34:24', '2018-11-02 08:34:24'),
(1316, 12, '2018-11-01 22:34:25', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 08:34:25', '2018-11-02 08:34:25'),
(1317, 13, '2018-11-01 22:34:26', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 08:34:26', '2018-11-02 08:34:26'),
(1318, 14, '2018-11-01 22:34:27', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 08:34:27', '2018-11-02 08:34:27'),
(1319, 15, '2018-11-01 22:34:29', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 08:34:29', '2018-11-02 08:34:29'),
(1320, 16, '2018-11-01 22:34:30', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 08:34:30', '2018-11-02 08:34:30'),
(1321, 17, '2018-11-01 22:34:32', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 08:34:32', '2018-11-02 08:34:32'),
(1322, 18, '2018-11-01 22:34:33', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 08:34:33', '2018-11-02 08:34:33'),
(1323, 19, '2018-11-01 22:34:39', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 08:34:39', '2018-11-02 08:34:39'),
(1324, 20, '2018-11-01 22:34:40', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 08:34:40', '2018-11-02 08:34:40'),
(1325, 24, '2018-11-01 22:34:41', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 11, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 08:34:41', '2018-11-02 08:34:41'),
(1326, 26, '2018-11-01 22:34:42', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 08:34:42', '2018-11-02 08:34:42'),
(1327, 28, '2018-11-01 22:34:43', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 08:34:43', '2018-11-02 08:34:43'),
(1328, 627, '2018-11-02 11:02:28', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.87, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 372, 116, NULL, 'unassigned', '2018-11-02 21:02:28', '2018-11-02 21:02:28'),
(1329, 627, '2018-11-02 11:02:34', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.9066666666666666, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'unassigned', '2018-11-02 21:02:34', '2018-11-02 21:02:34'),
(1330, 21, '2018-11-02 11:58:28', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.99, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 21:58:28', '2018-11-02 21:58:28'),
(1331, 22, '2018-11-02 11:58:29', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.7, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 21:58:29', '2018-11-02 21:58:29'),
(1332, 23, '2018-11-02 11:58:29', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.82, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 21:58:29', '2018-11-02 21:58:29'),
(1333, 25, '2018-11-02 11:58:30', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 10, 0.73, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 21:58:30', '2018-11-02 21:58:30'),
(1334, 5, '2018-11-02 12:59:31', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 22:59:31', '2018-11-02 22:59:31'),
(1335, 6, '2018-11-02 12:59:32', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 22:59:32', '2018-11-02 22:59:32'),
(1336, 7, '2018-11-02 12:59:34', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 22:59:34', '2018-11-02 22:59:34'),
(1337, 8, '2018-11-02 12:59:35', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 22:59:35', '2018-11-02 22:59:35'),
(1338, 9, '2018-11-02 12:59:36', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 22:59:36', '2018-11-02 22:59:36'),
(1339, 10, '2018-11-02 12:59:37', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 22:59:37', '2018-11-02 22:59:37'),
(1340, 11, '2018-11-02 12:59:38', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 22:59:38', '2018-11-02 22:59:38'),
(1341, 12, '2018-11-02 12:59:39', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 22:59:39', '2018-11-02 22:59:39'),
(1342, 13, '2018-11-02 12:59:40', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 22:59:40', '2018-11-02 22:59:40'),
(1343, 14, '2018-11-02 12:59:41', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 22:59:41', '2018-11-02 22:59:41'),
(1344, 15, '2018-11-02 12:59:42', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 22:59:42', '2018-11-02 22:59:42'),
(1345, 16, '2018-11-02 12:59:43', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 22:59:43', '2018-11-02 22:59:43'),
(1346, 17, '2018-11-02 12:59:44', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 22:59:44', '2018-11-02 22:59:44'),
(1347, 18, '2018-11-02 12:59:44', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 22:59:44', '2018-11-02 22:59:44'),
(1348, 19, '2018-11-02 12:59:45', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 22:59:45', '2018-11-02 22:59:45'),
(1349, 20, '2018-11-02 12:59:46', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 22:59:46', '2018-11-02 22:59:46'),
(1350, 24, '2018-11-02 12:59:47', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 11, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 22:59:47', '2018-11-02 22:59:47'),
(1351, 26, '2018-11-02 12:59:48', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 22:59:48', '2018-11-02 22:59:48'),
(1352, 28, '2018-11-02 12:59:49', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 22:59:49', '2018-11-02 22:59:49'),
(1353, 5, '2018-11-02 13:01:38', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:01:38', '2018-11-02 23:01:38'),
(1354, 6, '2018-11-02 13:01:39', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:01:39', '2018-11-02 23:01:39'),
(1355, 7, '2018-11-02 13:01:40', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:01:40', '2018-11-02 23:01:40'),
(1356, 8, '2018-11-02 13:01:41', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:01:41', '2018-11-02 23:01:41'),
(1357, 9, '2018-11-02 13:01:42', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:01:42', '2018-11-02 23:01:42'),
(1358, 10, '2018-11-02 13:01:43', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:01:43', '2018-11-02 23:01:43'),
(1359, 11, '2018-11-02 13:01:43', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:01:43', '2018-11-02 23:01:43'),
(1360, 12, '2018-11-02 13:01:44', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:01:44', '2018-11-02 23:01:44'),
(1361, 13, '2018-11-02 13:01:45', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:01:45', '2018-11-02 23:01:45'),
(1362, 14, '2018-11-02 13:01:46', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:01:46', '2018-11-02 23:01:46'),
(1363, 15, '2018-11-02 13:01:47', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:01:47', '2018-11-02 23:01:47'),
(1364, 16, '2018-11-02 13:01:48', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:01:48', '2018-11-02 23:01:48'),
(1365, 17, '2018-11-02 13:01:49', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:01:49', '2018-11-02 23:01:49'),
(1366, 18, '2018-11-02 13:01:50', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:01:50', '2018-11-02 23:01:50'),
(1367, 19, '2018-11-02 13:01:51', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:01:51', '2018-11-02 23:01:51'),
(1368, 20, '2018-11-02 13:01:52', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:01:52', '2018-11-02 23:01:52'),
(1369, 24, '2018-11-02 13:01:53', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 11, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:01:53', '2018-11-02 23:01:53'),
(1370, 26, '2018-11-02 13:01:54', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:01:54', '2018-11-02 23:01:54'),
(1371, 28, '2018-11-02 13:01:55', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:01:55', '2018-11-02 23:01:55'),
(1372, 5, '2018-11-02 13:04:56', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:04:56', '2018-11-02 23:04:56'),
(1373, 6, '2018-11-02 13:04:57', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:04:57', '2018-11-02 23:04:57'),
(1374, 7, '2018-11-02 13:04:58', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:04:58', '2018-11-02 23:04:58'),
(1375, 8, '2018-11-02 13:04:59', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:04:59', '2018-11-02 23:04:59'),
(1376, 9, '2018-11-02 13:05:00', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:05:00', '2018-11-02 23:05:00'),
(1377, 10, '2018-11-02 13:05:01', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:05:01', '2018-11-02 23:05:01'),
(1378, 11, '2018-11-02 13:05:02', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:05:02', '2018-11-02 23:05:02'),
(1379, 12, '2018-11-02 13:05:03', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:05:03', '2018-11-02 23:05:03'),
(1380, 13, '2018-11-02 13:05:04', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:05:04', '2018-11-02 23:05:04'),
(1381, 14, '2018-11-02 13:05:05', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:05:05', '2018-11-02 23:05:05'),
(1382, 15, '2018-11-02 13:05:06', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:05:06', '2018-11-02 23:05:06'),
(1383, 16, '2018-11-02 13:05:08', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:05:08', '2018-11-02 23:05:08'),
(1384, 17, '2018-11-02 13:05:09', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:05:09', '2018-11-02 23:05:09'),
(1385, 18, '2018-11-02 13:05:10', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:05:10', '2018-11-02 23:05:10'),
(1386, 19, '2018-11-02 13:05:11', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:05:11', '2018-11-02 23:05:11'),
(1387, 20, '2018-11-02 13:05:12', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:05:12', '2018-11-02 23:05:12'),
(1388, 24, '2018-11-02 13:05:14', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 11, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:05:14', '2018-11-02 23:05:14'),
(1389, 26, '2018-11-02 13:05:15', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:05:15', '2018-11-02 23:05:15'),
(1390, 28, '2018-11-02 13:05:16', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:05:16', '2018-11-02 23:05:16'),
(1391, 5, '2018-11-02 13:07:12', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:07:12', '2018-11-02 23:07:12'),
(1392, 6, '2018-11-02 13:07:14', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:07:14', '2018-11-02 23:07:14'),
(1393, 7, '2018-11-02 13:07:16', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:07:16', '2018-11-02 23:07:16'),
(1394, 8, '2018-11-02 13:07:17', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:07:17', '2018-11-02 23:07:17'),
(1395, 9, '2018-11-02 13:07:18', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:07:18', '2018-11-02 23:07:18'),
(1396, 10, '2018-11-02 13:07:20', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:07:20', '2018-11-02 23:07:20'),
(1397, 11, '2018-11-02 13:07:21', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:07:21', '2018-11-02 23:07:21'),
(1398, 12, '2018-11-02 13:07:22', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:07:22', '2018-11-02 23:07:22'),
(1399, 13, '2018-11-02 13:07:23', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:07:23', '2018-11-02 23:07:23'),
(1400, 14, '2018-11-02 13:07:24', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:07:24', '2018-11-02 23:07:24'),
(1401, 15, '2018-11-02 13:07:25', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:07:25', '2018-11-02 23:07:25'),
(1402, 16, '2018-11-02 13:07:26', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:07:26', '2018-11-02 23:07:26'),
(1403, 17, '2018-11-02 13:07:27', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:07:27', '2018-11-02 23:07:27'),
(1404, 18, '2018-11-02 13:07:28', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:07:28', '2018-11-02 23:07:28'),
(1405, 19, '2018-11-02 13:07:29', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:07:29', '2018-11-02 23:07:29'),
(1406, 20, '2018-11-02 13:07:31', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:07:31', '2018-11-02 23:07:31'),
(1407, 24, '2018-11-02 13:07:32', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 11, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:07:32', '2018-11-02 23:07:32'),
(1408, 26, '2018-11-02 13:07:34', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:07:34', '2018-11-02 23:07:34'),
(1409, 28, '2018-11-02 13:07:35', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:07:35', '2018-11-02 23:07:35'),
(1410, 5, '2018-11-02 13:07:53', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:07:53', '2018-11-02 23:07:53'),
(1411, 6, '2018-11-02 13:07:54', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:07:54', '2018-11-02 23:07:54'),
(1412, 7, '2018-11-02 13:07:56', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:07:56', '2018-11-02 23:07:56'),
(1413, 8, '2018-11-02 13:07:57', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:07:57', '2018-11-02 23:07:57'),
(1414, 9, '2018-11-02 13:07:58', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:07:58', '2018-11-02 23:07:58'),
(1415, 10, '2018-11-02 13:07:59', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:07:59', '2018-11-02 23:07:59'),
(1416, 11, '2018-11-02 13:08:01', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:01', '2018-11-02 23:08:01'),
(1417, 12, '2018-11-02 13:08:02', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:02', '2018-11-02 23:08:02'),
(1418, 13, '2018-11-02 13:08:04', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:04', '2018-11-02 23:08:04'),
(1419, 14, '2018-11-02 13:08:06', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:06', '2018-11-02 23:08:06'),
(1420, 15, '2018-11-02 13:08:07', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:07', '2018-11-02 23:08:07'),
(1421, 16, '2018-11-02 13:08:08', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:08', '2018-11-02 23:08:08'),
(1422, 17, '2018-11-02 13:08:09', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:09', '2018-11-02 23:08:09'),
(1423, 18, '2018-11-02 13:08:10', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:10', '2018-11-02 23:08:10'),
(1424, 19, '2018-11-02 13:08:13', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:13', '2018-11-02 23:08:13'),
(1425, 20, '2018-11-02 13:08:14', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:14', '2018-11-02 23:08:14'),
(1426, 5, '2018-11-02 13:08:26', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:26', '2018-11-02 23:08:26'),
(1427, 6, '2018-11-02 13:08:29', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:29', '2018-11-02 23:08:29'),
(1428, 7, '2018-11-02 13:08:32', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:32', '2018-11-02 23:08:32'),
(1429, 8, '2018-11-02 13:08:34', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:34', '2018-11-02 23:08:34'),
(1430, 9, '2018-11-02 13:08:36', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:36', '2018-11-02 23:08:36'),
(1431, 10, '2018-11-02 13:08:38', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:38', '2018-11-02 23:08:38'),
(1432, 11, '2018-11-02 13:08:40', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:40', '2018-11-02 23:08:40'),
(1433, 12, '2018-11-02 13:08:41', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:41', '2018-11-02 23:08:41'),
(1434, 13, '2018-11-02 13:08:42', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:42', '2018-11-02 23:08:42'),
(1435, 14, '2018-11-02 13:08:43', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:43', '2018-11-02 23:08:43'),
(1436, 15, '2018-11-02 13:08:45', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:45', '2018-11-02 23:08:45'),
(1437, 16, '2018-11-02 13:08:46', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:46', '2018-11-02 23:08:46'),
(1438, 17, '2018-11-02 13:08:47', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:47', '2018-11-02 23:08:47'),
(1439, 18, '2018-11-02 13:08:48', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:48', '2018-11-02 23:08:48'),
(1440, 19, '2018-11-02 13:08:49', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:49', '2018-11-02 23:08:49'),
(1441, 20, '2018-11-02 13:08:50', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:50', '2018-11-02 23:08:50'),
(1442, 24, '2018-11-02 13:08:51', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 11, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:51', '2018-11-02 23:08:51'),
(1443, 26, '2018-11-02 13:08:53', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:53', '2018-11-02 23:08:53'),
(1444, 28, '2018-11-02 13:08:54', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:08:54', '2018-11-02 23:08:54'),
(1445, 21, '2018-11-02 13:10:32', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.99, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:10:32', '2018-11-02 23:10:32'),
(1446, 22, '2018-11-02 13:10:33', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.7, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:10:33', '2018-11-02 23:10:33'),
(1447, 23, '2018-11-02 13:10:34', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.82, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:10:34', '2018-11-02 23:10:34'),
(1448, 25, '2018-11-02 13:10:36', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 10, 0.73, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:10:36', '2018-11-02 23:10:36'),
(1449, 27, '2018-11-02 13:10:44', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 3', 2, 0, '2018-11-08 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:10:44', '2018-11-02 23:10:44'),
(1450, 5, '2018-11-02 13:12:34', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:12:34', '2018-11-02 23:12:34'),
(1451, 6, '2018-11-02 13:12:37', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:12:37', '2018-11-02 23:12:37'),
(1452, 7, '2018-11-02 13:12:40', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:12:40', '2018-11-02 23:12:40'),
(1453, 8, '2018-11-02 13:12:43', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:12:43', '2018-11-02 23:12:43'),
(1454, 9, '2018-11-02 13:12:46', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:12:46', '2018-11-02 23:12:46'),
(1455, 10, '2018-11-02 13:12:48', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:12:48', '2018-11-02 23:12:48'),
(1456, 11, '2018-11-02 13:12:50', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:12:50', '2018-11-02 23:12:50'),
(1457, 12, '2018-11-02 13:12:53', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:12:53', '2018-11-02 23:12:53'),
(1458, 13, '2018-11-02 13:12:56', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:12:56', '2018-11-02 23:12:56'),
(1459, 14, '2018-11-02 13:12:57', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:12:57', '2018-11-02 23:12:57'),
(1460, 15, '2018-11-02 13:12:59', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:12:59', '2018-11-02 23:12:59'),
(1461, 16, '2018-11-02 13:13:00', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:13:00', '2018-11-02 23:13:00'),
(1462, 17, '2018-11-02 13:13:01', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:13:01', '2018-11-02 23:13:01'),
(1463, 18, '2018-11-02 13:13:03', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:13:03', '2018-11-02 23:13:03'),
(1464, 19, '2018-11-02 13:13:04', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:13:04', '2018-11-02 23:13:04'),
(1465, 5, '2018-11-02 13:13:15', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:13:15', '2018-11-02 23:13:15'),
(1466, 6, '2018-11-02 13:13:16', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:13:16', '2018-11-02 23:13:16');
INSERT INTO `taskhs` (`id`, `id_origin`, `mod_date`, `des`, `editor`, `email`, `text`, `duration`, `progress`, `start_date`, `parent`, `type`, `priority`, `socket`, `status`, `event`, `sortorder`, `project_id`, `workedHours`, `assigned`, `created_at`, `updated_at`) VALUES
(1467, 7, '2018-11-02 13:13:17', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:13:17', '2018-11-02 23:13:17'),
(1468, 8, '2018-11-02 13:13:18', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:13:18', '2018-11-02 23:13:18'),
(1469, 9, '2018-11-02 13:13:19', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:13:19', '2018-11-02 23:13:19'),
(1470, 10, '2018-11-02 13:13:20', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:13:20', '2018-11-02 23:13:20'),
(1471, 11, '2018-11-02 13:13:21', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:13:21', '2018-11-02 23:13:21'),
(1472, 12, '2018-11-02 13:13:22', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:13:22', '2018-11-02 23:13:22'),
(1473, 13, '2018-11-02 13:13:23', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:13:23', '2018-11-02 23:13:23'),
(1474, 14, '2018-11-02 13:13:24', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:13:24', '2018-11-02 23:13:24'),
(1475, 15, '2018-11-02 13:13:25', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:13:25', '2018-11-02 23:13:25'),
(1476, 16, '2018-11-02 13:13:26', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:13:26', '2018-11-02 23:13:26'),
(1477, 17, '2018-11-02 13:13:27', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:13:27', '2018-11-02 23:13:27'),
(1478, 18, '2018-11-02 13:13:28', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:13:28', '2018-11-02 23:13:28'),
(1479, 19, '2018-11-02 13:13:29', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:13:29', '2018-11-02 23:13:29'),
(1480, 20, '2018-11-02 13:13:30', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:13:30', '2018-11-02 23:13:30'),
(1481, 24, '2018-11-02 13:13:31', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 11, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:13:31', '2018-11-02 23:13:31'),
(1482, 26, '2018-11-02 13:13:32', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:13:32', '2018-11-02 23:13:32'),
(1483, 28, '2018-11-02 13:13:34', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:13:34', '2018-11-02 23:13:34'),
(1484, 5, '2018-11-02 13:14:09', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:14:09', '2018-11-02 23:14:09'),
(1485, 6, '2018-11-02 13:14:10', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:14:10', '2018-11-02 23:14:10'),
(1486, 7, '2018-11-02 13:14:11', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:14:11', '2018-11-02 23:14:11'),
(1487, 8, '2018-11-02 13:14:12', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:14:12', '2018-11-02 23:14:12'),
(1488, 9, '2018-11-02 13:14:13', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:14:13', '2018-11-02 23:14:13'),
(1489, 10, '2018-11-02 13:14:14', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:14:14', '2018-11-02 23:14:14'),
(1490, 11, '2018-11-02 13:14:15', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:14:15', '2018-11-02 23:14:15'),
(1491, 12, '2018-11-02 13:14:16', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:14:16', '2018-11-02 23:14:16'),
(1492, 13, '2018-11-02 13:14:17', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:14:17', '2018-11-02 23:14:17'),
(1493, 14, '2018-11-02 13:14:17', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:14:17', '2018-11-02 23:14:17'),
(1494, 15, '2018-11-02 13:14:18', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:14:18', '2018-11-02 23:14:18'),
(1495, 16, '2018-11-02 13:14:19', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:14:19', '2018-11-02 23:14:19'),
(1496, 17, '2018-11-02 13:14:20', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:14:20', '2018-11-02 23:14:20'),
(1497, 18, '2018-11-02 13:14:21', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:14:21', '2018-11-02 23:14:21'),
(1498, 19, '2018-11-02 13:14:22', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:14:22', '2018-11-02 23:14:22'),
(1499, 20, '2018-11-02 13:14:23', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:14:23', '2018-11-02 23:14:23'),
(1500, 24, '2018-11-02 13:14:24', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 11, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:14:24', '2018-11-02 23:14:24'),
(1501, 26, '2018-11-02 13:14:25', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:14:25', '2018-11-02 23:14:25'),
(1502, 28, '2018-11-02 13:14:26', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:14:26', '2018-11-02 23:14:26'),
(1503, 5, '2018-11-02 13:20:54', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:20:54', '2018-11-02 23:20:54'),
(1504, 6, '2018-11-02 13:20:55', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:20:55', '2018-11-02 23:20:55'),
(1505, 7, '2018-11-02 13:20:55', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:20:55', '2018-11-02 23:20:55'),
(1506, 8, '2018-11-02 13:20:56', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:20:56', '2018-11-02 23:20:56'),
(1507, 9, '2018-11-02 13:20:57', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:20:57', '2018-11-02 23:20:57'),
(1508, 10, '2018-11-02 13:20:58', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:20:58', '2018-11-02 23:20:58'),
(1509, 11, '2018-11-02 13:20:59', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:20:59', '2018-11-02 23:20:59'),
(1510, 12, '2018-11-02 13:21:00', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:21:00', '2018-11-02 23:21:00'),
(1511, 13, '2018-11-02 13:21:01', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:21:01', '2018-11-02 23:21:01'),
(1512, 14, '2018-11-02 13:21:02', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:21:02', '2018-11-02 23:21:02'),
(1513, 15, '2018-11-02 13:21:03', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:21:03', '2018-11-02 23:21:03'),
(1514, 16, '2018-11-02 13:21:04', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:21:04', '2018-11-02 23:21:04'),
(1515, 17, '2018-11-02 13:21:05', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:21:05', '2018-11-02 23:21:05'),
(1516, 18, '2018-11-02 13:21:06', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:21:06', '2018-11-02 23:21:06'),
(1517, 19, '2018-11-02 13:21:07', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:21:07', '2018-11-02 23:21:07'),
(1518, 20, '2018-11-02 13:21:07', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:21:07', '2018-11-02 23:21:07'),
(1519, 24, '2018-11-02 13:21:08', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 11, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:21:08', '2018-11-02 23:21:08'),
(1520, 26, '2018-11-02 13:21:09', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:21:09', '2018-11-02 23:21:09'),
(1521, 28, '2018-11-02 13:21:10', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:21:10', '2018-11-02 23:21:10'),
(1522, 21, '2018-11-02 13:21:26', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.99, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:21:26', '2018-11-02 23:21:26'),
(1523, 22, '2018-11-02 13:21:27', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.7, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:21:27', '2018-11-02 23:21:27'),
(1524, 23, '2018-11-02 13:21:28', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.82, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:21:28', '2018-11-02 23:21:28'),
(1525, 25, '2018-11-02 13:21:29', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 10, 0.73, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-02 23:21:29', '2018-11-02 23:21:29'),
(1526, 5, '2018-11-02 14:41:28', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 00:41:28', '2018-11-03 00:41:28'),
(1527, 6, '2018-11-02 14:41:29', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 00:41:29', '2018-11-03 00:41:29'),
(1528, 7, '2018-11-02 14:41:30', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 00:41:30', '2018-11-03 00:41:30'),
(1529, 8, '2018-11-02 14:41:31', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 00:41:31', '2018-11-03 00:41:31'),
(1530, 9, '2018-11-02 14:41:32', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 00:41:32', '2018-11-03 00:41:32'),
(1531, 10, '2018-11-02 14:41:33', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 00:41:33', '2018-11-03 00:41:33'),
(1532, 11, '2018-11-02 14:41:33', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 00:41:33', '2018-11-03 00:41:33'),
(1533, 12, '2018-11-02 14:41:34', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 00:41:34', '2018-11-03 00:41:34'),
(1534, 13, '2018-11-02 14:41:35', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 00:41:35', '2018-11-03 00:41:35'),
(1535, 14, '2018-11-02 14:41:36', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 00:41:36', '2018-11-03 00:41:36'),
(1536, 15, '2018-11-02 14:41:37', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 00:41:37', '2018-11-03 00:41:37'),
(1537, 16, '2018-11-02 14:41:38', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 00:41:38', '2018-11-03 00:41:38'),
(1538, 17, '2018-11-02 14:41:39', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 00:41:39', '2018-11-03 00:41:39'),
(1539, 18, '2018-11-02 14:41:40', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 00:41:40', '2018-11-03 00:41:40'),
(1540, 19, '2018-11-02 14:41:41', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 00:41:41', '2018-11-03 00:41:41'),
(1541, 20, '2018-11-02 14:41:43', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 00:41:43', '2018-11-03 00:41:43'),
(1542, 24, '2018-11-02 14:41:44', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 11, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 00:41:44', '2018-11-03 00:41:44'),
(1543, 26, '2018-11-02 14:41:45', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 00:41:45', '2018-11-03 00:41:45'),
(1544, 28, '2018-11-02 14:41:46', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 00:41:46', '2018-11-03 00:41:46'),
(1545, 5, '2018-11-02 15:56:06', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:06', '2018-11-03 01:56:06'),
(1546, 6, '2018-11-02 15:56:07', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:07', '2018-11-03 01:56:07'),
(1547, 7, '2018-11-02 15:56:08', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:08', '2018-11-03 01:56:08'),
(1548, 8, '2018-11-02 15:56:09', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:09', '2018-11-03 01:56:09'),
(1549, 9, '2018-11-02 15:56:10', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:10', '2018-11-03 01:56:10'),
(1550, 10, '2018-11-02 15:56:11', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:11', '2018-11-03 01:56:11'),
(1551, 11, '2018-11-02 15:56:12', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:12', '2018-11-03 01:56:12'),
(1552, 12, '2018-11-02 15:56:13', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:13', '2018-11-03 01:56:13'),
(1553, 13, '2018-11-02 15:56:14', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:14', '2018-11-03 01:56:14'),
(1554, 14, '2018-11-02 15:56:15', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:15', '2018-11-03 01:56:15'),
(1555, 15, '2018-11-02 15:56:16', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:16', '2018-11-03 01:56:16'),
(1556, 16, '2018-11-02 15:56:17', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:17', '2018-11-03 01:56:17'),
(1557, 17, '2018-11-02 15:56:18', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:18', '2018-11-03 01:56:18'),
(1558, 18, '2018-11-02 15:56:19', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:19', '2018-11-03 01:56:19'),
(1559, 19, '2018-11-02 15:56:20', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:20', '2018-11-03 01:56:20'),
(1560, 20, '2018-11-02 15:56:21', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:21', '2018-11-03 01:56:21'),
(1561, 24, '2018-11-02 15:56:22', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 11, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:22', '2018-11-03 01:56:22'),
(1562, 26, '2018-11-02 15:56:23', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:23', '2018-11-03 01:56:23'),
(1563, 28, '2018-11-02 15:56:24', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:24', '2018-11-03 01:56:24'),
(1564, 5, '2018-11-02 15:56:40', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:40', '2018-11-03 01:56:40'),
(1565, 6, '2018-11-02 15:56:41', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:41', '2018-11-03 01:56:41'),
(1566, 7, '2018-11-02 15:56:42', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:42', '2018-11-03 01:56:42'),
(1567, 8, '2018-11-02 15:56:43', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:43', '2018-11-03 01:56:43'),
(1568, 9, '2018-11-02 15:56:44', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:44', '2018-11-03 01:56:44'),
(1569, 10, '2018-11-02 15:56:45', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:45', '2018-11-03 01:56:45'),
(1570, 11, '2018-11-02 15:56:46', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:46', '2018-11-03 01:56:46'),
(1571, 12, '2018-11-02 15:56:47', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:47', '2018-11-03 01:56:47'),
(1572, 13, '2018-11-02 15:56:48', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:48', '2018-11-03 01:56:48'),
(1573, 14, '2018-11-02 15:56:49', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:49', '2018-11-03 01:56:49'),
(1574, 15, '2018-11-02 15:56:50', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:50', '2018-11-03 01:56:50'),
(1575, 16, '2018-11-02 15:56:51', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:51', '2018-11-03 01:56:51'),
(1576, 17, '2018-11-02 15:56:51', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:51', '2018-11-03 01:56:51'),
(1577, 18, '2018-11-02 15:56:52', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:52', '2018-11-03 01:56:52'),
(1578, 19, '2018-11-02 15:56:53', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:53', '2018-11-03 01:56:53'),
(1579, 20, '2018-11-02 15:56:54', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:54', '2018-11-03 01:56:54'),
(1580, 24, '2018-11-02 15:56:55', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 11, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:55', '2018-11-03 01:56:55'),
(1581, 26, '2018-11-02 15:56:56', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:56', '2018-11-03 01:56:56'),
(1582, 28, '2018-11-02 15:56:57', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:56:57', '2018-11-03 01:56:57'),
(1583, 21, '2018-11-02 15:57:20', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.99, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:57:20', '2018-11-03 01:57:20'),
(1584, 22, '2018-11-02 15:57:20', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.7, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:57:20', '2018-11-03 01:57:20'),
(1585, 23, '2018-11-02 15:57:21', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.82, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:57:21', '2018-11-03 01:57:21'),
(1586, 25, '2018-11-02 15:57:22', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 10, 0.73, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:57:22', '2018-11-03 01:57:22'),
(1587, 5, '2018-11-02 15:59:26', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:59:26', '2018-11-03 01:59:26'),
(1588, 6, '2018-11-02 15:59:27', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:59:27', '2018-11-03 01:59:27'),
(1589, 7, '2018-11-02 15:59:28', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:59:28', '2018-11-03 01:59:28'),
(1590, 8, '2018-11-02 15:59:29', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:59:29', '2018-11-03 01:59:29'),
(1591, 9, '2018-11-02 15:59:30', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:59:30', '2018-11-03 01:59:30'),
(1592, 10, '2018-11-02 15:59:31', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:59:31', '2018-11-03 01:59:31'),
(1593, 11, '2018-11-02 15:59:33', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:59:33', '2018-11-03 01:59:33'),
(1594, 12, '2018-11-02 15:59:34', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:59:34', '2018-11-03 01:59:34'),
(1595, 13, '2018-11-02 15:59:36', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:59:36', '2018-11-03 01:59:36'),
(1596, 14, '2018-11-02 15:59:38', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:59:38', '2018-11-03 01:59:38'),
(1597, 15, '2018-11-02 15:59:39', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:59:39', '2018-11-03 01:59:39'),
(1598, 16, '2018-11-02 15:59:40', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:59:40', '2018-11-03 01:59:40'),
(1599, 17, '2018-11-02 15:59:41', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:59:41', '2018-11-03 01:59:41'),
(1600, 18, '2018-11-02 15:59:42', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:59:42', '2018-11-03 01:59:42'),
(1601, 19, '2018-11-02 15:59:43', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:59:43', '2018-11-03 01:59:43'),
(1602, 20, '2018-11-02 15:59:44', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:59:44', '2018-11-03 01:59:44'),
(1603, 24, '2018-11-02 15:59:45', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 11, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:59:45', '2018-11-03 01:59:45'),
(1604, 26, '2018-11-02 15:59:46', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:59:46', '2018-11-03 01:59:46'),
(1605, 28, '2018-11-02 15:59:47', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 01:59:47', '2018-11-03 01:59:47'),
(1606, 5, '2018-11-02 16:01:15', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:01:15', '2018-11-03 02:01:15'),
(1607, 6, '2018-11-02 16:01:16', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:01:16', '2018-11-03 02:01:16'),
(1608, 7, '2018-11-02 16:01:17', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:01:17', '2018-11-03 02:01:17'),
(1609, 8, '2018-11-02 16:01:18', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:01:18', '2018-11-03 02:01:18'),
(1610, 9, '2018-11-02 16:01:19', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:01:19', '2018-11-03 02:01:19'),
(1611, 10, '2018-11-02 16:01:20', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:01:20', '2018-11-03 02:01:20'),
(1612, 11, '2018-11-02 16:01:21', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:01:21', '2018-11-03 02:01:21'),
(1613, 12, '2018-11-02 16:01:22', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:01:22', '2018-11-03 02:01:22'),
(1614, 13, '2018-11-02 16:01:23', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:01:23', '2018-11-03 02:01:23'),
(1615, 14, '2018-11-02 16:01:24', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:01:24', '2018-11-03 02:01:24'),
(1616, 15, '2018-11-02 16:01:25', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:01:25', '2018-11-03 02:01:25'),
(1617, 16, '2018-11-02 16:01:26', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:01:26', '2018-11-03 02:01:26'),
(1618, 17, '2018-11-02 16:01:27', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:01:27', '2018-11-03 02:01:27'),
(1619, 18, '2018-11-02 16:01:28', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:01:28', '2018-11-03 02:01:28'),
(1620, 19, '2018-11-02 16:01:29', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:01:29', '2018-11-03 02:01:29'),
(1621, 20, '2018-11-02 16:01:30', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:01:30', '2018-11-03 02:01:30'),
(1622, 24, '2018-11-02 16:01:31', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 11, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:01:31', '2018-11-03 02:01:31'),
(1623, 26, '2018-11-02 16:01:32', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:01:32', '2018-11-03 02:01:32'),
(1624, 28, '2018-11-02 16:01:33', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:01:33', '2018-11-03 02:01:33'),
(1625, 21, '2018-11-02 16:02:10', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.99, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:02:10', '2018-11-03 02:02:10'),
(1626, 22, '2018-11-02 16:02:11', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.7, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:02:11', '2018-11-03 02:02:11'),
(1627, 23, '2018-11-02 16:02:12', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.82, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:02:12', '2018-11-03 02:02:12'),
(1628, 25, '2018-11-02 16:02:13', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 10, 0.73, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:02:13', '2018-11-03 02:02:13'),
(1629, 27, '2018-11-02 16:02:18', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 3', 2, 0, '2018-11-08 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:02:18', '2018-11-03 02:02:18'),
(1630, 5, '2018-11-02 16:09:28', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:09:28', '2018-11-03 02:09:28'),
(1631, 6, '2018-11-02 16:09:29', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:09:29', '2018-11-03 02:09:29'),
(1632, 7, '2018-11-02 16:09:30', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:09:30', '2018-11-03 02:09:30'),
(1633, 8, '2018-11-02 16:09:31', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:09:31', '2018-11-03 02:09:31'),
(1634, 9, '2018-11-02 16:09:32', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:09:32', '2018-11-03 02:09:32'),
(1635, 10, '2018-11-02 16:09:33', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:09:33', '2018-11-03 02:09:33'),
(1636, 11, '2018-11-02 16:09:34', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:09:34', '2018-11-03 02:09:34'),
(1637, 12, '2018-11-02 16:09:35', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:09:35', '2018-11-03 02:09:35'),
(1638, 13, '2018-11-02 16:09:36', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:09:36', '2018-11-03 02:09:36'),
(1639, 14, '2018-11-02 16:09:37', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:09:37', '2018-11-03 02:09:37'),
(1640, 15, '2018-11-02 16:09:38', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:09:38', '2018-11-03 02:09:38'),
(1641, 16, '2018-11-02 16:09:39', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:09:39', '2018-11-03 02:09:39'),
(1642, 17, '2018-11-02 16:09:40', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:09:40', '2018-11-03 02:09:40'),
(1643, 18, '2018-11-02 16:09:41', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:09:41', '2018-11-03 02:09:41'),
(1644, 19, '2018-11-02 16:09:42', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:09:42', '2018-11-03 02:09:42'),
(1645, 20, '2018-11-02 16:09:43', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:09:43', '2018-11-03 02:09:43'),
(1646, 24, '2018-11-02 16:09:44', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 11, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:09:44', '2018-11-03 02:09:44'),
(1647, 26, '2018-11-02 16:09:45', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:09:45', '2018-11-03 02:09:45'),
(1648, 28, '2018-11-02 16:09:46', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 02:09:46', '2018-11-03 02:09:46'),
(1649, 626, '2018-11-02 16:16:00', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 1', 12, 0.8929765886287625, '2018-10-13 00:00:00', 0, 'normal', NULL, '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-03 02:16:00', '2018-11-03 02:16:00'),
(1650, 627, '2018-11-02 18:04:01', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.6222222222222222, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'unassigned', '2018-11-03 04:04:01', '2018-11-03 04:04:01'),
(1651, 627, '2018-11-02 18:04:06', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.7466666666666667, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'unassigned', '2018-11-03 04:04:06', '2018-11-03 04:04:06'),
(1652, 5, '2018-11-02 18:09:28', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:09:28', '2018-11-03 04:09:28'),
(1653, 6, '2018-11-02 18:09:29', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:09:29', '2018-11-03 04:09:29'),
(1654, 7, '2018-11-02 18:09:30', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:09:30', '2018-11-03 04:09:30'),
(1655, 8, '2018-11-02 18:09:31', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:09:31', '2018-11-03 04:09:31'),
(1656, 9, '2018-11-02 18:09:32', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:09:32', '2018-11-03 04:09:32'),
(1657, 10, '2018-11-02 18:09:33', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:09:33', '2018-11-03 04:09:33'),
(1658, 11, '2018-11-02 18:09:34', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:09:34', '2018-11-03 04:09:34'),
(1659, 12, '2018-11-02 18:09:35', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:09:35', '2018-11-03 04:09:35'),
(1660, 13, '2018-11-02 18:09:36', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:09:36', '2018-11-03 04:09:36'),
(1661, 14, '2018-11-02 18:09:37', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:09:37', '2018-11-03 04:09:37'),
(1662, 15, '2018-11-02 18:09:38', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:09:38', '2018-11-03 04:09:38'),
(1663, 16, '2018-11-02 18:09:39', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:09:39', '2018-11-03 04:09:39'),
(1664, 17, '2018-11-02 18:09:40', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:09:40', '2018-11-03 04:09:40');
INSERT INTO `taskhs` (`id`, `id_origin`, `mod_date`, `des`, `editor`, `email`, `text`, `duration`, `progress`, `start_date`, `parent`, `type`, `priority`, `socket`, `status`, `event`, `sortorder`, `project_id`, `workedHours`, `assigned`, `created_at`, `updated_at`) VALUES
(1665, 18, '2018-11-02 18:09:41', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:09:41', '2018-11-03 04:09:41'),
(1666, 19, '2018-11-02 18:09:41', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:09:41', '2018-11-03 04:09:41'),
(1667, 20, '2018-11-02 18:09:42', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:09:42', '2018-11-03 04:09:42'),
(1668, 24, '2018-11-02 18:09:43', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 11, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:09:43', '2018-11-03 04:09:43'),
(1669, 26, '2018-11-02 18:09:44', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:09:44', '2018-11-03 04:09:44'),
(1670, 28, '2018-11-02 18:09:45', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:09:45', '2018-11-03 04:09:45'),
(1671, 21, '2018-11-02 18:18:24', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.99, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:18:24', '2018-11-03 04:18:24'),
(1672, 22, '2018-11-02 18:18:25', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.7, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:18:25', '2018-11-03 04:18:25'),
(1673, 23, '2018-11-02 18:18:26', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 11, 0.82, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:18:26', '2018-11-03 04:18:26'),
(1674, 25, '2018-11-02 18:18:27', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasdasd', 10, 0.73, '2018-10-27 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:18:27', '2018-11-03 04:18:27'),
(1675, 5, '2018-11-02 18:19:01', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:19:01', '2018-11-03 04:19:01'),
(1676, 6, '2018-11-02 18:19:02', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:19:02', '2018-11-03 04:19:02'),
(1677, 7, '2018-11-02 18:19:03', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:19:03', '2018-11-03 04:19:03'),
(1678, 8, '2018-11-02 18:19:04', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:19:04', '2018-11-03 04:19:04'),
(1679, 9, '2018-11-02 18:19:05', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:19:05', '2018-11-03 04:19:05'),
(1680, 10, '2018-11-02 18:19:06', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:19:06', '2018-11-03 04:19:06'),
(1681, 11, '2018-11-02 18:19:07', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:19:07', '2018-11-03 04:19:07'),
(1682, 12, '2018-11-02 18:19:08', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:19:08', '2018-11-03 04:19:08'),
(1683, 13, '2018-11-02 18:19:09', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:19:09', '2018-11-03 04:19:09'),
(1684, 14, '2018-11-02 18:19:10', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:19:10', '2018-11-03 04:19:10'),
(1685, 15, '2018-11-02 18:19:11', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:19:11', '2018-11-03 04:19:11'),
(1686, 16, '2018-11-02 18:19:12', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:19:12', '2018-11-03 04:19:12'),
(1687, 17, '2018-11-02 18:19:13', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:19:13', '2018-11-03 04:19:13'),
(1688, 18, '2018-11-02 18:19:14', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:19:14', '2018-11-03 04:19:14'),
(1689, 19, '2018-11-02 18:19:15', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:19:15', '2018-11-03 04:19:15'),
(1690, 20, '2018-11-02 18:19:16', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:19:16', '2018-11-03 04:19:16'),
(1691, 24, '2018-11-02 18:19:17', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 11, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:19:17', '2018-11-03 04:19:17'),
(1692, 26, '2018-11-02 18:19:18', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:19:18', '2018-11-03 04:19:18'),
(1693, 28, '2018-11-02 18:19:19', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 04:19:19', '2018-11-03 04:19:19'),
(1694, 5, '2018-11-02 19:47:22', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 05:47:22', '2018-11-03 05:47:22'),
(1695, 6, '2018-11-02 19:47:23', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 05:47:23', '2018-11-03 05:47:23'),
(1696, 7, '2018-11-02 19:47:24', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 05:47:24', '2018-11-03 05:47:24'),
(1697, 8, '2018-11-02 19:47:25', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 05:47:25', '2018-11-03 05:47:25'),
(1698, 9, '2018-11-02 19:47:26', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 05:47:26', '2018-11-03 05:47:26'),
(1699, 10, '2018-11-02 19:47:27', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 05:47:27', '2018-11-03 05:47:27'),
(1700, 11, '2018-11-02 19:47:28', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 05:47:28', '2018-11-03 05:47:28'),
(1701, 12, '2018-11-02 19:47:29', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 05:47:29', '2018-11-03 05:47:29'),
(1702, 13, '2018-11-02 19:47:30', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 05:47:30', '2018-11-03 05:47:30'),
(1703, 14, '2018-11-02 19:47:31', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 05:47:31', '2018-11-03 05:47:31'),
(1704, 15, '2018-11-02 19:47:32', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 05:47:32', '2018-11-03 05:47:32'),
(1705, 16, '2018-11-02 19:47:33', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 05:47:33', '2018-11-03 05:47:33'),
(1706, 17, '2018-11-02 19:47:34', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 05:47:34', '2018-11-03 05:47:34'),
(1707, 18, '2018-11-02 19:47:35', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 05:47:35', '2018-11-03 05:47:35'),
(1708, 19, '2018-11-02 19:47:36', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 05:47:36', '2018-11-03 05:47:36'),
(1709, 20, '2018-11-02 19:47:36', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 05:47:36', '2018-11-03 05:47:36'),
(1710, 24, '2018-11-02 19:47:37', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 11, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 05:47:37', '2018-11-03 05:47:37'),
(1711, 26, '2018-11-02 19:47:38', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 05:47:38', '2018-11-03 05:47:38'),
(1712, 28, '2018-11-02 19:47:39', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 05:47:39', '2018-11-03 05:47:39'),
(1713, 5, '2018-11-02 21:50:59', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.63, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 07:50:59', '2018-11-03 07:50:59'),
(1714, 6, '2018-11-02 21:51:00', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 07:51:00', '2018-11-03 07:51:00'),
(1715, 7, '2018-11-02 21:51:01', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.83, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 07:51:01', '2018-11-03 07:51:01'),
(1716, 8, '2018-11-02 21:51:02', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.82, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 07:51:02', '2018-11-03 07:51:02'),
(1717, 9, '2018-11-02 21:51:03', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 07:51:03', '2018-11-03 07:51:03'),
(1718, 10, '2018-11-02 21:51:05', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.68, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 07:51:05', '2018-11-03 07:51:05'),
(1719, 11, '2018-11-02 21:51:06', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 07:51:06', '2018-11-03 07:51:06'),
(1720, 12, '2018-11-02 21:51:07', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.77, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 07:51:07', '2018-11-03 07:51:07'),
(1721, 13, '2018-11-02 21:51:08', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.78, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 07:51:08', '2018-11-03 07:51:08'),
(1722, 14, '2018-11-02 21:51:09', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 07:51:09', '2018-11-03 07:51:09'),
(1723, 15, '2018-11-02 21:51:11', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 07:51:11', '2018-11-03 07:51:11'),
(1724, 16, '2018-11-02 21:51:12', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-asdasd', 10, 0.75, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 07:51:12', '2018-11-03 07:51:12'),
(1725, 17, '2018-11-02 21:51:13', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 10, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 07:51:13', '2018-11-03 07:51:13'),
(1726, 18, '2018-11-02 21:51:14', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 1, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 07:51:14', '2018-11-03 07:51:14'),
(1727, 19, '2018-11-02 21:51:15', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.76, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 07:51:15', '2018-11-03 07:51:15'),
(1728, 20, '2018-11-02 21:51:16', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 8, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 07:51:16', '2018-11-03 07:51:16'),
(1729, 24, '2018-11-02 21:51:18', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-tarea loca', 11, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 07:51:18', '2018-11-03 07:51:18'),
(1730, 26, '2018-11-02 21:51:19', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.79, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 07:51:19', '2018-11-03 07:51:19'),
(1731, 28, '2018-11-02 21:51:21', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '[History]-Tarea # 1', 12, 0.84, '2018-10-13 00:00:00', 0, NULL, NULL, NULL, NULL, 'Add Task', NULL, NULL, NULL, NULL, '2018-11-03 07:51:21', '2018-11-03 07:51:21'),
(1732, 626, '2018-11-03 20:02:48', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 1', 12, 0.89, '2018-10-13 00:00:00', 0, 'normal', NULL, '3wnJE66c5J', 'working', 'Drag Date', 371, 116, NULL, NULL, '2018-11-04 06:02:48', '2018-11-04 06:02:48'),
(1733, 1369, '2018-11-04 17:40:51', NULL, 'Yeison Caicedoe', NULL, 'Tarea 4', 5, NULL, '2018-11-04 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', NULL, 'Add Task', 1114, 116, NULL, 'unassigned', '2018-11-05 03:40:51', '2018-11-05 03:40:51'),
(1734, 1370, '2018-11-04 17:45:28', NULL, 'Yeison Caicedoe', NULL, 'yyy', 1, NULL, '2018-11-04 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', NULL, 'Add Task', 1115, 116, NULL, 'unassigned', '2018-11-05 03:45:28', '2018-11-05 03:45:28'),
(1735, 948, '2018-11-05 11:50:12', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 3', 5, 0, '2018-11-08 00:00:00', 0, 'normal', 'Normal', 'UOy2qkSAQa', 'working', 'Task Resize', 693, 116, NULL, 'unassigned', '2018-11-05 21:50:12', '2018-11-05 21:50:12'),
(1736, 626, '2018-11-05 12:53:33', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 33', 15, 0.89, '2018-10-13 00:00:00', 0, 'normal', NULL, '3wnJE66c5J', 'working', 'Task Resize', 371, 116, NULL, NULL, '2018-11-05 22:53:33', '2018-11-05 22:53:33'),
(1737, 948, '2018-11-05 12:53:38', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 3', 9, 0, '2018-11-08 00:00:00', 0, 'normal', 'Normal', 'UOy2qkSAQa', 'working', 'Task Resize', 693, 116, NULL, 'unassigned', '2018-11-05 22:53:38', '2018-11-05 22:53:38'),
(1738, 1371, '2018-11-05 12:54:13', NULL, 'Yeison Caicedoe', NULL, 'Nueva', 2, NULL, '2018-11-05 00:00:00', 0, 'normal', 'Normal', 'KRz8W59MeE', NULL, 'Add Task', 1116, 116, NULL, 'unassigned', '2018-11-05 22:54:13', '2018-11-05 22:54:13'),
(1739, 1369, '2018-11-06 10:18:54', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Drag Date', 1114, 116, NULL, NULL, '2018-11-06 20:18:54', '2018-11-06 20:18:54'),
(1740, 627, '2018-11-06 10:34:19', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.7333333333333333, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'unassigned', '2018-11-06 20:34:19', '2018-11-06 20:34:19'),
(1741, 627, '2018-11-06 10:35:28', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.73, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Drag Date', 372, 116, NULL, 'unassigned', '2018-11-06 20:35:28', '2018-11-06 20:35:28'),
(1742, 627, '2018-11-06 10:35:30', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.73, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Drag Date', 372, 116, NULL, 'unassigned', '2018-11-06 20:35:30', '2018-11-06 20:35:30'),
(1743, 626, '2018-11-06 12:27:41', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 33', 18, 0.89, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Task Resize', 371, 116, NULL, NULL, '2018-11-06 22:27:41', '2018-11-06 22:27:41'),
(1744, 627, '2018-11-06 14:08:11', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.7155555555555555, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-07 00:08:11', '2018-11-07 00:08:11'),
(1745, 627, '2018-11-06 14:12:42', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.6755555555555556, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-07 00:12:42', '2018-11-07 00:12:42'),
(1746, 627, '2018-11-06 15:20:00', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.5866666666666667, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-07 01:20:00', '2018-11-07 01:20:00'),
(1747, 627, '2018-11-06 15:25:11', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.6355555555555555, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-07 01:25:11', '2018-11-07 01:25:11'),
(1748, 627, '2018-11-06 15:30:58', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.7422222222222222, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-07 01:30:58', '2018-11-07 01:30:58'),
(1749, 626, '2018-11-06 15:34:24', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 33', 18, 0.8351893095768375, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-07 01:34:24', '2018-11-07 01:34:24'),
(1750, 627, '2018-11-06 15:37:13', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.6577777777777778, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-07 01:37:13', '2018-11-07 01:37:13'),
(1751, 948, '2018-11-06 15:39:54', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 3', 9, 0.14666666666666667, '2018-11-08 00:00:00', 0, 'normal', 'Normal', 'UOy2qkSAQa', 'working', 'Progress Update', 693, 116, NULL, 'unassigned', '2018-11-07 01:39:54', '2018-11-07 01:39:54'),
(1752, 1370, '2018-11-06 15:40:06', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'yyy', 1, 0.52, '2018-11-04 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1115, 116, NULL, NULL, '2018-11-07 01:40:06', '2018-11-07 01:40:06'),
(1753, 1369, '2018-11-06 15:43:19', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.216, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-07 01:43:19', '2018-11-07 01:43:19'),
(1754, 627, '2018-11-06 15:43:35', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.6977777777777778, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-07 01:43:35', '2018-11-07 01:43:35'),
(1755, 627, '2018-11-06 19:53:14', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.7066666666666667, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-07 05:53:14', '2018-11-07 05:53:14'),
(1756, 627, '2018-11-06 19:56:08', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.6577777777777778, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-07 05:56:08', '2018-11-07 05:56:08'),
(1757, 627, '2018-11-06 19:59:44', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.6755555555555556, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-07 05:59:44', '2018-11-07 05:59:44'),
(1758, 1369, '2018-11-06 20:03:13', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.456, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-07 06:03:13', '2018-11-07 06:03:13'),
(1759, 1369, '2018-11-06 20:03:33', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.816, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-07 06:03:33', '2018-11-07 06:03:33'),
(1760, 627, '2018-11-06 20:25:28', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.7288888888888889, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-07 06:25:28', '2018-11-07 06:25:28'),
(1761, 627, '2018-11-06 20:27:28', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.7377777777777778, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-07 06:27:28', '2018-11-07 06:27:28'),
(1762, 627, '2018-11-06 20:28:07', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.7866666666666666, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-07 06:28:07', '2018-11-07 06:28:07'),
(1763, 627, '2018-11-06 20:31:57', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.7955555555555556, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-07 06:31:57', '2018-11-07 06:31:57'),
(1764, 627, '2018-11-06 20:32:28', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.7333333333333333, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-07 06:32:28', '2018-11-07 06:32:28'),
(1765, 627, '2018-11-06 20:33:08', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.7111111111111111, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-07 06:33:08', '2018-11-07 06:33:08'),
(1766, 627, '2018-11-06 20:34:51', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.7822222222222223, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-07 06:34:51', '2018-11-07 06:34:51'),
(1767, 1369, '2018-11-06 20:35:14', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.648, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-07 06:35:14', '2018-11-07 06:35:14'),
(1768, 627, '2018-11-06 20:35:45', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.7333333333333333, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-07 06:35:45', '2018-11-07 06:35:45'),
(1769, 627, '2018-11-07 09:11:04', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.7422222222222222, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-07 19:11:04', '2018-11-07 19:11:04'),
(1770, 627, '2018-11-07 09:15:29', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.7555555555555555, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-07 19:15:29', '2018-11-07 19:15:29'),
(1771, 627, '2018-11-07 09:34:41', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.7111111111111111, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-07 19:34:41', '2018-11-07 19:34:41'),
(1772, 627, '2018-11-07 10:29:36', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.6577777777777778, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-07 20:29:36', '2018-11-07 20:29:36'),
(1773, 627, '2018-11-07 10:31:54', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.68, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-07 20:31:54', '2018-11-07 20:31:54'),
(1774, 627, '2018-11-07 10:34:58', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.6844444444444444, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-07 20:34:58', '2018-11-07 20:34:58'),
(1775, 626, '2018-11-07 10:37:41', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 33', 18, 0.8040089086859689, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-07 20:37:41', '2018-11-07 20:37:41'),
(1776, 1369, '2018-11-07 10:48:31', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.632, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-07 20:48:31', '2018-11-07 20:48:31'),
(1777, 627, '2018-11-07 10:48:33', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.7555555555555555, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-07 20:48:33', '2018-11-07 20:48:33'),
(1778, 1369, '2018-11-07 10:55:09', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.72, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-07 20:55:09', '2018-11-07 20:55:09'),
(1779, 1372, '2018-11-07 11:06:07', NULL, 'Yeison Caicedoe', NULL, 'Hija', 9, NULL, '2018-11-07 00:00:00', 627, 'normal', 'Normal', 'rNymiH7uW2', NULL, 'Add Task', 1117, 116, NULL, 'unassigned', '2018-11-07 21:06:07', '2018-11-07 21:06:07'),
(1780, 1372, '2018-11-07 11:06:18', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Hija', 9, 0.12444444444444444, '2018-11-07 00:00:00', 627, 'normal', 'Normal', 'rNymiH7uW2', 'working', 'Progress Update', 1117, 116, NULL, 'unassigned', '2018-11-07 21:06:18', '2018-11-07 21:06:18'),
(1781, 1372, '2018-11-07 11:06:27', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Hija', 9, 0.19555555555555557, '2018-11-07 00:00:00', 627, 'normal', 'Normal', 'rNymiH7uW2', 'working', 'Progress Update', 1117, 116, NULL, 'unassigned', '2018-11-07 21:06:27', '2018-11-07 21:06:27'),
(1782, 1372, '2018-11-07 11:10:35', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Hija', 9, 0.29777777777777775, '2018-11-07 00:00:00', 627, 'normal', 'Normal', 'rNymiH7uW2', 'working', 'Progress Update', 1117, 116, NULL, 'unassigned', '2018-11-07 21:10:35', '2018-11-07 21:10:35'),
(1783, 1372, '2018-11-07 11:10:43', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Hija', 9, 0.31555555555555553, '2018-11-07 00:00:00', 627, 'normal', 'Normal', 'rNymiH7uW2', 'working', 'Progress Update', 1117, 116, NULL, 'unassigned', '2018-11-07 21:10:43', '2018-11-07 21:10:43'),
(1784, 627, '2018-11-07 11:52:03', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.6933333333333334, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-07 21:52:03', '2018-11-07 21:52:03'),
(1785, 1373, '2018-11-07 11:52:19', NULL, 'Yeison Caicedoe', NULL, 'Tarea hija de 2', 9, NULL, '2018-11-07 00:00:00', 627, 'normal', 'Normal', 'grnmngF5Dh', NULL, 'Add Task', 1118, 116, NULL, 'unassigned', '2018-11-07 21:52:19', '2018-11-07 21:52:19'),
(1786, 1374, '2018-11-07 11:52:51', NULL, 'Yeison Caicedoe', NULL, 'Tarea padre full', 1, NULL, '2018-11-07 00:00:00', 0, 'project', 'Normal', 'grnmngF5Dh', NULL, 'Add Task', 1119, 116, NULL, 'unassigned', '2018-11-07 21:52:51', '2018-11-07 21:52:51'),
(1787, 1375, '2018-11-07 11:53:09', NULL, 'Yeison Caicedoe', NULL, 'Tarea HIJA full', 4, NULL, '2018-11-07 00:00:00', 1374, 'normal', 'Normal', 'grnmngF5Dh', NULL, 'Add Task', 1120, 116, NULL, 'unassigned', '2018-11-07 21:53:09', '2018-11-07 21:53:09'),
(1788, 1375, '2018-11-07 11:53:17', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea HIJA full', 4, 0, '2018-11-08 00:00:00', 1374, 'normal', 'Normal', 'grnmngF5Dh', 'working', 'Drag Date', 1120, 116, NULL, 'unassigned', '2018-11-07 21:53:17', '2018-11-07 21:53:17'),
(1789, 1375, '2018-11-07 12:10:00', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea HIJA full', 4, 0.16, '2018-11-08 00:00:00', 1374, 'normal', 'Normal', 'grnmngF5Dh', 'working', 'Progress Update', 1120, 116, NULL, 'unassigned', '2018-11-07 22:10:00', '2018-11-07 22:10:00'),
(1790, 1375, '2018-11-07 12:10:21', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea HIJA full', 4, 0.16, '2018-11-08 00:00:00', 1374, 'normal', 'Normal', 'grnmngF5Dh', 'working', 'Task Resize', 1120, 116, NULL, 'unassigned', '2018-11-07 22:10:21', '2018-11-07 22:10:21'),
(1791, 1375, '2018-11-07 12:10:25', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea HIJA full', 4, 0.33, '2018-11-08 00:00:00', 1374, 'normal', 'Normal', 'grnmngF5Dh', 'working', 'Progress Update', 1120, 116, NULL, 'unassigned', '2018-11-07 22:10:25', '2018-11-07 22:10:25'),
(1792, 1375, '2018-11-07 12:17:46', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea HIJA full', 4, 0.39, '2018-11-08 00:00:00', 1374, 'normal', 'Normal', 'grnmngF5Dh', 'working', 'Progress Update', 1120, 116, NULL, 'unassigned', '2018-11-07 22:17:46', '2018-11-07 22:17:46'),
(1793, 1375, '2018-11-07 12:19:00', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea HIJA full', 4, 0.44, '2018-11-08 00:00:00', 1374, 'normal', 'Normal', 'grnmngF5Dh', 'working', 'Progress Update', 1120, 116, NULL, 'unassigned', '2018-11-07 22:19:00', '2018-11-07 22:19:00'),
(1794, 1375, '2018-11-07 12:19:46', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea HIJA full', 4, 0.5, '2018-11-08 00:00:00', 1374, 'normal', 'Normal', 'grnmngF5Dh', 'working', 'Progress Update', 1120, 116, NULL, 'unassigned', '2018-11-07 22:19:46', '2018-11-07 22:19:46'),
(1795, 1375, '2018-11-07 12:20:33', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea HIJA full', 4, 0.72, '2018-11-08 00:00:00', 1374, 'normal', 'Normal', 'grnmngF5Dh', 'working', 'Progress Update', 1120, 116, NULL, 'unassigned', '2018-11-07 22:20:33', '2018-11-07 22:20:33'),
(1796, 1375, '2018-11-07 12:23:44', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea HIJA full', 4, 0.53, '2018-11-08 00:00:00', 1374, 'normal', 'Normal', 'grnmngF5Dh', 'working', 'Progress Update', 1120, 116, NULL, 'unassigned', '2018-11-07 22:23:44', '2018-11-07 22:23:44'),
(1797, 1375, '2018-11-07 12:23:46', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea HIJA full', 4, 0.27, '2018-11-08 00:00:00', 1374, 'normal', 'Normal', 'grnmngF5Dh', 'working', 'Progress Update', 1120, 116, NULL, 'unassigned', '2018-11-07 22:23:46', '2018-11-07 22:23:46'),
(1798, 1375, '2018-11-07 12:24:28', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea HIJA full', 4, 0.76, '2018-11-08 00:00:00', 1374, 'normal', 'Normal', 'grnmngF5Dh', 'working', 'Progress Update', 1120, 116, NULL, 'unassigned', '2018-11-07 22:24:28', '2018-11-07 22:24:28'),
(1799, 1375, '2018-11-07 12:26:53', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea HIJA full', 4, 0.56, '2018-11-08 00:00:00', 1374, 'normal', 'Normal', 'grnmngF5Dh', 'working', 'Progress Update', 1120, 116, NULL, 'unassigned', '2018-11-07 22:26:53', '2018-11-07 22:26:53'),
(1800, 1375, '2018-11-07 12:28:07', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea HIJA full', 4, 0.4, '2018-11-08 00:00:00', 1374, 'normal', 'Normal', 'grnmngF5Dh', 'working', 'Progress Update', 1120, 116, NULL, 'unassigned', '2018-11-07 22:28:07', '2018-11-07 22:28:07'),
(1801, 627, '2018-11-07 12:28:17', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.08444444444444445, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-07 22:28:17', '2018-11-07 22:28:17'),
(1802, 1369, '2018-11-07 12:28:21', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.56, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-07 22:28:21', '2018-11-07 22:28:21'),
(1803, 948, '2018-11-07 12:28:38', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 3', 9, 0.2088888888888889, '2018-11-08 00:00:00', 0, 'normal', 'Normal', 'UOy2qkSAQa', 'working', 'Progress Update', 693, 116, NULL, 'unassigned', '2018-11-07 22:28:38', '2018-11-07 22:28:38'),
(1804, 1371, '2018-11-07 12:28:40', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Nueva', 2, 0.24, '2018-11-05 00:00:00', 0, 'normal', 'Normal', 'KRz8W59MeE', 'working', 'Progress Update', 1116, 116, NULL, NULL, '2018-11-07 22:28:40', '2018-11-07 22:28:40'),
(1805, 1375, '2018-11-07 14:11:59', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea HIJA full', 4, 0.49, '2018-11-08 00:00:00', 1374, 'normal', 'Normal', 'grnmngF5Dh', 'working', 'Progress Update', 1120, 116, NULL, 'unassigned', '2018-11-08 00:11:59', '2018-11-08 00:11:59'),
(1806, 1375, '2018-11-07 14:12:30', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea HIJA full', 4, 0.56, '2018-11-08 00:00:00', 1374, 'normal', 'Normal', 'grnmngF5Dh', 'working', 'Progress Update', 1120, 116, NULL, 'unassigned', '2018-11-08 00:12:30', '2018-11-08 00:12:30'),
(1807, 1375, '2018-11-07 14:12:46', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea HIJA full', 4, 0.62, '2018-11-08 00:00:00', 1374, 'normal', 'Normal', 'grnmngF5Dh', 'working', 'Progress Update', 1120, 116, NULL, 'unassigned', '2018-11-08 00:12:46', '2018-11-08 00:12:46'),
(1808, 1369, '2018-11-07 14:17:45', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.568, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-08 00:17:45', '2018-11-08 00:17:45'),
(1809, 1369, '2018-11-07 14:45:32', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.704, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-08 00:45:32', '2018-11-08 00:45:32'),
(1810, 1369, '2018-11-07 14:45:33', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.792, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-08 00:45:33', '2018-11-08 00:45:33'),
(1811, 1369, '2018-11-07 14:45:48', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.672, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-08 00:45:48', '2018-11-08 00:45:48'),
(1812, 1369, '2018-11-07 14:52:46', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.664, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-08 00:52:46', '2018-11-08 00:52:46'),
(1813, 1369, '2018-11-08 09:47:45', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.728, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-08 19:47:45', '2018-11-08 19:47:45'),
(1814, 1369, '2018-11-08 09:47:57', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.576, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-08 19:47:57', '2018-11-08 19:47:57'),
(1815, 627, '2018-11-08 09:48:01', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.49777777777777776, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-08 19:48:01', '2018-11-08 19:48:01'),
(1816, 1369, '2018-11-08 09:50:43', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.672, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-08 19:50:43', '2018-11-08 19:50:43'),
(1817, 627, '2018-11-08 09:50:46', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.6044444444444445, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-08 19:50:46', '2018-11-08 19:50:46'),
(1818, 1369, '2018-11-08 09:54:06', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.552, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-08 19:54:06', '2018-11-08 19:54:06'),
(1819, 627, '2018-11-08 09:54:08', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.64, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-08 19:54:08', '2018-11-08 19:54:08'),
(1820, 1369, '2018-11-08 09:58:33', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.408, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-08 19:58:33', '2018-11-08 19:58:33'),
(1821, 1369, '2018-11-08 09:58:49', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.664, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-08 19:58:49', '2018-11-08 19:58:49'),
(1822, 627, '2018-11-08 09:58:59', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.6755555555555556, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-08 19:58:59', '2018-11-08 19:58:59'),
(1823, 1369, '2018-11-08 10:31:14', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.672, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-08 20:31:14', '2018-11-08 20:31:14'),
(1824, 1369, '2018-11-08 11:27:44', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.568, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-08 21:27:44', '2018-11-08 21:27:44'),
(1825, 627, '2018-11-08 16:59:03', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.6711111111111111, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-09 02:59:03', '2018-11-09 02:59:03'),
(1826, 1369, '2018-11-08 16:59:04', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.656, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-09 02:59:04', '2018-11-09 02:59:04'),
(1827, 1369, '2018-11-08 17:05:12', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.608, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-09 03:05:12', '2018-11-09 03:05:12'),
(1828, 1369, '2018-11-08 17:09:49', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.552, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-09 03:09:49', '2018-11-09 03:09:49'),
(1829, 1369, '2018-11-08 17:34:20', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.688, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-09 03:34:20', '2018-11-09 03:34:20'),
(1830, 1369, '2018-11-08 22:29:55', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.664, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-09 08:29:55', '2018-11-09 08:29:55'),
(1831, 1369, '2018-11-08 23:06:29', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.72, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-09 09:06:29', '2018-11-09 09:06:29'),
(1832, 1369, '2018-11-09 09:14:59', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.68, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-09 19:14:59', '2018-11-09 19:14:59'),
(1833, 1369, '2018-11-09 15:32:56', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.648, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-10 01:32:56', '2018-11-10 01:32:56'),
(1834, 1369, '2018-11-09 16:12:44', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea 4', 5, 0.584, '2018-10-28 00:00:00', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', 'Progress Update', 1114, 116, NULL, NULL, '2018-11-10 02:12:44', '2018-11-10 02:12:44'),
(1835, 626, '2018-11-09 17:54:52', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 33', 18, 0.7683741648106904, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-10 03:54:52', '2018-11-10 03:54:52'),
(1836, 626, '2018-11-09 17:58:01', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 33', 18, 0.7461024498886414, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-10 03:58:01', '2018-11-10 03:58:01'),
(1837, 626, '2018-11-09 18:03:16', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 33', 18, 0.7728285077951003, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-10 04:03:16', '2018-11-10 04:03:16'),
(1838, 626, '2018-11-09 18:06:01', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 33', 18, 0.8084632516703786, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-10 04:06:01', '2018-11-10 04:06:01'),
(1839, 626, '2018-11-09 18:06:23', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 33', 18, 0.7305122494432071, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-10 04:06:23', '2018-11-10 04:06:23'),
(1840, 626, '2018-11-09 21:59:03', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 33', 18, 0.688195991091314, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-10 07:59:03', '2018-11-10 07:59:03'),
(1841, 626, '2018-11-09 22:22:03', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 33', 18, 0.6770601336302895, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-10 08:22:03', '2018-11-10 08:22:03'),
(1842, 627, '2018-11-10 09:42:38', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.6444444444444445, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-10 19:42:38', '2018-11-10 19:42:38'),
(1843, 626, '2018-11-10 13:27:30', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 33', 18, 0.6503340757238307, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-10 23:27:30', '2018-11-10 23:27:30'),
(1844, 626, '2018-11-10 14:48:48', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 33', 18, 0.6013363028953229, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-11 00:48:48', '2018-11-11 00:48:48'),
(1845, 626, '2018-11-10 14:48:49', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 33', 18, 0.6013363028953229, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Drag Date', 371, 116, NULL, NULL, '2018-11-11 00:48:49', '2018-11-11 00:48:49'),
(1846, 626, '2018-11-10 15:33:44', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 33', 18, 0.623608017817372, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-11 01:33:44', '2018-11-11 01:33:44'),
(1847, 626, '2018-11-11 15:02:55', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 33', 18, 0.5991091314031181, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-12 01:02:55', '2018-11-12 01:02:55');
INSERT INTO `taskhs` (`id`, `id_origin`, `mod_date`, `des`, `editor`, `email`, `text`, `duration`, `progress`, `start_date`, `parent`, `type`, `priority`, `socket`, `status`, `event`, `sortorder`, `project_id`, `workedHours`, `assigned`, `created_at`, `updated_at`) VALUES
(1848, 626, '2018-11-11 16:04:43', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 33', 18, 0.5835189309576837, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-12 02:04:43', '2018-11-12 02:04:43'),
(1849, 626, '2018-11-11 16:05:39', 'asdasdasd', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea # 33', 18, 0.6102449888641426, '2018-10-13 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Progress Update', 371, 116, NULL, NULL, '2018-11-12 02:05:39', '2018-11-12 02:05:39'),
(1850, 627, '2018-11-11 16:22:40', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea #2', 9, 0.64, '2018-10-27 00:00:00', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', 'Drag Date', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', '2018-11-12 02:22:40', '2018-11-12 02:22:40'),
(1851, 1376, '2018-11-12 21:50:19', NULL, 'Yeison Caicedoe', NULL, 'Nueva tarea 1', 4, NULL, '2018-11-12 00:00:00', 0, 'normal', 'Normal', 'Yo6e8dXvsN', NULL, 'Add Task', 1121, 123, NULL, 'unassigned', '2018-11-13 07:50:19', '2018-11-13 07:50:19'),
(1852, 1377, '2018-11-12 21:50:31', NULL, 'Yeison Caicedoe', NULL, 'Nueva tarea 2', 6, NULL, '2018-11-12 00:00:00', 0, 'normal', 'Normal', 'Yo6e8dXvsN', NULL, 'Add Task', 1122, 123, NULL, 'unassigned', '2018-11-13 07:50:31', '2018-11-13 07:50:31'),
(1853, 1377, '2018-11-12 21:50:35', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Nueva tarea 2', 6, 0, '2018-11-21 00:00:00', 0, 'normal', 'Normal', 'Yo6e8dXvsN', 'working', 'Drag Date', 1122, 123, NULL, 'unassigned', '2018-11-13 07:50:35', '2018-11-13 07:50:35'),
(1854, 1378, '2018-11-12 22:00:00', NULL, 'Yeison Caicedoe', NULL, 'Tarea as 1', 3, NULL, '2018-11-12 00:00:00', 0, 'normal', 'Normal', 'Bb7LIbDpEA', NULL, 'Add Task', 1123, 121, NULL, 'unassigned', '2018-11-13 08:00:00', '2018-11-13 08:00:00'),
(1855, 1379, '2018-11-12 22:00:13', NULL, 'Yeison Caicedoe', NULL, 'Tarea as 2', 6, NULL, '2018-11-12 00:00:00', 0, 'normal', 'Normal', 'Bb7LIbDpEA', NULL, 'Add Task', 1124, 121, NULL, 'unassigned', '2018-11-13 08:00:13', '2018-11-13 08:00:13'),
(1856, 1377, '2018-11-12 22:20:51', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Nueva tarea 2', 6, 0.2214765100671141, '2018-11-21 00:00:00', 0, 'normal', 'Normal', 'Yo6e8dXvsN', 'working', 'Progress Update', 1122, 123, NULL, 'unassigned', '2018-11-13 08:20:51', '2018-11-13 08:20:51'),
(1857, 1377, '2018-11-12 22:32:08', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Nueva tarea 2', 6, 0.3221476510067114, '2018-11-21 00:00:00', 0, 'normal', 'Normal', 'Yo6e8dXvsN', 'working', 'Progress Update', 1122, 123, NULL, 'unassigned', '2018-11-13 08:32:08', '2018-11-13 08:32:08'),
(1858, 1377, '2018-11-12 23:26:07', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Nueva tarea 2', 6, 0.4429530201342282, '2018-11-21 00:00:00', 0, 'normal', 'Normal', 'Yo6e8dXvsN', 'working', 'Progress Update', 1122, 123, NULL, 'unassigned', '2018-11-13 09:26:07', '2018-11-13 09:26:07'),
(1859, 1379, '2018-11-12 23:32:15', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea as 2', 6, 0.32, '2018-11-12 00:00:00', 0, 'normal', 'Normal', 'Bb7LIbDpEA', 'working', 'Progress Update', 1124, 121, NULL, NULL, '2018-11-13 09:32:15', '2018-11-13 09:32:15'),
(1860, 1380, '2018-11-12 23:59:25', NULL, 'Yeison Caicedoe', NULL, 'ttt', 1, NULL, '2018-11-12 00:00:00', 0, 'normal', 'Normal', 'pzgJwhXsZf', NULL, 'Add Task', 1125, 123, NULL, 'unassigned', '2018-11-13 09:59:25', '2018-11-13 09:59:25'),
(1861, 1376, '2018-11-14 21:31:24', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Nueva tarea 1', 4, 0.29, '2018-11-12 00:00:00', 0, 'normal', 'Normal', 'Yo6e8dXvsN', 'working', 'Progress Update', 1121, 123, NULL, NULL, '2018-11-15 07:31:24', '2018-11-15 07:31:24'),
(1862, 1377, '2018-11-14 22:46:29', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Nueva tarea 2', 6, 0.5570469798657718, '2018-11-21 00:00:00', 0, 'normal', 'Normal', 'Yo6e8dXvsN', 'working', 'Progress Update', 1122, 123, NULL, 'unassigned', '2018-11-15 08:46:29', '2018-11-15 08:46:29'),
(1863, 1377, '2018-11-15 20:29:33', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Nueva tarea 2', 6, 0.22, '2018-11-26 00:00:00', 0, 'normal', 'Normal', 'Yo6e8dXvsN', 'working', 'Drag Date', 1122, 123, NULL, 'unassigned', '2018-11-16 06:29:33', '2018-11-16 06:29:33'),
(1864, 1377, '2018-11-15 20:29:36', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Nueva tarea 2', 6, 0.22, '2018-11-29 00:00:00', 0, 'normal', 'Normal', 'Yo6e8dXvsN', 'working', 'Drag Date', 1122, 123, NULL, 'unassigned', '2018-11-16 06:29:36', '2018-11-16 06:29:36'),
(1865, 1377, '2018-11-15 20:29:40', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Nueva tarea 2', 6, 0.22, '2018-11-27 00:00:00', 0, 'normal', 'Normal', 'Yo6e8dXvsN', 'working', 'Drag Date', 1122, 123, NULL, 'unassigned', '2018-11-16 06:29:40', '2018-11-16 06:29:40'),
(1866, 1376, '2018-11-15 20:31:53', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Nueva tarea 1', 4, 0.29, '2018-11-12 00:00:00', 0, 'normal', 'Normal', 'Yo6e8dXvsN', 'working', 'Drag Date', 1121, 123, NULL, NULL, '2018-11-16 06:31:53', '2018-11-16 06:31:53'),
(1867, 1381, '2018-11-17 15:48:01', NULL, 'Yeison Caicedoe', NULL, 'Otra tarea', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', '2qCiJkA1rG', NULL, 'Add Task', 1126, 123, NULL, 'unassigned', '2018-11-18 01:48:01', '2018-11-18 01:48:01'),
(1868, 1382, '2018-11-17 15:49:22', NULL, 'Yeison Caicedoe', NULL, 'lels', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'RBB2pZTJXf', NULL, 'Add Task', 1127, 123, NULL, 'unassigned', '2018-11-18 01:49:22', '2018-11-18 01:49:22'),
(1869, 1383, '2018-11-17 15:49:30', NULL, 'Yeison Caicedoe', NULL, 'lels2', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'RBB2pZTJXf', NULL, 'Add Task', 1128, 123, NULL, 'unassigned', '2018-11-18 01:49:30', '2018-11-18 01:49:30'),
(1870, 1384, '2018-11-17 15:49:38', NULL, 'Yeison Caicedoe', NULL, 'lels3', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'RBB2pZTJXf', NULL, 'Add Task', 1129, 123, NULL, 'unassigned', '2018-11-18 01:49:38', '2018-11-18 01:49:38'),
(1871, 1385, '2018-11-17 15:52:16', NULL, 'Yeison Caicedoe', NULL, 'Task name', 8, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'RBB2pZTJXf', NULL, 'Add Task', 1130, 123, NULL, 'unassigned', '2018-11-18 01:52:16', '2018-11-18 01:52:16'),
(1872, 1386, '2018-11-17 15:54:51', NULL, 'Yeison Caicedoe', NULL, 'Nueva tarea perros', 7, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'XdqFxzCc80', NULL, 'Add Task', 1131, 124, NULL, 'unassigned', '2018-11-18 01:54:51', '2018-11-18 01:54:51'),
(1873, 1387, '2018-11-17 15:55:05', NULL, 'Yeison Caicedoe', NULL, 'Otra', 6, NULL, '2018-11-17 00:00:00', 0, 'normal', 'High', 'XdqFxzCc80', NULL, 'Add Task', 1132, 124, NULL, 'unassigned', '2018-11-18 01:55:05', '2018-11-18 01:55:05'),
(1874, 1387, '2018-11-17 15:55:11', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Otra', 6, NULL, '2018-11-17 00:00:00', 0, 'normal', 'High', 'XdqFxzCc80', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-11-18 01:55:11', '2018-11-18 01:55:11'),
(1875, 1386, '2018-11-17 15:55:15', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Nueva tarea perros', 7, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'XdqFxzCc80', NULL, 'Drag Date', NULL, 124, NULL, NULL, '2018-11-18 01:55:15', '2018-11-18 01:55:15'),
(1876, 1386, '2018-11-17 15:55:19', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Nueva tarea perros', 7, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'XdqFxzCc80', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-11-18 01:55:19', '2018-11-18 01:55:19'),
(1877, 1388, '2018-11-17 17:00:24', NULL, 'Yeison Caicedoe', NULL, 'Yeison task', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'HjBclu0Fmz', NULL, 'Add Task', 1131, 124, NULL, 'unassigned', '2018-11-18 03:00:24', '2018-11-18 03:00:24'),
(1878, 1389, '2018-11-17 17:08:31', NULL, 'Yeison Caicedoe', NULL, 'nueva tarea', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'ggHkSEYnFp', NULL, 'Add Task', 1132, 124, NULL, 'unassigned', '2018-11-18 03:08:31', '2018-11-18 03:08:31'),
(1879, 1390, '2018-11-17 17:08:42', NULL, 'Yeison Caicedoe', NULL, 'aaaa', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'ggHkSEYnFp', NULL, 'Add Task', 1133, 124, NULL, 'unassigned', '2018-11-18 03:08:42', '2018-11-18 03:08:42'),
(1880, 1391, '2018-11-17 17:10:46', NULL, 'Yeison Caicedoe', NULL, 'betty', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', '1eB4l5TPHd', NULL, 'Add Task', 1134, 124, NULL, 'unassigned', '2018-11-18 03:10:46', '2018-11-18 03:10:46'),
(1881, 4294967295, '2018-11-17 17:12:40', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'betty', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', '1eB4l5TPHd', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-11-18 03:12:40', '2018-11-18 03:12:40'),
(1882, 1392, '2018-11-17 17:15:22', NULL, 'Yeison Caicedoe', NULL, 'ar', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'WrudgmYpoP', NULL, 'Add Task', 1135, 124, NULL, 'unassigned', '2018-11-18 03:15:22', '2018-11-18 03:15:22'),
(1883, 1393, '2018-11-17 17:18:37', NULL, 'Yeison Caicedoe', NULL, 'asdasda', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'EtJDtIikLf', NULL, 'Add Task', 1136, 124, NULL, 'unassigned', '2018-11-18 03:18:37', '2018-11-18 03:18:37'),
(1884, 1394, '2018-11-17 17:23:55', NULL, 'Yeison Caicedoe', NULL, 'asaswww', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'tUEuqCZ88x', NULL, 'Add Task', 1137, 124, NULL, 'unassigned', '2018-11-18 03:23:55', '2018-11-18 03:23:55'),
(1885, 1395, '2018-11-17 17:24:29', NULL, 'Yeison Caicedoe', NULL, 'NUEVA', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'tUEuqCZ88x', NULL, 'Add Task', 1138, 124, NULL, 'unassigned', '2018-11-18 03:24:29', '2018-11-18 03:24:29'),
(1886, 1396, '2018-11-17 17:28:11', NULL, 'Yeison Caicedoe', NULL, '2222', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'DPYf1a5fap', NULL, 'Add Task', 1139, 124, NULL, 'unassigned', '2018-11-18 03:28:11', '2018-11-18 03:28:11'),
(1887, 1397, '2018-11-17 17:30:08', NULL, 'Yeison Caicedoe', NULL, 'actualizate ptm', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'UKXfrx7O5N', NULL, 'Add Task', 1140, 124, NULL, 'unassigned', '2018-11-18 03:30:08', '2018-11-18 03:30:08'),
(1888, 1398, '2018-11-17 17:33:22', NULL, 'Yeison Caicedoe', NULL, 'Task name', 5, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'CJnUU5oQd6', NULL, 'Add Task', 1141, 124, NULL, 'unassigned', '2018-11-18 03:33:22', '2018-11-18 03:33:22'),
(1889, 1398, '2018-11-17 17:34:10', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Task name', 5, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'CJnUU5oQd6', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-11-18 03:34:10', '2018-11-18 03:34:10'),
(1890, 1399, '2018-11-17 17:34:17', NULL, 'Yeison Caicedoe', NULL, 'heyyyy', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'CJnUU5oQd6', NULL, 'Add Task', 1141, 124, NULL, 'unassigned', '2018-11-18 03:34:17', '2018-11-18 03:34:17'),
(1891, 1399, '2018-11-17 17:34:23', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'heyyyy', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'CJnUU5oQd6', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-11-18 03:34:23', '2018-11-18 03:34:23'),
(1892, 1400, '2018-11-17 17:52:06', NULL, 'Yeison Caicedoe', NULL, 'rrrr', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'RrGj0jp78n', NULL, 'Add Task', 1141, 124, NULL, 'unassigned', '2018-11-18 03:52:06', '2018-11-18 03:52:06'),
(1893, 1400, '2018-11-17 17:52:46', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'rrrr', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'RrGj0jp78n', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-11-18 03:52:46', '2018-11-18 03:52:46'),
(1894, 1401, '2018-11-17 17:58:27', NULL, 'Yeison Caicedoe', NULL, 'rrrrr', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'W21oGRM6YJ', NULL, 'Add Task', 1141, 124, NULL, 'unassigned', '2018-11-18 03:58:27', '2018-11-18 03:58:27'),
(1895, 1401, '2018-11-17 18:02:20', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'rrrrr', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'W21oGRM6YJ', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-11-18 04:02:20', '2018-11-18 04:02:20'),
(1896, 1402, '2018-11-17 18:02:39', NULL, 'Yeison Caicedoe', NULL, 'rrrrr', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'YAR5ZPBrnV', NULL, 'Add Task', 1141, 124, NULL, 'unassigned', '2018-11-18 04:02:39', '2018-11-18 04:02:39'),
(1897, 1402, '2018-11-17 18:07:21', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'rrrrr', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'YAR5ZPBrnV', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-11-18 04:07:21', '2018-11-18 04:07:21'),
(1898, 1403, '2018-11-17 18:14:22', NULL, 'Yeison Caicedoe', NULL, 'pusher', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', '6QQDOkBBLw', NULL, 'Add Task', 1141, 124, NULL, 'unassigned', '2018-11-18 04:14:22', '2018-11-18 04:14:22'),
(1899, 1403, '2018-11-17 18:18:08', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'pusher', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', '6QQDOkBBLw', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-11-18 04:18:08', '2018-11-18 04:18:08'),
(1900, 4294967295, '2018-11-17 18:18:43', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'New task', 1, NULL, '2018-11-17 00:00:00', 0, NULL, 'Normal', 'Xwy7AFimRk', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-11-18 04:18:43', '2018-11-18 04:18:43'),
(1901, 4294967295, '2018-11-17 18:19:02', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'New task', 1, NULL, '2018-11-17 00:00:00', 0, NULL, 'Normal', 'Xwy7AFimRk', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-11-18 04:19:02', '2018-11-18 04:19:02'),
(1902, 1404, '2018-11-17 18:19:57', NULL, 'Yeison Caicedoe', NULL, 'eee', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'KCtmF99MxV', NULL, 'Add Task', 1141, 124, NULL, 'unassigned', '2018-11-18 04:19:57', '2018-11-18 04:19:57'),
(1903, 1405, '2018-11-17 18:20:38', NULL, 'Yeison Caicedoe', NULL, 'seyx ladie', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'gEXfpvxQ9v', NULL, 'Add Task', 1142, 124, NULL, 'unassigned', '2018-11-18 04:20:38', '2018-11-18 04:20:38'),
(1904, 1406, '2018-11-17 18:21:08', NULL, 'Yeison Caicedoe', NULL, 'otra', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'gEXfpvxQ9v', NULL, 'Add Task', 1143, 124, NULL, 'unassigned', '2018-11-18 04:21:08', '2018-11-18 04:21:08'),
(1905, 1407, '2018-11-17 18:24:49', NULL, 'Yeison Caicedoe', NULL, 'nuevaaaaaaaaaaaaa', 14, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'qpFAfbvzuW', NULL, 'Add Task', 1144, 124, NULL, 'unassigned', '2018-11-18 04:24:49', '2018-11-18 04:24:49'),
(1906, 1408, '2018-11-17 18:28:14', NULL, 'Yeison Caicedoe', NULL, 'perrrosssss', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'ZG230vvEYa', NULL, 'Add Task', 1145, 124, NULL, 'unassigned', '2018-11-18 04:28:14', '2018-11-18 04:28:14'),
(1907, 1388, '2018-11-17 18:29:25', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Yeison task', 1, 0, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'HjBclu0Fmz', 'working', 'Delete Task', 1131, 124, NULL, NULL, '2018-11-18 04:29:25', '2018-11-18 04:29:25'),
(1908, 1409, '2018-11-17 18:29:32', NULL, 'Yeison Caicedoe', NULL, 'yyyy', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 't6PYlwDHSM', NULL, 'Add Task', 1146, 124, NULL, 'unassigned', '2018-11-18 04:29:32', '2018-11-18 04:29:32'),
(1909, 1410, '2018-11-17 18:31:15', NULL, 'Yeison Caicedoe', NULL, 'tension', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'zwbFyf4F2T', NULL, 'Add Task', 1147, 124, NULL, 'unassigned', '2018-11-18 04:31:15', '2018-11-18 04:31:15'),
(1910, 1410, '2018-11-17 18:40:37', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tension', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'zwbFyf4F2T', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-11-18 04:40:37', '2018-11-18 04:40:37'),
(1911, 1411, '2018-11-17 18:40:58', NULL, 'Yeison Caicedoe', NULL, 'marcee', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'jEkX0VEHDU', NULL, 'Add Task', 1147, 124, NULL, 'unassigned', '2018-11-18 04:40:58', '2018-11-18 04:40:58'),
(1912, 1411, '2018-11-17 19:10:33', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'marcee', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'jEkX0VEHDU', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-11-18 05:10:33', '2018-11-18 05:10:33'),
(1913, 1412, '2018-11-17 19:10:51', NULL, 'Yeison Caicedoe', NULL, 'ASasASas', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', '8o6TaV4j2H', NULL, 'Add Task', 1147, 124, NULL, 'unassigned', '2018-11-18 05:10:51', '2018-11-18 05:10:51'),
(1914, 1413, '2018-11-17 19:11:45', NULL, 'Yeison Caicedoe', NULL, 'wwww', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'aEmjE8QNIY', NULL, 'Add Task', 1148, 124, NULL, 'unassigned', '2018-11-18 05:11:45', '2018-11-18 05:11:45'),
(1915, 1414, '2018-11-17 19:21:41', NULL, 'Yeison Caicedoe', NULL, 'awzzzz', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'p2JqiER9A9', NULL, 'Add Task', 1149, 124, NULL, 'unassigned', '2018-11-18 05:21:41', '2018-11-18 05:21:41'),
(1916, 1414, '2018-11-17 19:25:41', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'awzzzz', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'p2JqiER9A9', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-11-18 05:25:41', '2018-11-18 05:25:41'),
(1917, 4294967295, '2018-11-17 19:26:07', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'New task', 1, NULL, '2018-11-17 00:00:00', 0, NULL, 'Normal', 'o3BCsDU6zk', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-11-18 05:26:07', '2018-11-18 05:26:07'),
(1918, 1415, '2018-11-17 19:26:25', NULL, 'Yeison Caicedoe', NULL, 'holi', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'lT89nW1Fr5', NULL, 'Add Task', 1149, 124, NULL, 'unassigned', '2018-11-18 05:26:25', '2018-11-18 05:26:25'),
(1919, 1415, '2018-11-17 19:27:24', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'holi', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'lT89nW1Fr5', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-11-18 05:27:24', '2018-11-18 05:27:24'),
(1920, 1413, '2018-11-17 19:27:30', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'wwww', 1, 0, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'aEmjE8QNIY', 'working', 'Delete Task', 1148, 124, NULL, NULL, '2018-11-18 05:27:30', '2018-11-18 05:27:30'),
(1921, 1412, '2018-11-17 19:27:36', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'ASasASas', 1, 0, '2018-11-17 00:00:00', 0, 'normal', 'Normal', '8o6TaV4j2H', 'working', 'Delete Task', 1147, 124, NULL, NULL, '2018-11-18 05:27:36', '2018-11-18 05:27:36'),
(1922, 1409, '2018-11-17 19:27:40', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'yyyy', 1, 0, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 't6PYlwDHSM', 'working', 'Delete Task', 1146, 124, NULL, NULL, '2018-11-18 05:27:40', '2018-11-18 05:27:40'),
(1923, 1408, '2018-11-17 19:27:46', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'perrrosssss', 1, 0, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'ZG230vvEYa', 'working', 'Delete Task', 1145, 124, NULL, NULL, '2018-11-18 05:27:46', '2018-11-18 05:27:46'),
(1924, 1407, '2018-11-17 19:27:51', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'nuevaaaaaaaaaaaaa', 14, 0, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'qpFAfbvzuW', 'working', 'Delete Task', 1144, 124, NULL, NULL, '2018-11-18 05:27:51', '2018-11-18 05:27:51'),
(1925, 1406, '2018-11-17 19:27:56', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'otra', 1, 0, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'gEXfpvxQ9v', 'working', 'Delete Task', 1143, 124, NULL, NULL, '2018-11-18 05:27:56', '2018-11-18 05:27:56'),
(1926, 4294967295, '2018-11-17 19:28:47', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'New task', 1, NULL, '2018-11-17 00:00:00', 0, NULL, 'Normal', 'aF8SRincuR', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-11-18 05:28:47', '2018-11-18 05:28:47'),
(1927, 1416, '2018-11-17 19:29:24', 'undefined', 'Yeison Caicedoe', NULL, 'yuuuuu', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'OdeXnEH9j6', NULL, 'Add Task', 1143, 124, NULL, 'undefined', '2018-11-18 05:29:24', '2018-11-18 05:29:24'),
(1928, 1416, '2018-11-17 19:29:36', 'undefined', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'yuuuuu', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'OdeXnEH9j6', NULL, 'Delete Task', NULL, 124, NULL, 'undefined', '2018-11-18 05:29:36', '2018-11-18 05:29:36'),
(1929, 4294967295, '2018-11-17 19:30:54', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'New task', 1, NULL, '2018-11-17 00:00:00', 0, NULL, 'Normal', 'OdeXnEH9j6', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-11-18 05:30:54', '2018-11-18 05:30:54'),
(1930, 4294967295, '2018-11-17 19:32:53', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'New task', 1, NULL, '2018-11-17 00:00:00', 0, NULL, 'Normal', 'OdeXnEH9j6', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-11-18 05:32:53', '2018-11-18 05:32:53'),
(1931, 1417, '2018-11-17 19:48:36', 'undefined', 'Yeison Caicedoe', NULL, 'tyyyy', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'auQU3wo2wQ', NULL, 'Add Task', 1143, 124, NULL, 'undefined', '2018-11-18 05:48:36', '2018-11-18 05:48:36'),
(1932, 1418, '2018-11-17 19:50:23', 'undefined', 'Yeison Caicedoe', NULL, 'taki', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'PlkygrLuHh', NULL, 'Add Task', 1144, 124, NULL, 'undefined', '2018-11-18 05:50:23', '2018-11-18 05:50:23'),
(1933, 4294967295, '2018-11-17 19:56:45', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'New task', 1, NULL, '2018-11-17 00:00:00', 0, NULL, 'Normal', 'PlkygrLuHh', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-11-18 05:56:45', '2018-11-18 05:56:45'),
(1934, 4294967295, '2018-11-17 20:08:41', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'New task', 1, NULL, '2018-11-17 00:00:00', 0, NULL, 'Normal', 'PlkygrLuHh', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-11-18 06:08:41', '2018-11-18 06:08:41'),
(1935, 1419, '2018-11-17 20:11:24', NULL, 'Yeison Caicedoe', NULL, 'nueva obviamente', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'wGUtxYYdSJ', NULL, 'Add Task', 1145, 124, NULL, 'unassigned', '2018-11-18 06:11:24', '2018-11-18 06:11:24'),
(1936, 1419, '2018-11-17 20:11:51', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'nueva obviamente', 1, NULL, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'wGUtxYYdSJ', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-11-18 06:11:51', '2018-11-18 06:11:51'),
(1937, 4294967295, '2018-11-18 10:42:17', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'New task', 1, NULL, '2018-11-17 00:00:00', 0, NULL, 'Normal', 'jWstSOCkTB', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-11-18 20:42:17', '2018-11-18 20:42:17'),
(1938, 1420, '2018-11-18 10:43:56', NULL, 'Yeison Caicedoe', NULL, 'NUEVA PERROS', 1, NULL, '2018-11-18 00:00:00', 0, 'normal', 'Normal', '3W0ffx5SZk', NULL, 'Add Task', 1145, 124, NULL, 'unassigned', '2018-11-18 20:43:56', '2018-11-18 20:43:56'),
(1939, 1421, '2018-11-18 11:03:43', NULL, 'Yeison Caicedoe', NULL, 'Task name', 1, NULL, '2018-11-18 00:00:00', 0, 'normal', 'Normal', 'Y9rYVgIxZj', NULL, 'Add Task', 1146, 124, NULL, 'unassigned', '2018-11-18 21:03:43', '2018-11-18 21:03:43'),
(1940, 1422, '2018-11-18 11:03:51', NULL, 'Yeison Caicedoe', NULL, 'Task name', 1, NULL, '2018-11-18 00:00:00', 0, 'normal', 'Normal', 'Y9rYVgIxZj', NULL, 'Add Task', 1147, 124, NULL, 'unassigned', '2018-11-18 21:03:51', '2018-11-18 21:03:51'),
(1941, 1423, '2018-11-18 11:13:25', NULL, 'Yeison Caicedoe', NULL, 'Task name', 1, NULL, '2018-11-18 00:00:00', 0, 'normal', 'Normal', 'j40PwktQ8V', NULL, 'Add Task', 1148, 124, NULL, 'unassigned', '2018-11-18 21:13:25', '2018-11-18 21:13:25'),
(1942, 1424, '2018-11-18 11:13:29', NULL, 'Yeison Caicedoe', NULL, 'Task name', 1, NULL, '2018-11-18 00:00:00', 0, 'normal', 'Normal', 'j40PwktQ8V', NULL, 'Add Task', 1149, 124, NULL, 'unassigned', '2018-11-18 21:13:29', '2018-11-18 21:13:29'),
(1943, 4294967295, '2018-11-18 11:40:00', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'New task', 1, NULL, '2018-11-17 00:00:00', 0, NULL, 'Normal', 'BfT1eAhFLx', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-11-18 21:40:00', '2018-11-18 21:40:00'),
(1944, 1421, '2018-11-18 11:40:17', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Task name', 1, 0, '2018-11-18 00:00:00', 0, 'normal', 'Normal', 'Y9rYVgIxZj', 'working', 'Delete Task', 1146, 124, NULL, NULL, '2018-11-18 21:40:17', '2018-11-18 21:40:17'),
(1945, 1420, '2018-11-18 11:40:21', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'NUEVA PERROS', 1, 0, '2018-11-18 00:00:00', 0, 'normal', 'Normal', '3W0ffx5SZk', 'working', 'Delete Task', 1145, 124, NULL, NULL, '2018-11-18 21:40:21', '2018-11-18 21:40:21'),
(1946, 1422, '2018-11-18 11:40:25', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Task name', 1, 0, '2018-11-18 00:00:00', 0, 'normal', 'Normal', 'Y9rYVgIxZj', 'working', 'Delete Task', 1147, 124, NULL, NULL, '2018-11-18 21:40:25', '2018-11-18 21:40:25'),
(1947, 1423, '2018-11-18 11:40:28', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Task name', 1, 0, '2018-11-18 00:00:00', 0, 'normal', 'Normal', 'j40PwktQ8V', 'working', 'Delete Task', 1148, 124, NULL, NULL, '2018-11-18 21:40:28', '2018-11-18 21:40:28'),
(1948, 1424, '2018-11-18 11:40:32', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Task name', 1, 0, '2018-11-18 00:00:00', 0, 'normal', 'Normal', 'j40PwktQ8V', 'working', 'Delete Task', 1149, 124, NULL, NULL, '2018-11-18 21:40:32', '2018-11-18 21:40:32'),
(1949, 1418, '2018-11-18 11:40:36', 'undefined', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'taki', 1, 0, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'PlkygrLuHh', 'working', 'Delete Task', 1144, 124, NULL, 'undefined', '2018-11-18 21:40:36', '2018-11-18 21:40:36'),
(1950, 1417, '2018-11-18 11:40:39', 'undefined', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tyyyy', 1, 0, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'auQU3wo2wQ', 'working', 'Delete Task', 1143, 124, NULL, 'undefined', '2018-11-18 21:40:39', '2018-11-18 21:40:39'),
(1951, 1425, '2018-11-18 11:41:22', 'Task description', 'Yeison Caicedoe', NULL, 'Tarea IUUUU', 3, NULL, '2018-11-18 00:00:00', 0, 'normal', 'Normal', 'W41lM2iuSJ', NULL, 'Add Task', 1143, 124, NULL, 'unassigned', '2018-11-18 21:41:22', '2018-11-18 21:41:22'),
(1952, 1426, '2018-11-18 11:41:58', 'Task description', 'Yeison Caicedoe', NULL, 'AAA', 1, NULL, '2018-11-18 00:00:00', 0, 'normal', 'Normal', 'W41lM2iuSJ', NULL, 'Add Task', 1144, 124, NULL, 'unassigned', '2018-11-18 21:41:58', '2018-11-18 21:41:58'),
(1953, 1425, '2018-11-18 11:42:07', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea IUUUU', 3, NULL, '2018-11-21 00:00:00', 0, 'normal', 'Normal', 'W41lM2iuSJ', NULL, 'Drag Date', NULL, 124, NULL, NULL, '2018-11-18 21:42:07', '2018-11-18 21:42:07'),
(1954, 1427, '2018-11-18 11:42:25', 'Task description', 'Yeison Caicedoe', NULL, 'ciguita', 7, NULL, '2018-11-24 00:00:00', 0, 'normal', 'Normal', 'W41lM2iuSJ', NULL, 'Add Task', 1145, 124, NULL, 'unassigned', '2018-11-18 21:42:25', '2018-11-18 21:42:25'),
(1955, 1428, '2018-11-18 15:01:48', 'Task description', 'Yeison Caicedoe', NULL, 'Otra perros', 4, NULL, '2018-11-19 00:00:00', 0, 'normal', 'Normal', 'wxMeVyjncd', NULL, 'Add Task', 1146, 124, NULL, 'unassigned', '2018-11-19 01:01:48', '2018-11-19 01:01:48'),
(1956, 1429, '2018-11-22 12:21:16', 'Task description', 'Yeison Caicedoe', NULL, 'testtt', 2, NULL, '2018-11-22 00:00:00', 0, 'normal', 'Normal', 'uOCARdeuv7', NULL, 'Add Task', 1147, 124, NULL, 'unassigned', '2018-11-22 22:21:16', '2018-11-22 22:21:16'),
(1957, 1430, '2018-11-22 12:23:44', 'Task description', 'Yeison Caicedoe', NULL, 'ttt', 3, NULL, '2018-11-22 00:00:00', 0, 'normal', 'Normal', 'uOCARdeuv7', NULL, 'Add Task', 1148, 124, NULL, 'unassigned', '2018-11-22 22:23:44', '2018-11-22 22:23:44'),
(1958, 1389, '2018-11-22 12:28:43', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'nueva tarea', 4, 0, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'ggHkSEYnFp', 'working', 'Delete Task', 1132, 124, NULL, 'unassigned', '2018-11-22 22:28:43', '2018-11-22 22:28:43'),
(1959, 1390, '2018-11-22 12:28:45', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'aaaa', 1, 0, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'ggHkSEYnFp', 'working', 'Delete Task', 1133, 124, NULL, 'unassigned', '2018-11-22 22:28:45', '2018-11-22 22:28:45'),
(1960, 1391, '2018-11-22 12:28:48', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'betty', 1, 0, '2018-11-17 00:00:00', 0, 'normal', 'Normal', '1eB4l5TPHd', 'working', 'Delete Task', 1134, 124, NULL, 'unassigned', '2018-11-22 22:28:48', '2018-11-22 22:28:48'),
(1961, 1392, '2018-11-22 12:28:50', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'ar', 1, 0, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'WrudgmYpoP', 'working', 'Delete Task', 1135, 124, NULL, 'unassigned', '2018-11-22 22:28:50', '2018-11-22 22:28:50'),
(1962, 1393, '2018-11-22 12:28:52', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asdasda', 1, 0, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'EtJDtIikLf', 'working', 'Delete Task', 1136, 124, NULL, NULL, '2018-11-22 22:28:52', '2018-11-22 22:28:52'),
(1963, 1394, '2018-11-22 12:28:54', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'asaswww', 1, 0, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'tUEuqCZ88x', 'working', 'Delete Task', 1137, 124, NULL, NULL, '2018-11-22 22:28:54', '2018-11-22 22:28:54'),
(1964, 1395, '2018-11-22 12:28:57', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'NUEVA', 1, 0, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'tUEuqCZ88x', 'working', 'Delete Task', 1138, 124, NULL, NULL, '2018-11-22 22:28:57', '2018-11-22 22:28:57'),
(1965, 1396, '2018-11-22 12:28:58', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '2222', 1, 0, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'DPYf1a5fap', 'working', 'Delete Task', 1139, 124, NULL, NULL, '2018-11-22 22:28:58', '2018-11-22 22:28:58'),
(1966, 1397, '2018-11-22 12:29:00', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'actualizate ptm', 1, 0, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'UKXfrx7O5N', 'working', 'Delete Task', 1140, 124, NULL, NULL, '2018-11-22 22:29:00', '2018-11-22 22:29:00'),
(1967, 1404, '2018-11-22 12:29:02', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'eee', 2, 0, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'KCtmF99MxV', 'working', 'Delete Task', 1141, 124, NULL, NULL, '2018-11-22 22:29:02', '2018-11-22 22:29:02'),
(1968, 1405, '2018-11-22 12:29:05', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'seyx ladie', 4, 0, '2018-11-17 00:00:00', 0, 'normal', 'Normal', 'gEXfpvxQ9v', 'working', 'Delete Task', 1142, 124, NULL, NULL, '2018-11-22 22:29:05', '2018-11-22 22:29:05'),
(1969, 1425, '2018-11-22 12:29:07', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea IUUUU', 3, 0, '2018-11-21 00:00:00', 0, 'normal', 'Normal', 'W41lM2iuSJ', 'working', 'Delete Task', 1143, 124, NULL, NULL, '2018-11-22 22:29:07', '2018-11-22 22:29:07'),
(1970, 1426, '2018-11-22 12:29:08', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'AAA', 1, 0, '2018-11-18 00:00:00', 0, 'normal', 'Normal', 'W41lM2iuSJ', 'working', 'Delete Task', 1144, 124, NULL, NULL, '2018-11-22 22:29:08', '2018-11-22 22:29:08'),
(1971, 1431, '2018-11-22 12:36:38', 'Task description', 'Yeison Caicedoe', NULL, 'rrr', 2, NULL, '2018-11-22 00:00:00', 0, 'normal', 'Normal', 'sXhqAbETRl', NULL, 'Add Task', 1149, 124, NULL, 'unassigned', '2018-11-22 22:36:38', '2018-11-22 22:36:38'),
(1972, 1432, '2018-11-22 13:09:39', 'Task description', 'Yeison Caicedoe', NULL, 'nuevaYolo', 3, NULL, '2018-11-22 00:00:00', 0, 'normal', 'Normal', '2W0TlknFqu', NULL, 'Add Task', 1150, 124, NULL, 'unassigned', '2018-11-22 23:09:39', '2018-11-22 23:09:39'),
(1973, 1433, '2018-11-22 13:10:03', 'Task description', 'Yeison Caicedoe', NULL, 'YYYIUII', 3, NULL, '2018-11-22 00:00:00', 0, 'normal', 'Normal', '5yP3imAfyk', NULL, 'Add Task', 1151, 124, NULL, 'unassigned', '2018-11-22 23:10:03', '2018-11-22 23:10:03'),
(1974, 1434, '2018-11-22 13:27:02', 'Task description', 'Yeison Caicedoe', NULL, 'ggg', 3, NULL, '2018-11-22 00:00:00', 0, 'normal', 'Normal', 'zNXlZPTJBX', NULL, 'Add Task', 1152, 124, NULL, 'unassigned', '2018-11-22 23:27:02', '2018-11-22 23:27:02'),
(1975, 1435, '2018-11-22 13:35:08', 'Task description', 'Yeison Caicedoe', NULL, 'YUU', 2, NULL, '2018-11-22 00:00:00', 0, 'normal', 'Normal', 'YavF1WuvEm', NULL, 'Add Task', 1153, 124, NULL, 'unassigned', '2018-11-22 23:35:08', '2018-11-22 23:35:08'),
(1976, 1427, '2018-12-04 16:44:42', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'ciguita', 8, 0, '2018-11-24 00:00:00', 0, 'normal', 'Normal', 'W41lM2iuSJ', 'working', 'Task Resize', 1145, 124, NULL, NULL, '2018-12-05 02:44:42', '2018-12-05 02:44:42'),
(1977, 1427, '2018-12-04 16:45:03', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'ciguita', 7, 1, '2018-11-24 00:00:00', 0, 'normal', 'Normal', 'W41lM2iuSJ', 'working', 'Progress Update', 1145, 124, NULL, NULL, '2018-12-05 02:45:03', '2018-12-05 02:45:03'),
(1978, 1435, '2018-12-04 16:45:16', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'YUU', 15, 1, '2018-11-22 00:00:00', 0, 'normal', 'Normal', 'YavF1WuvEm', 'working', 'Progress Update', 1153, 124, NULL, NULL, '2018-12-05 02:45:16', '2018-12-05 02:45:16'),
(1979, 1436, '2018-12-06 17:39:11', 'Task description', 'Yeison Caicedoe', NULL, 'espuma y arrecife', 1, NULL, '2018-12-06 00:00:00', 0, 'project', 'Normal', 'qr68JMbHnz', NULL, 'Add Task', 1154, 124, NULL, 'unassigned', '2018-12-07 03:39:11', '2018-12-07 03:39:11'),
(1980, 1437, '2018-12-06 17:44:43', 'Task description', 'Yeison Caicedoe', NULL, 'tarea padre', 1, NULL, '2018-12-06 00:00:00', 0, 'project', 'Normal', 'kHsTJ0TAfK', NULL, 'Add Task', 1155, 124, NULL, 'unassigned', '2018-12-07 03:44:43', '2018-12-07 03:44:43'),
(1981, 4294967295, '2018-12-06 17:44:48', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'New task', 1, NULL, '2018-11-24 00:00:00', 1437, NULL, 'Normal', 'kHsTJ0TAfK', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-12-07 03:44:48', '2018-12-07 03:44:48'),
(1982, 4294967295, '2018-12-06 18:31:28', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'New task', 1, NULL, '2018-11-24 00:00:00', 0, NULL, 'Normal', 'Z2rHB7vhdV', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-12-07 04:31:28', '2018-12-07 04:31:28'),
(1983, 4294967295, '2018-12-06 18:32:09', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'New task', 1, NULL, '2018-11-24 00:00:00', 0, NULL, 'Normal', 'Z2rHB7vhdV', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-12-07 04:32:09', '2018-12-07 04:32:09'),
(1984, 4294967295, '2018-12-06 18:36:39', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'New task', 1, NULL, '2018-11-24 00:00:00', 0, NULL, 'Normal', 'KhxKLWbsLM', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-12-07 04:36:39', '2018-12-07 04:36:39'),
(1985, 4294967295, '2018-12-06 18:36:44', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'New task', 1, NULL, '2018-11-24 00:00:00', 0, NULL, 'Normal', 'KhxKLWbsLM', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-12-07 04:36:44', '2018-12-07 04:36:44'),
(1986, 4294967295, '2018-12-06 18:46:28', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'New task', 1, NULL, '2018-11-24 00:00:00', 0, NULL, 'Normal', 'Q6cUv2nkqX', NULL, 'Delete Task', NULL, 124, NULL, NULL, '2018-12-07 04:46:28', '2018-12-07 04:46:28'),
(1987, 1438, '2018-12-06 18:48:57', 'Task description', 'Yeison Caicedoe', NULL, 'Nueva placeholder', 1, NULL, '2018-12-06 00:00:00', 0, 'normal', 'Normal', 'JAUlfPiCwt', NULL, 'Add Task', 1156, 124, NULL, 'yecaicedo@unicauca.edu.co', '2018-12-07 04:48:57', '2018-12-07 04:48:57'),
(1988, 4294967295, '2018-12-06 19:13:51', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'New task', 1, NULL, '2018-10-02 00:00:00', 0, NULL, 'Normal', 'ryZQBw3NuP', NULL, 'Delete Task', NULL, 115, NULL, NULL, '2018-12-07 05:13:51', '2018-12-07 05:13:51'),
(1989, 1439, '2018-12-13 15:08:04', 'Task description', 'Yeison Caicedoe', NULL, 'asDASDASD', 1, NULL, '2018-12-13 00:00:00', 1437, 'normal', 'Normal', 'Xhl41XDG10', NULL, 'Add Task', 1157, 124, NULL, 'unassigned', '2018-12-14 01:08:04', '2018-12-14 01:08:04'),
(1990, 1442, '2019-01-20 21:15:18', 'Select Leader', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '1.1 Select Leader', 22, 0, '2019-01-06 00:00:00', 1441, 'any type', 'normal', 'Socket', 'working', 'Task Resize', 1159, 126, 0, 'unassigned', '2019-01-21 07:15:18', '2019-01-21 07:15:18'),
(1991, 1442, '2019-01-20 21:35:40', 'Select Leader', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '1.1 Select Leader', 20, 0, '2019-01-06 00:00:00', 1441, 'any type', 'normal', 'Socket', 'working', 'Task Resize', 1159, 126, 0, 'unassigned', '2019-01-21 07:35:40', '2019-01-21 07:35:40'),
(1992, 1442, '2019-01-20 21:37:28', 'Select Leader', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '1.1 Select Leader', 26, 0, '2019-01-06 00:00:00', 1441, 'any type', 'normal', 'Socket', 'working', 'Task Resize', 1159, 126, 0, 'unassigned', '2019-01-21 07:37:28', '2019-01-21 07:37:28'),
(1993, 1442, '2019-01-20 21:37:47', 'Select Leader', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '1.1 Select Leader', 20, 0, '2019-01-06 00:00:00', 1441, 'any type', 'normal', 'Socket', 'working', 'Task Resize', 1159, 126, 0, 'unassigned', '2019-01-21 07:37:47', '2019-01-21 07:37:47'),
(1994, 1442, '2019-01-20 21:37:54', 'Select Leader', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '1.1 Select Leader', 15, 0, '2019-01-06 00:00:00', 1441, 'any type', 'normal', 'Socket', 'working', 'Task Resize', 1159, 126, 0, 'unassigned', '2019-01-21 07:37:54', '2019-01-21 07:37:54'),
(1995, 1444, '2019-01-20 21:38:07', 'Definition Objetives', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '1.3 Definition Objetives', 28, 0, '2019-02-11 00:00:00', 1441, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1161, 126, 0, 'unassigned', '2019-01-21 07:38:07', '2019-01-21 07:38:07'),
(1996, 1444, '2019-01-20 21:38:13', 'Definition Objetives', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '1.3 Definition Objetives', 28, 0, '2019-01-21 00:00:00', 1441, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1161, 126, 0, 'unassigned', '2019-01-21 07:38:13', '2019-01-21 07:38:13'),
(1997, 1443, '2019-01-20 21:38:23', 'Select Leader', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '1.2 Integration Team', 28, 0, '2019-01-21 00:00:00', 1441, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1160, 126, 0, 'unassigned', '2019-01-21 07:38:23', '2019-01-21 07:38:23'),
(1998, 1443, '2019-01-20 21:39:45', 'Select Leader', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '1.2 Integration Team', 28, 0, '2019-01-14 00:00:00', 1441, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1160, 126, 0, 'unassigned', '2019-01-21 07:39:45', '2019-01-21 07:39:45'),
(1999, 1444, '2019-01-20 21:39:48', 'Definition Objetives', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '1.3 Definition Objetives', 28, 0, '2019-01-14 00:00:00', 1441, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1161, 126, 0, 'unassigned', '2019-01-21 07:39:48', '2019-01-21 07:39:48'),
(2000, 1444, '2019-01-20 21:39:55', 'Definition Objetives', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '1.3 Definition Objetives', 28, 0, '2019-01-21 00:00:00', 1441, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1161, 126, 0, 'unassigned', '2019-01-21 07:39:55', '2019-01-21 07:39:55'),
(2001, 1444, '2019-01-20 21:39:57', 'Definition Objetives', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '1.3 Definition Objetives', 28, 0, '2019-01-28 00:00:00', 1441, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1161, 126, 0, 'unassigned', '2019-01-21 07:39:57', '2019-01-21 07:39:57'),
(2002, 1444, '2019-01-20 21:40:05', 'Definition Objetives', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '1.3 Definition Objetives', 28, 0, '2019-02-04 00:00:00', 1441, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1161, 126, 0, 'unassigned', '2019-01-21 07:40:05', '2019-01-21 07:40:05'),
(2003, 1444, '2019-01-20 21:40:21', 'Definition Objetives', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '1.3 Definition Objetives', 35, 0, '2019-02-04 00:00:00', 1441, 'any type', 'normal', 'Socket', 'working', 'Task Resize', 1161, 126, 0, 'unassigned', '2019-01-21 07:40:21', '2019-01-21 07:40:21'),
(2004, 1444, '2019-01-20 21:44:54', 'Definition Objetives', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '1.3 Definition Objetives', 42, 0, '2019-02-04 00:00:00', 1441, 'any type', 'normal', 'Socket', 'working', 'Task Resize', 1161, 126, 0, 'unassigned', '2019-01-21 07:44:54', '2019-01-21 07:44:54'),
(2005, 1444, '2019-01-20 21:44:57', 'Definition Objetives', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', '1.3 Definition Objetives', 49, 0, '2019-02-04 00:00:00', 1441, 'any type', 'normal', 'Socket', 'working', 'Task Resize', 1161, 126, 0, 'unassigned', '2019-01-21 07:44:57', '2019-01-21 07:44:57'),
(2006, 1457, '2019-01-20 21:46:36', 'Task description', 'Yeison Caicedoe', NULL, 'Nueva tarea perros', 3, NULL, '2019-01-20 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', NULL, 'Add Task', 1174, 127, NULL, 'yecaicedo@unicauca.edu.co', '2019-01-21 07:46:36', '2019-01-21 07:46:36'),
(2007, 1457, '2019-01-20 21:46:45', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Nueva tarea perros', 4, NULL, '2019-01-20 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', NULL, 'Task Resize', NULL, 127, NULL, 'yecaicedo@unicauca.edu.co', '2019-01-21 07:46:45', '2019-01-21 07:46:45'),
(2008, 1457, '2019-01-20 21:46:48', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Nueva tarea perros', 5, NULL, '2019-01-20 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', NULL, 'Task Resize', NULL, 127, NULL, 'yecaicedo@unicauca.edu.co', '2019-01-21 07:46:48', '2019-01-21 07:46:48'),
(2009, 1457, '2019-01-20 21:46:53', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Nueva tarea perros', 7, NULL, '2019-01-20 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', NULL, 'Task Resize', NULL, 127, NULL, 'yecaicedo@unicauca.edu.co', '2019-01-21 07:46:53', '2019-01-21 07:46:53'),
(2010, 1458, '2019-01-20 21:47:05', 'Task description', 'Yeison Caicedoe', NULL, 'Otra tarea perros', 5, NULL, '2019-01-20 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', NULL, 'Add Task', 1175, 127, NULL, 'unassigned', '2019-01-21 07:47:05', '2019-01-21 07:47:05'),
(2011, 1458, '2019-01-20 21:47:10', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Otra tarea perros', 7, NULL, '2019-01-20 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', NULL, 'Task Resize', NULL, 127, NULL, NULL, '2019-01-21 07:47:10', '2019-01-21 07:47:10'),
(2012, 1458, '2019-01-20 21:47:13', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Otra tarea perros', 9, NULL, '2019-01-20 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', NULL, 'Task Resize', NULL, 127, NULL, NULL, '2019-01-21 07:47:13', '2019-01-21 07:47:13'),
(2013, 1458, '2019-01-20 21:56:34', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Otra tarea perros', 7, 0, '2019-01-20 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', 'working', 'Task Resize', 1175, 127, NULL, NULL, '2019-01-21 07:56:34', '2019-01-21 07:56:34'),
(2014, 1458, '2019-01-20 21:56:37', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Otra tarea perros', 10, 0, '2019-01-20 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', 'working', 'Task Resize', 1175, 127, NULL, NULL, '2019-01-21 07:56:37', '2019-01-21 07:56:37'),
(2015, 1458, '2019-01-20 22:00:58', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Otra tarea perros', 13, 0, '2019-01-20 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', 'working', 'Task Resize', 1175, 127, NULL, NULL, '2019-01-21 08:00:58', '2019-01-21 08:00:58'),
(2016, 1457, '2019-01-20 22:07:50', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Nueva tarea perros', 5, 0, '2019-01-20 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', 'working', 'Task Resize', 1174, 127, NULL, 'yecaicedo@unicauca.edu.co', '2019-01-21 08:07:50', '2019-01-21 08:07:50'),
(2017, 1458, '2019-01-20 22:07:54', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Otra tarea perros', 8, 0, '2019-01-25 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', 'working', 'Task Resize', 1175, 127, NULL, NULL, '2019-01-21 08:07:54', '2019-01-21 08:07:54'),
(2018, 1458, '2019-01-20 22:07:56', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Otra tarea perros', 6, 0, '2019-01-25 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', 'working', 'Task Resize', 1175, 127, NULL, NULL, '2019-01-21 08:07:56', '2019-01-21 08:07:56'),
(2019, 1458, '2019-01-20 22:08:00', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Otra tarea perros', 5, 0, '2019-01-25 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', 'working', 'Task Resize', 1175, 127, NULL, NULL, '2019-01-21 08:08:00', '2019-01-21 08:08:00'),
(2020, 1458, '2019-01-21 00:20:00', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Otra tarea perros', 8, 0, '2019-01-25 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', 'working', 'Task Resize', 1175, 127, NULL, NULL, '2019-01-21 10:20:00', '2019-01-21 10:20:00'),
(2021, 1458, '2019-01-21 00:20:06', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Otra tarea perros', 10, 0, '2019-01-25 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', 'working', 'Task Resize', 1175, 127, NULL, NULL, '2019-01-21 10:20:06', '2019-01-21 10:20:06'),
(2022, 1458, '2019-01-21 00:20:11', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Otra tarea perros', 12, 0, '2019-01-25 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', 'working', 'Task Resize', 1175, 127, NULL, NULL, '2019-01-21 10:20:11', '2019-01-21 10:20:11'),
(2023, 1458, '2019-01-21 00:29:12', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Otra tarea perros', 12, 0, '2019-01-22 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', 'working', 'Drag Date', 1175, 127, NULL, NULL, '2019-01-21 10:29:12', '2019-01-21 10:29:12'),
(2024, 1458, '2019-01-21 00:30:01', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Otra tarea perros', 12, 0, '2019-01-22 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', 'working', 'Drag Date', 1175, 127, NULL, NULL, '2019-01-21 10:30:01', '2019-01-21 10:30:01'),
(2025, 1458, '2019-01-21 00:33:16', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Otra tarea perros', 12, 0.4847560975609756, '2019-01-22 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', 'working', 'Progress Update', 1175, 127, NULL, NULL, '2019-01-21 10:33:16', '2019-01-21 10:33:16'),
(2026, 1458, '2019-01-21 08:53:26', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Otra tarea perros', 9, 0.48, '2019-01-22 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', 'working', 'Task Resize', 1175, 127, NULL, NULL, '2019-01-21 18:53:26', '2019-01-21 18:53:26'),
(2027, 1458, '2019-01-21 09:19:17', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Otra tarea perros', 10, 0.48, '2019-01-22 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', 'working', 'Task Resize', 1175, 127, NULL, NULL, '2019-01-21 19:19:17', '2019-01-21 19:19:17'),
(2028, 1458, '2019-01-21 09:20:35', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Otra tarea perros', 9, 0.48, '2019-01-22 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', 'working', 'Task Resize', 1175, 127, NULL, NULL, '2019-01-21 19:20:35', '2019-01-21 19:20:35'),
(2029, 1458, '2019-01-21 09:21:52', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Otra tarea perros', 10, 0.48, '2019-01-22 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', 'working', 'Task Resize', 1175, 127, NULL, NULL, '2019-01-21 19:21:52', '2019-01-21 19:21:52'),
(2030, 1458, '2019-01-21 09:22:37', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Otra tarea perros', 9, 0.48, '2019-01-22 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', 'working', 'Task Resize', 1175, 127, NULL, NULL, '2019-01-21 19:22:37', '2019-01-21 19:22:37'),
(2031, 1458, '2019-01-21 09:30:31', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Otra tarea perros', 8, 0.48, '2019-01-22 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', 'working', 'Task Resize', 1175, 127, NULL, NULL, '2019-01-21 19:30:31', '2019-01-21 19:30:31'),
(2032, 1458, '2019-01-21 09:30:36', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Otra tarea perros', 10, 0.48, '2019-01-22 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', 'working', 'Task Resize', 1175, 127, NULL, NULL, '2019-01-21 19:30:36', '2019-01-21 19:30:36'),
(2033, 1458, '2019-01-21 09:32:04', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Otra tarea perros', 10, 0.7830882352941176, '2019-01-22 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', 'working', 'Progress Update', 1175, 127, NULL, NULL, '2019-01-21 19:32:04', '2019-01-21 19:32:04'),
(2034, 1458, '2019-01-25 17:02:19', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Otra tarea perros', 5, 0.78, '2019-01-22 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', 'working', 'Task Resize', 1175, 127, NULL, NULL, '2019-01-26 03:02:19', '2019-01-26 03:02:19');
INSERT INTO `taskhs` (`id`, `id_origin`, `mod_date`, `des`, `editor`, `email`, `text`, `duration`, `progress`, `start_date`, `parent`, `type`, `priority`, `socket`, `status`, `event`, `sortorder`, `project_id`, `workedHours`, `assigned`, `created_at`, `updated_at`) VALUES
(2035, 1459, '2019-01-27 19:44:55', 'Task description', 'Yeison Caicedoe', NULL, 'no usuario', 5, NULL, '2019-01-20 00:00:00', 0, 'normal', 'Normal', 'TjX9KzwDzX', NULL, 'Add Task', 1176, 127, NULL, '[]', '2019-01-28 05:44:55', '2019-01-28 05:44:55'),
(2036, 1459, '2019-01-29 09:44:24', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'no usuario', 5, 0, '2019-01-20 00:00:00', 0, 'normal', 'Normal', 'TjX9KzwDzX', 'working', 'Drag Date', 1176, 127, NULL, '[\"yecaicedo@unicauca.edu.co\",\"admin@admin.com\"]', '2019-01-29 19:44:24', '2019-01-29 19:44:24'),
(2037, 1459, '2019-01-29 09:44:51', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'no usuario', 5, 0, '2019-01-20 00:00:00', 0, 'normal', 'Normal', 'TjX9KzwDzX', 'working', 'Drag Date', 1176, 127, NULL, '[\"yecaicedo@unicauca.edu.co\",\"admin@admin.com\"]', '2019-01-29 19:44:51', '2019-01-29 19:44:51'),
(2038, 1459, '2019-01-29 09:46:24', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'no usuario', 5, 0, '2019-01-20 00:00:00', 0, 'normal', 'Normal', 'TjX9KzwDzX', 'working', 'Drag Date', 1176, 127, NULL, '[\"yecaicedo@unicauca.edu.co\",\"admin@admin.com\"]', '2019-01-29 19:46:24', '2019-01-29 19:46:24'),
(2039, 1458, '2019-01-29 22:51:50', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Otra tarea perros', 6, 0.78, '2019-01-22 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', 'working', 'Task Resize', 1175, 127, NULL, '[\"yecaicedo@unicauca.edu.co\",\"admin@admin.com\"]', '2019-01-30 08:51:50', '2019-01-30 08:51:50'),
(2040, 4294967295, '2019-01-31 17:16:45', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'New task', 1, NULL, '2019-01-20 00:00:00', 0, NULL, 'Normal', 'D2T3IE9t8g', NULL, 'Delete Task', NULL, 127, NULL, NULL, '2019-02-01 03:16:45', '2019-02-01 03:16:45'),
(2041, 1460, '2019-01-31 17:17:02', 'Task description', 'Yeison Caicedoe', NULL, 'nueva tarea perros', 1, NULL, '2019-01-31 00:00:00', 0, 'normal', 'Normal', 'Cps5cBPDsp', NULL, 'Add Task', 1177, 127, NULL, '[]', '2019-02-01 03:17:02', '2019-02-01 03:17:02'),
(2042, 4294967295, '2019-01-31 17:31:50', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'New task', 1, NULL, '2019-01-31 00:00:00', 1460, NULL, 'Normal', '6dJ4dtMGat', NULL, 'Delete Task', NULL, 127, NULL, NULL, '2019-02-01 03:31:50', '2019-02-01 03:31:50'),
(2043, 1461, '2019-01-31 17:31:56', 'Task description', 'Yeison Caicedoe', NULL, 'Nueva tarea padre', 1, NULL, '2019-01-31 00:00:00', 0, 'normal', 'Normal', '6dJ4dtMGat', NULL, 'Add Task', 1179, 127, NULL, 'unassigned', '2019-02-01 03:31:56', '2019-02-01 03:31:56'),
(2044, 1462, '2019-01-31 17:32:40', 'Task description', 'Yeison Caicedoe', NULL, 'nueva hijaaa', 1, NULL, '2019-01-31 00:00:00', 1461, 'normal', 'Normal', '6dJ4dtMGat', NULL, 'Add Task', 1180, 127, NULL, 'unassigned', '2019-02-01 03:32:40', '2019-02-01 03:32:40'),
(2045, 1463, '2019-02-03 11:41:11', 'Task description', 'Guest', NULL, 'Planning', 27, NULL, '2019-02-03 00:00:00', 0, 'normal', 'Normal', 'DcnEjvVq0I', NULL, 'Add Task', 1182, 129, NULL, 'unassigned', '2019-02-03 21:41:11', '2019-02-03 21:41:11'),
(2046, 1464, '2019-02-03 11:41:35', 'Task description', 'Guest', NULL, 'Analysis', 1, NULL, '2019-02-03 00:00:00', 0, 'project', 'Normal', 'DcnEjvVq0I', NULL, 'Add Task', 1183, 129, NULL, 'unassigned', '2019-02-03 21:41:35', '2019-02-03 21:41:35'),
(2047, 1465, '2019-02-03 11:41:44', 'Task description', 'Guest', NULL, 'Design', 1, NULL, '2019-02-03 00:00:00', 0, 'normal', 'Normal', 'DcnEjvVq0I', NULL, 'Add Task', 1184, 129, NULL, 'unassigned', '2019-02-03 21:41:44', '2019-02-03 21:41:44'),
(2048, 1466, '2019-02-03 11:42:09', 'Task description', 'Guest', NULL, 'Development & Implementation', 1, NULL, '2019-02-03 00:00:00', 0, 'project', 'Normal', 'DcnEjvVq0I', NULL, 'Add Task', 1185, 129, NULL, 'unassigned', '2019-02-03 21:42:09', '2019-02-03 21:42:09'),
(2049, 1467, '2019-02-03 11:42:18', 'Task description', 'Guest', NULL, 'Testing', 1, NULL, '2019-02-03 00:00:00', 0, 'project', 'Normal', 'DcnEjvVq0I', NULL, 'Add Task', 1186, 129, NULL, 'unassigned', '2019-02-03 21:42:18', '2019-02-03 21:42:18'),
(2050, 1468, '2019-02-03 11:42:29', 'Task description', 'Guest', NULL, 'Maintenance', 1, NULL, '2019-02-03 00:00:00', 0, 'project', 'Normal', 'DcnEjvVq0I', NULL, 'Add Task', 1187, 129, NULL, 'unassigned', '2019-02-03 21:42:29', '2019-02-03 21:42:29'),
(2051, 1469, '2019-02-03 11:45:00', 'Task description', 'Guest', NULL, 'Calculate duration', 1, NULL, '2019-02-03 00:00:00', 1463, 'normal', 'Normal', 'DcnEjvVq0I', NULL, 'Add Task', 1188, 129, NULL, 'unassigned', '2019-02-03 21:45:00', '2019-02-03 21:45:00'),
(2052, 1470, '2019-02-03 11:45:16', 'Task description', 'Guest', NULL, 'Calculate workload', 1, NULL, '2019-02-03 00:00:00', 1463, 'normal', 'Normal', 'DcnEjvVq0I', NULL, 'Add Task', 1189, 129, NULL, 'unassigned', '2019-02-03 21:45:16', '2019-02-03 21:45:16'),
(2053, 1471, '2019-02-03 11:45:26', 'Task description', 'Guest', NULL, 'Investments', 1, NULL, '2019-02-03 00:00:00', 1463, 'normal', 'Normal', 'DcnEjvVq0I', NULL, 'Add Task', 1190, 129, NULL, 'unassigned', '2019-02-03 21:45:26', '2019-02-03 21:45:26'),
(2054, 1470, '2019-02-03 11:45:34', 'Task description', 'Guest', 'guest@mail.com', 'Calculate workload', 1, NULL, '2019-02-03 00:00:00', 1463, 'normal', 'Normal', 'DcnEjvVq0I', NULL, 'Task Resize', NULL, 129, NULL, NULL, '2019-02-03 21:45:34', '2019-02-03 21:45:34'),
(2055, 1472, '2019-02-03 11:46:04', 'Task description', 'Guest', NULL, 'Stakeholders reunion', 1, NULL, '2019-02-03 00:00:00', 1463, 'normal', 'Normal', 'DcnEjvVq0I', NULL, 'Add Task', 1191, 129, NULL, 'unassigned', '2019-02-03 21:46:04', '2019-02-03 21:46:04'),
(2056, 1473, '2019-02-03 11:46:29', 'Task description', 'Guest', NULL, 'Requirements list', 1, NULL, '2019-02-03 00:00:00', 1464, 'normal', 'Normal', 'DcnEjvVq0I', NULL, 'Add Task', 1192, 129, NULL, 'unassigned', '2019-02-03 21:46:29', '2019-02-03 21:46:29'),
(2057, 1474, '2019-02-03 11:46:47', 'Task description', 'Guest', NULL, 'Gantt chart on Asakaa creation', 1, NULL, '2019-02-03 00:00:00', 0, 'normal', 'Normal', 'DcnEjvVq0I', NULL, 'Add Task', 1193, 129, NULL, 'unassigned', '2019-02-03 21:46:47', '2019-02-03 21:46:47'),
(2058, 1475, '2019-02-03 11:47:26', 'Task description', 'Guest', NULL, 'Tasks asigment', 1, NULL, '2019-02-03 00:00:00', 1464, 'normal', 'Normal', 'DcnEjvVq0I', NULL, 'Add Task', 1194, 129, NULL, 'unassigned', '2019-02-03 21:47:26', '2019-02-03 21:47:26'),
(2059, 1476, '2019-02-03 11:47:52', 'Task description', 'Guest', NULL, 'Mockup', 1, NULL, '2019-02-03 00:00:00', 1465, 'normal', 'Normal', 'DcnEjvVq0I', NULL, 'Add Task', 1195, 129, NULL, 'unassigned', '2019-02-03 21:47:52', '2019-02-03 21:47:52'),
(2060, 1477, '2019-02-03 11:48:06', 'Task description', 'Guest', NULL, 'Project Architecture', 1, NULL, '2019-02-03 00:00:00', 1465, 'normal', 'Normal', 'DcnEjvVq0I', NULL, 'Add Task', 1196, 129, NULL, 'unassigned', '2019-02-03 21:48:06', '2019-02-03 21:48:06'),
(2061, 1478, '2019-02-03 11:48:41', 'Task description', 'Guest', NULL, 'Environment selection', 1, NULL, '2019-02-03 00:00:00', 1466, 'normal', 'Normal', 'DcnEjvVq0I', NULL, 'Add Task', 1197, 129, NULL, 'unassigned', '2019-02-03 21:48:41', '2019-02-03 21:48:41'),
(2062, 1479, '2019-02-03 11:50:36', 'Task description', 'Guest', NULL, 'Daily 5 minutes reunion', 1, NULL, '2019-02-03 00:00:00', 1466, 'normal', 'Normal', 'DcnEjvVq0I', NULL, 'Add Task', 1198, 129, NULL, 'unassigned', '2019-02-03 21:50:36', '2019-02-03 21:50:36'),
(2063, 1480, '2019-02-03 11:51:08', 'Task description', 'Guest', NULL, 'Update every progress on Asakaa', 1, NULL, '2019-02-03 00:00:00', 1466, 'normal', 'Normal', 'DcnEjvVq0I', NULL, 'Add Task', 1199, 129, NULL, 'unassigned', '2019-02-03 21:51:08', '2019-02-03 21:51:08'),
(2064, 1481, '2019-02-03 11:51:31', 'Task description', 'Guest', NULL, 'Unit testing', 1, NULL, '2019-02-03 00:00:00', 1467, 'normal', 'Normal', 'DcnEjvVq0I', NULL, 'Add Task', 1200, 129, NULL, 'unassigned', '2019-02-03 21:51:31', '2019-02-03 21:51:31'),
(2065, 1482, '2019-02-03 11:51:50', 'Task description', 'Guest', NULL, 'Beta testing', 1, NULL, '2019-02-03 00:00:00', 1467, 'normal', 'Normal', 'DcnEjvVq0I', NULL, 'Add Task', 1201, 129, NULL, 'unassigned', '2019-02-03 21:51:50', '2019-02-03 21:51:50'),
(2066, 1483, '2019-02-03 11:52:04', 'Task description', 'Guest', NULL, 'Check feedback and work on updates', 1, NULL, '2019-02-03 00:00:00', 1468, 'normal', 'Normal', 'DcnEjvVq0I', NULL, 'Add Task', 1202, 129, NULL, 'unassigned', '2019-02-03 21:52:04', '2019-02-03 21:52:04'),
(2067, 1469, '2019-02-03 11:52:20', 'Task description', 'Guest', 'guest@mail.com', 'Calculate duration', 3, NULL, '2019-02-03 00:00:00', 1463, 'normal', 'Normal', 'DcnEjvVq0I', NULL, 'Task Resize', NULL, 129, NULL, NULL, '2019-02-03 21:52:20', '2019-02-03 21:52:20'),
(2068, 1470, '2019-02-03 11:52:21', 'Task description', 'Guest', 'guest@mail.com', 'Calculate workload', 6, NULL, '2019-02-03 00:00:00', 1463, 'normal', 'Normal', 'DcnEjvVq0I', NULL, 'Task Resize', NULL, 129, NULL, NULL, '2019-02-03 21:52:21', '2019-02-03 21:52:21'),
(2069, 1470, '2019-02-03 11:52:23', 'Task description', 'Guest', 'guest@mail.com', 'Calculate workload', 6, NULL, '2019-02-06 00:00:00', 1463, 'normal', 'Normal', 'DcnEjvVq0I', NULL, 'Drag Date', NULL, 129, NULL, NULL, '2019-02-03 21:52:23', '2019-02-03 21:52:23'),
(2070, 1471, '2019-02-03 11:52:25', 'Task description', 'Guest', 'guest@mail.com', 'Investments', 1, NULL, '2019-02-12 00:00:00', 1463, 'normal', 'Normal', 'DcnEjvVq0I', NULL, 'Drag Date', NULL, 129, NULL, NULL, '2019-02-03 21:52:25', '2019-02-03 21:52:25'),
(2071, 1471, '2019-02-03 11:52:26', 'Task description', 'Guest', 'guest@mail.com', 'Investments', 2, NULL, '2019-02-12 00:00:00', 1463, 'normal', 'Normal', 'DcnEjvVq0I', NULL, 'Task Resize', NULL, 129, NULL, NULL, '2019-02-03 21:52:26', '2019-02-03 21:52:26'),
(2072, 1470, '2019-02-03 11:53:29', 'Task description', 'Guest', 'guest@mail.com', 'Calculate workload', 6, 0, '2019-02-06 00:00:00', 1463, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Task Resize', 1189, 129, NULL, NULL, '2019-02-03 21:53:29', '2019-02-03 21:53:29'),
(2073, 1472, '2019-02-03 11:53:32', 'Task description', 'Guest', 'guest@mail.com', 'Stakeholders reunion', 1, 0, '2019-02-14 00:00:00', 1463, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Drag Date', 1191, 129, NULL, NULL, '2019-02-03 21:53:32', '2019-02-03 21:53:32'),
(2074, 1472, '2019-02-03 11:53:35', 'Task description', 'Guest', 'guest@mail.com', 'Stakeholders reunion', 3, 0, '2019-02-14 00:00:00', 1463, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Task Resize', 1191, 129, NULL, NULL, '2019-02-03 21:53:35', '2019-02-03 21:53:35'),
(2075, 1472, '2019-02-03 11:53:37', 'Task description', 'Guest', 'guest@mail.com', 'Stakeholders reunion', 2, 0, '2019-02-14 00:00:00', 1463, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Task Resize', 1191, 129, NULL, NULL, '2019-02-03 21:53:37', '2019-02-03 21:53:37'),
(2076, 1473, '2019-02-03 11:53:45', 'Task description', 'Guest', 'guest@mail.com', 'Requirements list', 3, 0, '2019-02-03 00:00:00', 1464, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Task Resize', 1192, 129, NULL, NULL, '2019-02-03 21:53:45', '2019-02-03 21:53:45'),
(2077, 1474, '2019-02-03 11:53:47', 'Task description', 'Guest', 'guest@mail.com', 'Gantt chart on Asakaa creation', 1, 0, '2019-02-03 00:00:00', 1464, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Task Resize', 1193, 129, NULL, NULL, '2019-02-03 21:53:47', '2019-02-03 21:53:47'),
(2078, 1474, '2019-02-03 11:53:54', 'Task description', 'Guest', 'guest@mail.com', 'Gantt chart on Asakaa creation', 1, 0, '2019-02-06 00:00:00', 1464, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Drag Date', 1193, 129, NULL, NULL, '2019-02-03 21:53:54', '2019-02-03 21:53:54'),
(2079, 1475, '2019-02-03 11:53:56', 'Task description', 'Guest', 'guest@mail.com', 'Tasks asigment', 1, 0, '2019-02-07 00:00:00', 1464, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Drag Date', 1194, 129, NULL, NULL, '2019-02-03 21:53:56', '2019-02-03 21:53:56'),
(2080, 1476, '2019-02-03 11:53:58', 'Task description', 'Guest', 'guest@mail.com', 'Mockup', 1, 0, '2019-02-04 00:00:00', 1465, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Drag Date', 1195, 129, NULL, NULL, '2019-02-03 21:53:58', '2019-02-03 21:53:58'),
(2081, 1477, '2019-02-03 11:53:59', 'Task description', 'Guest', 'guest@mail.com', 'Project Architecture', 1, 0, '2019-02-04 00:00:00', 1465, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Drag Date', 1196, 129, NULL, NULL, '2019-02-03 21:53:59', '2019-02-03 21:53:59'),
(2082, 1477, '2019-02-03 11:54:01', 'Task description', 'Guest', 'guest@mail.com', 'Project Architecture', 6, 0, '2019-02-04 00:00:00', 1465, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Task Resize', 1196, 129, NULL, NULL, '2019-02-03 21:54:01', '2019-02-03 21:54:01'),
(2083, 1476, '2019-02-03 11:54:02', 'Task description', 'Guest', 'guest@mail.com', 'Mockup', 1, 0, '2019-02-08 00:00:00', 1465, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Drag Date', 1195, 129, NULL, NULL, '2019-02-03 21:54:02', '2019-02-03 21:54:02'),
(2084, 1477, '2019-02-03 11:54:05', 'Task description', 'Guest', 'guest@mail.com', 'Project Architecture', 6, 0, '2019-02-08 00:00:00', 1465, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Drag Date', 1196, 129, NULL, NULL, '2019-02-03 21:54:05', '2019-02-03 21:54:05'),
(2085, 1473, '2019-02-03 11:54:10', 'Task description', 'Guest', 'guest@mail.com', 'Requirements list', 3, 0, '2019-02-16 00:00:00', 1464, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Drag Date', 1192, 129, NULL, NULL, '2019-02-03 21:54:10', '2019-02-03 21:54:10'),
(2086, 1475, '2019-02-03 11:54:12', 'Task description', 'Guest', 'guest@mail.com', 'Tasks asigment', 1, 0, '2019-02-17 00:00:00', 1464, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Drag Date', 1194, 129, NULL, NULL, '2019-02-03 21:54:12', '2019-02-03 21:54:12'),
(2087, 1474, '2019-02-03 11:54:15', 'Task description', 'Guest', 'guest@mail.com', 'Gantt chart on Asakaa creation', 1, 0, '2019-02-18 00:00:00', 1464, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Drag Date', 1193, 129, NULL, NULL, '2019-02-03 21:54:15', '2019-02-03 21:54:15'),
(2088, 1475, '2019-02-03 11:54:16', 'Task description', 'Guest', 'guest@mail.com', 'Tasks asigment', 1, 0, '2019-02-19 00:00:00', 1464, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Drag Date', 1194, 129, NULL, NULL, '2019-02-03 21:54:16', '2019-02-03 21:54:16'),
(2089, 1474, '2019-02-03 11:54:18', 'Task description', 'Guest', 'guest@mail.com', 'Gantt chart on Asakaa creation', 1, 0, '2019-02-19 00:00:00', 1464, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Drag Date', 1193, 129, NULL, NULL, '2019-02-03 21:54:18', '2019-02-03 21:54:18'),
(2090, 1475, '2019-02-03 11:54:20', 'Task description', 'Guest', 'guest@mail.com', 'Tasks asigment', 1, 0, '2019-02-20 00:00:00', 1464, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Drag Date', 1194, 129, NULL, NULL, '2019-02-03 21:54:20', '2019-02-03 21:54:20'),
(2091, 1478, '2019-02-03 11:54:28', 'Task description', 'Guest', 'guest@mail.com', 'Environment selection', 2, 0, '2019-02-03 00:00:00', 1466, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Task Resize', 1197, 129, NULL, NULL, '2019-02-03 21:54:28', '2019-02-03 21:54:28'),
(2092, 1479, '2019-02-03 11:54:30', 'Task description', 'Guest', 'guest@mail.com', 'Daily 5 minutes reunion', 2, 0, '2019-02-03 00:00:00', 1466, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Task Resize', 1198, 129, NULL, NULL, '2019-02-03 21:54:30', '2019-02-03 21:54:30'),
(2093, 1480, '2019-02-03 11:54:31', 'Task description', 'Guest', 'guest@mail.com', 'Update every progress on Asakaa', 2, 0, '2019-02-03 00:00:00', 1466, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Task Resize', 1199, 129, NULL, NULL, '2019-02-03 21:54:31', '2019-02-03 21:54:31'),
(2094, 1481, '2019-02-03 11:54:33', 'Task description', 'Guest', 'guest@mail.com', 'Unit testing', 2, 0, '2019-02-03 00:00:00', 1467, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Task Resize', 1200, 129, NULL, NULL, '2019-02-03 21:54:33', '2019-02-03 21:54:33'),
(2095, 1482, '2019-02-03 11:54:35', 'Task description', 'Guest', 'guest@mail.com', 'Beta testing', 2, 0, '2019-02-03 00:00:00', 1467, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Task Resize', 1201, 129, NULL, NULL, '2019-02-03 21:54:35', '2019-02-03 21:54:35'),
(2096, 1483, '2019-02-03 11:54:38', 'Task description', 'Guest', 'guest@mail.com', 'Check feedback and work on updates', 2, 0, '2019-02-03 00:00:00', 1468, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Task Resize', 1202, 129, NULL, NULL, '2019-02-03 21:54:38', '2019-02-03 21:54:38'),
(2097, 1476, '2019-02-03 11:54:46', 'Task description', 'Guest', 'guest@mail.com', 'Mockup', 1, 0, '2019-02-08 00:00:00', 1465, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Drag Date', 1195, 129, NULL, NULL, '2019-02-03 21:54:46', '2019-02-03 21:54:46'),
(2098, 1476, '2019-02-03 11:54:48', 'Task description', 'Guest', 'guest@mail.com', 'Mockup', 3, 0, '2019-02-08 00:00:00', 1465, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Task Resize', 1195, 129, NULL, NULL, '2019-02-03 21:54:48', '2019-02-03 21:54:48'),
(2099, 1476, '2019-02-03 11:54:52', 'Task description', 'Guest', 'guest@mail.com', 'Mockup', 3, 0, '2019-02-21 00:00:00', 1465, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Drag Date', 1195, 129, NULL, NULL, '2019-02-03 21:54:52', '2019-02-03 21:54:52'),
(2100, 1477, '2019-02-03 11:54:56', 'Task description', 'Guest', 'guest@mail.com', 'Project Architecture', 6, 0, '2019-02-25 00:00:00', 1465, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Drag Date', 1196, 129, NULL, NULL, '2019-02-03 21:54:56', '2019-02-03 21:54:56'),
(2101, 1478, '2019-02-03 11:55:01', 'Task description', 'Guest', 'guest@mail.com', 'Environment selection', 2, 0, '2019-03-04 00:00:00', 1466, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Drag Date', 1197, 129, NULL, NULL, '2019-02-03 21:55:01', '2019-02-03 21:55:01'),
(2102, 1479, '2019-02-03 11:55:04', 'Task description', 'Guest', 'guest@mail.com', 'Daily 5 minutes reunion', 2, 0, '2019-03-06 00:00:00', 1466, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Drag Date', 1198, 129, NULL, NULL, '2019-02-03 21:55:04', '2019-02-03 21:55:04'),
(2103, 1478, '2019-02-03 11:55:09', 'Task description', 'Guest', 'guest@mail.com', 'Environment selection', 3, 0, '2019-03-04 00:00:00', 1466, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Task Resize', 1197, 129, NULL, NULL, '2019-02-03 21:55:09', '2019-02-03 21:55:09'),
(2104, 1479, '2019-02-03 11:55:12', 'Task description', 'Guest', 'guest@mail.com', 'Daily 5 minutes reunion', 4, 0, '2019-03-06 00:00:00', 1466, 'normal', 'Normal', 'DcnEjvVq0I', 'working', 'Task Resize', 1198, 129, NULL, NULL, '2019-02-03 21:55:12', '2019-02-03 21:55:12'),
(2105, 1466, '2019-02-03 11:55:18', 'Task description', 'Guest', 'guest@mail.com', 'Development & Implementation', 35, 0.36228571428571427, '2019-02-03 00:00:00', 0, 'project', 'Normal', 'DcnEjvVq0I', 'working', 'Progress Update', 1185, 129, NULL, NULL, '2019-02-03 21:55:18', '2019-02-03 21:55:18'),
(2106, 1522, '2019-02-03 12:02:28', 'WBS Diagram Responsabilities', 'Guest', 'guest@mail.com', '2.1 WBS Diagram Responsabilities', 30, 0, '2019-05-02 00:00:00', 1521, 'any type', 'normal', 'Socket', 'working', 'Task Resize', 1187, 129, 0, 'unassigned', '2019-02-03 22:02:28', '2019-02-03 22:02:28'),
(2107, 1522, '2019-02-03 12:02:29', 'WBS Diagram Responsabilities', 'Guest', 'guest@mail.com', '2.1 WBS Diagram Responsabilities', 60, 0, '2019-05-02 00:00:00', 1521, 'any type', 'normal', 'Socket', 'working', 'Task Resize', 1187, 129, 0, 'unassigned', '2019-02-03 22:02:29', '2019-02-03 22:02:29'),
(2108, 1522, '2019-02-03 12:02:33', 'WBS Diagram Responsabilities', 'Guest', 'guest@mail.com', '2.1 WBS Diagram Responsabilities', 60, 0, '2019-04-01 00:00:00', 1521, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1187, 129, 0, 'unassigned', '2019-02-03 22:02:33', '2019-02-03 22:02:33'),
(2109, 1523, '2019-02-03 12:02:36', 'Cronogram', 'Guest', 'guest@mail.com', '2.2 Cronogram', 28, 0, '2019-06-02 00:00:00', 1521, 'any type', 'normal', 'Socket', 'working', 'Progress Update', 1188, 129, 0, 'unassigned', '2019-02-03 22:02:36', '2019-02-03 22:02:36'),
(2110, 1520, '2019-02-03 12:03:15', 'Definition Objetives', 'Guest', 'guest@mail.com', '1.3 Definition Objetives', 28, 0, '2019-03-01 00:00:00', 1517, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1185, 129, 0, 'unassigned', '2019-02-03 22:03:15', '2019-02-03 22:03:15'),
(2111, 1519, '2019-02-03 12:03:16', 'Select Leader', 'Guest', 'guest@mail.com', '1.2 Integration Team', 28, 0, '2019-03-01 00:00:00', 1517, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1184, 129, 0, 'unassigned', '2019-02-03 22:03:16', '2019-02-03 22:03:16'),
(2112, 1519, '2019-02-03 12:03:18', 'Select Leader', 'Guest', 'guest@mail.com', '1.2 Integration Team', 28, 0, '2019-03-01 00:00:00', 1517, 'any type', 'normal', 'Socket', 'working', 'Task Resize', 1184, 129, 0, 'unassigned', '2019-02-03 22:03:18', '2019-02-03 22:03:18'),
(2113, 1522, '2019-02-03 12:03:29', 'WBS Diagram Responsabilities', 'Guest', 'guest@mail.com', '2.1 WBS Diagram Responsabilities', 60, 0, '2019-03-11 00:00:00', 1521, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1187, 129, 0, 'unassigned', '2019-02-03 22:03:29', '2019-02-03 22:03:29'),
(2114, 1519, '2019-02-03 12:03:31', 'Select Leader', 'Guest', 'guest@mail.com', '1.2 Integration Team', 28, 0, '2019-02-18 00:00:00', 1517, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1184, 129, 0, 'unassigned', '2019-02-03 22:03:31', '2019-02-03 22:03:31'),
(2115, 1522, '2019-02-03 12:03:33', 'WBS Diagram Responsabilities', 'Guest', 'guest@mail.com', '2.1 WBS Diagram Responsabilities', 60, 0, '2019-03-04 00:00:00', 1521, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1187, 129, 0, 'unassigned', '2019-02-03 22:03:33', '2019-02-03 22:03:33'),
(2116, 1520, '2019-02-03 12:03:35', 'Definition Objetives', 'Guest', 'guest@mail.com', '1.3 Definition Objetives', 28, 0, '2019-02-25 00:00:00', 1517, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1185, 129, 0, 'unassigned', '2019-02-03 22:03:35', '2019-02-03 22:03:35'),
(2117, 1519, '2019-02-03 12:03:36', 'Select Leader', 'Guest', 'guest@mail.com', '1.2 Integration Team', 28, 0, '2019-02-11 00:00:00', 1517, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1184, 129, 0, 'unassigned', '2019-02-03 22:03:36', '2019-02-03 22:03:36'),
(2118, 1523, '2019-02-03 12:03:38', 'Cronogram', 'Guest', 'guest@mail.com', '2.2 Cronogram', 28, 0, '2019-04-22 00:00:00', 1521, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1188, 129, 0, 'unassigned', '2019-02-03 22:03:38', '2019-02-03 22:03:38'),
(2119, 1524, '2019-02-03 12:03:40', 'Butget', 'Guest', 'guest@mail.com', '2.3 Budget', 28, 0, '2019-05-06 00:00:00', 1521, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1189, 129, 0, 'unassigned', '2019-02-03 22:03:40', '2019-02-03 22:03:40'),
(2120, 1525, '2019-02-03 12:03:42', 'Risk Plan', 'Guest', 'guest@mail.com', '2.4 Risk Plan', 28, 0, '2019-06-24 00:00:00', 1521, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1190, 129, 0, 'unassigned', '2019-02-03 22:03:42', '2019-02-03 22:03:42'),
(2121, 1526, '2019-02-03 12:03:43', 'Base Line', 'Guest', 'guest@mail.com', '2.5 Base Line', 28, 0, '2019-06-24 00:00:00', 1521, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1191, 129, 0, 'unassigned', '2019-02-03 22:03:43', '2019-02-03 22:03:43'),
(2122, 1528, '2019-02-03 12:03:46', 'Control Process', 'Guest', 'guest@mail.com', '3.1 Control Process', 107, 0, '2019-07-15 00:00:00', 1527, 'any type', 'normal', 'Socket', 'working', 'Task Resize', 1193, 129, 0, 'unassigned', '2019-02-03 22:03:46', '2019-02-03 22:03:46'),
(2123, 1526, '2019-02-03 12:03:47', 'Base Line', 'Guest', 'guest@mail.com', '2.5 Base Line', 28, 0, '2019-07-15 00:00:00', 1521, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1191, 129, 0, 'unassigned', '2019-02-03 22:03:47', '2019-02-03 22:03:47'),
(2124, 1525, '2019-02-03 12:03:49', 'Risk Plan', 'Guest', 'guest@mail.com', '2.4 Risk Plan', 28, 0, '2019-06-17 00:00:00', 1521, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1190, 129, 0, 'unassigned', '2019-02-03 22:03:49', '2019-02-03 22:03:49'),
(2125, 1524, '2019-02-03 12:03:50', 'Butget', 'Guest', 'guest@mail.com', '2.3 Budget', 28, 0, '2019-05-13 00:00:00', 1521, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1189, 129, 0, 'unassigned', '2019-02-03 22:03:50', '2019-02-03 22:03:50'),
(2126, 1523, '2019-02-03 12:03:54', 'Cronogram', 'Guest', 'guest@mail.com', '2.2 Cronogram', 28, 0, '2019-04-01 00:00:00', 1521, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1188, 129, 0, 'unassigned', '2019-02-03 22:03:54', '2019-02-03 22:03:54'),
(2127, 1524, '2019-02-03 12:03:55', 'Butget', 'Guest', 'guest@mail.com', '2.3 Budget', 28, 0, '2019-04-22 00:00:00', 1521, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1189, 129, 0, 'unassigned', '2019-02-03 22:03:55', '2019-02-03 22:03:55'),
(2128, 1525, '2019-02-03 12:03:58', 'Risk Plan', 'Guest', 'guest@mail.com', '2.4 Risk Plan', 28, 0, '2019-05-06 00:00:00', 1521, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1190, 129, 0, 'unassigned', '2019-02-03 22:03:58', '2019-02-03 22:03:58'),
(2129, 1526, '2019-02-03 12:03:59', 'Base Line', 'Guest', 'guest@mail.com', '2.5 Base Line', 28, 0, '2019-05-20 00:00:00', 1521, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1191, 129, 0, 'unassigned', '2019-02-03 22:03:59', '2019-02-03 22:03:59'),
(2130, 1528, '2019-02-03 12:04:04', 'Control Process', 'Guest', 'guest@mail.com', '3.1 Control Process', 107, 0, '2019-04-15 00:00:00', 1527, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1193, 129, 0, 'unassigned', '2019-02-03 22:04:04', '2019-02-03 22:04:04'),
(2131, 1529, '2019-02-03 12:04:07', 'Control Tools', 'Guest', 'guest@mail.com', '3.2 Control Tools', 28, 0, '2019-07-22 00:00:00', 1527, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1194, 129, 0, 'unassigned', '2019-02-03 22:04:07', '2019-02-03 22:04:07'),
(2132, 1530, '2019-02-03 12:04:11', 'Change Manager', 'Guest', 'guest@mail.com', '3.3 Change Manager', 28, 0, '2019-08-12 00:00:00', 1527, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1195, 129, 0, 'unassigned', '2019-02-03 22:04:11', '2019-02-03 22:04:11'),
(2133, 1532, '2019-02-03 12:04:17', 'Closing Project', 'Guest', 'guest@mail.com', '4.1 Closing Project', 10, 0, '2019-09-09 00:00:00', 1531, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1197, 129, 0, 'unassigned', '2019-02-03 22:04:17', '2019-02-03 22:04:17'),
(2134, 1524, '2019-02-03 12:04:23', 'Butget', 'Guest', 'guest@mail.com', '2.3 Budget', 28, 0, '2019-04-15 00:00:00', 1521, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1189, 129, 0, 'unassigned', '2019-02-03 22:04:23', '2019-02-03 22:04:23'),
(2135, 1525, '2019-02-03 12:04:24', 'Risk Plan', 'Guest', 'guest@mail.com', '2.4 Risk Plan', 28, 0, '2019-04-22 00:00:00', 1521, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1190, 129, 0, 'unassigned', '2019-02-03 22:04:24', '2019-02-03 22:04:24'),
(2136, 1526, '2019-02-03 12:04:26', 'Base Line', 'Guest', 'guest@mail.com', '2.5 Base Line', 28, 0, '2019-04-22 00:00:00', 1521, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1191, 129, 0, 'unassigned', '2019-02-03 22:04:26', '2019-02-03 22:04:26'),
(2137, 1528, '2019-02-03 12:04:28', 'Control Process', 'Guest', 'guest@mail.com', '3.1 Control Process', 107, 0, '2019-04-01 00:00:00', 1527, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1193, 129, 0, 'unassigned', '2019-02-03 22:04:28', '2019-02-03 22:04:28'),
(2138, 1529, '2019-02-03 12:04:31', 'Control Tools', 'Guest', 'guest@mail.com', '3.2 Control Tools', 28, 0, '2019-05-20 00:00:00', 1527, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1194, 129, 0, 'unassigned', '2019-02-03 22:04:31', '2019-02-03 22:04:31'),
(2139, 1528, '2019-02-03 12:04:34', 'Control Process', 'Guest', 'guest@mail.com', '3.1 Control Process', 42, 0, '2019-04-01 00:00:00', 1527, 'any type', 'normal', 'Socket', 'working', 'Task Resize', 1193, 129, 0, 'unassigned', '2019-02-03 22:04:34', '2019-02-03 22:04:34'),
(2140, 1530, '2019-02-03 12:04:37', 'Change Manager', 'Guest', 'guest@mail.com', '3.3 Change Manager', 28, 0, '2019-06-17 00:00:00', 1527, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1195, 129, 0, 'unassigned', '2019-02-03 22:04:37', '2019-02-03 22:04:37'),
(2141, 1532, '2019-02-03 12:04:40', 'Closing Project', 'Guest', 'guest@mail.com', '4.1 Closing Project', 10, 0, '2019-09-02 00:00:00', 1531, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1197, 129, 0, 'unassigned', '2019-02-03 22:04:40', '2019-02-03 22:04:40'),
(2142, 1532, '2019-02-03 12:04:43', 'Closing Project', 'Guest', 'guest@mail.com', '4.1 Closing Project', 59, 0, '2019-07-15 00:00:00', 1531, 'any type', 'normal', 'Socket', 'working', 'Task Resize', 1197, 129, 0, 'unassigned', '2019-02-03 22:04:43', '2019-02-03 22:04:43'),
(2143, 1523, '2019-02-03 12:05:06', 'Cronogram', 'Guest', 'guest@mail.com', '2.2 Cronogram', 28, 0, '2019-03-22 00:00:00', 1521, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1188, 129, 0, 'unassigned', '2019-02-03 22:05:06', '2019-02-03 22:05:06'),
(2144, 1524, '2019-02-03 12:05:07', 'Butget', 'Guest', 'guest@mail.com', '2.3 Budget', 28, 0, '2019-04-05 00:00:00', 1521, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1189, 129, 0, 'unassigned', '2019-02-03 22:05:07', '2019-02-03 22:05:07'),
(2145, 1525, '2019-02-03 12:05:09', 'Risk Plan', 'Guest', 'guest@mail.com', '2.4 Risk Plan', 28, 0, '2019-04-12 00:00:00', 1521, 'any type', 'normal', 'Socket', 'working', 'Drag Date', 1190, 129, 0, 'unassigned', '2019-02-03 22:05:09', '2019-02-03 22:05:09'),
(2146, 1533, '2019-02-04 20:53:27', 'Task description', 'Yeison Caicedoe', NULL, 'hija', 1, NULL, '2019-02-04 00:00:00', 1461, 'normal', 'Normal', '4gVzXW8J3a', NULL, 'Add Task', 1198, 127, NULL, 'unassigned', '2019-02-05 06:53:27', '2019-02-05 06:53:27'),
(2147, 1461, '2019-02-04 20:59:15', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Nueva tarea padre', 1, 0, '2019-02-04 00:00:00', 0, 'project', 'Normal', '6dJ4dtMGat', 'working', 'Delete Task', 1181, 127, NULL, NULL, '2019-02-05 06:59:15', '2019-02-05 06:59:15'),
(2148, 1460, '2019-02-04 20:59:17', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'nueva tarea perros', 1, 0, '2019-01-31 00:00:00', 0, 'normal', 'Normal', 'Cps5cBPDsp', 'working', 'Delete Task', 1180, 127, NULL, '[]', '2019-02-05 06:59:17', '2019-02-05 06:59:17'),
(2149, 1462, '2019-02-04 20:59:19', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'nueva hijaaa', 1, 0, '2019-01-31 00:00:00', 0, 'normal', 'Normal', '6dJ4dtMGat', 'working', 'Delete Task', 1179, 127, NULL, NULL, '2019-02-05 06:59:19', '2019-02-05 06:59:19'),
(2150, NULL, '2019-02-04 22:16:09', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-05 08:16:09', '2019-02-05 08:16:09'),
(2151, 1534, '2019-02-04 22:22:28', 'Task description', 'Yeison Caicedoe', NULL, 'Tarea padre', 1, NULL, '2019-02-04 00:00:00', 0, 'normal', 'Normal', '0FPjufOxQ9', NULL, 'Add Task', 1198, 127, NULL, 'yecaicedo@unicauca.edu.co', '2019-02-05 08:22:28', '2019-02-05 08:22:28'),
(2152, 1535, '2019-02-04 22:22:57', 'Task description', 'Yeison Caicedoe', NULL, 'tarea hija', 1, NULL, '2019-02-04 00:00:00', 1534, 'normal', 'Normal', '0FPjufOxQ9', NULL, 'Add Task', 1199, 127, NULL, 'unassigned', '2019-02-05 08:22:57', '2019-02-05 08:22:57'),
(2153, 1458, '2019-02-09 13:23:30', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea 2', 12, 0.78, '2019-01-22 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', 'working', 'Task Resize', 1175, 127, NULL, 'yecaicedo@unicauca.edu.co,admin@admin.com', '2019-02-09 23:23:30', '2019-02-09 23:23:30'),
(2154, 1458, '2019-02-09 13:26:52', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea 2', 8, 0.78, '2019-01-22 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', 'working', 'Task Resize', 1175, 127, NULL, 'yecaicedo@unicauca.edu.co,admin@admin.com', '2019-02-09 23:26:52', '2019-02-09 23:26:52'),
(2155, 1459, '2019-02-09 13:27:45', 'Task description1122', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'compra de algo que no cuenta', 10, 0, '2019-01-20 00:00:00', 0, 'normal', 'Normal', 'TjX9KzwDzX', 'working', 'Task Resize', 1177, 127, NULL, 'yecaicedo@unicauca.edu.co,admin@admin.com', '2019-02-09 23:27:45', '2019-02-09 23:27:45'),
(2156, 1459, '2019-02-09 13:32:01', 'Task description1122', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'compra de algo que no cuenta', 10, 0, '2019-01-19 00:00:00', 0, 'normal', 'Normal', 'TjX9KzwDzX', 'working', 'Drag Date', 1177, 127, NULL, 'yecaicedo@unicauca.edu.co,admin@admin.com', '2019-02-09 23:32:01', '2019-02-09 23:32:01'),
(2157, 1459, '2019-02-09 13:34:52', 'Task description1122', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'compra de algo que no cuenta', 11, 0, '2019-01-19 00:00:00', 0, 'normal', 'Normal', 'TjX9KzwDzX', 'working', 'Task Resize', 1177, 127, NULL, 'yecaicedo@unicauca.edu.co,admin@admin.com', '2019-02-09 23:34:52', '2019-02-09 23:34:52'),
(2158, 1459, '2019-02-09 13:45:44', 'Task description1122', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'compra de algo que no cuenta', 10, 0, '2019-01-19 00:00:00', 0, 'normal', 'Normal', 'TjX9KzwDzX', 'working', 'Task Resize', 1177, 127, NULL, 'yecaicedo@unicauca.edu.co,admin@admin.com', '2019-02-09 23:45:44', '2019-02-09 23:45:44'),
(2159, 1459, '2019-02-09 13:48:46', 'Task description1122', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'compra de algo que no cuenta', 11, 0, '2019-01-19 00:00:00', 0, 'normal', 'Normal', 'TjX9KzwDzX', 'working', 'Task Resize', 1177, 127, NULL, 'yecaicedo@unicauca.edu.co,admin@admin.com', '2019-02-09 23:48:46', '2019-02-09 23:48:46'),
(2160, 1459, '2019-02-09 13:51:37', 'Task description1122', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'compra de algo que no cuenta', 10, 0, '2019-01-19 00:00:00', 0, 'normal', 'Normal', 'TjX9KzwDzX', 'working', 'Drag Date', 1177, 127, NULL, 'yecaicedo@unicauca.edu.co,admin@admin.com', '2019-02-09 23:51:37', '2019-02-09 23:51:37'),
(2161, 1459, '2019-02-09 13:51:38', 'Task description1122', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'compra de algo que no cuenta', 10, 0, '2019-01-19 00:00:00', 0, 'normal', 'Normal', 'TjX9KzwDzX', 'working', 'Drag Date', 1177, 127, NULL, 'yecaicedo@unicauca.edu.co,admin@admin.com', '2019-02-09 23:51:38', '2019-02-09 23:51:38'),
(2162, 1459, '2019-02-09 13:51:41', 'Task description1122', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'compra de algo que no cuenta', 9, 0, '2019-01-19 00:00:00', 0, 'normal', 'Normal', 'TjX9KzwDzX', 'working', 'Task Resize', 1177, 127, NULL, 'yecaicedo@unicauca.edu.co,admin@admin.com', '2019-02-09 23:51:41', '2019-02-09 23:51:41'),
(2163, 1459, '2019-02-09 13:56:43', 'Task description1122', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'compra de algo que no cuenta', 10, 0, '2019-01-19 00:00:00', 0, 'normal', 'Normal', 'TjX9KzwDzX', 'working', 'Task Resize', 1177, 127, NULL, 'yecaicedo@unicauca.edu.co,admin@admin.com', '2019-02-09 23:56:43', '2019-02-09 23:56:43'),
(2164, 1459, '2019-02-09 13:57:00', 'Task description1122', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'compra de algo que no cuenta', 9, 0, '2019-01-19 00:00:00', 0, 'normal', 'Normal', 'TjX9KzwDzX', 'working', 'Task Resize', 1177, 127, NULL, 'yecaicedo@unicauca.edu.co,admin@admin.com', '2019-02-09 23:57:00', '2019-02-09 23:57:00'),
(2165, 1459, '2019-02-09 14:07:23', 'Task description1122', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'compra de algo que no cuenta', 10, 0, '2019-01-19 00:00:00', 0, 'normal', 'Normal', 'TjX9KzwDzX', 'working', 'Task Resize', 1177, 127, NULL, 'yecaicedo@unicauca.edu.co,admin@admin.com', '2019-02-10 00:07:23', '2019-02-10 00:07:23'),
(2166, 1459, '2019-02-09 14:09:02', 'Task description1122', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'compra de algo que no cuenta', 10, 0, '2019-01-19 00:00:00', 0, 'normal', 'Normal', 'TjX9KzwDzX', 'working', 'Task Resize', 1177, 127, NULL, 'yecaicedo@unicauca.edu.co,admin@admin.com', '2019-02-10 00:09:02', '2019-02-10 00:09:02'),
(2167, 1459, '2019-02-09 14:13:06', 'Task description1122', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'compra de algo que no cuenta', 11, 0, '2019-01-19 00:00:00', 0, 'normal', 'Normal', 'TjX9KzwDzX', 'working', 'Task Resize', 1177, 127, NULL, 'yecaicedo@unicauca.edu.co,admin@admin.com', '2019-02-10 00:13:06', '2019-02-10 00:13:06'),
(2168, 1459, '2019-02-09 14:13:13', 'Task description1122', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'compra de algo que no cuenta', 10, 0, '2019-01-19 00:00:00', 0, 'normal', 'Normal', 'TjX9KzwDzX', 'working', 'Task Resize', 1177, 127, NULL, 'yecaicedo@unicauca.edu.co,admin@admin.com', '2019-02-10 00:13:13', '2019-02-10 00:13:13'),
(2169, 1458, '2019-02-09 20:08:14', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea 2', 11, 0.78, '2019-01-19 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', 'working', 'Drag Date', 1175, 127, NULL, 'yecaicedo@unicauca.edu.co,admin@admin.com', '2019-02-10 06:08:14', '2019-02-10 06:08:14'),
(2170, 1458, '2019-02-09 20:09:37', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'tarea 2', 13, 0.78, '2019-01-19 00:00:00', 0, 'normal', 'Normal', 'AuBxlSP6ed', 'working', 'Task Resize', 1175, 127, NULL, 'yecaicedo@unicauca.edu.co,admin@admin.com', '2019-02-10 06:09:37', '2019-02-10 06:09:37'),
(2171, 1459, '2019-02-09 20:13:40', 'Task description1122', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'compra de algo que no cuenta', 13, 0, '2019-01-19 00:00:00', 0, 'normal', 'Normal', 'TjX9KzwDzX', 'working', 'Task Resize', 1177, 127, NULL, 'yecaicedo@unicauca.edu.co,admin@admin.com', '2019-02-10 06:13:40', '2019-02-10 06:13:40'),
(2172, 1459, '2019-02-09 20:17:39', 'Task description1122', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'compra de algo que no cuenta', 11, 0, '2019-01-19 00:00:00', 0, 'normal', 'Normal', 'TjX9KzwDzX', 'working', 'Task Resize', 1177, 127, NULL, 'yecaicedo@unicauca.edu.co,admin@admin.com', '2019-02-10 06:17:39', '2019-02-10 06:17:39'),
(2173, 1459, '2019-02-09 20:17:59', 'Task description1122', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'compra de algo que no cuenta', 4, 0, '2019-01-19 00:00:00', 0, 'normal', 'Normal', 'TjX9KzwDzX', 'working', 'Task Resize', 1177, 127, NULL, 'yecaicedo@unicauca.edu.co,admin@admin.com', '2019-02-10 06:17:59', '2019-02-10 06:17:59'),
(2174, 1459, '2019-02-09 20:21:47', 'Task description1122', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'compra de algo que no cuenta', 8, 0, '2019-01-19 00:00:00', 0, 'normal', 'Normal', 'TjX9KzwDzX', 'working', 'Task Resize', 1177, 127, NULL, 'yecaicedo@unicauca.edu.co,admin@admin.com', '2019-02-10 06:21:47', '2019-02-10 06:21:47'),
(2175, 1459, '2019-02-09 20:33:02', 'Task description1122', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'compra de algo que no cuenta', 13, 0, '2019-01-19 00:00:00', 0, 'normal', 'Normal', 'TjX9KzwDzX', 'working', 'Task Resize', 1177, 127, NULL, 'yecaicedo@unicauca.edu.co,admin@admin.com', '2019-02-10 06:33:02', '2019-02-10 06:33:02'),
(2176, 1459, '2019-02-09 20:41:52', 'Task description1122', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'compra de algo que no cuenta', 15, 0, '2019-01-19 00:00:00', 0, 'normal', 'Normal', 'TjX9KzwDzX', 'working', 'Task Resize', 1177, 127, NULL, 'yecaicedo@unicauca.edu.co,admin@admin.com', '2019-02-10 06:41:52', '2019-02-10 06:41:52'),
(2177, 1459, '2019-02-09 20:46:24', 'Task description1122', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'compra de algo que no cuenta', 13, 0, '2019-01-19 00:00:00', 0, 'normal', 'Normal', 'TjX9KzwDzX', 'working', 'Task Resize', 1177, 127, NULL, 'yecaicedo@unicauca.edu.co,admin@admin.com', '2019-02-10 06:46:24', '2019-02-10 06:46:24'),
(2178, 1459, '2019-02-12 12:19:49', 'Task description1122', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'compra de algo que no cuenta', 11, 0, '2019-01-19 00:00:00', 0, 'normal', 'Normal', 'TjX9KzwDzX', 'working', 'Delete Task', 1177, 127, NULL, 'yecaicedo@unicauca.edu.co,admin@admin.com', '2019-02-12 22:19:49', '2019-02-12 22:19:49'),
(2179, 1534, '2019-02-12 12:20:01', 'Task description', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'Tarea padre', 1, 0, '2019-02-04 00:00:00', 0, 'project', 'Normal', '0FPjufOxQ9', 'working', 'Delete Task', 1198, 127, NULL, NULL, '2019-02-12 22:20:01', '2019-02-12 22:20:01'),
(2180, 1533, '2019-02-13 18:08:28', 'Task description', 'Yeison Caicedoe', NULL, 'nueva', 1, NULL, '2019-02-13 00:00:00', 0, 'normal', 'Normal', 'LViNWkd0LG', NULL, 'Add Task', 1198, 127, NULL, 'unassigned', '2019-02-14 04:08:28', '2019-02-14 04:08:28'),
(2181, 1534, '2019-02-13 22:47:39', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1199, 127, NULL, 'unassigned', '2019-02-14 08:47:39', '2019-02-14 08:47:39'),
(2182, 1535, '2019-02-13 22:47:40', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1200, 127, NULL, 'unassigned', '2019-02-14 08:47:40', '2019-02-14 08:47:40'),
(2183, 1536, '2019-02-13 22:47:41', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1201, 127, NULL, 'unassigned', '2019-02-14 08:47:41', '2019-02-14 08:47:41'),
(2184, 1537, '2019-02-13 22:47:42', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1202, 127, NULL, 'unassigned', '2019-02-14 08:47:42', '2019-02-14 08:47:42'),
(2185, 1538, '2019-02-13 22:47:42', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1203, 127, NULL, 'unassigned', '2019-02-14 08:47:42', '2019-02-14 08:47:42'),
(2186, 1539, '2019-02-13 22:47:43', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1204, 127, NULL, 'unassigned', '2019-02-14 08:47:43', '2019-02-14 08:47:43'),
(2187, 1540, '2019-02-13 22:47:43', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1205, 127, NULL, 'unassigned', '2019-02-14 08:47:43', '2019-02-14 08:47:43'),
(2188, 1541, '2019-02-13 22:47:47', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1206, 127, NULL, 'unassigned', '2019-02-14 08:47:47', '2019-02-14 08:47:47'),
(2189, 1542, '2019-02-13 22:47:47', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1207, 127, NULL, 'unassigned', '2019-02-14 08:47:47', '2019-02-14 08:47:47'),
(2190, 1543, '2019-02-13 22:47:48', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1208, 127, NULL, 'unassigned', '2019-02-14 08:47:48', '2019-02-14 08:47:48'),
(2191, 1544, '2019-02-13 22:47:48', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1209, 127, NULL, 'unassigned', '2019-02-14 08:47:48', '2019-02-14 08:47:48'),
(2192, 1545, '2019-02-13 22:47:49', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1210, 127, NULL, 'unassigned', '2019-02-14 08:47:49', '2019-02-14 08:47:49'),
(2193, 1546, '2019-02-13 22:47:49', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1211, 127, NULL, 'unassigned', '2019-02-14 08:47:49', '2019-02-14 08:47:49'),
(2194, 1547, '2019-02-13 22:47:50', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1212, 127, NULL, 'unassigned', '2019-02-14 08:47:50', '2019-02-14 08:47:50'),
(2195, 1548, '2019-02-13 22:47:51', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1213, 127, NULL, 'unassigned', '2019-02-14 08:47:51', '2019-02-14 08:47:51'),
(2196, 1549, '2019-02-13 22:47:51', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1214, 127, NULL, 'unassigned', '2019-02-14 08:47:51', '2019-02-14 08:47:51'),
(2197, 1550, '2019-02-13 22:47:52', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1215, 127, NULL, 'unassigned', '2019-02-14 08:47:52', '2019-02-14 08:47:52'),
(2198, 1551, '2019-02-13 22:47:52', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1216, 127, NULL, 'unassigned', '2019-02-14 08:47:52', '2019-02-14 08:47:52'),
(2199, 1552, '2019-02-13 22:47:53', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1217, 127, NULL, 'unassigned', '2019-02-14 08:47:53', '2019-02-14 08:47:53'),
(2200, 1553, '2019-02-13 22:47:53', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1218, 127, NULL, 'unassigned', '2019-02-14 08:47:53', '2019-02-14 08:47:53'),
(2201, 1554, '2019-02-13 22:47:54', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1219, 127, NULL, 'unassigned', '2019-02-14 08:47:54', '2019-02-14 08:47:54'),
(2202, 1555, '2019-02-13 22:47:55', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1220, 127, NULL, 'unassigned', '2019-02-14 08:47:55', '2019-02-14 08:47:55'),
(2203, 1556, '2019-02-13 22:47:55', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1221, 127, NULL, 'unassigned', '2019-02-14 08:47:55', '2019-02-14 08:47:55'),
(2204, 1557, '2019-02-13 22:47:56', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1222, 127, NULL, 'unassigned', '2019-02-14 08:47:56', '2019-02-14 08:47:56'),
(2205, 1558, '2019-02-13 22:47:56', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1223, 127, NULL, 'unassigned', '2019-02-14 08:47:56', '2019-02-14 08:47:56'),
(2206, 1559, '2019-02-13 22:47:57', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1224, 127, NULL, 'unassigned', '2019-02-14 08:47:57', '2019-02-14 08:47:57'),
(2207, 1560, '2019-02-13 22:47:57', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1225, 127, NULL, 'unassigned', '2019-02-14 08:47:57', '2019-02-14 08:47:57'),
(2208, 1561, '2019-02-13 22:47:58', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1226, 127, NULL, 'unassigned', '2019-02-14 08:47:58', '2019-02-14 08:47:58'),
(2209, 1562, '2019-02-13 22:47:58', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1227, 127, NULL, 'unassigned', '2019-02-14 08:47:58', '2019-02-14 08:47:58'),
(2210, 1563, '2019-02-13 22:47:59', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1228, 127, NULL, 'unassigned', '2019-02-14 08:47:59', '2019-02-14 08:47:59'),
(2211, 1564, '2019-02-13 22:47:59', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1229, 127, NULL, 'unassigned', '2019-02-14 08:47:59', '2019-02-14 08:47:59'),
(2212, 1565, '2019-02-13 22:48:00', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1230, 127, NULL, 'unassigned', '2019-02-14 08:48:00', '2019-02-14 08:48:00'),
(2213, 1566, '2019-02-13 22:48:00', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1231, 127, NULL, 'unassigned', '2019-02-14 08:48:00', '2019-02-14 08:48:00'),
(2214, 1567, '2019-02-13 22:48:01', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1232, 127, NULL, 'unassigned', '2019-02-14 08:48:01', '2019-02-14 08:48:01'),
(2215, 1568, '2019-02-13 22:48:01', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1233, 127, NULL, 'unassigned', '2019-02-14 08:48:01', '2019-02-14 08:48:01'),
(2216, 1569, '2019-02-13 22:48:05', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1234, 127, NULL, 'unassigned', '2019-02-14 08:48:05', '2019-02-14 08:48:05'),
(2217, 1570, '2019-02-13 22:48:05', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1235, 127, NULL, 'unassigned', '2019-02-14 08:48:05', '2019-02-14 08:48:05');
INSERT INTO `taskhs` (`id`, `id_origin`, `mod_date`, `des`, `editor`, `email`, `text`, `duration`, `progress`, `start_date`, `parent`, `type`, `priority`, `socket`, `status`, `event`, `sortorder`, `project_id`, `workedHours`, `assigned`, `created_at`, `updated_at`) VALUES
(2218, 1571, '2019-02-13 22:48:06', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1236, 127, NULL, 'unassigned', '2019-02-14 08:48:06', '2019-02-14 08:48:06'),
(2219, 1572, '2019-02-13 22:48:06', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1237, 127, NULL, 'unassigned', '2019-02-14 08:48:06', '2019-02-14 08:48:06'),
(2220, 1573, '2019-02-13 22:48:08', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1238, 127, NULL, 'unassigned', '2019-02-14 08:48:08', '2019-02-14 08:48:08'),
(2221, 1574, '2019-02-13 22:48:09', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1239, 127, NULL, 'unassigned', '2019-02-14 08:48:09', '2019-02-14 08:48:09'),
(2222, 1575, '2019-02-13 22:48:10', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1240, 127, NULL, 'unassigned', '2019-02-14 08:48:10', '2019-02-14 08:48:10'),
(2223, 1576, '2019-02-13 22:48:11', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1241, 127, NULL, 'unassigned', '2019-02-14 08:48:11', '2019-02-14 08:48:11'),
(2224, 1577, '2019-02-13 22:48:11', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1242, 127, NULL, 'unassigned', '2019-02-14 08:48:11', '2019-02-14 08:48:11'),
(2225, 1578, '2019-02-13 22:48:12', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1243, 127, NULL, 'unassigned', '2019-02-14 08:48:12', '2019-02-14 08:48:12'),
(2226, 1579, '2019-02-13 22:48:12', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1244, 127, NULL, 'unassigned', '2019-02-14 08:48:12', '2019-02-14 08:48:12'),
(2227, 1580, '2019-02-13 22:48:13', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1245, 127, NULL, 'unassigned', '2019-02-14 08:48:13', '2019-02-14 08:48:13'),
(2228, 1581, '2019-02-13 22:48:13', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1246, 127, NULL, 'unassigned', '2019-02-14 08:48:13', '2019-02-14 08:48:13'),
(2229, 1582, '2019-02-13 22:48:14', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1247, 127, NULL, 'unassigned', '2019-02-14 08:48:14', '2019-02-14 08:48:14'),
(2230, 1583, '2019-02-13 22:48:15', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1248, 127, NULL, 'unassigned', '2019-02-14 08:48:15', '2019-02-14 08:48:15'),
(2231, 1584, '2019-02-13 22:48:16', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1249, 127, NULL, 'unassigned', '2019-02-14 08:48:16', '2019-02-14 08:48:16'),
(2232, 1585, '2019-02-13 22:48:16', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1250, 127, NULL, 'unassigned', '2019-02-14 08:48:16', '2019-02-14 08:48:16'),
(2233, 1586, '2019-02-13 22:48:17', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1251, 127, NULL, 'unassigned', '2019-02-14 08:48:17', '2019-02-14 08:48:17'),
(2234, 1587, '2019-02-13 22:48:17', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1252, 127, NULL, 'unassigned', '2019-02-14 08:48:17', '2019-02-14 08:48:17'),
(2235, 1588, '2019-02-13 22:48:18', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1253, 127, NULL, 'unassigned', '2019-02-14 08:48:18', '2019-02-14 08:48:18'),
(2236, 1589, '2019-02-13 22:48:18', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1254, 127, NULL, 'unassigned', '2019-02-14 08:48:18', '2019-02-14 08:48:18'),
(2237, 1590, '2019-02-13 22:48:20', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1255, 127, NULL, 'unassigned', '2019-02-14 08:48:20', '2019-02-14 08:48:20'),
(2238, 1591, '2019-02-13 22:48:20', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1256, 127, NULL, 'unassigned', '2019-02-14 08:48:20', '2019-02-14 08:48:20'),
(2239, 1592, '2019-02-13 22:48:21', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1257, 127, NULL, 'unassigned', '2019-02-14 08:48:21', '2019-02-14 08:48:21'),
(2240, 1593, '2019-02-13 22:48:22', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'HXpy39N2YM', NULL, 'Add Task', 1258, 127, NULL, 'unassigned', '2019-02-14 08:48:22', '2019-02-14 08:48:22'),
(2241, 1594, '2019-02-13 22:54:58', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1259, 127, NULL, 'unassigned', '2019-02-14 08:54:58', '2019-02-14 08:54:58'),
(2242, 1595, '2019-02-13 22:54:59', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1260, 127, NULL, 'unassigned', '2019-02-14 08:54:59', '2019-02-14 08:54:59'),
(2243, 1596, '2019-02-13 22:54:59', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1261, 127, NULL, 'unassigned', '2019-02-14 08:54:59', '2019-02-14 08:54:59'),
(2244, 1597, '2019-02-13 22:55:00', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1262, 127, NULL, 'unassigned', '2019-02-14 08:55:00', '2019-02-14 08:55:00'),
(2245, 1598, '2019-02-13 22:55:00', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1263, 127, NULL, 'unassigned', '2019-02-14 08:55:00', '2019-02-14 08:55:00'),
(2246, 1599, '2019-02-13 22:55:01', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1264, 127, NULL, 'unassigned', '2019-02-14 08:55:01', '2019-02-14 08:55:01'),
(2247, 1600, '2019-02-13 22:55:01', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1265, 127, NULL, 'unassigned', '2019-02-14 08:55:01', '2019-02-14 08:55:01'),
(2248, 1601, '2019-02-13 22:55:02', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1266, 127, NULL, 'unassigned', '2019-02-14 08:55:02', '2019-02-14 08:55:02'),
(2249, 1602, '2019-02-13 22:55:03', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1267, 127, NULL, 'unassigned', '2019-02-14 08:55:03', '2019-02-14 08:55:03'),
(2250, 1603, '2019-02-13 22:55:03', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1268, 127, NULL, 'unassigned', '2019-02-14 08:55:03', '2019-02-14 08:55:03'),
(2251, 1604, '2019-02-13 22:55:07', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1269, 127, NULL, 'unassigned', '2019-02-14 08:55:07', '2019-02-14 08:55:07'),
(2252, 1605, '2019-02-13 22:55:07', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1270, 127, NULL, 'unassigned', '2019-02-14 08:55:07', '2019-02-14 08:55:07'),
(2253, 1606, '2019-02-13 22:55:08', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1271, 127, NULL, 'unassigned', '2019-02-14 08:55:08', '2019-02-14 08:55:08'),
(2254, 1607, '2019-02-13 22:55:08', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1272, 127, NULL, 'unassigned', '2019-02-14 08:55:08', '2019-02-14 08:55:08'),
(2255, 1608, '2019-02-13 22:55:10', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1273, 127, NULL, 'unassigned', '2019-02-14 08:55:10', '2019-02-14 08:55:10'),
(2256, 1609, '2019-02-13 22:55:10', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1274, 127, NULL, 'unassigned', '2019-02-14 08:55:10', '2019-02-14 08:55:10'),
(2257, 1610, '2019-02-13 22:55:11', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1275, 127, NULL, 'unassigned', '2019-02-14 08:55:11', '2019-02-14 08:55:11'),
(2258, 1611, '2019-02-13 22:55:11', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1276, 127, NULL, 'unassigned', '2019-02-14 08:55:11', '2019-02-14 08:55:11'),
(2259, 1612, '2019-02-13 22:55:13', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1277, 127, NULL, 'unassigned', '2019-02-14 08:55:13', '2019-02-14 08:55:13'),
(2260, 1613, '2019-02-13 22:55:14', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1278, 127, NULL, 'unassigned', '2019-02-14 08:55:14', '2019-02-14 08:55:14'),
(2261, 1614, '2019-02-13 22:55:15', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1279, 127, NULL, 'unassigned', '2019-02-14 08:55:15', '2019-02-14 08:55:15'),
(2262, 1615, '2019-02-13 22:55:15', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1280, 127, NULL, 'unassigned', '2019-02-14 08:55:15', '2019-02-14 08:55:15'),
(2263, 1616, '2019-02-13 22:55:16', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1281, 127, NULL, 'unassigned', '2019-02-14 08:55:16', '2019-02-14 08:55:16'),
(2264, 1617, '2019-02-13 22:55:17', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1282, 127, NULL, 'unassigned', '2019-02-14 08:55:17', '2019-02-14 08:55:17'),
(2265, 1618, '2019-02-13 22:55:17', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1283, 127, NULL, 'unassigned', '2019-02-14 08:55:17', '2019-02-14 08:55:17'),
(2266, 1619, '2019-02-13 22:55:18', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1284, 127, NULL, 'unassigned', '2019-02-14 08:55:18', '2019-02-14 08:55:18'),
(2267, 1620, '2019-02-13 22:55:19', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1285, 127, NULL, 'unassigned', '2019-02-14 08:55:19', '2019-02-14 08:55:19'),
(2268, 1621, '2019-02-13 22:55:19', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1286, 127, NULL, 'unassigned', '2019-02-14 08:55:19', '2019-02-14 08:55:19'),
(2269, 1622, '2019-02-13 22:55:20', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1287, 127, NULL, 'unassigned', '2019-02-14 08:55:20', '2019-02-14 08:55:20'),
(2270, 1623, '2019-02-13 22:55:20', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1288, 127, NULL, 'unassigned', '2019-02-14 08:55:20', '2019-02-14 08:55:20'),
(2271, 1624, '2019-02-13 22:55:21', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1289, 127, NULL, 'unassigned', '2019-02-14 08:55:21', '2019-02-14 08:55:21'),
(2272, 1625, '2019-02-13 22:55:22', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1290, 127, NULL, 'unassigned', '2019-02-14 08:55:22', '2019-02-14 08:55:22'),
(2273, 1626, '2019-02-13 22:55:22', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1291, 127, NULL, 'unassigned', '2019-02-14 08:55:22', '2019-02-14 08:55:22'),
(2274, 1627, '2019-02-13 22:55:23', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1292, 127, NULL, 'unassigned', '2019-02-14 08:55:23', '2019-02-14 08:55:23'),
(2275, 1628, '2019-02-13 22:55:25', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1293, 127, NULL, 'unassigned', '2019-02-14 08:55:25', '2019-02-14 08:55:25'),
(2276, 1629, '2019-02-13 22:55:27', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1294, 127, NULL, 'unassigned', '2019-02-14 08:55:27', '2019-02-14 08:55:27'),
(2277, 1630, '2019-02-13 22:55:27', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1295, 127, NULL, 'unassigned', '2019-02-14 08:55:27', '2019-02-14 08:55:27'),
(2278, 1631, '2019-02-13 22:55:28', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1296, 127, NULL, 'unassigned', '2019-02-14 08:55:28', '2019-02-14 08:55:28'),
(2279, 1632, '2019-02-13 22:55:28', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1297, 127, NULL, 'unassigned', '2019-02-14 08:55:28', '2019-02-14 08:55:28'),
(2280, 1633, '2019-02-13 22:55:29', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1298, 127, NULL, 'unassigned', '2019-02-14 08:55:29', '2019-02-14 08:55:29'),
(2281, 1634, '2019-02-13 22:55:30', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1299, 127, NULL, 'unassigned', '2019-02-14 08:55:30', '2019-02-14 08:55:30'),
(2282, 1635, '2019-02-13 22:55:30', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1300, 127, NULL, 'unassigned', '2019-02-14 08:55:30', '2019-02-14 08:55:30'),
(2283, 1636, '2019-02-13 22:55:34', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1301, 127, NULL, 'unassigned', '2019-02-14 08:55:34', '2019-02-14 08:55:34'),
(2284, 1637, '2019-02-13 22:55:34', NULL, 'Yeison Caicedoe', NULL, 'New task', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'H2V5TKJRFN', NULL, 'Add Task', 1302, 127, NULL, 'unassigned', '2019-02-14 08:55:34', '2019-02-14 08:55:34'),
(2285, 1638, '2019-02-14 06:46:26', NULL, 'Yeison Caicedoe', NULL, 'Nueva tarea', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'rdTxIBthUe', NULL, 'Add Task', 1198, 127, NULL, 'unassigned', '2019-02-14 16:46:26', '2019-02-14 16:46:26'),
(2286, 1639, '2019-02-14 06:46:28', NULL, 'Yeison Caicedoe', NULL, 'segunda tarea', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'rdTxIBthUe', NULL, 'Add Task', 1199, 127, NULL, 'unassigned', '2019-02-14 16:46:28', '2019-02-14 16:46:28'),
(2287, 1640, '2019-02-14 06:48:36', NULL, 'Yeison Caicedoe', NULL, 'crei una tercera', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'aP1CEoBzci', NULL, 'Add Task', 1200, 127, NULL, 'unassigned', '2019-02-14 16:48:36', '2019-02-14 16:48:36'),
(2288, 1641, '2019-02-14 06:48:47', NULL, 'Yeison Caicedoe', NULL, 'creo una cuarta', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'aP1CEoBzci', NULL, 'Add Task', 1201, 127, NULL, 'unassigned', '2019-02-14 16:48:47', '2019-02-14 16:48:47'),
(2289, 1642, '2019-02-14 07:20:34', NULL, 'Yeison Caicedoe', NULL, '444', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'RhzJkzMNKd', NULL, 'Add Task', 1202, 127, NULL, 'unassigned', '2019-02-14 17:20:34', '2019-02-14 17:20:34'),
(2290, 1643, '2019-02-14 09:53:02', NULL, 'Yeison Caicedoe', NULL, 'Nueva', 1, NULL, '0000-00-00 00:00:00', 0, 'task', 'Normal', 'wNhsTcixc7', NULL, 'Add Task', 1203, 127, NULL, 'unassigned', '2019-02-14 19:53:02', '2019-02-14 19:53:02'),
(2291, 1644, '2019-02-14 09:53:03', NULL, 'Yeison Caicedoe', NULL, 'segunda', 1, NULL, '0000-00-00 00:00:00', 0, 'task', 'Normal', 'wNhsTcixc7', NULL, 'Add Task', 1204, 127, NULL, 'unassigned', '2019-02-14 19:53:03', '2019-02-14 19:53:03'),
(2292, 1645, '2019-02-14 09:53:06', NULL, 'Yeison Caicedoe', NULL, 'cera', 1, NULL, '0000-00-00 00:00:00', 0, 'task', 'Normal', 'wNhsTcixc7', NULL, 'Add Task', 1205, 127, NULL, 'unassigned', '2019-02-14 19:53:06', '2019-02-14 19:53:06'),
(2293, 1646, '2019-02-14 10:05:27', NULL, 'Yeison Caicedoe', NULL, 'nueva tarea', 1, NULL, '0000-00-00 00:00:00', 0, 'task', 'Normal', 'b1Rphu4stl', NULL, 'Add Task', 1206, 127, NULL, 'unassigned', '2019-02-14 20:05:27', '2019-02-14 20:05:27'),
(2294, 1647, '2019-02-14 10:05:34', NULL, 'Yeison Caicedoe', NULL, 'segunda tarea', 1, NULL, '0000-00-00 00:00:00', 0, 'task', 'Normal', 'b1Rphu4stl', NULL, 'Add Task', 1207, 127, NULL, 'unassigned', '2019-02-14 20:05:34', '2019-02-14 20:05:34'),
(2295, 1648, '2019-02-14 10:10:33', NULL, 'Yeison Caicedoe', NULL, 'creada', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'TELwp1KCo6', NULL, 'Add Task', 1208, 127, NULL, 'unassigned', '2019-02-14 20:10:33', '2019-02-14 20:10:33'),
(2296, 1647, '2019-02-14 11:25:43', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'segunda tarea', 1, 0, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'b1Rphu4stl', 'working', 'Delete Task', 1208, 127, NULL, 'unassigned', '2019-02-14 21:25:43', '2019-02-14 21:25:43'),
(2297, 1648, '2019-02-14 11:25:43', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', 'creada', 1, 0, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'TELwp1KCo6', 'working', 'Delete Task', 1209, 127, NULL, 'unassigned', '2019-02-14 21:25:43', '2019-02-14 21:25:43'),
(2298, 1649, '2019-02-14 11:30:20', NULL, 'Yeison Caicedoe', NULL, 'nueva1', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'el2ytH3GeA', NULL, 'Add Task', 1211, 127, NULL, 'unassigned', '2019-02-14 21:30:20', '2019-02-14 21:30:20'),
(2299, 1650, '2019-02-14 11:30:23', NULL, 'Yeison Caicedoe', NULL, 'nueva 2', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'el2ytH3GeA', NULL, 'Add Task', 1212, 127, NULL, 'unassigned', '2019-02-14 21:30:23', '2019-02-14 21:30:23'),
(2300, 1651, '2019-02-14 11:31:07', NULL, 'Yeison Caicedoe', NULL, NULL, 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'el2ytH3GeA', NULL, 'Add Task', 1213, 127, NULL, 'unassigned', '2019-02-14 21:31:07', '2019-02-14 21:31:07'),
(2301, 1651, '2019-02-14 11:31:22', NULL, 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', NULL, 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'el2ytH3GeA', NULL, 'Delete Task', NULL, 127, NULL, NULL, '2019-02-14 21:31:22', '2019-02-14 21:31:22'),
(2302, 1652, '2019-02-14 11:33:19', NULL, 'Yeison Caicedoe', NULL, 'nueva', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'E03jrWlaai', NULL, 'Add Task', 1213, 127, NULL, 'unassigned', '2019-02-14 21:33:19', '2019-02-14 21:33:19'),
(2303, 1653, '2019-02-14 11:33:22', NULL, 'Yeison Caicedoe', NULL, 'nueva2', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'E03jrWlaai', NULL, 'Add Task', 1214, 127, NULL, 'unassigned', '2019-02-14 21:33:22', '2019-02-14 21:33:22'),
(2304, 1654, '2019-02-14 11:33:29', NULL, 'Yeison Caicedoe', NULL, 'nueva3', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'E03jrWlaai', NULL, 'Add Task', 1215, 127, NULL, 'unassigned', '2019-02-14 21:33:29', '2019-02-14 21:33:29'),
(2305, 1655, '2019-02-14 11:33:29', NULL, 'Yeison Caicedoe', NULL, 'nueva4', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'E03jrWlaai', NULL, 'Add Task', 1216, 127, NULL, 'unassigned', '2019-02-14 21:33:29', '2019-02-14 21:33:29'),
(2306, 1656, '2019-02-14 11:33:34', NULL, 'Yeison Caicedoe', NULL, 'nueva6', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'E03jrWlaai', NULL, 'Add Task', 1217, 127, NULL, 'unassigned', '2019-02-14 21:33:34', '2019-02-14 21:33:34'),
(2307, 1657, '2019-02-14 11:33:38', NULL, 'Yeison Caicedoe', NULL, 'nueva7', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'E03jrWlaai', NULL, 'Add Task', 1218, 127, NULL, 'unassigned', '2019-02-14 21:33:38', '2019-02-14 21:33:38'),
(2308, 1658, '2019-02-14 11:33:44', NULL, 'Yeison Caicedoe', NULL, 'nueva8', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'E03jrWlaai', NULL, 'Add Task', 1219, 127, NULL, 'unassigned', '2019-02-14 21:33:44', '2019-02-14 21:33:44'),
(2309, 1659, '2019-02-14 11:33:50', NULL, 'Yeison Caicedoe', NULL, 'nueva9', 1, NULL, '2019-01-19 00:00:00', 0, 'task', 'Normal', 'E03jrWlaai', NULL, 'Add Task', 1220, 127, NULL, 'unassigned', '2019-02-14 21:33:50', '2019-02-14 21:33:50'),
(2310, 4294967295, '2019-03-12 15:01:22', NULL, 'Guest', 'guest@mail.com', 'New task', 1, NULL, '2019-02-02 00:00:00', 0, NULL, 'Normal', 'XTbTtIPAYf', NULL, 'Delete Task', NULL, 129, NULL, NULL, '2019-03-13 01:01:22', '2019-03-13 01:01:22'),
(2311, 4294967295, '2019-03-12 15:01:30', NULL, 'Guest', 'guest@mail.com', 'New task', 1, NULL, '2019-02-02 00:00:00', 0, NULL, 'Normal', 'XTbTtIPAYf', NULL, 'Delete Task', NULL, 129, NULL, NULL, '2019-03-13 01:01:30', '2019-03-13 01:01:30'),
(2312, 4294967295, '2019-03-12 15:04:52', NULL, 'Guest', 'guest@mail.com', 'New task', 1, NULL, '2019-02-02 00:00:00', 0, NULL, 'Normal', 'U8FY8HXAcS', NULL, 'Delete Task', NULL, 129, NULL, NULL, '2019-03-13 01:04:52', '2019-03-13 01:04:52'),
(2313, 4294967295, '2019-03-12 15:08:52', NULL, 'Guest', 'guest@mail.com', 'New task', 1, NULL, '2019-02-02 00:00:00', 0, NULL, 'Normal', '3zL0AsirTX', NULL, 'Delete Task', NULL, 129, NULL, NULL, '2019-03-13 01:08:52', '2019-03-13 01:08:52'),
(2314, 4294967295, '2019-03-12 15:16:07', NULL, 'Guest', 'guest@mail.com', 'New task', 1, NULL, '2019-02-02 00:00:00', 0, NULL, 'Normal', 'xiZzLQaFSe', NULL, 'Delete Task', NULL, 129, NULL, NULL, '2019-03-13 01:16:07', '2019-03-13 01:16:07'),
(2315, 4294967295, '2019-03-12 15:16:31', NULL, 'Guest', 'guest@mail.com', 'New task', 1, NULL, '2019-02-02 00:00:00', 0, NULL, 'Normal', '4Rq6UuDdLT', NULL, 'Delete Task', NULL, 129, NULL, NULL, '2019-03-13 01:16:31', '2019-03-13 01:16:31'),
(2316, 4294967295, '2019-03-12 15:19:10', NULL, 'Guest', 'guest@mail.com', 'New task', 1, NULL, '2019-02-02 00:00:00', 0, NULL, 'Normal', 'zkhw91tHiG', NULL, 'Delete Task', NULL, 129, NULL, NULL, '2019-03-13 01:19:10', '2019-03-13 01:19:10'),
(2317, 4294967295, '2019-03-12 15:22:45', NULL, 'Guest', 'guest@mail.com', 'New task', 1, NULL, '2019-02-02 00:00:00', 0, NULL, 'Normal', '9fxPj07JCn', NULL, 'Delete Task', NULL, 129, NULL, NULL, '2019-03-13 01:22:45', '2019-03-13 01:22:45'),
(2318, 4294967295, '2019-03-16 14:08:50', NULL, 'Guest', 'guest@mail.com', 'New task', 1, NULL, '2019-02-02 00:00:00', 1517, NULL, 'Normal', '7tYLUpuTRm', NULL, 'Delete Task', NULL, 129, NULL, NULL, '2019-03-17 00:08:50', '2019-03-17 00:08:50'),
(2319, 1685, '2019-03-17 20:52:40', NULL, 'Guest', NULL, 'nueva tarea', 1, NULL, '2019-03-17 00:00:00', 0, 'normal', 'Normal', 'mmhAsWaTsF', NULL, 'Add Task', 1239, 139, NULL, '[]', '2019-03-18 06:52:40', '2019-03-18 06:52:40'),
(2320, 1686, '2019-03-17 20:52:57', NULL, 'Guest', NULL, 'nueva tarea 2', 1, NULL, '2019-03-17 00:00:00', 0, 'normal', 'Normal', 'mmhAsWaTsF', NULL, 'Add Task', 1240, 139, NULL, '[]', '2019-03-18 06:52:57', '2019-03-18 06:52:57'),
(2321, 1687, '2019-03-17 20:53:11', NULL, 'Guest', NULL, 'nueva tarea 3', 1, NULL, '2019-03-16 00:00:00', 0, 'task', 'Normal', 'mmhAsWaTsF', NULL, 'Add Task', 1241, 139, NULL, 'unassigned', '2019-03-18 06:53:11', '2019-03-18 06:53:11'),
(2322, 1688, '2019-03-26 14:55:18', NULL, 'Guest', NULL, 'nueva terea22', 1, NULL, '2019-03-26 00:00:00', 0, 'normal', 'Normal', 'xoUreOXeze', NULL, 'Add Task', 1242, 139, NULL, 'unassigned', '2019-03-27 00:55:18', '2019-03-27 00:55:18'),
(2323, 1670, '2019-05-07 20:03:50', 'Select Leader', 'Guest', 'guest@mail.com', '1.1 Select Leader', 28, 0.6294706723891274, '2019-03-16 00:00:00', 1669, 'any type', 'normal', 'Socket', 'working', 'Progress Update', 1224, 139, 0, 'unassigned', '2019-05-08 06:03:50', '2019-05-08 06:03:50'),
(2324, 1670, '2019-05-07 20:05:10', 'Select Leader', 'Guest', 'guest@mail.com', '1.1 Select Leader', 28, 0.7324749642346209, '2019-03-16 00:00:00', 1669, 'any type', 'normal', 'Socket', 'working', 'Progress Update', 1224, 139, 0, 'unassigned', '2019-05-08 06:05:10', '2019-05-08 06:05:10'),
(2325, 1670, '2019-05-07 20:07:55', 'Select Leader', 'Guest', 'guest@mail.com', '1.1 Select Leader', 28, 0.6509298998569385, '2019-03-16 00:00:00', 1669, 'any type', 'normal', 'Socket', 'working', 'Progress Update', 1224, 139, 0, 'unassigned', '2019-05-08 06:07:55', '2019-05-08 06:07:55'),
(2326, 1670, '2019-05-07 20:08:07', 'Select Leader', 'Guest', 'guest@mail.com', '1.1 Select Leader', 28, 0.6680972818311874, '2019-03-16 00:00:00', 1669, 'any type', 'normal', 'Socket', 'working', 'Progress Update', 1224, 139, 0, 'unassigned', '2019-05-08 06:08:07', '2019-05-08 06:08:07'),
(2327, 1670, '2019-05-07 20:10:06', 'Select Leader', 'Guest', 'guest@mail.com', '1.1 Select Leader', 28, 0.8226037195994278, '2019-03-16 00:00:00', 1669, 'any type', 'normal', 'Socket', 'working', 'Progress Update', 1224, 139, 0, 'unassigned', '2019-05-08 06:10:06', '2019-05-08 06:10:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks`
--

CREATE TABLE `tasks` (
  `id` int(100) UNSIGNED NOT NULL,
  `des` varchar(1500) COLLATE utf8mb4_unicode_ci DEFAULT '...',
  `text` varchar(1500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `progress` double(8,2) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Normal',
  `socket` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'working',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sortorder` int(11) DEFAULT '0',
  `project_id` int(11) DEFAULT NULL,
  `workedHours` int(11) DEFAULT '0',
  `assigned` varchar(1500) COLLATE utf8mb4_unicode_ci DEFAULT 'unassigned',
  `extra` int(11) DEFAULT '0',
  `history` int(11) NOT NULL DEFAULT '0',
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modify` varchar(123) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workCount` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT 'yes',
  `workCountWeekends` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `durationMod` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tasks`
--

INSERT INTO `tasks` (`id`, `des`, `text`, `duration`, `progress`, `start_date`, `parent`, `type`, `priority`, `socket`, `status`, `created_at`, `updated_at`, `sortorder`, `project_id`, `workedHours`, `assigned`, `extra`, `history`, `color`, `modify`, `editor`, `workCount`, `workCountWeekends`, `durationMod`) VALUES
(1, 'Decription to fill...', 'tarea de prueba', 3, 0.85, '2018-07-31', 0, '', 'normal', NULL, 'started', '2018-07-23 05:00:00', '2018-08-05 02:51:51', 0, 14, 0, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 3),
(2, 'Decription to fill...', 'Taks', 1, 0.00, '2018-07-31', 1, NULL, 'normal', NULL, 'done', '2018-07-24 03:28:35', '2018-07-24 03:28:35', 1, 14, 0, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(14, 'Decription to fill...', 'Tarea de prueba', 5, 0.78, '2018-07-31', 0, NULL, 'Normal', NULL, 'working', '2018-08-01 20:04:11', '2018-08-01 20:04:13', 13, 16, 0, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 5),
(15, 'Decription to fill...', 'Tarea de prueba hija', 3, 1.00, '2018-07-31', 14, NULL, 'Normal', NULL, 'working', '2018-08-01 20:04:19', '2018-08-01 20:04:53', 14, 16, 0, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 3),
(16, 'Decription to fill...', 'New task', 1, 0.83, '2018-08-04', 15, NULL, 'Normal', NULL, 'working', '2018-08-01 20:04:35', '2018-08-01 20:04:50', 15, 16, 0, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(17, 'Decription to fill...', 'Concept & Initiation', 42, 1.00, '2018-07-23', 0, NULL, 'Normal', NULL, 'working', '2018-08-06 09:27:09', '2018-09-08 03:33:34', 16, 15, 4, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 42),
(18, 'Decription to fill...', 'Definition & Planning', 5, 1.00, '2018-08-01', 0, NULL, 'Normal', NULL, 'working', '2018-08-06 09:28:22', '2018-08-30 07:40:59', 17, 15, 3, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 5),
(19, 'Decription to fill...', 'Execution', 42, 0.62, '2018-07-23', 0, NULL, 'Normal', NULL, 'working', '2018-08-06 09:29:19', '2018-09-08 03:33:36', 18, 15, 21, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 42),
(20, 'Decription to fill...', 'Performance & Control', 42, 0.69, '2018-07-23', 0, NULL, 'Normal', NULL, 'working', '2018-08-06 09:30:37', '2018-09-08 03:33:43', 21, 15, 5, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 42),
(21, 'Decription to fill...', 'Project Close', 1, 0.00, '2018-09-06', 0, NULL, 'Normal', NULL, 'working', '2018-08-06 09:30:54', '2018-08-30 07:41:00', 20, 15, 5, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(22, 'Decription to fill...', 'Aaaaaa', 2, 0.00, '2018-07-31', 2, NULL, 'Normal', NULL, 'working', '2018-08-09 23:00:55', '2018-08-14 19:13:11', 24, 14, 0, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 2),
(23, 'Decription to fill...', 'aaa22', 1, 0.00, '2018-07-31', 22, NULL, 'Normal', NULL, 'working', '2018-08-09 23:05:24', '2018-08-14 19:13:11', 25, 14, 5, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(24, 'Decription to fill...', 'New task', 1, 0.00, '2018-07-31', 23, NULL, 'Normal', NULL, 'working', '2018-08-09 23:10:42', '2018-08-14 19:13:11', 26, 14, 2, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(25, 'Decription to fill...', 'New task', 1, 0.00, '2018-08-01', 24, NULL, 'Normal', NULL, 'working', '2018-08-09 23:11:24', '2018-08-14 19:13:11', 27, 14, 8, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(26, 'Decription to fill...', 'New task', 1, 0.00, '2018-08-01', 25, NULL, 'Normal', NULL, 'working', '2018-08-09 23:31:10', '2018-08-14 19:13:11', 28, 14, 3, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(27, 'Decription to fill...', 'New taskqwdqwd', 2, 0.00, '2018-08-01', 26, NULL, 'Normal', NULL, 'working', '2018-08-09 23:41:20', '2018-08-14 19:13:11', 29, 14, 1, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 2),
(45, 'Decription to fill...', 'New task', 1, 0.00, '2018-07-23', 0, NULL, 'Normal', NULL, 'working', '2018-08-17 23:15:00', '2018-08-30 07:41:02', 35, 15, 5, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(134, 'Decription to fill...', 'New task', 42, 0.00, '2018-07-23', 0, NULL, 'Normal', NULL, 'working', '2018-08-18 03:44:29', '2018-09-08 03:33:47', 36, 15, 7, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 42),
(135, 'Decription to fill...', 'Task #5', 2, 0.00, '1928-01-08', 0, NULL, 'Normal', NULL, 'working', '2018-08-18 03:44:30', '2018-08-18 03:44:30', 37, NULL, 0, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 2),
(136, 'Decription to fill...', 'Task #5', 2, 0.00, '1928-01-08', 0, NULL, 'Normal', NULL, 'working', '2018-08-18 03:44:30', '2018-08-18 03:44:30', 38, NULL, 0, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 2),
(137, 'Decription to fill...', 'Task #5', 2, 0.00, '1928-01-08', 0, NULL, 'Normal', NULL, 'working', '2018-08-18 03:44:31', '2018-08-18 03:44:31', 39, NULL, 0, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 2),
(138, 'Decription to fill...', 'Task #5', 2, 0.00, '1928-01-08', 0, NULL, 'Normal', NULL, 'working', '2018-08-18 03:44:33', '2018-08-18 03:44:33', 40, NULL, 0, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 2),
(139, 'Decription to fill...', 'Task #5', 2, 0.00, '1928-01-08', 0, NULL, 'Normal', NULL, 'working', '2018-08-18 03:44:33', '2018-08-18 03:44:33', 41, NULL, 0, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 2),
(157, 'Decription to fill...updated', 'Test task', 1, 0.86, '2018-08-16', 0, NULL, 'Normal', 'IOptoepQO8', 'working', '2018-08-20 01:04:32', '2018-09-01 01:01:01', 42, 103, 7, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(159, 'Decription to fill...', 'Nueva tarea', 10, 0.24, '2018-08-16', 157, NULL, 'Normal', 'Fkp8N7kgQ7', 'working', '2018-08-20 01:12:12', '2018-09-01 21:18:01', 44, 103, 12, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(160, NULL, 'New task', 1, 0.00, '2018-08-16', 159, NULL, 'Normal', 'IIcel8EzF3', 'working', '2018-08-25 09:01:44', '2018-08-25 09:08:40', 49, 103, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(161, NULL, 'New task', 1, 0.00, '2018-08-16', 160, NULL, 'Normal', 'IIcel8EzF3', 'working', '2018-08-25 09:01:45', '2018-09-01 01:01:11', 55, 103, 2, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(162, NULL, 'New task', 1, 0.00, '2018-08-16', 161, NULL, 'Normal', 'IIcel8EzF3', 'working', '2018-08-25 09:01:47', '2018-08-31 21:53:47', 45, 103, 4, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(163, NULL, 'New task', 1, 0.00, '2018-08-16', 0, NULL, 'Normal', 'IIcel8EzF3', 'working', '2018-08-25 09:01:49', '2018-09-01 01:01:07', 46, 103, 1, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(164, NULL, 'New task', 1, 0.00, '2018-08-16', 0, NULL, 'Normal', 'IIcel8EzF3', 'working', '2018-08-25 09:01:52', '2018-08-31 22:15:02', 47, 103, 9, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(165, NULL, 'New task', 1, 0.00, '2018-08-15', 164, NULL, 'Normal', 'IIcel8EzF3', 'working', '2018-08-25 09:01:54', '2018-08-31 22:21:49', 48, 103, 8, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(166, NULL, 'New task', 1, 0.00, '2018-08-15', 165, NULL, 'Normal', 'IIcel8EzF3', 'working', '2018-08-25 09:01:55', '2018-09-01 01:01:16', 57, 103, 2, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(167, 'In Cartagena', 'Asakaa presentation', NULL, NULL, NULL, NULL, NULL, 'High', NULL, 'working', '2018-09-01 19:56:37', '2018-09-01 20:06:01', 0, 103, 3, NULL, 1, 0, NULL, NULL, '', 'yes', 'no', NULL),
(168, NULL, 'Tarea para yeison23', 1, 0.65, '2018-09-01', 0, NULL, 'Normal', 'HycC36jX9l', 'working', '2018-09-04 04:09:59', '2018-09-06 19:39:37', 58, 106, NULL, NULL, 0, 1, NULL, NULL, '', 'yes', 'no', 1),
(169, NULL, 'tarea para mi admin', 1, 0.37, '2018-09-01', 0, NULL, 'Normal', 'HycC36jX9l', 'working', '2018-09-04 04:10:30', '2018-09-06 18:24:39', 59, 106, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(170, 'asdasd', 'New task', 1, 0.46, '2018-09-01', 0, NULL, 'Normal', 'bwcD2WaDEc', 'working', '2018-09-04 08:29:49', '2018-09-06 20:42:00', 60, 106, NULL, NULL, 0, 1, NULL, NULL, '', 'yes', 'no', 1),
(171, 'asdasd', 'New task', 1, 0.00, '2018-09-01', 0, NULL, 'Normal', 'b3btBOW6i9', 'working', '2018-09-04 08:44:13', '2018-09-04 08:44:13', 61, 106, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(172, 'asdasd', 'New task', 1, 0.00, '2018-09-01', 0, NULL, 'Normal', 'XqcwHoYRmO', 'working', '2018-09-04 08:45:13', '2018-09-04 08:45:13', 62, 106, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(173, NULL, 'New task', 1, 0.00, '2018-09-01', 0, NULL, 'Normal', 'vLeCUxTxwn', 'working', '2018-09-04 08:52:14', '2018-09-04 08:52:14', 63, 106, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(174, NULL, 'New task', 1, 0.00, '2018-09-01', 0, NULL, 'Normal', 'llDtzOSLRl', 'working', '2018-09-04 08:54:42', '2018-09-04 08:54:42', 64, 106, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(175, NULL, 'tarea no mostrada', 1, 0.78, '2018-09-01', 0, NULL, 'Normal', 'pUbGrAuDkf', 'working', '2018-09-04 08:56:35', '2018-09-07 00:07:51', 65, 106, NULL, NULL, 0, 1, NULL, NULL, '', 'yes', 'no', 1),
(176, NULL, 'New task', 1, 0.00, '2018-09-01', 0, NULL, 'Normal', 'bnuqv4GCiU', 'working', '2018-09-04 09:07:45', '2018-09-04 09:07:45', 66, 106, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(177, NULL, 'Text', 1, 0.00, '1907-03-11', 0, NULL, NULL, NULL, 'working', '2018-09-06 17:55:14', '2018-09-06 17:55:14', 67, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(178, NULL, 'Text', 1, 0.00, '1907-03-11', 0, NULL, NULL, NULL, 'working', '2018-09-06 17:59:46', '2018-09-06 17:59:46', 68, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(179, NULL, 'Text', 4, 0.00, '1907-03-11', 0, NULL, NULL, NULL, 'working', '2018-09-06 18:00:15', '2018-09-06 18:00:15', 69, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 4),
(180, NULL, 'Text', 4, 0.00, '1907-03-11', 0, NULL, NULL, NULL, 'working', '2018-09-06 18:00:47', '2018-09-06 18:00:47', 70, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 4),
(181, NULL, 'Text', 4, 0.00, '1907-03-11', 0, NULL, NULL, NULL, 'working', '2018-09-06 18:18:25', '2018-09-06 18:18:25', 71, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 4),
(182, NULL, 'Text', 4, 0.00, '1907-03-11', 0, NULL, NULL, NULL, 'working', '2018-09-06 18:24:35', '2018-09-06 18:24:35', 72, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 4),
(183, NULL, 'Text', 4, 0.00, '1907-03-11', 0, NULL, NULL, NULL, 'working', '2018-09-06 18:33:59', '2018-09-06 18:33:59', 73, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 4),
(184, NULL, 'Text', 4, 0.00, '1907-03-11', 0, NULL, NULL, NULL, 'working', '2018-09-06 19:28:18', '2018-09-06 19:28:18', 74, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 4),
(185, NULL, 'Text', 4, 0.00, '1907-03-11', 0, NULL, NULL, NULL, 'working', '2018-09-06 19:31:28', '2018-09-06 19:31:28', 75, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 4),
(186, NULL, 'Text', 4, 0.00, '1907-03-11', 0, NULL, NULL, NULL, 'working', '2018-09-06 19:32:09', '2018-09-06 19:32:09', 76, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 4),
(187, NULL, 'Text', 4, 0.00, '1907-03-11', 0, NULL, NULL, NULL, 'working', '2018-09-06 19:35:05', '2018-09-06 19:35:05', 77, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 4),
(188, NULL, 'Text', 4, 0.00, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-06 19:37:58', '2018-09-06 19:37:58', 78, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 4),
(189, NULL, 'Text', 4, 0.00, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-06 19:39:30', '2018-09-06 19:39:30', 79, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 4),
(190, NULL, '[History]-New task', 1, 0.46, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-06 20:42:10', '2018-09-06 20:42:10', 80, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(191, NULL, 'Text', 4, 0.00, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-06 20:44:03', '2018-09-06 20:44:03', 81, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 4),
(192, NULL, '[History]-New task', 1, 0.46, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-06 21:16:13', '2018-09-06 21:16:13', 82, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(193, NULL, 'Text', 2, 0.00, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-06 21:17:02', '2018-09-06 21:17:02', 83, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 2),
(194, NULL, '[History]-New task', 1, 0.46, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-06 21:23:54', '2018-09-06 21:23:54', 84, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(195, NULL, '[History]-New task', 1, 0.46, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-06 21:23:58', '2018-09-06 21:23:58', 85, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(196, NULL, '[History]-New task', 1, 0.46, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-06 21:24:03', '2018-09-06 21:24:03', 86, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(197, NULL, 'Text', 2, 0.00, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-06 21:24:07', '2018-09-06 21:24:07', 87, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 2),
(198, NULL, '[History]-New task', 1, 0.46, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-06 21:26:09', '2018-09-06 21:26:09', 88, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(199, NULL, 'Text', 2, 0.00, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-06 21:26:13', '2018-09-06 21:26:13', 89, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 2),
(200, NULL, '[History]-New task', 1, 0.46, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-06 22:53:29', '2018-09-06 22:53:29', 90, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(201, NULL, 'Text', 2, 0.00, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-06 22:53:33', '2018-09-06 22:53:33', 91, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 2),
(202, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-06 22:53:58', '2018-09-06 22:53:58', 92, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(203, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-06 23:46:21', '2018-09-06 23:46:21', 93, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(204, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-06 23:47:04', '2018-09-06 23:47:04', 94, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(205, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-06 23:51:21', '2018-09-06 23:51:21', 95, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(206, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-06 23:52:14', '2018-09-06 23:52:14', 96, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(207, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-06 23:52:38', '2018-09-06 23:52:38', 97, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(208, NULL, '[History]-New task', 1, 0.46, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-06 23:52:54', '2018-09-06 23:52:54', 98, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(209, NULL, '[History]-tarea no mostrada', 1, 0.43, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-06 23:53:54', '2018-09-06 23:53:58', 99, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(210, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:00:47', '2018-09-07 00:00:47', 100, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(211, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:01:35', '2018-09-07 00:01:35', 101, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(212, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:04:32', '2018-09-07 00:04:32', 102, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(213, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:04:42', '2018-09-07 00:04:42', 103, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(214, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:05:48', '2018-09-07 00:05:48', 104, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(215, NULL, '[History]-New task', 1, 0.46, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:06:28', '2018-09-07 00:06:28', 105, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(216, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:06:34', '2018-09-07 00:06:34', 106, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(217, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:07:50', '2018-09-07 00:07:50', 107, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(218, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:08:06', '2018-09-07 00:08:06', 108, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(219, NULL, '[History]-tarea no mostrada', 1, 0.78, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:08:07', '2018-09-07 00:08:07', 109, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(220, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:12:03', '2018-09-07 00:12:03', 110, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(221, NULL, '[History]-tarea no mostrada', 1, 0.78, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:12:04', '2018-09-07 00:12:04', 111, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(222, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:12:08', '2018-09-07 00:12:08', 112, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(223, NULL, '[History]-tarea no mostrada', 1, 0.78, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:12:09', '2018-09-07 00:12:09', 113, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(224, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:13:31', '2018-09-07 00:13:31', 114, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(225, NULL, '[History]-tarea no mostrada', 1, 0.78, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:13:33', '2018-09-07 00:13:33', 115, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(226, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:17:10', '2018-09-07 00:17:10', 116, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(227, NULL, '[History]-tarea no mostrada', 1, 0.78, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:17:12', '2018-09-07 00:17:12', 117, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(228, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:19:39', '2018-09-07 00:19:39', 118, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(229, NULL, '[History]-tarea no mostrada', 1, 0.78, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:19:41', '2018-09-07 00:19:41', 119, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(230, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:19:59', '2018-09-07 00:19:59', 120, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(231, NULL, '[History]-tarea no mostrada', 1, 0.78, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:20:00', '2018-09-07 00:20:00', 121, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(232, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:20:36', '2018-09-07 00:20:36', 122, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(233, NULL, '[History]-tarea no mostrada', 1, 0.78, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:20:37', '2018-09-07 00:20:37', 123, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(234, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:30:06', '2018-09-07 00:30:06', 124, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(235, NULL, '[History]-tarea no mostrada', 1, 0.78, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:30:07', '2018-09-07 00:30:07', 125, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(236, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:33:03', '2018-09-07 00:33:03', 126, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(237, NULL, '[History]-tarea no mostrada', 1, 0.78, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:33:04', '2018-09-07 00:33:04', 127, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(238, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:35:11', '2018-09-07 00:35:11', 128, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(239, NULL, '[History]-tarea no mostrada', 1, 0.78, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:35:12', '2018-09-07 00:35:12', 129, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(240, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:35:41', '2018-09-07 00:35:41', 130, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(241, NULL, '[History]-tarea no mostrada', 1, 0.78, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:35:42', '2018-09-07 00:35:42', 131, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(242, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:37:45', '2018-09-07 00:37:45', 132, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(243, NULL, '[History]-tarea no mostrada', 1, 0.78, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:37:47', '2018-09-07 00:37:47', 133, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(244, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:38:05', '2018-09-07 00:38:05', 134, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(245, NULL, '[History]-tarea no mostrada', 1, 0.78, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:38:06', '2018-09-07 00:38:06', 135, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(246, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:38:31', '2018-09-07 00:38:31', 136, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(247, NULL, '[History]-tarea no mostrada', 1, 0.78, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:38:32', '2018-09-07 00:38:32', 137, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(248, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:39:00', '2018-09-07 00:39:00', 138, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(249, NULL, '[History]-tarea no mostrada', 1, 0.78, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:39:02', '2018-09-07 00:39:02', 139, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(250, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:39:40', '2018-09-07 00:39:40', 140, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(251, NULL, '[History]-tarea no mostrada', 1, 0.78, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:39:42', '2018-09-07 00:39:42', 141, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(252, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:40:08', '2018-09-07 00:40:08', 142, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(253, NULL, '[History]-tarea no mostrada', 1, 0.78, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:40:09', '2018-09-07 00:40:09', 143, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(254, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:41:37', '2018-09-07 00:41:37', 144, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(255, NULL, '[History]-tarea no mostrada', 1, 0.78, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:41:39', '2018-09-07 00:41:39', 145, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(256, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:42:20', '2018-09-07 00:42:20', 146, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(257, NULL, '[History]-tarea no mostrada', 1, 0.78, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:42:22', '2018-09-07 00:42:22', 147, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(258, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:43:26', '2018-09-07 00:43:26', 148, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(259, NULL, '[History]-tarea no mostrada', 1, 0.78, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:43:28', '2018-09-07 00:43:28', 149, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(260, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:44:36', '2018-09-07 00:44:36', 150, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(261, NULL, '[History]-tarea no mostrada', 1, 0.78, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:44:37', '2018-09-07 00:44:37', 151, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(262, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:45:27', '2018-09-07 00:45:27', 152, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(263, NULL, '[History]-tarea no mostrada', 1, 0.78, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:45:28', '2018-09-07 00:45:28', 153, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(264, NULL, '[History]-New task', 1, 0.46, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:45:40', '2018-09-07 00:45:40', 154, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(265, NULL, 'Text', 2, 0.00, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 00:45:45', '2018-09-07 00:45:45', 155, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 2),
(266, NULL, 'New task', 1, 0.09, '2018-09-05', 0, NULL, 'Normal', 'WKvAYnEqVV', 'working', '2018-09-07 00:46:34', '2018-09-07 00:46:41', 156, 107, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(267, 'Tarea finalizada', 'New task', 1, 0.60, '2018-09-05', 0, NULL, 'high', 'z9M91xR5sG', 'working', '2018-09-07 05:55:32', '2018-09-09 02:07:12', 157, 111, 13, 'yecaicedo@unicauca.edu.co', 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(268, NULL, '[History]-tarea no mostrada', 1, 0.39, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 07:24:54', '2018-09-07 07:24:54', 158, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(269, NULL, '[History]-tarea no mostrada', 1, 0.78, '2018-09-01', 0, NULL, NULL, NULL, 'working', '2018-09-07 07:24:56', '2018-09-07 07:24:56', 159, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(270, 'descripcion de tarea esta sera un poco larga para simular lo que se tiene que hacer exactamente', 'probando historial tareasasdasd', 16, 0.63, '2018-09-05', 0, NULL, 'normal', 'bt0ZxRe3DD', 'working', '2018-09-07 07:31:55', '2018-09-16 07:02:43', 160, 111, NULL, 'admin@admin.com', 0, 0, NULL, NULL, '', 'yes', 'no', 16),
(271, 'no admin', 'no admin', 1, 0.00, '2018-09-06', 0, NULL, 'Normal', 'ZRwc7AZ6gO', 'stuck', '2018-09-07 22:16:18', '2018-09-07 22:16:18', 161, 112, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(272, NULL, 'tarea no asignada', 1, 1.00, '2018-09-05', 0, NULL, 'Normal', 'ymFbuRFTl4', 'done', '2018-09-09 02:18:29', '2018-09-09 02:25:23', 162, 111, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(273, NULL, 'Asigned to yeison2', 1, 1.00, '2018-09-07', 0, NULL, 'Normal', '9eCbj7JW4S', 'done', '2018-09-09 21:20:08', '2018-09-12 23:55:29', 168, 113, 2, 'admin@admin.com', 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(277, 'cfgfc', 'admin', NULL, NULL, NULL, NULL, NULL, 'Normal', NULL, 'working', '2018-09-11 06:12:00', '2018-09-11 06:12:00', 0, 113, 0, 'unassigned', 1, 0, NULL, NULL, '', 'yes', 'no', NULL),
(278, 'assas', 'tarea agregada111', NULL, NULL, NULL, NULL, NULL, 'Normal', NULL, 'working', '2018-09-11 07:13:47', '2018-09-12 23:55:16', 0, 113, 1, 'admin@admin.com', 1, 0, NULL, NULL, '', 'yes', 'no', NULL),
(281, NULL, 'Tarea padre 3', 1, 1.00, '2018-09-07', 0, NULL, 'Normal', 'oiKsrL8Pnq', 'done', '2018-09-12 00:51:03', '2018-09-12 22:47:42', 169, 113, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(282, NULL, 'Tarea hija de padre 1', 1, 1.00, '2018-09-07', 0, NULL, 'Normal', 'oiKsrL8Pnq', 'done', '2018-09-12 00:52:15', '2018-09-12 01:18:30', 170, 113, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(289, NULL, 'Asigned to Yeison 1', 2, 1.00, '2018-09-14', 0, NULL, 'Normal', 'KwD7TB5I9N', 'working', '2018-09-12 05:05:10', '2018-09-15 21:49:26', 171, 113, NULL, 'admin@admin.com', 0, 0, NULL, NULL, '', 'yes', 'no', 2),
(290, 'des', 'task name extra', NULL, NULL, NULL, NULL, NULL, 'Normal', NULL, 'working', '2018-09-13 20:51:46', '2018-09-13 20:51:46', 0, 113, 0, 'admin@admin.com', 1, 0, NULL, NULL, '', 'yes', 'no', NULL),
(291, 'des2', 'extra task 2', NULL, NULL, NULL, NULL, NULL, 'High', NULL, 'working', '2018-09-13 21:26:52', '2018-09-13 21:26:52', 0, 113, 0, 'admin@admin.com', 1, 0, NULL, NULL, '', 'yes', 'no', NULL),
(293, NULL, '[History]-New task', 1, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 04:13:05', '2018-09-14 04:13:05', 173, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(294, NULL, '[History]-New task', 2, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 04:13:06', '2018-09-14 04:13:06', 174, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 2),
(295, NULL, '[History]-New task', 19, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 04:13:07', '2018-09-14 04:13:07', 175, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(296, NULL, '[History]-New task', 1, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 04:13:14', '2018-09-14 04:13:14', 176, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(297, NULL, '[History]-New task', 2, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 04:13:15', '2018-09-14 04:13:15', 177, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 2),
(298, NULL, '[History]-New task', 19, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 04:13:16', '2018-09-14 04:13:16', 178, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(300, NULL, '[History]-New task', 1, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 08:37:48', '2018-09-14 08:37:48', 180, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(301, NULL, '[History]-New task', 2, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 08:37:49', '2018-09-14 08:37:49', 181, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 2),
(302, NULL, '[History]-New task', 19, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 08:37:50', '2018-09-14 08:37:50', 182, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(303, NULL, '[History]-New task', 16, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 08:37:51', '2018-09-14 08:37:51', 183, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 16),
(304, NULL, '[History]-New task', 1, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 08:39:43', '2018-09-14 08:39:43', 184, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(305, NULL, '[History]-New task', 2, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 08:39:44', '2018-09-14 08:39:44', 185, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 2),
(306, NULL, '[History]-New task', 19, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 08:39:44', '2018-09-14 08:39:44', 186, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(307, NULL, '[History]-New task', 16, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 08:39:45', '2018-09-14 08:39:45', 187, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 16),
(308, NULL, '[History]-New task', 1, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 08:39:59', '2018-09-14 08:39:59', 188, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(309, NULL, '[History]-New task', 2, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 08:39:59', '2018-09-14 08:39:59', 189, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 2),
(310, NULL, '[History]-New task', 19, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 08:40:00', '2018-09-14 08:40:00', 190, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(311, NULL, '[History]-New task', 16, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 08:40:01', '2018-09-14 08:40:01', 191, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 16),
(312, NULL, '[History]-New task', 16, 0.62, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 08:40:02', '2018-09-14 08:40:02', 192, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 16),
(313, NULL, '[History]-New task', 1, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 08:51:16', '2018-09-14 08:51:16', 193, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(314, NULL, '[History]-New task', 2, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 08:51:17', '2018-09-14 08:51:17', 194, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 2),
(315, NULL, '[History]-New task', 19, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 08:51:18', '2018-09-14 08:51:18', 195, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(316, NULL, '[History]-New task', 16, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 08:51:19', '2018-09-14 08:51:19', 196, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 16),
(317, NULL, '[History]-New task', 16, 0.62, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 08:51:19', '2018-09-14 08:51:19', 197, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 16),
(318, NULL, '[History]-New task', 17, 0.62, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 08:51:20', '2018-09-14 08:51:20', 198, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 17),
(320, NULL, '[History]-Nueva tarea de pruebas', 22, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:23:19', '2018-09-14 09:23:19', 200, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 22),
(321, NULL, '[History]-Nueva tarea de pruebas', 22, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:29:10', '2018-09-14 09:29:10', 201, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 22),
(322, NULL, '[History]-Nueva tarea de pruebas', 21, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:29:11', '2018-09-14 09:29:11', 202, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 21),
(323, NULL, '[History]-Nueva tarea de pruebas', 19, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:29:12', '2018-09-14 09:29:12', 203, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(324, NULL, '[History]-Nueva tarea de pruebas', 20, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:29:12', '2018-09-14 09:29:12', 204, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 20),
(325, NULL, '[History]-Nueva tarea de pruebas', 22, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:37:27', '2018-09-14 09:37:27', 205, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 22),
(326, NULL, '[History]-Nueva tarea de pruebas', 21, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:37:28', '2018-09-14 09:37:28', 206, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 21),
(327, NULL, '[History]-Nueva tarea de pruebas', 19, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:37:28', '2018-09-14 09:37:28', 207, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(328, NULL, '[History]-Nueva tarea de pruebas', 20, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:37:29', '2018-09-14 09:37:29', 208, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 20),
(329, NULL, '[History]-Nueva tarea de pruebas', 19, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:37:30', '2018-09-14 09:37:30', 209, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(330, NULL, '[History]-Nueva tarea de pruebas', 19, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:37:31', '2018-09-14 09:37:31', 210, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(331, NULL, '[History]-Nueva tarea de pruebas', 20, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:37:32', '2018-09-14 09:37:32', 211, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 20),
(332, NULL, '[History]-Nueva tarea de pruebas', 21, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:37:33', '2018-09-14 09:37:33', 212, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 21),
(333, NULL, '[History]-Nueva tarea de pruebas', 22, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:38:05', '2018-09-14 09:38:05', 213, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 22),
(334, NULL, '[History]-Nueva tarea de pruebas', 21, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:38:06', '2018-09-14 09:38:06', 214, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 21),
(335, NULL, '[History]-Nueva tarea de pruebas', 19, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:38:07', '2018-09-14 09:38:07', 215, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(336, NULL, '[History]-Nueva tarea de pruebas', 20, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:38:08', '2018-09-14 09:38:08', 216, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 20),
(337, NULL, '[History]-Nueva tarea de pruebas', 19, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:38:09', '2018-09-14 09:38:09', 217, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(338, NULL, '[History]-Nueva tarea de pruebas', 19, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:38:09', '2018-09-14 09:38:09', 218, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(339, NULL, '[History]-Nueva tarea de pruebas', 20, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:38:10', '2018-09-14 09:38:10', 219, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 20),
(340, NULL, '[History]-Nueva tarea de pruebas', 21, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:38:11', '2018-09-14 09:38:11', 220, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 21),
(341, NULL, '[History]-Nueva tarea de pruebas', 26, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:38:12', '2018-09-14 09:38:12', 221, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 26),
(342, NULL, '[History]-Nueva tarea de pruebas', 22, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:39:21', '2018-09-14 09:39:21', 222, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 22),
(343, NULL, '[History]-Nueva tarea de pruebas', 21, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:39:22', '2018-09-14 09:39:22', 223, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 21),
(344, NULL, '[History]-Nueva tarea de pruebas', 19, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:39:23', '2018-09-14 09:39:23', 224, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(345, NULL, '[History]-Nueva tarea de pruebas', 20, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:39:24', '2018-09-14 09:39:24', 225, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 20),
(346, NULL, '[History]-Nueva tarea de pruebas', 19, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:39:25', '2018-09-14 09:39:25', 226, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(347, NULL, '[History]-Nueva tarea de pruebas', 19, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:39:25', '2018-09-14 09:39:25', 227, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(348, NULL, '[History]-Nueva tarea de pruebas', 20, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:39:27', '2018-09-14 09:39:27', 228, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 20),
(349, NULL, '[History]-Nueva tarea de pruebas', 21, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:39:27', '2018-09-14 09:39:27', 229, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 21),
(350, NULL, '[History]-Nueva tarea de pruebas', 26, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:39:28', '2018-09-14 09:39:28', 230, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 26),
(351, NULL, '[History]-Nueva tarea de pruebas', 26, 0.73, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:39:29', '2018-09-14 09:39:29', 231, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 26),
(352, NULL, '[History]-Nueva tarea de pruebas', 22, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:43:23', '2018-09-14 09:43:23', 232, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 22),
(353, NULL, '[History]-Nueva tarea de pruebas', 21, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:43:24', '2018-09-14 09:43:24', 233, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 21),
(354, NULL, '[History]-Nueva tarea de pruebas', 19, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:43:24', '2018-09-14 09:43:24', 234, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(355, NULL, '[History]-Nueva tarea de pruebas', 20, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:43:25', '2018-09-14 09:43:25', 235, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 20),
(356, NULL, '[History]-Nueva tarea de pruebas', 19, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:43:26', '2018-09-14 09:43:26', 236, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(357, NULL, '[History]-Nueva tarea de pruebas', 19, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:43:27', '2018-09-14 09:43:27', 237, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(358, NULL, '[History]-Nueva tarea de pruebas', 20, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:43:28', '2018-09-14 09:43:28', 238, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 20),
(359, NULL, '[History]-Nueva tarea de pruebas', 21, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:43:28', '2018-09-14 09:43:28', 239, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 21),
(360, NULL, '[History]-Nueva tarea de pruebas', 26, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:43:29', '2018-09-14 09:43:29', 240, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 26),
(361, NULL, '[History]-Nueva tarea de pruebas', 26, 0.73, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:43:30', '2018-09-14 09:43:30', 241, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 26),
(362, NULL, '[History]-Nueva tarea de pruebas', 26, 0.91, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 09:43:31', '2018-09-14 09:43:31', 242, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 26),
(363, NULL, '[History]-Nueva tarea de pruebas', 22, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 19:32:46', '2018-09-14 19:32:46', 243, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 22),
(364, NULL, '[History]-Nueva tarea de pruebas', 21, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 19:32:47', '2018-09-14 19:32:47', 244, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 21),
(365, NULL, '[History]-Nueva tarea de pruebas', 19, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 19:32:48', '2018-09-14 19:32:48', 245, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(366, NULL, '[History]-Nueva tarea de pruebas', 20, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 19:32:49', '2018-09-14 19:32:49', 246, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 20),
(367, NULL, '[History]-Nueva tarea de pruebas', 19, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 19:32:50', '2018-09-14 19:32:50', 247, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(368, NULL, '[History]-Nueva tarea de pruebas', 19, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 19:32:50', '2018-09-14 19:32:50', 248, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(369, NULL, '[History]-Nueva tarea de pruebas', 20, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 19:32:51', '2018-09-14 19:32:51', 249, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 20),
(370, NULL, '[History]-Nueva tarea de pruebas', 21, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 19:32:52', '2018-09-14 19:32:52', 250, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 21),
(371, NULL, '[History]-Nueva tarea de pruebas', 26, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 19:32:53', '2018-09-14 19:32:53', 251, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 26),
(372, NULL, '[History]-Nueva tarea de pruebas', 26, 0.73, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 19:32:54', '2018-09-14 19:32:54', 252, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 26),
(373, NULL, '[History]-Nueva tarea de pruebas', 26, 0.91, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 19:32:55', '2018-09-14 19:32:55', 253, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 26),
(374, NULL, '[History]-Nueva tarea de pruebas', 19, 0.75, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 19:32:56', '2018-09-14 19:32:56', 254, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(375, NULL, '[History]-Nueva tarea de pruebas', 22, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 19:33:54', '2018-09-14 19:33:54', 255, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 22),
(376, NULL, '[History]-Nueva tarea de pruebas', 21, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 19:33:55', '2018-09-14 19:33:55', 256, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 21),
(377, NULL, '[History]-Nueva tarea de pruebas', 19, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 19:33:55', '2018-09-14 19:33:55', 257, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(378, NULL, '[History]-Nueva tarea de pruebas', 20, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 19:33:56', '2018-09-14 19:33:56', 258, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 20),
(379, NULL, '[History]-Nueva tarea de pruebas', 19, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 19:33:57', '2018-09-14 19:33:57', 259, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(380, NULL, '[History]-Nueva tarea de pruebas', 19, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 19:33:58', '2018-09-14 19:33:58', 260, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(381, NULL, '[History]-Nueva tarea de pruebas', 20, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 19:33:59', '2018-09-14 19:33:59', 261, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 20),
(382, NULL, '[History]-Nueva tarea de pruebas', 21, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 19:33:59', '2018-09-14 19:33:59', 262, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 21),
(383, NULL, '[History]-Nueva tarea de pruebas', 26, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 19:34:00', '2018-09-14 19:34:00', 263, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 26),
(384, NULL, '[History]-Nueva tarea de pruebas', 26, 0.73, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 19:34:02', '2018-09-14 19:34:02', 264, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 26),
(385, NULL, '[History]-Nueva tarea de pruebas', 26, 0.91, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 19:34:03', '2018-09-14 19:34:03', 265, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 26),
(386, NULL, '[History]-Nueva tarea de pruebas', 19, 0.75, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 19:34:04', '2018-09-14 19:34:04', 266, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(387, NULL, '[History]-Nueva tarea de pruebas', 19, 0.91, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 19:34:04', '2018-09-14 19:34:04', 267, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(388, NULL, '[History]-Nueva tarea de pruebas', 22, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 21:20:18', '2018-09-14 21:20:18', 268, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 22);
INSERT INTO `tasks` (`id`, `des`, `text`, `duration`, `progress`, `start_date`, `parent`, `type`, `priority`, `socket`, `status`, `created_at`, `updated_at`, `sortorder`, `project_id`, `workedHours`, `assigned`, `extra`, `history`, `color`, `modify`, `editor`, `workCount`, `workCountWeekends`, `durationMod`) VALUES
(389, NULL, '[History]-Nueva tarea de pruebas', 21, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 21:20:19', '2018-09-14 21:20:19', 269, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 21),
(390, NULL, '[History]-Nueva tarea de pruebas', 19, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 21:20:20', '2018-09-14 21:20:20', 270, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(391, NULL, '[History]-Nueva tarea de pruebas', 20, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 21:20:21', '2018-09-14 21:20:21', 271, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 20),
(392, NULL, '[History]-Nueva tarea de pruebas', 19, 0.00, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-14 21:20:22', '2018-09-14 21:20:22', 272, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(393, NULL, '[History]-Nueva tarea de pruebas', 19, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 21:20:22', '2018-09-14 21:20:22', 273, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(394, NULL, '[History]-Nueva tarea de pruebas', 20, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 21:20:23', '2018-09-14 21:20:23', 274, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 20),
(395, NULL, '[History]-Nueva tarea de pruebas', 21, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-14 21:20:24', '2018-09-14 21:20:24', 275, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 21),
(398, NULL, '[History]-Byeeeeee', 20, 0.68, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-15 07:59:19', '2018-09-15 07:59:19', 278, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 20),
(399, NULL, '[History]-Byeeeeee', 20, 0.68, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-15 08:05:12', '2018-09-15 08:05:12', 279, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 20),
(400, NULL, '[History]-Byeeeeee', 20, 0.68, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-16 00:53:27', '2018-09-16 00:53:27', 280, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 20),
(401, NULL, '[History]-Byeeeeee', 18, 0.68, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-16 00:53:28', '2018-09-16 00:53:28', 281, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 18),
(402, NULL, '[History]-Byeeeeee', 17, 0.68, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-16 00:53:29', '2018-09-16 00:53:29', 282, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 17),
(403, NULL, '[History]-New task', 1, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-17 20:37:01', '2018-09-17 20:37:01', 283, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(404, NULL, '[History]-New task', 2, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-17 20:37:03', '2018-09-17 20:37:03', 284, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 2),
(405, NULL, '[History]-New task', 19, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-17 20:37:04', '2018-09-17 20:37:04', 285, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(406, NULL, '[History]-New task', 16, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-17 20:37:06', '2018-09-17 20:37:06', 286, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 16),
(407, NULL, '[History]-New task', 16, 0.62, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-17 20:37:07', '2018-09-17 20:37:07', 287, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 16),
(408, NULL, '[History]-New task', 17, 0.62, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-17 20:37:09', '2018-09-17 20:37:09', 288, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 17),
(409, NULL, '[History]-New task', 17, 0.68, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-17 20:37:10', '2018-09-17 20:37:10', 289, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 17),
(410, NULL, '[History]-New task', 17, 0.67, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-17 20:37:12', '2018-09-17 20:37:12', 290, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 17),
(411, NULL, '[History]-New task', 17, 0.73, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-17 20:37:13', '2018-09-17 20:37:13', 291, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 17),
(412, NULL, '[History]-New task', 1, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-17 20:45:41', '2018-09-17 20:45:41', 292, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(413, NULL, '[History]-New task', 2, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-17 20:45:42', '2018-09-17 20:45:42', 293, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 2),
(414, NULL, '[History]-New task', 19, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-17 20:45:43', '2018-09-17 20:45:43', 294, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 19),
(415, NULL, '[History]-New task', 16, 0.00, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-17 20:45:45', '2018-09-17 20:45:45', 295, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 16),
(416, NULL, '[History]-New task', 16, 0.62, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-17 20:45:46', '2018-09-17 20:45:46', 296, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 16),
(417, NULL, '[History]-New task', 17, 0.62, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-17 20:45:47', '2018-09-17 20:45:47', 297, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 17),
(418, NULL, '[History]-New task', 17, 0.68, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-17 20:45:49', '2018-09-17 20:45:49', 298, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 17),
(419, NULL, '[History]-New task', 17, 0.67, '2018-09-02', 0, NULL, NULL, NULL, 'working', '2018-09-17 20:45:50', '2018-09-17 20:45:50', 299, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 17),
(420, NULL, '[History]-New task', 17, 0.73, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-17 20:45:52', '2018-09-17 20:45:52', 300, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 17),
(421, NULL, '[History]-New task', 17, 0.77, '2018-09-03', 0, NULL, NULL, NULL, 'working', '2018-09-17 20:45:54', '2018-09-17 20:45:54', 301, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 17),
(423, NULL, 'Tarea 1', 1, 0.00, '2018-09-17', 0, NULL, 'Normal', 'zXMlUpf4gv', 'working', '2018-09-18 18:49:51', '2018-09-21 00:45:00', 302, 114, NULL, 'admin@admin.com', 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(424, NULL, 'tarea2', 2, 0.00, '2018-09-16', 0, NULL, 'Normal', 'zXMlUpf4gv', 'working', '2018-09-18 18:50:05', '2018-09-21 00:44:22', 303, 114, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 2),
(425, NULL, 'tarea 3', 11, 1.00, '2018-09-16', 0, NULL, 'Normal', 'zXMlUpf4gv', 'working', '2018-09-18 18:50:14', '2018-09-21 00:44:20', 304, 114, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(426, NULL, 'asdasdasd', 1, 0.00, '2018-09-16', 0, NULL, 'Normal', 'l1iQBn58rH', 'working', '2018-09-21 00:27:00', '2018-09-21 00:44:18', 305, 114, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(427, NULL, 'New task', 1, 0.00, '2018-09-16', 0, NULL, 'Normal', 'XtjSVZ3RER', 'working', '2018-09-21 00:41:48', '2018-09-21 00:41:48', 306, 114, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(428, NULL, 'New task', 9, 0.00, '2018-09-16', 0, NULL, 'Normal', 'XtjSVZ3RER', 'working', '2018-09-21 00:41:59', '2018-09-21 00:41:59', 307, 114, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 9),
(429, NULL, 'New task', 8, 0.00, '2018-09-16', 0, NULL, 'Normal', 'XtjSVZ3RER', 'working', '2018-09-21 00:42:08', '2018-09-21 00:42:08', 308, 114, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(430, NULL, 'New task', 1, 1.00, '2018-09-17', 0, NULL, 'Normal', 'mFNb50PhaZ', 'working', '2018-09-21 03:44:55', '2018-09-21 03:45:20', 309, 114, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(431, NULL, 'New task', 1, 0.00, '2018-09-17', 0, NULL, 'Normal', 'qFXwMYYfVM', 'working', '2018-09-21 03:48:17', '2018-09-21 03:48:17', 310, 114, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(432, NULL, 'New task', 1, 0.00, '2018-09-17', 0, NULL, 'Normal', '7yOCV2NbGf', 'working', '2018-09-21 03:51:47', '2018-09-21 03:51:47', 311, 114, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(433, NULL, 'New task', 1, 0.00, '2018-09-17', 0, NULL, 'Normal', 'UpRH5oL2rA', 'working', '2018-09-21 03:53:28', '2018-09-21 03:53:28', 312, 114, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(434, NULL, 'New task', 1, 0.00, '2018-09-17', 0, NULL, 'Normal', 'mHSQGCe2s4', 'working', '2018-09-21 21:36:53', '2018-09-21 21:36:53', 313, 114, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(435, NULL, 'New task', 1, 0.00, '2018-09-17', 0, NULL, 'Normal', 'f28qOkhSv4', 'working', '2018-09-21 21:39:29', '2018-09-21 21:39:29', 314, 114, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(436, NULL, 'New task', 1, 0.00, '2018-09-04', 0, NULL, 'Normal', 'sJnwhWrOjM', 'working', '2018-09-21 21:39:46', '2018-09-21 21:39:46', 315, 110, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(438, NULL, 'New task', 1, 0.00, '2018-09-04', 0, NULL, 'Normal', 'E3e9pg9fDZ', 'working', '2018-09-21 21:44:54', '2018-09-21 21:44:54', 317, 110, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(440, NULL, 'New task', 1, 0.00, '2018-09-17', 0, NULL, 'Normal', 'dvO4ZPcJ53', 'working', '2018-09-21 21:47:10', '2018-09-21 21:47:10', 318, 114, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(449, 'Mechanism Evaluation', '3 Mechanism Evaluation', 59, 1.00, '2019-03-21', 0, 'project', 'normal', 'Socket', 'done', '2018-09-22 04:50:43', '2019-03-11 07:30:28', 327, 115, 0, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 53),
(450, 'Evaluate Efficiency and Reliability', '3.1 Evaluate', 28, 0.00, '2019-04-21', 449, NULL, 'normal', 'Socket', 'working', '2018-09-22 04:50:45', '2018-09-22 04:50:45', 328, 115, 0, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 28),
(451, 'Recopile and Compare Data', '3.2 Recopile Data', 53, 0.00, '2019-03-21', 449, NULL, 'normal', 'Socket', 'working', '2018-09-22 04:50:47', '2018-09-22 04:50:47', 329, 115, 0, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 53),
(463, 'Analysis', '1 Analysis', 81, 0.00, '2018-07-18', 0, 'any type', 'normal', 'Socket', 'working', '2018-09-26 01:21:23', '2018-09-26 01:21:23', 338, 8, 0, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 81),
(464, 'On-Site Meetings', '1.1 On-Site Meetings', 28, 0.00, '2018-07-18', 463, 'any type', 'normal', 'Socket', 'working', '2018-09-26 01:21:24', '2018-09-26 01:21:24', 339, 8, 0, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 28),
(465, 'Discussions with Stakeholders', '1.2 Discussions with Stakeholders', 28, 0.00, '2018-08-18', 463, 'any type', 'normal', 'Socket', 'working', '2018-09-26 01:21:26', '2018-09-26 01:21:26', 340, 8, 0, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 28),
(466, 'Document Current Systems', '1.3 Document Current Systems', 28, 0.00, '2018-09-18', 463, 'any type', 'normal', 'Socket', 'working', '2018-09-26 01:21:28', '2018-09-26 01:21:28', 341, 8, 0, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 28),
(467, 'Design', '2 Design', 109, 0.00, '2018-10-18', 0, 'any type', 'normal', 'Socket', 'working', '2018-09-26 01:21:29', '2018-09-26 01:21:29', 342, 8, 0, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 109),
(468, 'Design Database', '2.1 Design Database', 28, 0.00, '2018-10-18', 467, 'any type', 'normal', 'Socket', 'working', '2018-09-26 01:21:30', '2018-09-26 01:21:30', 343, 8, 0, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 28),
(469, 'Software Design', '2.2 Software Design', 28, 0.00, '2018-11-18', 467, 'any type', 'normal', 'Socket', 'working', '2018-09-26 01:21:32', '2018-09-26 01:21:32', 344, 8, 0, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 28),
(470, 'Interface Design', '2.3 Interface Design', 28, 0.00, '2018-12-18', 467, 'any type', 'normal', 'Socket', 'working', '2018-09-26 01:21:33', '2018-09-26 01:21:33', 345, 8, 0, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 28),
(471, 'Create Design Specification', '2.4 Create Design Specification', 28, 0.00, '2019-01-18', 467, 'any type', 'normal', 'Socket', 'working', '2018-09-26 01:21:34', '2018-09-26 01:21:34', 346, 8, 0, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 28),
(472, 'Development', '3 Development', 81, 0.00, '2019-02-18', 0, 'any type', 'normal', 'Socket', 'working', '2018-09-26 01:21:35', '2018-09-26 01:21:35', 347, 8, 0, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 81),
(473, 'Develop System Modules', '3.1 Develop System Modules', 28, 0.00, '2019-02-18', 472, 'any type', 'normal', 'Socket', 'working', '2018-09-26 01:21:37', '2018-09-26 01:21:37', 348, 8, 0, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 28),
(474, 'Integrate System Modules', '3.2 Integrate System Modules', 28, 0.00, '2019-03-18', 472, 'any type', 'normal', 'Socket', 'working', '2018-09-26 01:21:38', '2018-09-26 01:21:38', 349, 8, 0, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 28),
(475, 'Perform Initial Testing', '3.3 Perform Initial Testing', 28, 0.00, '2019-04-18', 472, 'any type', 'normal', 'Socket', 'working', '2018-09-26 01:21:40', '2018-09-26 01:21:40', 350, 8, 0, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 28),
(476, 'Testing', '4 Testing', 81, 0.00, '2019-05-18', 0, 'any type', 'normal', 'Socket', 'working', '2018-09-26 01:21:41', '2018-09-26 01:21:41', 351, 8, 0, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 81),
(477, 'Perform System Testing', '4.1 Perform System Testing', 28, 0.00, '2019-05-18', 476, 'any type', 'normal', 'Socket', 'working', '2018-09-26 01:21:42', '2018-09-26 01:21:42', 352, 8, 0, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 28),
(478, 'Document Issues Found', '4.2 Document Issues Found', 28, 0.00, '2019-06-18', 476, 'any type', 'normal', 'Socket', 'working', '2018-09-26 01:21:44', '2018-09-26 01:21:44', 353, 8, 0, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 28),
(479, 'Correct Issues Found', '4.3 Correct Issues Found', 28, 0.00, '2019-07-18', 476, 'any type', 'normal', 'Socket', 'working', '2018-09-26 01:21:45', '2018-09-26 01:21:45', 354, 8, 0, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 28),
(607, NULL, 'Task name', 5, 0.00, '2018-10-02', 0, 'normal', 'Normal', '2fjTt3YT5X', 'working', '2018-10-03 00:53:43', '2019-03-09 21:07:37', 356, 115, NULL, 'admin@admin.com', 0, 0, NULL, NULL, '', 'yes', 'no', 3),
(608, NULL, 'lel', 4, 0.00, '2018-10-02', 0, 'normal', 'Normal', 'iEcszhu60b', 'working', '2018-10-03 00:54:32', '2019-03-09 21:07:37', 357, 115, NULL, 'yecaicedo@unicauca.edu.co', 0, 0, NULL, NULL, '', 'yes', 'no', 3),
(609, 'Description', 'Test task', 7, 1.00, '2018-10-04', 0, 'normal', 'Normal', 'n9Bi71JcKF', 'done', '2018-10-03 18:09:46', '2019-03-11 07:30:36', 358, 115, NULL, 'leader@gmail.com', 0, 0, NULL, NULL, '', 'yes', 'no', 5),
(610, NULL, 'nueva', 6, 1.00, '2018-10-05', 0, 'normal', 'Normal', 'UyGpscDs8y', 'done', '2018-10-03 20:00:05', '2019-03-11 07:30:31', 359, 115, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 4),
(615, NULL, 'tarea', 4, 0.00, '2018-10-03', 0, 'normal', 'Normal', 'Dol5QTJS1G', 'working', '2018-10-03 21:16:36', '2019-03-09 21:07:37', 360, 115, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 2),
(616, NULL, 'fddfdf', 7, 1.00, '2018-10-05', 0, 'normal', 'Normal', 'zzmnz5XvJR', 'done', '2018-10-03 21:30:44', '2019-03-11 07:30:32', 361, 115, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 5),
(617, NULL, 'sdc', 9, 0.00, '2018-10-03', 0, 'normal', 'Normal', 'xxlnUg7UHi', 'working', '2018-10-03 21:33:25', '2019-03-09 21:07:37', 362, 115, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 7),
(618, 'testing description', 'new task', 9, 1.00, '2018-10-04', 0, 'normal', 'Normal', 'lCrEfmZtBm', 'done', '2018-10-03 22:40:19', '2019-03-11 07:30:37', 363, 115, NULL, 'admin@admin.com', 0, 0, NULL, NULL, '', 'yes', 'no', 6),
(619, NULL, 'otraaa', 3, 0.00, '2018-10-03', 0, 'normal', 'Normal', 'hONl5NiN4U', 'working', '2018-10-03 23:09:15', '2019-03-09 21:07:37', 364, 115, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 2),
(620, NULL, 'fsfdsf', 3, 0.00, '2018-10-03', 0, 'normal', 'Normal', '5Zo7FLhydw', 'working', '2018-10-03 23:11:19', '2019-03-09 21:07:37', 365, 115, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 2),
(621, NULL, 'nueva', 8, 1.00, '2018-10-13', 0, 'normal', 'Normal', 'cfWPIa5jjM', 'done', '2018-10-03 23:25:31', '2019-03-11 07:30:29', 366, 115, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 4),
(622, NULL, 'Task name', 1, 0.00, '2018-10-03', 0, 'normal', 'Normal', 'cfWPIa5jjM', 'working', '2018-10-03 23:45:10', '2018-10-03 23:45:11', 367, 115, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(623, NULL, 'Task name', 1, 1.00, '2018-10-03', 0, 'normal', 'Normal', 'cfWPIa5jjM', 'done', '2018-10-03 23:45:18', '2019-03-11 07:30:38', 368, 115, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(624, NULL, 'aasda', 1, 0.00, '2018-10-03', 0, 'normal', 'Normal', '8LEKG2M1HL', 'working', '2018-10-04 04:44:45', '2018-10-04 04:44:48', 369, 115, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(625, NULL, 'kkk', 1, 0.00, '2018-10-03', 0, 'normal', 'Normal', '8LEKG2M1HL', 'working', '2018-10-04 04:45:03', '2018-10-04 04:45:05', 370, 115, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 1),
(626, 'asdasdasd', 'Tarea # 33', 18, 0.80, '2018-10-13', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', '2018-10-12 03:27:58', '2018-11-13 04:08:17', 371, 116, NULL, NULL, 0, 1, NULL, NULL, '', 'yes', 'no', 18),
(627, NULL, 'Tarea #2', 9, 0.64, '2018-10-27', 0, 'normal', 'Normal', '3wnJE66c5J', 'working', '2018-10-12 03:28:25', '2018-11-13 04:18:31', 372, 116, NULL, 'yecaicedo@unicauca.edu.co', 0, 1, NULL, NULL, '', 'yes', 'no', 9),
(628, 'asas', 'mountain naska', 3, 0.00, '2018-10-18', 0, 'normal', 'Normal', 'BSzLK8AQ9j', 'working', '2018-10-18 19:49:01', '2018-10-18 19:49:03', 373, 120, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 3),
(629, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-29 22:23:29', '2018-10-29 22:23:32', 374, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(630, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-29 22:23:36', '2018-10-29 22:23:38', 375, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(631, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 00:46:37', '2018-10-30 00:46:39', 376, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(632, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 00:55:29', '2018-10-30 00:55:36', 377, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(633, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 00:55:31', '2018-10-30 00:55:38', 378, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(634, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 00:55:33', '2018-10-30 00:55:39', 379, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(635, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 00:55:34', '2018-10-30 00:55:41', 380, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(636, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 00:59:54', '2018-10-30 01:00:03', 381, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(637, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 00:59:56', '2018-10-30 01:00:05', 382, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(638, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 00:59:58', '2018-10-30 01:00:07', 383, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(639, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 01:00:00', '2018-10-30 01:00:08', 384, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(640, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 01:00:01', '2018-10-30 01:00:09', 385, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(641, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 01:29:41', '2018-10-30 01:29:54', 386, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(642, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 01:29:43', '2018-10-30 01:29:55', 387, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(643, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 01:29:45', '2018-10-30 01:29:57', 388, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(644, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 01:29:47', '2018-10-30 01:29:58', 389, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(645, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 01:29:48', '2018-10-30 01:29:59', 390, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(646, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 01:29:50', '2018-10-30 01:30:00', 391, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(647, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 01:29:52', '2018-10-30 01:30:02', 392, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(648, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 02:21:45', '2018-10-30 02:22:11', 393, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(649, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 02:21:47', '2018-10-30 02:22:12', 394, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(650, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 02:21:50', '2018-10-30 02:22:14', 395, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(651, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 02:21:52', '2018-10-30 02:22:16', 396, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(652, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 02:21:54', '2018-10-30 02:22:17', 397, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(653, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 02:21:57', '2018-10-30 02:22:18', 398, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(654, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 02:21:59', '2018-10-30 02:22:21', 399, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(655, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 02:22:01', '2018-10-30 02:22:22', 400, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(656, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 02:22:03', '2018-10-30 02:22:23', 401, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(657, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 02:22:05', '2018-10-30 02:22:25', 402, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(658, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 02:22:07', '2018-10-30 02:22:26', 403, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(659, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-10-30 02:22:09', '2018-10-30 02:22:27', 404, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(660, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:13:44', '2018-11-01 22:13:56', 405, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(661, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:13:45', '2018-11-01 22:13:56', 406, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(662, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:13:46', '2018-11-01 22:13:57', 407, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(663, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:13:47', '2018-11-01 22:13:58', 408, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(664, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:13:48', '2018-11-01 22:13:59', 409, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(665, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:13:49', '2018-11-01 22:13:59', 410, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(666, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:13:50', '2018-11-01 22:14:00', 411, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(667, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:13:51', '2018-11-01 22:14:01', 412, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(668, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:13:52', '2018-11-01 22:14:01', 413, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(669, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:13:53', '2018-11-01 22:14:02', 414, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(670, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:13:54', '2018-11-01 22:14:03', 415, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(671, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:13:55', '2018-11-01 22:14:04', 416, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(672, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:47:51', '2018-11-01 22:48:06', 417, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(673, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:47:52', '2018-11-01 22:48:07', 418, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(674, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:47:53', '2018-11-01 22:48:08', 419, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(675, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:47:54', '2018-11-01 22:48:09', 420, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(676, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:47:55', '2018-11-01 22:48:09', 421, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(677, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:47:56', '2018-11-01 22:48:10', 422, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(678, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:47:57', '2018-11-01 22:48:11', 423, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(679, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:47:58', '2018-11-01 22:48:11', 424, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(680, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:47:59', '2018-11-01 22:48:12', 425, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(681, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:48:00', '2018-11-01 22:48:13', 426, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(682, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:48:01', '2018-11-01 22:48:14', 427, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(683, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:48:02', '2018-11-01 22:48:14', 428, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(684, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:48:03', '2018-11-01 22:48:15', 429, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(685, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:48:04', '2018-11-01 22:48:16', 430, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(686, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:48:06', '2018-11-01 22:48:17', 431, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(687, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:50:04', '2018-11-01 22:50:18', 432, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(688, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:50:05', '2018-11-01 22:50:19', 433, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(689, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:50:06', '2018-11-01 22:50:20', 434, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(690, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:50:07', '2018-11-01 22:50:21', 435, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(691, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:50:08', '2018-11-01 22:50:21', 436, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(692, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:50:09', '2018-11-01 22:50:22', 437, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(693, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:50:10', '2018-11-01 22:50:23', 438, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(694, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:50:11', '2018-11-01 22:50:23', 439, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(695, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:50:12', '2018-11-01 22:50:24', 440, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(696, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:50:13', '2018-11-01 22:50:25', 441, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(697, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:50:14', '2018-11-01 22:50:25', 442, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(698, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:50:14', '2018-11-01 22:50:26', 443, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(699, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:50:15', '2018-11-01 22:50:27', 444, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(700, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:50:16', '2018-11-01 22:50:28', 445, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(701, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 22:50:17', '2018-11-01 22:50:28', 446, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(702, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:18:22', '2018-11-01 23:18:22', 447, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(703, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:18:23', '2018-11-01 23:18:23', 448, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(704, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:18:24', '2018-11-01 23:18:24', 449, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(705, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:18:25', '2018-11-01 23:18:25', 450, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(706, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:18:26', '2018-11-01 23:18:26', 451, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(707, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:18:27', '2018-11-01 23:18:27', 452, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(708, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:18:28', '2018-11-01 23:18:28', 453, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(709, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:18:28', '2018-11-01 23:18:28', 454, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(710, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:18:29', '2018-11-01 23:18:29', 455, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(711, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:18:30', '2018-11-01 23:18:30', 456, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(712, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:18:31', '2018-11-01 23:18:31', 457, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(713, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:18:32', '2018-11-01 23:18:32', 458, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(714, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:18:34', '2018-11-01 23:18:34', 459, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(715, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:18:35', '2018-11-01 23:18:35', 460, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(716, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:18:36', '2018-11-01 23:18:36', 461, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(717, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:18:44', '2018-11-01 23:18:44', 462, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(718, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:18:45', '2018-11-01 23:18:45', 463, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(719, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:18:46', '2018-11-01 23:18:46', 464, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(720, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:18:47', '2018-11-01 23:18:47', 465, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(721, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:18:48', '2018-11-01 23:18:48', 466, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(722, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:18:49', '2018-11-01 23:18:49', 467, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(723, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:18:50', '2018-11-01 23:18:50', 468, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(724, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:18:51', '2018-11-01 23:18:51', 469, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(725, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:18:52', '2018-11-01 23:18:52', 470, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(726, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:18:53', '2018-11-01 23:18:53', 471, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(727, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:18:54', '2018-11-01 23:18:54', 472, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(728, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:18:55', '2018-11-01 23:18:55', 473, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(729, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:20:56', '2018-11-01 23:21:10', 474, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(730, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:20:57', '2018-11-01 23:21:10', 475, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(731, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:20:58', '2018-11-01 23:21:11', 476, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(732, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:20:59', '2018-11-01 23:21:12', 477, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(733, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:21:00', '2018-11-01 23:21:12', 478, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(734, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:21:01', '2018-11-01 23:21:13', 479, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(735, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:21:01', '2018-11-01 23:21:14', 480, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(736, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:21:02', '2018-11-01 23:21:14', 481, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(737, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:21:03', '2018-11-01 23:21:15', 482, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(738, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:21:04', '2018-11-01 23:21:16', 483, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(739, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:21:05', '2018-11-01 23:21:16', 484, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(740, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:21:06', '2018-11-01 23:21:17', 485, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(741, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:21:07', '2018-11-01 23:21:18', 486, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(742, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:21:08', '2018-11-01 23:21:18', 487, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(743, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:21:09', '2018-11-01 23:21:19', 488, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(744, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:22:34', '2018-11-01 23:22:49', 489, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(745, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:22:36', '2018-11-01 23:22:50', 490, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(746, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:22:37', '2018-11-01 23:22:50', 491, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(747, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:22:38', '2018-11-01 23:22:51', 492, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(748, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:22:39', '2018-11-01 23:22:52', 493, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(749, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:22:40', '2018-11-01 23:22:53', 494, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(750, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:22:40', '2018-11-01 23:22:53', 495, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(751, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:22:41', '2018-11-01 23:22:54', 496, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(752, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:22:42', '2018-11-01 23:22:55', 497, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(753, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:22:43', '2018-11-01 23:22:55', 498, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(754, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:22:44', '2018-11-01 23:22:56', 499, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(755, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:22:45', '2018-11-01 23:22:57', 500, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(756, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:22:46', '2018-11-01 23:22:58', 501, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(757, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:22:47', '2018-11-01 23:22:58', 502, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(758, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:22:48', '2018-11-01 23:22:59', 503, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(759, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:23:54', '2018-11-01 23:24:08', 504, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(760, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:23:55', '2018-11-01 23:24:09', 505, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(761, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:23:56', '2018-11-01 23:24:10', 506, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(762, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:23:57', '2018-11-01 23:24:10', 507, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(763, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:23:58', '2018-11-01 23:24:11', 508, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(764, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:23:59', '2018-11-01 23:24:12', 509, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(765, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:24:00', '2018-11-01 23:24:13', 510, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(766, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:24:01', '2018-11-01 23:24:13', 511, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(767, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:24:02', '2018-11-01 23:24:14', 512, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(768, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:24:03', '2018-11-01 23:24:15', 513, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(769, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:24:04', '2018-11-01 23:24:15', 514, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(770, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:24:05', '2018-11-01 23:24:16', 515, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(771, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:24:06', '2018-11-01 23:24:17', 516, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(772, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:24:07', '2018-11-01 23:24:17', 517, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(773, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:24:07', '2018-11-01 23:24:18', 518, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(774, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:35:37', '2018-11-01 23:35:52', 519, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(775, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:35:38', '2018-11-01 23:35:53', 520, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(776, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:35:39', '2018-11-01 23:35:54', 521, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(777, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:35:40', '2018-11-01 23:35:54', 522, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(778, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:35:41', '2018-11-01 23:35:55', 523, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(779, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:35:42', '2018-11-01 23:35:56', 524, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(780, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:35:43', '2018-11-01 23:35:56', 525, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(781, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:35:44', '2018-11-01 23:35:57', 526, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(782, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:35:45', '2018-11-01 23:35:58', 527, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(783, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:35:46', '2018-11-01 23:35:59', 528, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(784, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:35:47', '2018-11-01 23:35:59', 529, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(785, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:35:48', '2018-11-01 23:36:00', 530, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(786, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:35:49', '2018-11-01 23:36:01', 531, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(787, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:35:50', '2018-11-01 23:36:02', 532, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(788, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:35:50', '2018-11-01 23:36:02', 533, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8);
INSERT INTO `tasks` (`id`, `des`, `text`, `duration`, `progress`, `start_date`, `parent`, `type`, `priority`, `socket`, `status`, `created_at`, `updated_at`, `sortorder`, `project_id`, `workedHours`, `assigned`, `extra`, `history`, `color`, `modify`, `editor`, `workCount`, `workCountWeekends`, `durationMod`) VALUES
(789, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:35:51', '2018-11-01 23:36:03', 534, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(790, NULL, '[History]-asdasdasd', 11, 0.99, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:36:50', '2018-11-01 23:36:51', 535, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(791, NULL, '[History]-asdasdasd', 11, 0.99, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:37:07', '2018-11-01 23:37:09', 536, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(792, NULL, '[History]-asdasdasd', 11, 0.70, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:37:08', '2018-11-01 23:37:10', 537, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(793, NULL, '[History]-asdasdasd', 11, 0.99, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:48:50', '2018-11-01 23:48:53', 538, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(794, NULL, '[History]-asdasdasd', 11, 0.70, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:48:51', '2018-11-01 23:48:53', 539, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(795, NULL, '[History]-asdasdasd', 11, 0.82, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:48:52', '2018-11-01 23:48:54', 540, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(796, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:49:12', '2018-11-01 23:49:29', 541, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(797, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:49:13', '2018-11-01 23:49:29', 542, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(798, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:49:14', '2018-11-01 23:49:30', 543, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(799, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:49:15', '2018-11-01 23:49:31', 544, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(800, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:49:16', '2018-11-01 23:49:31', 545, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(801, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:49:17', '2018-11-01 23:49:32', 546, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(802, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:49:18', '2018-11-01 23:49:33', 547, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(803, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:49:19', '2018-11-01 23:49:33', 548, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(804, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:49:20', '2018-11-01 23:49:34', 549, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(805, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:49:21', '2018-11-01 23:49:35', 550, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(806, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:49:22', '2018-11-01 23:49:35', 551, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(807, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:49:23', '2018-11-01 23:49:36', 552, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(808, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:49:24', '2018-11-01 23:49:37', 553, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(809, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:49:25', '2018-11-01 23:49:38', 554, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(810, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:49:26', '2018-11-01 23:49:39', 555, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(811, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:49:27', '2018-11-01 23:49:39', 556, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(812, NULL, '[History]-tarea loca', 11, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:49:28', '2018-11-01 23:49:40', 557, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(813, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:50:42', '2018-11-01 23:50:59', 558, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(814, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:50:43', '2018-11-01 23:50:59', 559, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(815, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:50:44', '2018-11-01 23:51:00', 560, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(816, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:50:45', '2018-11-01 23:51:01', 561, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(817, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:50:46', '2018-11-01 23:51:01', 562, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(818, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:50:47', '2018-11-01 23:51:02', 563, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(819, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:50:48', '2018-11-01 23:51:03', 564, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(820, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:50:49', '2018-11-01 23:51:04', 565, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(821, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:50:50', '2018-11-01 23:51:04', 566, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(822, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:50:50', '2018-11-01 23:51:05', 567, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(823, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:50:51', '2018-11-01 23:51:06', 568, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(824, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:50:52', '2018-11-01 23:51:06', 569, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(825, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:50:53', '2018-11-01 23:51:07', 570, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(826, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:50:55', '2018-11-01 23:51:08', 571, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(827, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:50:56', '2018-11-01 23:51:08', 572, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(828, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:50:57', '2018-11-01 23:51:09', 573, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(829, NULL, '[History]-tarea loca', 11, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:50:58', '2018-11-01 23:51:10', 574, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(830, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:53:21', '2018-11-01 23:53:38', 575, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(831, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:53:22', '2018-11-01 23:53:39', 576, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(832, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:53:23', '2018-11-01 23:53:40', 577, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(833, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:53:24', '2018-11-01 23:53:41', 578, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(834, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:53:25', '2018-11-01 23:53:41', 579, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(835, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:53:26', '2018-11-01 23:53:42', 580, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(836, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:53:27', '2018-11-01 23:53:43', 581, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(837, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:53:28', '2018-11-01 23:53:44', 582, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(838, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:53:29', '2018-11-01 23:53:44', 583, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(839, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:53:30', '2018-11-01 23:53:45', 584, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(840, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:53:31', '2018-11-01 23:53:46', 585, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(841, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:53:33', '2018-11-01 23:53:46', 586, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(842, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:53:33', '2018-11-01 23:53:47', 587, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(843, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:53:34', '2018-11-01 23:53:48', 588, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(844, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:53:35', '2018-11-01 23:53:49', 589, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(845, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:53:36', '2018-11-01 23:53:49', 590, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(846, NULL, '[History]-tarea loca', 11, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-01 23:53:37', '2018-11-01 23:53:50', 591, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(847, NULL, '[History]-asdasdasd', 11, 0.99, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:03:20', '2018-11-02 00:03:23', 592, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(848, NULL, '[History]-asdasdasd', 11, 0.70, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:03:21', '2018-11-02 00:03:23', 593, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(849, NULL, '[History]-asdasdasd', 11, 0.82, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:03:22', '2018-11-02 00:03:24', 594, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(850, NULL, '[History]-asdasdasd', 11, 0.99, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:04:17', '2018-11-02 00:04:20', 595, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(851, NULL, '[History]-asdasdasd', 11, 0.70, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:04:18', '2018-11-02 00:04:21', 596, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(852, NULL, '[History]-asdasdasd', 11, 0.82, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:04:19', '2018-11-02 00:04:22', 597, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(853, NULL, '[History]-asdasdasd', 11, 0.99, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:13:55', '2018-11-02 00:13:58', 598, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(854, NULL, '[History]-asdasdasd', 11, 0.70, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:13:56', '2018-11-02 00:13:59', 599, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(855, NULL, '[History]-asdasdasd', 11, 0.82, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:13:57', '2018-11-02 00:14:00', 600, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(856, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:24:09', '2018-11-02 00:24:26', 601, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(857, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:24:11', '2018-11-02 00:24:27', 602, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(858, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:24:12', '2018-11-02 00:24:28', 603, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(859, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:24:13', '2018-11-02 00:24:28', 604, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(860, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:24:14', '2018-11-02 00:24:29', 605, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(861, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:24:15', '2018-11-02 00:24:30', 606, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(862, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:24:16', '2018-11-02 00:24:31', 607, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(863, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:24:17', '2018-11-02 00:24:31', 608, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(864, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:24:18', '2018-11-02 00:24:32', 609, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(865, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:24:19', '2018-11-02 00:24:33', 610, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(866, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:24:20', '2018-11-02 00:24:33', 611, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(867, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:24:21', '2018-11-02 00:24:34', 612, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(868, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:24:22', '2018-11-02 00:24:35', 613, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(869, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:24:22', '2018-11-02 00:24:35', 614, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(870, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:24:23', '2018-11-02 00:24:36', 615, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(871, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:24:24', '2018-11-02 00:24:37', 616, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(872, NULL, '[History]-tarea loca', 11, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:24:25', '2018-11-02 00:24:38', 617, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(873, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:25:17', '2018-11-02 00:25:34', 618, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(874, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:25:18', '2018-11-02 00:25:34', 619, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(875, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:25:19', '2018-11-02 00:25:35', 620, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(876, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:25:21', '2018-11-02 00:25:36', 621, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(877, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:25:22', '2018-11-02 00:25:36', 622, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(878, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:25:23', '2018-11-02 00:25:37', 623, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(879, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:25:24', '2018-11-02 00:25:38', 624, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(880, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:25:25', '2018-11-02 00:25:39', 625, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(881, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:25:25', '2018-11-02 00:25:39', 626, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(882, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:25:26', '2018-11-02 00:25:40', 627, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(883, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:25:27', '2018-11-02 00:25:41', 628, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(884, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:25:28', '2018-11-02 00:25:41', 629, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(885, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:25:29', '2018-11-02 00:25:42', 630, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(886, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:25:30', '2018-11-02 00:25:43', 631, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(887, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:25:31', '2018-11-02 00:25:43', 632, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(888, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:25:32', '2018-11-02 00:25:44', 633, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(889, NULL, '[History]-tarea loca', 11, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:25:33', '2018-11-02 00:25:45', 634, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(890, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:04', '2018-11-02 00:28:19', 635, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(891, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:05', '2018-11-02 00:28:20', 636, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(892, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:06', '2018-11-02 00:28:21', 637, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(893, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:07', '2018-11-02 00:28:22', 638, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(894, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:07', '2018-11-02 00:28:22', 639, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(895, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:08', '2018-11-02 00:28:23', 640, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(896, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:09', '2018-11-02 00:28:24', 641, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(897, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:10', '2018-11-02 00:28:24', 642, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(898, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:11', '2018-11-02 00:28:25', 643, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(899, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:12', '2018-11-02 00:28:26', 644, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(900, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:13', '2018-11-02 00:28:27', 645, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(901, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:14', '2018-11-02 00:28:27', 646, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(902, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:15', '2018-11-02 00:28:28', 647, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(903, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:16', '2018-11-02 00:28:29', 648, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(904, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:17', '2018-11-02 00:28:29', 649, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(905, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:18', '2018-11-02 00:28:30', 650, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(906, NULL, '[History]-tarea loca', 11, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:18', '2018-11-02 00:28:31', 651, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(907, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:38', '2018-11-02 00:28:55', 652, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(908, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:40', '2018-11-02 00:28:56', 653, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(909, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:41', '2018-11-02 00:28:57', 654, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(910, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:42', '2018-11-02 00:28:58', 655, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(911, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:43', '2018-11-02 00:28:59', 656, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(912, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:44', '2018-11-02 00:29:00', 657, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(913, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:45', '2018-11-02 00:29:00', 658, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(914, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:46', '2018-11-02 00:29:01', 659, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(915, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:47', '2018-11-02 00:29:02', 660, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(916, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:48', '2018-11-02 00:29:03', 661, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(917, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:49', '2018-11-02 00:29:03', 662, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(918, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:49', '2018-11-02 00:29:04', 663, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(919, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:50', '2018-11-02 00:29:05', 664, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(920, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:51', '2018-11-02 00:29:06', 665, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(921, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:52', '2018-11-02 00:29:06', 666, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(922, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:53', '2018-11-02 00:29:07', 667, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(923, NULL, '[History]-tarea loca', 11, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:28:54', '2018-11-02 00:29:08', 668, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(924, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:33:27', '2018-11-02 00:33:45', 669, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(925, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:33:29', '2018-11-02 00:33:46', 670, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(926, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:33:30', '2018-11-02 00:33:47', 671, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(927, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:33:31', '2018-11-02 00:33:48', 672, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(928, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:33:33', '2018-11-02 00:33:48', 673, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(929, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:33:34', '2018-11-02 00:33:49', 674, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(930, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:33:35', '2018-11-02 00:33:50', 675, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(931, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:33:36', '2018-11-02 00:33:50', 676, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(932, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:33:37', '2018-11-02 00:33:51', 677, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(933, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:33:37', '2018-11-02 00:33:52', 678, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(934, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:33:38', '2018-11-02 00:33:53', 679, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(935, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:33:39', '2018-11-02 00:33:53', 680, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(936, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:33:40', '2018-11-02 00:33:54', 681, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(937, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:33:41', '2018-11-02 00:33:55', 682, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(938, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:33:42', '2018-11-02 00:33:56', 683, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(939, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:33:43', '2018-11-02 00:33:56', 684, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(940, NULL, '[History]-tarea loca', 11, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 00:33:44', '2018-11-02 00:33:57', 685, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(941, NULL, '[History]-asdasdasd', 11, 0.99, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-02 07:44:07', '2018-11-02 07:44:11', 686, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(942, NULL, '[History]-asdasdasd', 11, 0.70, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-02 07:44:08', '2018-11-02 07:44:12', 687, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(943, NULL, '[History]-asdasdasd', 11, 0.82, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-02 07:44:10', '2018-11-02 07:44:12', 688, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(944, NULL, '[History]-asdasdasd', 11, 0.99, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-02 07:44:51', '2018-11-02 07:44:55', 689, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(945, NULL, '[History]-asdasdasd', 11, 0.70, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-02 07:44:52', '2018-11-02 07:44:56', 690, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(946, NULL, '[History]-asdasdasd', 11, 0.82, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-02 07:44:53', '2018-11-02 07:44:57', 691, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(947, NULL, '[History]-asdasdasd', 10, 0.73, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-02 07:44:54', '2018-11-02 07:44:57', 692, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(948, NULL, 'Tarea # 3', 9, 0.21, '2018-11-08', 0, 'normal', 'Normal', 'UOy2qkSAQa', 'working', '2018-11-02 08:03:19', '2018-11-07 22:28:37', 693, 116, NULL, 'unassigned', 0, 1, NULL, NULL, '', 'yes', 'no', 9),
(949, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 08:34:16', '2018-11-02 08:34:44', 694, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(950, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 08:34:18', '2018-11-02 08:34:44', 695, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(951, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 08:34:19', '2018-11-02 08:34:45', 696, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(952, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 08:34:20', '2018-11-02 08:34:46', 697, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(953, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 08:34:21', '2018-11-02 08:34:47', 698, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(954, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 08:34:22', '2018-11-02 08:34:48', 699, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(955, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 08:34:23', '2018-11-02 08:34:48', 700, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(956, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 08:34:25', '2018-11-02 08:34:49', 701, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(957, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 08:34:26', '2018-11-02 08:34:50', 702, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(958, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 08:34:27', '2018-11-02 08:34:51', 703, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(959, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 08:34:28', '2018-11-02 08:34:51', 704, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(960, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 08:34:29', '2018-11-02 08:34:52', 705, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(961, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 08:34:30', '2018-11-02 08:34:53', 706, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(962, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 08:34:32', '2018-11-02 08:34:54', 707, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(963, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 08:34:33', '2018-11-02 08:34:54', 708, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(964, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 08:34:39', '2018-11-02 08:34:55', 709, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(965, NULL, '[History]-tarea loca', 11, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 08:34:40', '2018-11-02 08:34:56', 710, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(966, NULL, '[History]-Tarea # 1', 12, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 08:34:41', '2018-11-02 08:34:57', 711, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(967, NULL, '[History]-Tarea # 1', 12, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 08:34:42', '2018-11-02 08:34:58', 712, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(968, NULL, '[History]-asdasdasd', 11, 0.99, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-02 21:58:27', '2018-11-02 21:58:31', 713, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(969, NULL, '[History]-asdasdasd', 11, 0.70, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-02 21:58:28', '2018-11-02 21:58:31', 714, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(970, NULL, '[History]-asdasdasd', 11, 0.82, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-02 21:58:29', '2018-11-02 21:58:32', 715, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(971, NULL, '[History]-asdasdasd', 10, 0.73, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-02 21:58:30', '2018-11-02 21:58:33', 716, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(972, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 22:59:30', '2018-11-02 22:59:49', 717, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(973, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 22:59:32', '2018-11-02 22:59:51', 718, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(974, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 22:59:33', '2018-11-02 22:59:52', 719, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(975, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 22:59:34', '2018-11-02 22:59:52', 720, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(976, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 22:59:35', '2018-11-02 22:59:53', 721, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(977, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 22:59:36', '2018-11-02 22:59:54', 722, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(978, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 22:59:37', '2018-11-02 22:59:55', 723, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(979, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 22:59:38', '2018-11-02 22:59:56', 724, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(980, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 22:59:39', '2018-11-02 22:59:56', 725, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(981, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 22:59:40', '2018-11-02 22:59:58', 726, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(982, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 22:59:41', '2018-11-02 22:59:59', 727, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(983, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 22:59:42', '2018-11-02 22:59:59', 728, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(984, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 22:59:43', '2018-11-02 23:00:00', 729, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(985, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 22:59:44', '2018-11-02 23:00:01', 730, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(986, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 22:59:45', '2018-11-02 23:00:02', 731, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(987, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 22:59:46', '2018-11-02 23:00:03', 732, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(988, NULL, '[History]-tarea loca', 11, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 22:59:46', '2018-11-02 23:00:04', 733, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(989, NULL, '[History]-Tarea # 1', 12, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 22:59:47', '2018-11-02 23:00:05', 734, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(990, NULL, '[History]-Tarea # 1', 12, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 22:59:48', '2018-11-02 23:00:06', 735, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(991, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:01:37', '2018-11-02 23:01:55', 736, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(992, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:01:38', '2018-11-02 23:01:56', 737, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(993, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:01:39', '2018-11-02 23:01:57', 738, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(994, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:01:40', '2018-11-02 23:01:57', 739, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(995, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:01:41', '2018-11-02 23:01:58', 740, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(996, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:01:42', '2018-11-02 23:01:59', 741, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(997, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:01:43', '2018-11-02 23:02:00', 742, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(998, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:01:44', '2018-11-02 23:02:01', 743, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(999, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:01:45', '2018-11-02 23:02:01', 744, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1000, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:01:46', '2018-11-02 23:02:02', 745, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1001, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:01:47', '2018-11-02 23:02:03', 746, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1002, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:01:47', '2018-11-02 23:02:04', 747, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1003, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:01:48', '2018-11-02 23:02:05', 748, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1004, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:01:49', '2018-11-02 23:02:06', 749, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1005, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:01:50', '2018-11-02 23:02:07', 750, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1006, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:01:51', '2018-11-02 23:02:08', 751, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1007, NULL, '[History]-tarea loca', 11, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:01:52', '2018-11-02 23:02:09', 752, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1008, NULL, '[History]-Tarea # 1', 12, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:01:53', '2018-11-02 23:02:09', 753, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1009, NULL, '[History]-Tarea # 1', 12, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:01:54', '2018-11-02 23:02:10', 754, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1010, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:04:54', '2018-11-02 23:05:16', 755, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1011, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:04:56', '2018-11-02 23:05:17', 756, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1012, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:04:57', '2018-11-02 23:05:18', 757, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1013, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:04:58', '2018-11-02 23:05:19', 758, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1014, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:04:59', '2018-11-02 23:05:20', 759, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1015, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:05:00', '2018-11-02 23:05:21', 760, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1016, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:05:01', '2018-11-02 23:05:22', 761, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1017, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:05:02', '2018-11-02 23:05:23', 762, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1018, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:05:03', '2018-11-02 23:05:28', 763, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1019, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:05:04', '2018-11-02 23:05:30', 764, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1020, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:05:05', '2018-11-02 23:05:32', 765, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1021, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:05:06', '2018-11-02 23:05:34', 766, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1022, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:05:08', '2018-11-02 23:05:35', 767, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1023, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:05:09', '2018-11-02 23:05:37', 768, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1024, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:05:10', '2018-11-02 23:05:39', 769, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1025, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:05:11', '2018-11-02 23:05:40', 770, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1026, NULL, '[History]-tarea loca', 11, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:05:13', '2018-11-02 23:05:42', 771, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1027, NULL, '[History]-Tarea # 1', 12, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:05:14', '2018-11-02 23:05:44', 772, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1028, NULL, '[History]-Tarea # 1', 12, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:05:15', '2018-11-02 23:05:46', 773, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1029, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:07:11', '2018-11-02 23:07:35', 774, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1030, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:07:13', '2018-11-02 23:07:36', 775, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1031, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:07:15', '2018-11-02 23:07:37', 776, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1032, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:07:16', '2018-11-02 23:07:38', 777, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1033, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:07:18', '2018-11-02 23:07:38', 778, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1034, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:07:19', '2018-11-02 23:07:39', 779, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1035, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:07:20', '2018-11-02 23:07:41', 780, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1036, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:07:21', '2018-11-02 23:07:41', 781, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1037, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:07:23', '2018-11-02 23:07:42', 782, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1038, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:07:24', '2018-11-02 23:07:43', 783, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1039, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:07:24', '2018-11-02 23:07:44', 784, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1040, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:07:26', '2018-11-02 23:07:26', 785, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1041, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:07:26', '2018-11-02 23:07:26', 786, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10);
INSERT INTO `tasks` (`id`, `des`, `text`, `duration`, `progress`, `start_date`, `parent`, `type`, `priority`, `socket`, `status`, `created_at`, `updated_at`, `sortorder`, `project_id`, `workedHours`, `assigned`, `extra`, `history`, `color`, `modify`, `editor`, `workCount`, `workCountWeekends`, `durationMod`) VALUES
(1042, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:07:27', '2018-11-02 23:07:27', 787, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1043, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:07:28', '2018-11-02 23:07:28', 788, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1044, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:07:29', '2018-11-02 23:07:29', 789, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1045, NULL, '[History]-tarea loca', 11, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:07:32', '2018-11-02 23:07:32', 790, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1046, NULL, '[History]-Tarea # 1', 12, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:07:33', '2018-11-02 23:07:33', 791, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1047, NULL, '[History]-Tarea # 1', 12, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:07:34', '2018-11-02 23:07:34', 792, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1048, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:07:52', '2018-11-02 23:07:52', 793, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1049, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:07:54', '2018-11-02 23:07:54', 794, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1050, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:07:55', '2018-11-02 23:07:55', 795, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1051, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:07:56', '2018-11-02 23:07:56', 796, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1052, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:07:58', '2018-11-02 23:07:58', 797, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1053, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:07:59', '2018-11-02 23:07:59', 798, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1054, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:00', '2018-11-02 23:08:00', 799, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1055, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:02', '2018-11-02 23:08:02', 800, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1056, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:03', '2018-11-02 23:08:03', 801, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1057, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:05', '2018-11-02 23:08:05', 802, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1058, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:06', '2018-11-02 23:08:06', 803, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1059, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:07', '2018-11-02 23:08:07', 804, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1060, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:08', '2018-11-02 23:08:08', 805, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1061, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:09', '2018-11-02 23:08:09', 806, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1062, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:12', '2018-11-02 23:08:12', 807, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1063, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:13', '2018-11-02 23:08:13', 808, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1064, NULL, '[History]-tarea loca', 11, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:14', '2018-11-02 23:08:14', 809, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1065, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:25', '2018-11-02 23:08:54', 810, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1066, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:28', '2018-11-02 23:08:55', 811, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1067, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:30', '2018-11-02 23:08:56', 812, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1068, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:33', '2018-11-02 23:08:56', 813, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1069, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:35', '2018-11-02 23:08:57', 814, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1070, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:37', '2018-11-02 23:08:58', 815, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1071, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:39', '2018-11-02 23:08:59', 816, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1072, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:41', '2018-11-02 23:08:59', 817, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1073, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:42', '2018-11-02 23:09:00', 818, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1074, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:43', '2018-11-02 23:09:01', 819, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1075, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:44', '2018-11-02 23:09:02', 820, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1076, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:45', '2018-11-02 23:09:04', 821, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1077, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:46', '2018-11-02 23:09:05', 822, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1078, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:47', '2018-11-02 23:09:07', 823, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1079, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:48', '2018-11-02 23:09:09', 824, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1080, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:50', '2018-11-02 23:09:10', 825, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1081, NULL, '[History]-tarea loca', 11, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:51', '2018-11-02 23:09:12', 826, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1082, NULL, '[History]-Tarea # 1', 12, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:52', '2018-11-02 23:09:14', 827, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1083, NULL, '[History]-Tarea # 1', 12, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:08:53', '2018-11-02 23:09:15', 828, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1084, NULL, '[History]-asdasdasd', 11, 0.99, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:10:31', '2018-11-02 23:10:36', 829, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1085, NULL, '[History]-asdasdasd', 11, 0.70, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:10:33', '2018-11-02 23:10:37', 830, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1086, NULL, '[History]-asdasdasd', 11, 0.82, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:10:34', '2018-11-02 23:10:37', 831, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1087, NULL, '[History]-asdasdasd', 10, 0.73, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:10:35', '2018-11-02 23:10:38', 832, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1088, NULL, '[History]-Tarea # 3', 2, 0.00, '2018-11-08', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:10:43', '2018-11-02 23:10:44', 833, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 2),
(1089, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:12:32', '2018-11-02 23:12:32', 834, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1090, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:12:35', '2018-11-02 23:12:35', 835, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1091, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:12:38', '2018-11-02 23:12:38', 836, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1092, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:12:41', '2018-11-02 23:12:41', 837, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1093, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:12:44', '2018-11-02 23:12:44', 838, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1094, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:12:47', '2018-11-02 23:12:47', 839, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1095, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:12:49', '2018-11-02 23:12:49', 840, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1096, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:12:52', '2018-11-02 23:12:52', 841, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1097, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:12:55', '2018-11-02 23:12:55', 842, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1098, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:12:57', '2018-11-02 23:12:57', 843, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1099, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:12:58', '2018-11-02 23:12:58', 844, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1100, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:12:59', '2018-11-02 23:12:59', 845, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1101, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:13:00', '2018-11-02 23:13:00', 846, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1102, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:13:02', '2018-11-02 23:13:02', 847, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1103, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:13:03', '2018-11-02 23:13:03', 848, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1104, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:13:04', '2018-11-02 23:13:04', 849, NULL, NULL, 'unassigned', 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1105, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:13:14', '2018-11-02 23:13:34', 850, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1106, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:13:15', '2018-11-02 23:13:34', 851, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1107, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:13:16', '2018-11-02 23:13:35', 852, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1108, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:13:17', '2018-11-02 23:13:36', 853, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1109, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:13:18', '2018-11-02 23:13:37', 854, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1110, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:13:19', '2018-11-02 23:13:37', 855, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1111, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:13:20', '2018-11-02 23:13:38', 856, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1112, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:13:21', '2018-11-02 23:13:39', 857, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1113, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:13:22', '2018-11-02 23:13:40', 858, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1114, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:13:23', '2018-11-02 23:13:40', 859, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1115, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:13:24', '2018-11-02 23:13:41', 860, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1116, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:13:25', '2018-11-02 23:13:42', 861, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1117, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:13:27', '2018-11-02 23:13:42', 862, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1118, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:13:28', '2018-11-02 23:13:43', 863, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1119, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:13:29', '2018-11-02 23:13:44', 864, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1120, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:13:30', '2018-11-02 23:13:45', 865, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1121, NULL, '[History]-tarea loca', 11, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:13:31', '2018-11-02 23:13:45', 866, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1122, NULL, '[History]-Tarea # 1', 12, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:13:32', '2018-11-02 23:13:46', 867, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1123, NULL, '[History]-Tarea # 1', 12, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:13:33', '2018-11-02 23:13:46', 868, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1124, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:14:08', '2018-11-02 23:14:26', 869, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1125, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:14:09', '2018-11-02 23:14:27', 870, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1126, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:14:10', '2018-11-02 23:14:28', 871, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1127, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:14:11', '2018-11-02 23:14:28', 872, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1128, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:14:12', '2018-11-02 23:14:29', 873, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1129, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:14:13', '2018-11-02 23:14:30', 874, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1130, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:14:14', '2018-11-02 23:14:30', 875, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1131, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:14:15', '2018-11-02 23:14:31', 876, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1132, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:14:16', '2018-11-02 23:14:32', 877, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1133, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:14:17', '2018-11-02 23:14:33', 878, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1134, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:14:18', '2018-11-02 23:14:33', 879, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1135, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:14:19', '2018-11-02 23:14:34', 880, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1136, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:14:20', '2018-11-02 23:14:35', 881, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1137, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:14:21', '2018-11-02 23:14:36', 882, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1138, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:14:21', '2018-11-02 23:14:36', 883, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1139, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:14:22', '2018-11-02 23:14:37', 884, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1140, NULL, '[History]-tarea loca', 11, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:14:23', '2018-11-02 23:14:38', 885, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1141, NULL, '[History]-Tarea # 1', 12, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:14:24', '2018-11-02 23:14:39', 886, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1142, NULL, '[History]-Tarea # 1', 12, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:14:25', '2018-11-02 23:14:39', 887, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1143, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:20:53', '2018-11-02 23:21:11', 888, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1144, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:20:54', '2018-11-02 23:21:11', 889, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1145, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:20:55', '2018-11-02 23:21:12', 890, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1146, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:20:56', '2018-11-02 23:21:13', 891, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1147, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:20:57', '2018-11-02 23:21:14', 892, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1148, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:20:58', '2018-11-02 23:21:14', 893, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1149, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:20:58', '2018-11-02 23:21:15', 894, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1150, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:20:59', '2018-11-02 23:21:16', 895, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1151, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:21:00', '2018-11-02 23:21:16', 896, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1152, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:21:01', '2018-11-02 23:21:17', 897, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1153, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:21:02', '2018-11-02 23:21:18', 898, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1154, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:21:03', '2018-11-02 23:21:19', 899, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1155, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:21:04', '2018-11-02 23:21:19', 900, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1156, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:21:05', '2018-11-02 23:21:20', 901, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1157, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:21:06', '2018-11-02 23:21:21', 902, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1158, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:21:07', '2018-11-02 23:21:21', 903, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1159, NULL, '[History]-tarea loca', 11, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:21:08', '2018-11-02 23:21:22', 904, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1160, NULL, '[History]-Tarea # 1', 12, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:21:09', '2018-11-02 23:21:23', 905, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1161, NULL, '[History]-Tarea # 1', 12, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:21:10', '2018-11-02 23:21:24', 906, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1162, NULL, '[History]-asdasdasd', 11, 0.99, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:21:25', '2018-11-02 23:21:29', 907, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1163, NULL, '[History]-asdasdasd', 11, 0.70, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:21:26', '2018-11-02 23:21:30', 908, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1164, NULL, '[History]-asdasdasd', 11, 0.82, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:21:27', '2018-11-02 23:21:30', 909, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1165, NULL, '[History]-asdasdasd', 10, 0.73, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-02 23:21:28', '2018-11-02 23:21:31', 910, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1166, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 00:41:27', '2018-11-03 00:41:46', 911, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1167, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 00:41:28', '2018-11-03 00:41:47', 912, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1168, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 00:41:29', '2018-11-03 00:41:48', 913, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1169, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 00:41:30', '2018-11-03 00:41:49', 914, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1170, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 00:41:31', '2018-11-03 00:41:49', 915, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1171, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 00:41:32', '2018-11-03 00:41:50', 916, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1172, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 00:41:33', '2018-11-03 00:41:51', 917, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1173, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 00:41:34', '2018-11-03 00:41:52', 918, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1174, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 00:41:35', '2018-11-03 00:41:52', 919, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1175, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 00:41:36', '2018-11-03 00:41:53', 920, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1176, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 00:41:37', '2018-11-03 00:41:54', 921, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1177, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 00:41:38', '2018-11-03 00:41:55', 922, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1178, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 00:41:39', '2018-11-03 00:41:55', 923, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1179, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 00:41:40', '2018-11-03 00:41:56', 924, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1180, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 00:41:40', '2018-11-03 00:41:57', 925, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1181, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 00:41:42', '2018-11-03 00:41:58', 926, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1182, NULL, '[History]-tarea loca', 11, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 00:41:43', '2018-11-03 00:41:58', 927, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1183, NULL, '[History]-Tarea # 1', 12, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 00:41:44', '2018-11-03 00:41:59', 928, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1184, NULL, '[History]-Tarea # 1', 12, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 00:41:45', '2018-11-03 00:42:00', 929, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1185, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:05', '2018-11-03 01:56:24', 930, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1186, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:07', '2018-11-03 01:56:25', 931, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1187, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:07', '2018-11-03 01:56:26', 932, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1188, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:08', '2018-11-03 01:56:26', 933, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1189, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:09', '2018-11-03 01:56:27', 934, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1190, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:10', '2018-11-03 01:56:28', 935, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1191, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:11', '2018-11-03 01:56:29', 936, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1192, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:12', '2018-11-03 01:56:30', 937, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1193, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:13', '2018-11-03 01:56:30', 938, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1194, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:14', '2018-11-03 01:56:31', 939, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1195, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:15', '2018-11-03 01:56:32', 940, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1196, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:16', '2018-11-03 01:56:33', 941, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1197, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:17', '2018-11-03 01:56:33', 942, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1198, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:18', '2018-11-03 01:56:34', 943, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1199, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:19', '2018-11-03 01:56:35', 944, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1200, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:20', '2018-11-03 01:56:36', 945, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1201, NULL, '[History]-tarea loca', 11, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:21', '2018-11-03 01:56:36', 946, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1202, NULL, '[History]-Tarea # 1', 12, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:22', '2018-11-03 01:56:37', 947, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1203, NULL, '[History]-Tarea # 1', 12, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:23', '2018-11-03 01:56:38', 948, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1204, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:39', '2018-11-03 01:56:57', 949, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1205, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:40', '2018-11-03 01:56:58', 950, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1206, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:41', '2018-11-03 01:56:59', 951, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1207, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:42', '2018-11-03 01:56:59', 952, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1208, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:43', '2018-11-03 01:57:00', 953, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1209, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:44', '2018-11-03 01:57:01', 954, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1210, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:45', '2018-11-03 01:57:02', 955, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1211, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:46', '2018-11-03 01:57:02', 956, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1212, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:47', '2018-11-03 01:57:03', 957, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1213, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:48', '2018-11-03 01:57:04', 958, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1214, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:49', '2018-11-03 01:57:05', 959, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1215, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:50', '2018-11-03 01:57:06', 960, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1216, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:51', '2018-11-03 01:57:07', 961, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1217, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:52', '2018-11-03 01:57:07', 962, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1218, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:53', '2018-11-03 01:57:08', 963, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1219, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:54', '2018-11-03 01:57:09', 964, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1220, NULL, '[History]-tarea loca', 11, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:55', '2018-11-03 01:57:09', 965, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1221, NULL, '[History]-Tarea # 1', 12, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:56', '2018-11-03 01:57:10', 966, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1222, NULL, '[History]-Tarea # 1', 12, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:56:56', '2018-11-03 01:57:11', 967, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1223, NULL, '[History]-asdasdasd', 11, 0.99, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:57:19', '2018-11-03 01:57:23', 968, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1224, NULL, '[History]-asdasdasd', 11, 0.70, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:57:20', '2018-11-03 01:57:23', 969, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1225, NULL, '[History]-asdasdasd', 11, 0.82, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:57:21', '2018-11-03 01:57:24', 970, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1226, NULL, '[History]-asdasdasd', 10, 0.73, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:57:22', '2018-11-03 01:57:25', 971, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1227, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:59:25', '2018-11-03 01:59:47', 972, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1228, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:59:26', '2018-11-03 01:59:48', 973, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1229, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:59:27', '2018-11-03 01:59:48', 974, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1230, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:59:29', '2018-11-03 01:59:49', 975, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1231, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:59:30', '2018-11-03 01:59:50', 976, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1232, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:59:31', '2018-11-03 01:59:51', 977, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1233, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:59:32', '2018-11-03 01:59:51', 978, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1234, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:59:33', '2018-11-03 01:59:52', 979, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1235, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:59:34', '2018-11-03 01:59:53', 980, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1236, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:59:36', '2018-11-03 01:59:53', 981, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1237, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:59:38', '2018-11-03 01:59:54', 982, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1238, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:59:39', '2018-11-03 01:59:55', 983, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1239, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:59:40', '2018-11-03 01:59:56', 984, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1240, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:59:41', '2018-11-03 01:59:56', 985, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1241, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:59:42', '2018-11-03 01:59:57', 986, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1242, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:59:43', '2018-11-03 01:59:58', 987, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1243, NULL, '[History]-tarea loca', 11, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:59:44', '2018-11-03 01:59:59', 988, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1244, NULL, '[History]-Tarea # 1', 12, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:59:45', '2018-11-03 01:59:59', 989, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1245, NULL, '[History]-Tarea # 1', 12, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 01:59:46', '2018-11-03 02:00:00', 990, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1246, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:01:14', '2018-11-03 02:01:33', 991, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1247, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:01:16', '2018-11-03 02:01:34', 992, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1248, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:01:16', '2018-11-03 02:01:34', 993, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1249, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:01:17', '2018-11-03 02:01:35', 994, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1250, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:01:18', '2018-11-03 02:01:36', 995, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1251, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:01:19', '2018-11-03 02:01:36', 996, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1252, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:01:20', '2018-11-03 02:01:37', 997, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1253, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:01:21', '2018-11-03 02:01:38', 998, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1254, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:01:22', '2018-11-03 02:01:38', 999, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1255, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:01:23', '2018-11-03 02:01:39', 1000, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1256, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:01:24', '2018-11-03 02:01:40', 1001, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1257, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:01:25', '2018-11-03 02:01:41', 1002, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1258, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:01:26', '2018-11-03 02:01:41', 1003, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1259, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:01:27', '2018-11-03 02:01:42', 1004, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1260, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:01:28', '2018-11-03 02:01:43', 1005, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1261, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:01:29', '2018-11-03 02:01:43', 1006, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1262, NULL, '[History]-tarea loca', 11, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:01:30', '2018-11-03 02:01:44', 1007, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1263, NULL, '[History]-Tarea # 1', 12, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:01:31', '2018-11-03 02:01:45', 1008, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1264, NULL, '[History]-Tarea # 1', 12, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:01:32', '2018-11-03 02:01:46', 1009, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1265, NULL, '[History]-asdasdasd', 11, 0.99, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:02:09', '2018-11-03 02:02:13', 1010, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1266, NULL, '[History]-asdasdasd', 11, 0.70, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:02:10', '2018-11-03 02:02:13', 1011, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1267, NULL, '[History]-asdasdasd', 11, 0.82, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:02:11', '2018-11-03 02:02:15', 1012, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1268, NULL, '[History]-asdasdasd', 10, 0.73, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:02:12', '2018-11-03 02:02:15', 1013, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1269, NULL, '[History]-Tarea # 3', 2, 0.00, '2018-11-08', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:02:17', '2018-11-03 02:02:18', 1014, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 2),
(1270, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:09:27', '2018-11-03 02:09:46', 1015, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1271, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:09:28', '2018-11-03 02:09:47', 1016, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1272, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:09:30', '2018-11-03 02:09:48', 1017, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1273, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:09:31', '2018-11-03 02:09:48', 1018, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1274, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:09:31', '2018-11-03 02:09:49', 1019, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1275, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:09:33', '2018-11-03 02:09:50', 1020, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1276, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:09:34', '2018-11-03 02:09:51', 1021, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1277, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:09:35', '2018-11-03 02:09:51', 1022, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1278, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:09:35', '2018-11-03 02:09:52', 1023, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1279, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:09:36', '2018-11-03 02:09:53', 1024, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1280, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:09:37', '2018-11-03 02:09:53', 1025, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1281, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:09:38', '2018-11-03 02:09:54', 1026, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1282, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:09:39', '2018-11-03 02:09:55', 1027, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1283, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:09:40', '2018-11-03 02:09:56', 1028, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1284, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:09:41', '2018-11-03 02:09:56', 1029, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1285, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:09:42', '2018-11-03 02:09:57', 1030, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1286, NULL, '[History]-tarea loca', 11, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:09:43', '2018-11-03 02:09:58', 1031, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1287, NULL, '[History]-Tarea # 1', 12, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:09:44', '2018-11-03 02:09:59', 1032, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1288, NULL, '[History]-Tarea # 1', 12, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 02:09:45', '2018-11-03 02:09:59', 1033, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1289, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:09:27', '2018-11-03 04:09:46', 1034, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1290, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:09:28', '2018-11-03 04:09:46', 1035, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1291, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:09:29', '2018-11-03 04:09:47', 1036, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10);
INSERT INTO `tasks` (`id`, `des`, `text`, `duration`, `progress`, `start_date`, `parent`, `type`, `priority`, `socket`, `status`, `created_at`, `updated_at`, `sortorder`, `project_id`, `workedHours`, `assigned`, `extra`, `history`, `color`, `modify`, `editor`, `workCount`, `workCountWeekends`, `durationMod`) VALUES
(1292, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:09:30', '2018-11-03 04:09:48', 1037, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1293, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:09:31', '2018-11-03 04:09:49', 1038, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1294, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:09:32', '2018-11-03 04:09:50', 1039, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1295, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:09:33', '2018-11-03 04:09:50', 1040, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1296, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:09:34', '2018-11-03 04:09:51', 1041, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1297, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:09:35', '2018-11-03 04:09:52', 1042, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1298, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:09:36', '2018-11-03 04:09:52', 1043, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1299, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:09:37', '2018-11-03 04:09:53', 1044, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1300, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:09:38', '2018-11-03 04:09:54', 1045, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1301, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:09:39', '2018-11-03 04:09:55', 1046, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1302, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:09:40', '2018-11-03 04:09:55', 1047, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1303, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:09:41', '2018-11-03 04:09:56', 1048, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1304, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:09:42', '2018-11-03 04:09:57', 1049, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1305, NULL, '[History]-tarea loca', 11, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:09:43', '2018-11-03 04:09:58', 1050, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1306, NULL, '[History]-Tarea # 1', 12, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:09:44', '2018-11-03 04:09:58', 1051, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1307, NULL, '[History]-Tarea # 1', 12, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:09:45', '2018-11-03 04:09:59', 1052, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1308, NULL, '[History]-asdasdasd', 11, 0.99, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:18:23', '2018-11-03 04:18:27', 1053, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1309, NULL, '[History]-asdasdasd', 11, 0.70, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:18:24', '2018-11-03 04:18:28', 1054, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1310, NULL, '[History]-asdasdasd', 11, 0.82, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:18:25', '2018-11-03 04:18:29', 1055, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1311, NULL, '[History]-asdasdasd', 10, 0.73, '2018-10-27', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:18:26', '2018-11-03 04:18:30', 1056, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1312, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:19:01', '2018-11-03 04:19:19', 1057, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1313, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:19:02', '2018-11-03 04:19:19', 1058, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1314, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:19:03', '2018-11-03 04:19:20', 1059, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1315, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:19:04', '2018-11-03 04:19:21', 1060, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1316, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:19:05', '2018-11-03 04:19:22', 1061, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1317, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:19:06', '2018-11-03 04:19:22', 1062, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1318, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:19:07', '2018-11-03 04:19:23', 1063, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1319, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:19:07', '2018-11-03 04:19:24', 1064, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1320, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:19:08', '2018-11-03 04:19:24', 1065, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1321, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:19:09', '2018-11-03 04:19:25', 1066, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1322, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:19:10', '2018-11-03 04:19:26', 1067, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1323, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:19:11', '2018-11-03 04:19:27', 1068, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1324, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:19:12', '2018-11-03 04:19:28', 1069, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1325, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:19:13', '2018-11-03 04:19:28', 1070, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1326, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:19:14', '2018-11-03 04:19:29', 1071, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1327, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:19:15', '2018-11-03 04:19:30', 1072, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1328, NULL, '[History]-tarea loca', 11, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:19:16', '2018-11-03 04:19:31', 1073, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1329, NULL, '[History]-Tarea # 1', 12, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:19:17', '2018-11-03 04:19:31', 1074, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1330, NULL, '[History]-Tarea # 1', 12, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 04:19:18', '2018-11-03 04:19:32', 1075, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1331, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 05:47:21', '2018-11-03 05:47:40', 1076, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1332, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 05:47:23', '2018-11-03 05:47:40', 1077, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1333, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 05:47:23', '2018-11-03 05:47:41', 1078, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1334, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 05:47:24', '2018-11-03 05:47:42', 1079, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1335, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 05:47:25', '2018-11-03 05:47:42', 1080, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1336, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 05:47:26', '2018-11-03 05:47:43', 1081, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1337, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 05:47:27', '2018-11-03 05:47:44', 1082, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1338, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 05:47:28', '2018-11-03 05:47:45', 1083, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1339, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 05:47:29', '2018-11-03 05:47:45', 1084, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1340, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 05:47:30', '2018-11-03 05:47:46', 1085, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1341, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 05:47:31', '2018-11-03 05:47:47', 1086, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1342, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 05:47:32', '2018-11-03 05:47:48', 1087, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1343, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 05:47:33', '2018-11-03 05:47:48', 1088, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1344, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 05:47:34', '2018-11-03 05:47:49', 1089, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1345, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 05:47:35', '2018-11-03 05:47:50', 1090, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1346, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 05:47:36', '2018-11-03 05:47:51', 1091, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1347, NULL, '[History]-tarea loca', 11, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 05:47:37', '2018-11-03 05:47:51', 1092, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1348, NULL, '[History]-Tarea # 1', 12, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 05:47:38', '2018-11-03 05:47:52', 1093, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1349, NULL, '[History]-Tarea # 1', 12, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 05:47:39', '2018-11-03 05:47:53', 1094, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1350, NULL, '[History]-asdasd', 10, 0.63, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 07:50:57', '2018-11-03 07:51:21', 1095, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1351, NULL, '[History]-asdasd', 10, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 07:50:59', '2018-11-03 07:51:22', 1096, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1352, NULL, '[History]-asdasd', 10, 0.83, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 07:51:00', '2018-11-03 07:51:22', 1097, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1353, NULL, '[History]-asdasd', 10, 0.82, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 07:51:01', '2018-11-03 07:51:23', 1098, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1354, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 07:51:03', '2018-11-03 07:51:24', 1099, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1355, NULL, '[History]-asdasd', 10, 0.68, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 07:51:04', '2018-11-03 07:51:25', 1100, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1356, NULL, '[History]-asdasd', 10, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 07:51:05', '2018-11-03 07:51:26', 1101, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1357, NULL, '[History]-asdasd', 10, 0.77, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 07:51:06', '2018-11-03 07:51:26', 1102, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1358, NULL, '[History]-asdasd', 10, 0.78, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 07:51:07', '2018-11-03 07:51:27', 1103, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1359, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 07:51:08', '2018-11-03 07:51:28', 1104, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1360, NULL, '[History]-asdasd', 10, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 07:51:10', '2018-11-03 07:51:29', 1105, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1361, NULL, '[History]-asdasd', 10, 0.75, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 07:51:11', '2018-11-03 07:51:30', 1106, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1362, NULL, '[History]-tarea loca', 10, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 07:51:12', '2018-11-03 07:51:31', 1107, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 10),
(1363, NULL, '[History]-tarea loca', 8, 1.00, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 07:51:13', '2018-11-03 07:51:31', 1108, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1364, NULL, '[History]-tarea loca', 8, 0.76, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 07:51:14', '2018-11-03 07:51:32', 1109, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1365, NULL, '[History]-tarea loca', 8, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 07:51:16', '2018-11-03 07:51:33', 1110, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 8),
(1366, NULL, '[History]-tarea loca', 11, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 07:51:17', '2018-11-03 07:51:34', 1111, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 11),
(1367, NULL, '[History]-Tarea # 1', 12, 0.79, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 07:51:19', '2018-11-03 07:51:35', 1112, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1368, NULL, '[History]-Tarea # 1', 12, 0.84, '2018-10-13', 0, NULL, NULL, NULL, 'working', '2018-11-03 07:51:20', '2018-11-03 07:51:36', 1113, NULL, NULL, NULL, 0, 0, NULL, NULL, '', 'yes', 'no', 12),
(1369, NULL, 'Tarea 4', 5, 0.61, '2018-10-28', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', '2018-11-05 03:40:50', '2018-11-13 05:21:49', 1114, 116, NULL, NULL, 0, 1, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 5),
(1370, NULL, 'yyy', 1, 0.52, '2018-11-04', 0, 'normal', 'Normal', '6sfWrOTko9', 'working', '2018-11-05 03:45:27', '2018-11-07 01:40:05', 1115, 116, NULL, NULL, 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 1),
(1371, NULL, 'Nueva', 2, 0.24, '2018-11-05', 0, 'normal', 'Normal', 'KRz8W59MeE', 'working', '2018-11-05 22:54:12', '2018-11-07 22:28:40', 1116, 116, NULL, NULL, 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 2),
(1372, NULL, 'Hija', 9, 0.32, '2018-11-07', 627, 'normal', 'Normal', 'rNymiH7uW2', 'working', '2018-11-07 21:06:07', '2018-11-07 21:10:42', 1117, 116, NULL, 'unassigned', 0, 1, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 9),
(1373, NULL, 'Tarea hija de 2', 9, 0.00, '2018-11-07', 627, 'normal', 'Normal', 'grnmngF5Dh', 'working', '2018-11-07 21:52:19', '2018-11-07 21:52:21', 1118, 116, NULL, NULL, 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 9),
(1374, NULL, 'Tarea padre full', 4, 0.76, '2018-11-08', 0, 'project', 'Normal', 'grnmngF5Dh', 'working', '2018-11-07 21:52:51', '2018-11-07 22:24:38', 1119, 116, NULL, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 4),
(1375, NULL, 'Tarea HIJA full', 4, 0.58, '2018-11-08', 1374, 'normal', 'Normal', 'grnmngF5Dh', 'working', '2018-11-07 21:53:09', '2018-11-12 05:39:59', 1120, 116, NULL, 'unassigned', 0, 1, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 4),
(1376, NULL, 'Nueva tarea 1', 4, 0.29, '2018-11-12', 0, 'normal', 'Normal', 'Yo6e8dXvsN', 'working', '2018-11-13 07:50:18', '2018-11-16 06:31:53', 1121, 123, NULL, NULL, 0, 1, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 4),
(1377, NULL, 'Nueva tarea 2', 6, 0.22, '2018-11-27', 0, 'normal', 'Normal', 'Yo6e8dXvsN', 'working', '2018-11-13 07:50:31', '2018-11-16 06:30:05', 1122, 123, NULL, 'unassigned', 0, 1, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 6),
(1378, NULL, 'Tarea as 1', 3, 0.00, '2018-11-12', 0, 'normal', 'Normal', 'Bb7LIbDpEA', 'working', '2018-11-13 08:00:00', '2018-11-13 08:00:01', 1123, 121, NULL, NULL, 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 3),
(1379, NULL, 'Tarea as 2', 6, 0.16, '2018-11-12', 0, 'normal', 'Normal', 'Bb7LIbDpEA', 'working', '2018-11-13 08:00:12', '2018-11-13 09:32:28', 1124, 121, NULL, NULL, 0, 1, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 6),
(1380, NULL, 'ttt', 1, 0.00, '2018-11-12', 0, 'normal', 'Normal', 'pzgJwhXsZf', 'working', '2018-11-13 09:59:24', '2018-11-13 09:59:25', 1125, 123, NULL, NULL, 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 1),
(1381, NULL, 'Otra tarea', 1, 0.00, '2018-11-17', 0, 'normal', 'Normal', '2qCiJkA1rG', 'working', '2018-11-18 01:48:01', '2018-11-18 01:48:03', 1126, 123, NULL, NULL, 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 1),
(1382, NULL, 'lels', 1, 0.00, '2018-11-17', 0, 'normal', 'Normal', 'RBB2pZTJXf', 'working', '2018-11-18 01:49:21', '2018-11-18 01:49:23', 1127, 123, NULL, NULL, 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 1),
(1383, NULL, 'lels2', 1, 0.00, '2018-11-17', 0, 'normal', 'Normal', 'RBB2pZTJXf', 'working', '2018-11-18 01:49:29', '2018-11-18 01:49:31', 1128, 123, NULL, NULL, 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 1),
(1384, NULL, 'lels3', 1, 0.00, '2018-11-17', 0, 'normal', 'Normal', 'RBB2pZTJXf', 'working', '2018-11-18 01:49:37', '2018-11-18 01:49:38', 1129, 123, NULL, NULL, 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 1),
(1385, NULL, 'Task name', 8, 0.00, '2018-11-17', 0, 'normal', 'Normal', 'RBB2pZTJXf', 'working', '2018-11-18 01:52:15', '2018-11-18 01:52:17', 1130, 123, NULL, NULL, 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 8),
(1427, 'Task description', 'ciguita', 7, 1.00, '2018-11-24', 0, 'normal', 'Normal', 'W41lM2iuSJ', 'working', '2018-11-18 21:42:25', '2018-12-14 04:31:41', 1145, 124, NULL, 'yecaicedo@unicauca.edu.co', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 7),
(1428, 'Task description', 'Otra perros', 4, 1.00, '2018-11-19', 0, 'normal', 'Normal', 'wxMeVyjncd', 'working', '2018-11-19 01:01:48', '2018-12-14 04:31:41', 1146, 124, NULL, NULL, 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 4),
(1429, 'Task description', 'testtt', 2, 1.00, '2018-11-22', 0, 'normal', 'Normal', 'uOCARdeuv7', 'working', '2018-11-22 22:21:16', '2018-12-14 04:31:41', 1147, 124, NULL, NULL, 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 2),
(1430, 'Task description', 'ttt', 0, 1.00, '2018-11-22', 0, 'normal', NULL, 'uOCARdeuv7', 'working', '2018-11-22 22:23:44', '2018-12-14 04:31:41', 1148, 124, NULL, NULL, 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 0),
(1431, 'Task description', 'rrr', 2, 1.00, '2018-11-22', 0, 'normal', 'Normal', 'sXhqAbETRl', 'working', '2018-11-22 22:36:38', '2018-12-14 04:31:41', 1149, 124, NULL, NULL, 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 2),
(1432, 'Task description', 'nuevaYolo', 3, 1.00, '2018-11-22', 0, 'normal', 'Normal', '2W0TlknFqu', 'working', '2018-11-22 23:09:39', '2018-12-27 23:17:12', 1150, 124, 6, 'yecaicedo@unicauca.edu.co', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 3),
(1433, 'Task description', 'YYYIUII', 0, 1.00, '2018-11-22', 0, 'normal', 'Normal', '5yP3imAfyk', 'working', '2018-11-22 23:10:03', '2018-12-14 04:31:41', 1151, 124, NULL, NULL, 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 0),
(1434, 'Task description', 'ggg', 1, 1.00, '2018-11-22', 0, 'normal', 'Normal', 'zNXlZPTJBX', 'working', '2018-11-22 23:27:02', '2018-12-14 04:31:41', 1152, 124, NULL, NULL, 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 1),
(1435, 'Task description', 'YUU', 15, 1.00, '2018-11-22', 0, 'normal', 'Normal', 'YavF1WuvEm', 'working', '2018-11-22 23:35:08', '2018-12-14 04:31:41', 1153, 124, NULL, NULL, 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 15),
(1436, 'Task description', 'espuma y arrecife', 1, 0.40, '2018-11-24', 0, 'project', 'Normal', 'qr68JMbHnz', 'working', '2018-12-07 03:39:11', '2019-01-01 04:20:53', 1154, 124, NULL, NULL, 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 1),
(1437, 'Task description', 'tarea padre', 1, 0.60, '2018-12-13', 0, 'project', 'Normal', 'kHsTJ0TAfK', 'stuck', '2018-12-07 03:44:43', '2019-01-01 04:20:40', 1155, 124, NULL, 'yecaicedo@unicauca.edu.co', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 1),
(1438, 'Task description', 'Nueva placeholder', 1, 1.00, '2018-12-06', 0, 'normal', 'Normal', 'JAUlfPiCwt', 'done', '2018-12-07 04:48:57', '2019-01-01 04:20:43', 1156, 124, 2, 'yecaicedo@unicauca.edu.co', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 1),
(1439, 'Task description', 'asDASDASD', 1, 1.00, '2018-12-13', 1437, 'normal', 'Normal', 'Xhl41XDG10', 'working', '2018-12-14 01:08:04', '2018-12-14 04:31:41', 1157, 124, NULL, NULL, 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 1),
(1440, 'descripcion de tarea extra', 'Tarea extra', NULL, NULL, NULL, NULL, NULL, 'Normal', NULL, 'working', '2018-12-26 02:35:53', '2018-12-26 02:35:53', 0, 124, 0, 'yecaicedo@unicauca.edu.co', 1, 0, NULL, NULL, '', 'yes', 'no', NULL),
(1441, 'Start Project', '1 Start', 78, 0.00, '2019-01-06', 0, 'project', 'normal', 'Socket', 'working', '2019-01-08 06:20:25', '2019-01-21 07:44:56', 1158, 126, 0, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 78),
(1442, 'Select Leader', '1.1 Select Leader', 15, 0.00, '2019-01-06', 1441, 'any type', 'normal', 'Socket', 'working', '2019-01-08 06:20:25', '2019-01-21 07:37:52', 1159, 126, 0, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 15),
(1443, 'Select Leader', '1.2 Integration Team', 28, 0.00, '2019-01-14', 1441, 'any type', 'normal', 'Socket', 'working', '2019-01-08 06:20:25', '2019-01-21 07:39:43', 1160, 126, 0, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 28),
(1444, 'Definition Objetives', '1.3 Definition Objetives', 49, 0.00, '2019-02-04', 1441, 'any type', 'normal', 'Socket', 'working', '2019-01-08 06:20:25', '2019-01-21 07:44:54', 1161, 126, 0, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 49),
(1445, 'Planning', '2 Planning', 137, 0.00, '2019-04-06', 0, 'project', 'normal', 'Socket', 'working', '2019-01-08 06:20:25', '2019-01-08 06:20:25', 1162, 126, 0, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 137),
(1446, 'WBS Diagram Responsabilities', '2.1 WBS Diagram Responsabilities', 28, 0.00, '2019-04-06', 1445, 'any type', 'normal', 'Socket', 'working', '2019-01-08 06:20:25', '2019-01-08 06:20:25', 1163, 126, 0, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 28),
(1447, 'Cronogram', '2.2 Cronogram', 28, 0.00, '2019-05-06', 1445, 'any type', 'normal', 'Socket', 'working', '2019-01-08 06:20:25', '2019-01-08 06:20:25', 1164, 126, 0, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 28),
(1448, 'Butget', '2.3 Budget', 28, 0.00, '2019-06-06', 1445, 'any type', 'normal', 'Socket', 'working', '2019-01-08 06:20:25', '2019-01-08 06:20:25', 1165, 126, 0, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 28),
(1449, 'Risk Plan', '2.4 Risk Plan', 28, 0.00, '2019-07-06', 1445, 'any type', 'normal', 'Socket', 'working', '2019-01-08 06:20:25', '2019-01-08 06:20:25', 1166, 126, 0, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 28),
(1450, 'Base Line', '2.5 Base Line', 28, 0.00, '2019-08-06', 1445, 'any type', 'normal', 'Socket', 'working', '2019-01-08 06:20:25', '2019-01-08 06:20:25', 1167, 126, 0, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 28),
(1451, 'Execution and Control', '3 Execution and Control', 81, 0.00, '2019-09-06', 0, 'project', 'normal', 'Socket', 'working', '2019-01-08 06:20:25', '2019-01-08 06:20:25', 1168, 126, 0, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 81),
(1452, 'Control Process', '3.1 Control Process', 28, 0.00, '2019-09-06', 1451, 'any type', 'normal', 'Socket', 'working', '2019-01-08 06:20:25', '2019-01-08 06:20:25', 1169, 126, 0, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 28),
(1453, 'Control Tools', '3.2 Control Tools', 28, 0.00, '2019-10-06', 1451, 'any type', 'normal', 'Socket', 'working', '2019-01-08 06:20:25', '2019-01-08 06:20:25', 1170, 126, 0, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 28),
(1454, 'Change Manager', '3.3 Change Manager', 28, 0.00, '2019-11-06', 1451, 'any type', 'normal', 'Socket', 'working', '2019-01-08 06:20:25', '2019-01-08 06:20:25', 1171, 126, 0, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 28),
(1455, 'Closing', '4 Closing', 10, 0.00, '2019-12-06', 0, 'project', 'normal', 'Socket', 'working', '2019-01-08 06:20:25', '2019-01-08 06:20:25', 1172, 126, 0, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 10),
(1456, 'Closing Project', '4.1 Closing Project', 10, 0.00, '2019-12-06', 1455, 'any type', 'normal', 'Socket', 'working', '2019-01-08 06:20:25', '2019-01-08 06:20:25', 1173, 126, 0, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'yes', 'no', 10),
(1517, 'Start Project', '1 Start', 51, 0.00, '2019-02-02', 0, 'project', 'normal', 'Socket', 'working', '2019-02-03 22:01:36', '2019-02-03 22:03:36', 1182, 129, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 51),
(1518, 'Select Leader', '1.1 Select Leader', 28, 0.00, '2019-02-02', 1517, 'normal', NULL, 'LYkffqnnPL', 'working', '2019-02-03 22:01:36', '2019-03-16 07:36:17', 1183, 129, 0, '[\"guest@mail.com\"]', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 19),
(1519, 'Select Leader', '1.2 Integration Team', 28, 0.00, '2019-03-02', 1517, 'any type', 'normal', 'Socket', 'working', '2019-02-03 22:01:36', '2019-03-13 01:01:22', 1184, 129, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 19),
(1520, 'Definition Objetives', '1.3 Definition Objetives', 28, 0.00, '2019-03-30', 1517, 'any type', 'normal', 'Socket', 'working', '2019-02-03 22:01:36', '2019-03-13 01:01:22', 1185, 129, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 19),
(1521, 'Planning', '2 Planning', 77, 0.00, '2019-03-04', 0, 'project', 'normal', 'Socket', 'working', '2019-02-03 22:01:36', '2019-02-03 22:05:10', 1186, 129, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 77),
(1522, 'WBS Diagram Responsabilities', '2.1 WBS Diagram Responsabilities', 60, 0.00, '2019-04-27', 1521, 'any type', 'normal', 'Socket', 'working', '2019-02-03 22:01:36', '2019-03-13 01:01:22', 1187, 129, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 42),
(1523, 'Cronogram', '2.2 Cronogram', 28, 0.00, '2019-06-26', 1521, 'any type', 'normal', 'Socket', 'working', '2019-02-03 22:01:36', '2019-03-13 01:01:22', 1188, 129, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 20),
(1524, 'Butget', '2.3 Budget', 28, 0.00, '2019-07-24', 1521, 'any type', 'normal', 'Socket', 'working', '2019-02-03 22:01:36', '2019-03-13 01:01:22', 1189, 129, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 20),
(1525, 'Risk Plan', '2.4 Risk Plan', 28, 0.00, '2019-08-21', 1521, 'any type', 'normal', 'Socket', 'working', '2019-02-03 22:01:36', '2019-03-13 01:01:22', 1190, 129, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 20),
(1526, 'Base Line', '2.5 Base Line', 28, 0.00, '2019-09-18', 1521, 'any type', 'normal', 'Socket', 'working', '2019-02-03 22:01:36', '2019-03-13 01:01:22', 1191, 129, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 20),
(1527, 'Execution and Control', '3 Execution and Control', 105, 0.00, '2019-04-01', 0, 'project', 'normal', 'Socket', 'working', '2019-02-03 22:01:36', '2019-02-03 22:04:37', 1192, 129, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 105),
(1528, 'Control Process', '3.1 Control Process', 42, 0.00, '2019-10-16', 1527, 'any type', 'normal', 'Socket', 'working', '2019-02-03 22:01:36', '2019-03-13 01:01:22', 1193, 129, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 30),
(1529, 'Control Tools', '3.2 Control Tools', 28, 0.00, '2019-11-27', 1527, 'any type', 'normal', 'Socket', 'working', '2019-02-03 22:01:36', '2019-03-13 01:01:22', 1194, 129, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 20),
(1530, 'Change Manager', '3.3 Change Manager', 28, 0.00, '2019-12-25', 1527, 'any type', 'normal', 'Socket', 'working', '2019-02-03 22:01:36', '2019-03-13 01:01:22', 1195, 129, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 20),
(1531, 'Closing', '4 Closing', 59, 0.00, '2019-07-15', 0, 'project', 'normal', 'Socket', 'working', '2019-02-03 22:01:36', '2019-02-03 22:04:43', 1196, 129, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 59),
(1532, 'Closing Project', '4.1 Closing Project', 59, 0.00, '2020-01-22', 1531, 'any type', 'normal', 'Socket', 'working', '2019-02-03 22:01:36', '2019-03-13 01:01:22', 1197, 129, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 42),
(1638, NULL, 'Nueva tarea', 1, 0.00, '2019-01-19', 0, 'task', 'Normal', 'rdTxIBthUe', 'working', '2019-02-14 16:46:26', '2019-02-14 22:07:18', 1201, 127, NULL, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'no', 'no', 0),
(1639, NULL, 'segunda tarea', 6, 0.00, '2019-01-19', 0, 'normal', 'Normal', 'zE3gX2PH3C', 'working', '2019-02-14 16:46:28', '2019-02-23 22:45:39', 1199, 127, NULL, '[\"yecaicedo@unicauca.edu.co\"]', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'no', 'no', 0),
(1640, NULL, 'crei una tercera', 1, 0.00, '2019-01-19', 0, 'normal', 'Normal', 'H4O4cMV64H', 'working', '2019-02-14 16:48:36', '2019-03-16 08:07:06', 1200, 127, NULL, '[\"yecaicedo@unicauca.edu.co\",\"admin@admin.com\"]', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'no', 'no', 0),
(1641, NULL, 'creo una cuarta', 1, 0.00, '2019-01-19', 0, 'project', 'Normal', 'aP1CEoBzci', 'working', '2019-02-14 16:48:47', '2019-02-14 22:07:19', 1204, 127, NULL, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'no', 'no', 0),
(1642, NULL, '444', 1, 0.00, '2019-01-19', 0, 'task', 'Normal', 'RhzJkzMNKd', 'working', '2019-02-14 17:20:34', '2019-02-14 22:07:19', 1206, 127, NULL, NULL, 0, 0, NULL, NULL, 'Yeison Caicedoe', 'no', NULL, 0),
(1643, NULL, 'Nueva', 1, 0.00, '0000-00-00', 0, 'task', 'Normal', 'wNhsTcixc7', 'working', '2019-02-14 19:53:01', '2019-02-14 22:07:19', 1207, 127, NULL, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'no', 'no', 0),
(1644, NULL, 'segunda', 1, 0.00, '0000-00-00', 0, 'task', 'Normal', 'wNhsTcixc7', 'working', '2019-02-14 19:53:03', '2019-02-14 22:07:19', 1208, 127, NULL, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'no', 'no', 0),
(1645, NULL, 'cera', 1, 0.00, '0000-00-00', 0, 'task', 'Normal', 'wNhsTcixc7', 'working', '2019-02-14 19:53:05', '2019-02-14 22:07:19', 1209, 127, NULL, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'no', 'no', 0),
(1646, NULL, 'nueva tarea', 1, 0.00, '2019-01-19', 0, 'project', 'Normal', 'b1Rphu4stl', 'working', '2019-02-14 20:05:27', '2019-02-14 22:07:19', 1210, 127, NULL, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'no', 'no', 0),
(1647, NULL, 'segunda tarea', 1, 0.00, '2019-01-19', 1646, 'task', 'Normal', 'b1Rphu4stl', 'working', '2019-02-14 20:05:34', '2019-02-14 22:07:19', 1211, 127, NULL, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'no', 'no', 0),
(1648, NULL, 'creada', 1, 0.00, '2019-01-19', 1646, 'task', 'Normal', 'TELwp1KCo6', 'working', '2019-02-14 20:10:33', '2019-02-14 22:07:19', 1212, 127, NULL, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'no', 'no', 0),
(1649, NULL, 'nueva1', 1, 0.00, '2019-01-19', 1641, 'task', 'Normal', 'el2ytH3GeA', 'working', '2019-02-14 21:30:20', '2019-02-14 22:07:19', 1213, 127, NULL, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'no', 'no', 0),
(1650, NULL, 'nueva 2', 1, 0.00, '2019-01-19', 0, 'task', 'Normal', 'el2ytH3GeA', 'working', '2019-02-14 21:30:23', '2019-02-14 22:07:13', 1202, 127, NULL, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'no', 'no', 0),
(1652, NULL, 'nueva', 1, 0.00, '2019-01-19', 0, 'task', 'Normal', 'E03jrWlaai', 'working', '2019-02-14 21:33:19', '2019-02-14 22:07:19', 1203, 127, NULL, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'no', 'no', 0),
(1653, NULL, 'nueva2', 1, 0.00, '2019-01-19', 0, 'task', 'Normal', 'E03jrWlaai', 'working', '2019-02-14 21:33:22', '2019-02-14 22:07:19', 1216, 127, NULL, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'no', 'no', 0),
(1654, NULL, 'nueva3', 1, 0.00, '2019-01-19', 0, 'task', 'Normal', 'E03jrWlaai', 'working', '2019-02-14 21:33:25', '2019-02-14 22:07:19', 1217, 127, NULL, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'no', 'no', 0),
(1655, NULL, 'nueva4', 1, 0.00, '2019-01-19', 0, 'task', 'Normal', 'E03jrWlaai', 'working', '2019-02-14 21:33:29', '2019-02-14 22:07:19', 1218, 127, NULL, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'no', 'no', 0),
(1656, NULL, 'nueva6', 1, 0.00, '2019-01-19', 0, 'task', 'Normal', 'E03jrWlaai', 'working', '2019-02-14 21:33:33', '2019-02-14 22:07:19', 1219, 127, NULL, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'no', 'no', 0),
(1657, NULL, 'nueva7', 1, 0.00, '2019-01-19', 0, 'task', 'Normal', 'E03jrWlaai', 'working', '2019-02-14 21:33:38', '2019-02-14 22:07:19', 1220, 127, NULL, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'no', 'no', 0),
(1658, NULL, 'nueva8', 1, 0.00, '2019-01-19', 0, 'task', 'Normal', 'E03jrWlaai', 'working', '2019-02-14 21:33:43', '2019-02-14 22:07:19', 1221, 127, NULL, 'unassigned', 0, 0, NULL, NULL, 'Yeison Caicedoe', 'no', 'no', 0),
(1659, NULL, 'nueva9', 1, 0.00, '2019-01-20', 0, 'task', 'Normal', 'E03jrWlaai', 'working', '2019-02-14 21:33:48', '2019-02-14 22:07:19', 1222, 127, NULL, NULL, 0, 0, NULL, NULL, 'Yeison Caicedoe', 'no', NULL, 0),
(1660, 'Description to fill...', 'tarea extra ', 3, 0.10, '2019-03-02', 0, NULL, 'Normal', NULL, 'working', '2019-03-02 05:00:00', '2019-03-02 05:00:00', 0, 126, 0, 'yecaicedo@unicauca.edu.co', 1, 0, NULL, NULL, '', 'no', 'no', 0),
(1661, 'long description', 'tarea extra yyy', NULL, NULL, NULL, NULL, NULL, 'Normal', NULL, 'working', '2019-03-03 05:01:37', '2019-03-03 05:01:37', 0, 126, 0, 'yecaicedo@unicauca.edu.co', 1, 0, NULL, NULL, '', 'no', 'no', 0),
(1663, 'asdasd', 'otrica', NULL, NULL, NULL, NULL, NULL, 'Normal', NULL, 'working', '2019-03-04 04:01:34', '2019-03-04 04:01:34', 0, 127, 0, 'yecaicedo@unicauca.edu.co', 1, 0, NULL, NULL, '', 'no', 'no', 0),
(1664, 'asdasdasdasd', '222222', NULL, NULL, NULL, NULL, NULL, 'Normal', NULL, 'working', '2019-03-04 06:47:58', '2019-03-04 06:47:58', 0, 130, 0, 'admin@admin.com', 1, 0, NULL, NULL, '', 'no', 'no', 0),
(1665, 'as', 'aw222', NULL, NULL, NULL, NULL, NULL, 'Normal', NULL, 'working', '2019-03-04 06:50:51', '2019-03-04 06:50:51', 0, 130, 0, 'admin@admin.com', 1, 0, NULL, NULL, '', 'no', 'no', 0),
(1666, 'asdasd', 'asad', NULL, NULL, NULL, NULL, NULL, 'Normal', NULL, 'working', '2019-03-04 06:52:33', '2019-03-04 06:52:33', 0, 130, 0, 'admin@admin.com', 1, 0, NULL, NULL, '', 'no', 'no', 0),
(1667, 'zzzzz', 'zzzz', NULL, NULL, NULL, NULL, NULL, 'Normal', NULL, 'working', '2019-03-04 07:33:53', '2019-03-04 07:33:53', 0, 0, 0, 'yecaicedo@unicauca.edu.co', 1, 0, NULL, NULL, '', 'no', 'no', 0),
(1668, 'rrr', 'rrrrrr', NULL, NULL, NULL, NULL, NULL, 'Normal', NULL, 'working', '2019-03-04 07:56:06', '2019-03-04 07:56:06', 0, 109, 0, 'yecaicedo@unicauca.edu.co', 1, 0, NULL, NULL, '', 'no', 'no', 0),
(1669, 'Start Project', '1 Start', 81, 0.00, '2019-03-16', 0, 'project', 'normal', 'Socket', 'working', '2019-03-18 00:03:51', '2019-03-18 00:03:51', 1223, 139, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 0),
(1670, 'Select Leader', '1.1 Select Leader', 28, 0.82, '2019-03-16', 1669, 'any type', 'normal', 'Socket', 'working', '2019-03-18 00:03:51', '2019-05-08 06:10:04', 1224, 139, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 19),
(1671, 'Select Leader', '1.2 Integration Team', 28, 0.00, '2019-04-16', 1669, 'any type', 'normal', 'Socket', 'working', '2019-03-18 00:03:51', '2019-03-18 06:52:41', 1225, 139, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 20),
(1672, 'Definition Objetives', '1.3 Definition Objetives', 28, 0.00, '2019-05-16', 1669, 'any type', 'normal', 'Socket', 'working', '2019-03-18 00:03:51', '2019-03-18 06:52:41', 1226, 139, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 20),
(1673, 'Planning', '2 Planning', 137, 0.00, '2019-06-16', 0, 'project', 'normal', 'Socket', 'working', '2019-03-18 00:03:51', '2019-03-18 00:03:51', 1227, 139, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 0),
(1674, 'WBS Diagram Responsabilities', '2.1 WBS Diagram Responsabilities', 28, 0.00, '2019-06-16', 1673, 'any type', 'normal', 'Socket', 'working', '2019-03-18 00:03:51', '2019-03-18 06:52:41', 1228, 139, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 19),
(1675, 'Cronogram', '2.2 Cronogram', 28, 0.00, '2019-07-16', 1673, 'any type', 'normal', 'Socket', 'working', '2019-03-18 00:03:51', '2019-03-18 06:52:41', 1229, 139, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 20),
(1676, 'Butget', '2.3 Budget', 28, 0.00, '2019-08-16', 1673, 'any type', 'normal', 'Socket', 'working', '2019-03-18 00:03:51', '2019-03-18 06:52:41', 1230, 139, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 20),
(1677, 'Risk Plan', '2.4 Risk Plan', 28, 0.00, '2019-09-16', 1673, 'any type', 'normal', 'Socket', 'working', '2019-03-18 00:03:51', '2019-03-18 06:52:41', 1231, 139, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 20),
(1678, 'Base Line', '2.5 Base Line', 28, 0.00, '2019-10-16', 1673, 'any type', 'normal', 'Socket', 'working', '2019-03-18 00:03:51', '2019-03-18 06:52:41', 1232, 139, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 20),
(1679, 'Execution and Control', '3 Execution and Control', 81, 0.00, '2019-11-16', 0, 'project', 'normal', 'Socket', 'working', '2019-03-18 00:03:51', '2019-03-18 00:03:51', 1233, 139, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 0),
(1680, 'Control Process', '3.1 Control Process', 28, 0.00, '2019-11-16', 1679, 'any type', 'normal', 'Socket', 'working', '2019-03-18 00:03:51', '2019-03-18 06:52:41', 1234, 139, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 19),
(1681, 'Control Tools', '3.2 Control Tools', 28, 0.00, '2019-12-16', 1679, 'any type', 'normal', 'Socket', 'working', '2019-03-18 00:03:51', '2019-03-18 06:52:41', 1235, 139, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 20),
(1682, 'Change Manager', '3.3 Change Manager', 28, 0.00, '2020-01-16', 1679, 'any type', 'normal', 'Socket', 'working', '2019-03-18 00:03:51', '2019-03-18 06:52:41', 1236, 139, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 20),
(1683, 'Closing', '4 Closing', 10, 0.00, '2020-02-16', 0, 'project', 'normal', 'Socket', 'working', '2019-03-18 00:03:51', '2019-03-18 00:03:51', 1237, 139, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 0),
(1684, 'Closing Project', '4.1 Closing Project', 10, 0.00, '2020-02-16', 1683, 'any type', 'normal', 'Socket', 'working', '2019-03-18 00:03:51', '2019-03-18 06:52:41', 1238, 139, 0, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 7),
(1685, NULL, 'nueva tarea', 1, 0.00, '2019-03-17', 0, 'normal', 'Normal', 'mmhAsWaTsF', 'working', '2019-03-18 06:52:40', '2019-03-18 06:52:40', 1239, 139, NULL, '[]', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 0),
(1686, NULL, 'nueva tarea 2', 1, 0.00, '2019-03-17', 0, 'normal', 'Normal', 'mmhAsWaTsF', 'working', '2019-03-18 06:52:57', '2019-03-18 06:52:57', 1240, 139, NULL, '[]', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 0),
(1687, NULL, 'nueva tarea 3', 1, 0.00, '2019-03-16', 0, 'task', 'Normal', 'mmhAsWaTsF', 'working', '2019-03-18 06:53:10', '2019-03-18 06:53:10', 1241, 139, NULL, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'no', 'no', 0),
(1688, NULL, 'nueva terea22', 1, 0.00, '2019-03-26', 0, 'normal', 'Normal', 'xoUreOXeze', 'working', '2019-03-27 00:55:17', '2019-03-27 00:55:19', 1242, 139, NULL, 'unassigned', 0, 0, NULL, NULL, 'Guest', 'yes', 'no', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2018-07-05 21:05:13', '2018-07-05 21:05:13'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2018-07-05 21:05:13', '2018-07-05 21:05:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `account_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'individual',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `businessName` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `actualizador` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `business_id` int(11) DEFAULT NULL,
  `hour_cost` double DEFAULT NULL,
  `temporal` int(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `account_type`, `name`, `email`, `businessName`, `avatar`, `password`, `code`, `status`, `active`, `remember_token`, `settings`, `actualizador`, `created_at`, `updated_at`, `business_id`, `hour_cost`, `temporal`) VALUES
(1, 1, 'business', 'Yeison', 'admin@admin.com', NULL, 'users\\default.png', '$2y$10$5UqLtPw41IVWeM3VRUzTfeT8Wq9urXz1DMqt1FuQZeTPXPy9kykNm', '', 0, 1, '7CHI4caJv1yhBeEEEuA8ldC6aHfq5QQN2Yx8OMhakKajfULV5AwoWVL7ZERr', '{\"locale\":\"en\"}', '11260085', '2018-07-05 21:05:13', '2019-03-12 08:57:12', NULL, 0, 0),
(2, 2, 'personal', 'Yeison2', 'yecaicedo1231@unicauca.edu.co', NULL, 'users/default.png', '$2y$10$XvGDBmasUqUpbHv5YFzZcuP01Qd7hJvmhuV5Q7XkhARDaEO1/Rfrq', 'rr8vg1oynt', 1, 1, 'KeT3gnFtT7IbLCe9uDrhEg4akc49rQ10UvlGvZodH0vIjlqhBY3HaqxHSAzp', NULL, NULL, '2018-07-26 10:25:41', '2018-08-01 20:03:34', NULL, 0, 0),
(10, 2, 'personal', 'Yeison', 'yeisoneduardocaicedo@outlook.com', NULL, 'users/default.png', '$2y$10$wyphsyIdNkVd7m1Z1gN6juWKI3BDerLEtA0wmXTiqwQiE/wiH9a5q', 'apxcmp4k6r', 0, 1, 'Rou4tHm4LSPDSPq8yCaqSCo27wHgfJsAyGk59SG8v2LWayTrCWcgO1CbD6E7', NULL, '2456187', '2018-09-03 21:36:24', '2018-11-08 19:31:18', NULL, 0, 0),
(17, 2, 'business', 'Yeison Caicedoe', 'yecaicedo@unicauca.edu.co', NULL, 'users/letterY.png', '$2y$10$ANkI2WnlkMDL9f/xdGIq6erMV1sGO3OlJGOUzu8R9j1NUYv0a1XDe', 'nle9zmjnfo', 1, 1, 'AEs0ReevgRVKT84CnH7SbmNzzSMvmrgdZxgUapN2AYm4hU3BQD60PhIeo4ra', '{\"locale\":\"en\"}', '1702556', '2018-09-04 01:17:49', '2019-04-06 02:37:05', NULL, 0, 0),
(18, 2, 'personal', 'Awesome user', 'asakaa1995x@gmail.com', NULL, 'users/letterA.png', '$2y$10$syyN65ppQCzKL5YjQwqEtO85PN3jM3TgTZNLONbWmIPzQdC159ptC', '1mqa55tjcc', 1, 1, NULL, NULL, '488758', '2018-10-13 02:58:33', '2018-10-13 04:51:55', NULL, 0, 0),
(19, 2, 'personal', NULL, 'leonidas@gmail.com', NULL, 'users/default.png', NULL, 'b8h1v6fs20', NULL, 0, NULL, NULL, NULL, '2018-10-16 20:46:13', '2018-10-16 20:46:13', NULL, 0, 0),
(20, 2, 'personal', NULL, 'blickblick@gmail.com', NULL, 'users/default.png', NULL, 'zwoq9sa6av', NULL, 0, NULL, NULL, NULL, '2018-10-16 22:09:07', '2018-10-16 22:09:07', NULL, 0, 0),
(21, 2, 'personal', NULL, 'superleocj@gmail.com', NULL, 'users/default.png', NULL, 'zuu0txzplg', 0, 0, 'HnXPdQ8o81GFBY0UWOWwTto19ZaNLN12NnQGwsXkgDfRIFMfPDIZsxGFpwFM', NULL, NULL, '2018-10-17 03:35:23', '2018-10-17 03:35:49', NULL, 0, 0),
(22, 2, 'personal', NULL, 'superleo2@gmail.com', NULL, 'users/default.png', NULL, 'jda11cony9', 0, 0, 'NGsJQLCnDGJLWGzwm769YXzLLYknLvlXELkh2OemlR84rf8Da9bnW7ecATQE', NULL, NULL, '2018-10-17 03:36:33', '2018-10-17 03:40:40', NULL, 0, 0),
(23, 2, 'personal', NULL, 'asdasd@gmail.com', NULL, 'users/default.png', NULL, 'sbugrvep8o', NULL, 0, 'MeP6DAT4lz4z6UfuxOo1rIjZ7TpMfAtsff9GswqvPAvaplu2hRx7edTbvw6P', NULL, NULL, '2018-10-18 00:27:39', '2018-10-18 00:27:39', NULL, 0, 0),
(24, 2, 'personal', NULL, 'lroas@gmail.com', NULL, 'users/default.png', NULL, 'qmhrhlbjb3', NULL, 0, 'eLoSb84hjdedfELW9029R4oGL9T4Xe7gdtnKLxSY7YcTXQ13zmu95xaiiGb7', NULL, NULL, '2018-10-18 00:28:14', '2018-10-18 00:28:14', NULL, 0, 0),
(25, 2, 'personal', NULL, 'quepodriaser@gmail.com', NULL, 'users/default.png', NULL, '8p78py4za1', NULL, 0, 'kDXsYigI5GtgD29mlE9GXU6FTeTmdKZ7vaCEN3XscCJ1IOiR9KDv2zztuRG5', NULL, NULL, '2018-10-18 02:58:45', '2018-10-18 02:58:45', NULL, 0, 0),
(26, 2, 'personal', NULL, 'quepodriaser2@gmail.com', NULL, 'users/default.png', NULL, 'ci31dx8m8g', NULL, 0, 'VhvqtOHU7EvzGqijixDcADnLcvgGoE915ysfK3o49a8kMe6kcXPRPrisQUnF', NULL, NULL, '2018-10-18 02:59:00', '2018-10-18 02:59:00', NULL, 0, 0),
(27, 2, 'personal', NULL, 'superleo1222@gmail.com', NULL, 'users/default.png', NULL, 'f3b0oe6yzt', NULL, 0, 'An9Lr8AafcQBUrY7wBQzHrwYy9ttfVILigzJNgT6kYK83y5AUOrpa28QMFuC', NULL, NULL, '2018-10-18 20:13:18', '2018-10-18 20:13:18', NULL, 0, 0),
(28, 2, 'personal', NULL, 'leito@gmail.com', NULL, 'users/default.png', NULL, '1dgb4abklc', NULL, 0, 'PAZ3XHJiXa02sK8XttfZfuVtnXAQedRitH8gNZhi8aGnXk9MT35Ecd2eR63i', NULL, NULL, '2018-10-18 20:19:17', '2018-10-18 20:19:17', NULL, 0, 0),
(29, 2, 'personal', NULL, 'bai@mail.com', NULL, 'users/default.png', NULL, '02bs3oe3zu', NULL, 0, 'zO3ZSXRSB69Adavcv2TJP0T6Qd0hWLQ6HUJYtHdP4d0sZlHbSUrnNhS8k1kI', NULL, NULL, '2018-10-18 20:32:40', '2018-10-18 20:32:40', NULL, 0, 0),
(30, 2, 'personal', NULL, 'millondedolares@leo.com', NULL, 'users/default.png', NULL, '6khl3w1525', NULL, 0, 'FWKHKDwF2TltfxYteemhrlB9k38T3eKJSHzm40A0BPQ8oUcUnMayAd8xup2B', NULL, NULL, '2018-10-18 20:50:47', '2018-10-18 20:50:47', NULL, 0, 0),
(31, 2, 'personal', NULL, 'steeve@jobs.com', NULL, 'users/default.png', NULL, 'je5b0hg1bf', NULL, 0, 'HrGYXLZHomVE6MXCjbHBjI02ewtRqUUz7FAVrnkG4DucVyJ7s76Q4LVsDsM6', NULL, NULL, '2018-10-18 20:54:21', '2018-10-18 20:54:21', NULL, 0, 0),
(32, 2, 'personal', NULL, 'leito22@gmail.com', NULL, 'users/default.png', NULL, '8cg5ntcncy', NULL, 0, 'YROS4JA071R79lwIvO3DHWtJTPaOIi8gL8WkHjnSIMH4NaHEPbVHinwpLuB1', NULL, NULL, '2018-10-18 21:15:26', '2018-10-18 21:15:26', NULL, 0, 0),
(33, 2, 'personal', NULL, 'registro@mail.com', NULL, 'users/default.png', NULL, 'xy6z03afnr', NULL, 0, 'LxuJx07slllFxpgGNW7PgzFNEEGn9AHJG1rjSPEVN2uEGR4mPm2EtT5jZac8', NULL, NULL, '2018-10-19 01:40:00', '2018-10-19 01:40:00', NULL, 0, 0),
(34, 2, 'personal', 'Jijuts', 'yeisoneduardocaicedo2@outlook.com', NULL, 'users/letterJ.png', '$2y$10$.z/AHg/v0FYLOGcSv4iEX.E5/pm2SsIh.WriHEmYqmVzHiHdLdksK', '4z5mbdfyrg', 0, 1, 'F5zWRBAxdgqZ83WBghU3ufiLPs2ZvHMwoUY3JqqsblTsactFWlDQv594TexC', NULL, '1163326', '2018-10-19 02:26:13', '2018-10-19 02:40:40', NULL, 0, 0),
(35, 2, 'personal', NULL, 'daniel@gmail.com', NULL, 'users/default.png', NULL, 'gmeie8fhpf', NULL, 0, 'GcbcoaEevN1N5bkCTQbedZuT9TvBCmpJmlOqaO8pctLs07Jmer0NbvYh1Rv4', NULL, NULL, '2018-11-28 18:51:17', '2018-11-28 18:51:17', NULL, 0, 0),
(37, 3, 'business', 'Business', 'yecaicedo2@unicauca.edu.co', NULL, 'users/letterB.png', '$2y$10$J1/UvyRjl.NOYsG5Rm7Rc.7zUBS9bn6iMEQPKY1ky1EVmpjr/sGIO', '3bfd3dr6do', 0, 1, 'LO2rMrfwvTupLabrrUy2kfZyRi8sCmR85mEt5bKqGFqKXDVkLikhZpcxQlr5', NULL, '3756194', '2018-12-03 22:17:36', '2018-12-04 02:29:33', NULL, 0, 0),
(38, 3, 'business', 'Business 2', 'o1541677@nwytg.net', NULL, 'users/letterB.png', '$2y$10$f1nvuUlX/kdKNg4f2aKzuO48uSiB9DrUoV4cG8yPICo6jhBXoTc4u', 'rw8rrc14a7', 1, 1, 'JIHAm9gqJLAU9Iu7G8tYZnHGHtSaFnnwhPaSoAbfW7IrGOm0x0116s6OVNaL', NULL, '6686293', '2018-12-04 02:29:53', '2018-12-04 02:33:44', NULL, 0, 0),
(39, 2, 'individual', NULL, 'o1558748@nwytg.net', NULL, 'users/default.png', NULL, 'n70kyfgif8', NULL, 0, 'dLeJFqGPmU822jax8f545CnsbJo9DrA4b82Orc1pJiZDq6KrpPMAmymgnP97', NULL, NULL, '2018-12-04 04:04:47', '2018-12-04 04:04:47', NULL, 0, 0),
(40, 3, 'business', 'Asakaa perros', 'o1582069@nwytg.net', 'Asakaa', 'users/letterA.png', '$2y$10$OiMGK29HV6zC9ZFJ9FdWaOJzfgzltAejfLnh141P9SsBclyCiTsQi', '2mfe408f9y', 1, 1, 'jCP17IFVpVkfa8MUJ8TqcODE857yp9s6ZzmLyMQhF937hswduq4SwDK8H95U', NULL, '4997529', '2018-12-04 06:41:41', '2018-12-04 07:18:58', 3, 0, 0),
(41, 2, 'personal', 'Yeison Caicedo', 'luisitocomunica3@gmail.com', NULL, 'users/letterY.png', '$2y$10$S4tijIR3V8wpE8jUy5f5cej6OkHVv.Gv3jYhQW7yiKPbhQfbo9yg2', '', 1, 0, NULL, NULL, NULL, '2018-12-04 13:15:00', '2018-12-05 00:51:49', 1, 0, 0),
(42, 2, 'personal', 'Dopa', 'dopa@gmail.com', NULL, 'users/letterD.png', '$2y$10$.lyeugXc/giU1cd/mlqsfuSbhaZVWSZLe5kEqGdlLRe0BN82dcAse', '', 1, 0, NULL, NULL, NULL, '2018-12-04 13:17:05', '2018-12-04 13:17:05', 1, 0, 0),
(43, 2, 'personal', 'Otro mas', 'otro@gmail.com', NULL, 'users/letterO.png', '$2y$10$KeLjjuPXsxoFS8ougd.6OuBMqxFRotLG8jy4yJRDoKhR2MQ3S6o9e', '', 1, 0, NULL, NULL, NULL, '2018-12-04 13:20:10', '2018-12-13 23:03:23', 1, 0, 0),
(44, 2, 'personal', 'Yuju', 'yuju@gmail.com', NULL, 'users/letterY.png', '$2y$10$jT8APFiGL30R16PT/BNSOezYUGa9jlxHRDgn.M./LyYFCy5qH9.sa', '', 1, 1, NULL, NULL, NULL, '2018-12-04 13:38:10', '2018-12-13 22:49:15', 1, 0, 0),
(45, 2, 'personal', 'Actualizado', 'da12123@gmail.com', NULL, 'users/letterD.png', '$2y$10$iVtIy1reJbTgKIQFL09tUOpTLoFhWoeqnl8wsRgfb0Q6pzbjIrsXC', '', 1, 1, NULL, NULL, NULL, '2018-12-04 13:40:48', '2018-12-13 22:47:36', 1, 0, 0),
(46, 2, 'personal', 'Alfonsin32', 'nuevo@gmail.com', NULL, 'users/letterN.png', '$2y$10$KwhXZuYe.huqA1n0MbevSuK262iGxzmeFYPKXse5wLUwskDb.ygWO', '', 1, 1, NULL, NULL, NULL, '2018-12-05 00:22:00', '2018-12-13 22:41:30', 1, 0, 0),
(47, 2, 'personal', NULL, '', NULL, 'users/letterN.png', '$2y$10$glOrKu3YpbNuojc0vaj2O.kHQtx2JkgA5bNSvQkxR02Lz0tDi9lge', '', 1, 1, NULL, NULL, NULL, '2018-12-05 02:28:25', '2018-12-23 07:57:56', 1, 0, 0),
(48, 2, 'personal', 'Gustavo Cerati edited 2', 'cerati@gmail.com', NULL, 'users/letterG.png', '$2y$10$.qNKnDwOK3SdTXQdL6OQFukd/Yw.lq/NvBzHQUDhhULKucnp/cJqi', '', 1, 1, 'MxRBWSHMoHlcaEFOGaZJONKH5JqHgc3XTQlwt8FCh0J4kuVBXM84HTLX3Tih', NULL, '787360', '2018-12-05 06:08:55', '2018-12-14 02:53:43', 1, 0, 0),
(49, 2, 'personal', 'Lels66', 'lels22@gmail.com', NULL, 'users/letterL.png', '$2y$10$Z.twe/AAQvSo8/8kw5pDDeEHTO0R3ZD4aIlikEWrO6izqIajphbyi', '', 1, 1, NULL, NULL, NULL, '2018-12-14 00:45:39', '2018-12-14 03:16:28', 1, 0, 0),
(50, 3, 'business', 'Test', 'o4433609@nwytg.net', '4', 'users/letterT.png', '$2y$10$wk1nhF3BuUphojGDDUtwfey2lYRQJ1ZA/cUCQTGV7lOyBWC3G422O', 'eblnk98g0p', 1, 1, '32bqSMvHTD2jrO9vVx9IVMHshPjyCdYakbB9lJ8HGEWYE6gVTf8cQjtYUrHm', NULL, '335706', '2018-12-19 04:56:51', '2018-12-19 04:57:35', NULL, 0, 0),
(51, 2, 'personal', 'Cuenta normal', 'o4874598@nwytg.net', NULL, 'users/letterC.png', '$2y$10$Dlqq.vlcJGweSSQhFNoXzuhJ4wmDh7GQtjFVbmoxM8ShqWRaJaaxe', '0z4aff21b8', 0, 1, 'n0PKJNE4PCd2hHt9lC4hVkQENLJo9wTFOHcCc6cGzG2GtxJNXkYrnPyScUNP', NULL, '6145416', '2018-12-21 03:29:21', '2018-12-21 03:30:03', NULL, 0, 0),
(52, 3, 'business', NULL, 'ggy63995@ebbob.com', NULL, 'users/default.png', NULL, '4qv5vbf4vb', NULL, 0, 'B3HhokBZLnXiaIwoXMdapryAHkgwgQZZ3zvzzOk1wOi2pMvvvGmMGjBsIi3d', NULL, NULL, '2018-12-21 03:30:50', '2018-12-21 03:30:50', NULL, 0, 0),
(53, 3, 'business', 'Pew', 'wi4h0qfh.kb4@20mail.it', '6', 'users/letterP.png', '$2y$10$mrW3h2aVKCQFN9idXRKkqO8dAOR9eJj1dGe6L5ZIFWv2bcWnK7ZEK', '62ijptqoao', 0, 1, 'hoPgDmupU2CN5LqFdRXudYSSCdBCl2a2O0HdYdprHgNtO6ThFjt1kgrfbWmb', NULL, '5502137', '2018-12-21 03:33:21', '2018-12-21 03:33:58', NULL, 0, 0),
(54, 2, 'personal', 'Nuevo usuario221312312111', 'yeisonedu@gmail.com', NULL, 'users/letterN.png', '$2y$10$hwWc/U1AEw1zmCwSqCMfzO3UYcCrDs6ODBdeqQBdZA2rKKlFQqFcy', '', 1, 1, NULL, NULL, NULL, '2019-01-21 06:24:34', '2019-03-03 02:00:14', 1, 2, 0),
(55, 2, 'individual', 'Guest', 'guest@mail.com', 'Guest ', 'users/default.png', '$2y$10$5UqLtPw41IVWeM3VRUzTfeT8Wq9urXz1DMqt1FuQZeTPXPy9kykNm', '123123123', 1, 1, 'Hi2HPiEOK8Y9xYRL7N4Vt61GfFVcGlM556rRut03HE4F1a6axQO4wkYNtFv5', NULL, '2364989', '2019-02-03 05:00:00', '2019-05-08 06:09:39', NULL, NULL, 0),
(56, 2, 'personal', NULL, 'q1063172@nwytg.net', NULL, 'users/default.png', NULL, 't8gcz79fuo', NULL, 0, 'XxRz5mVlbXPGz5FXKXo5KA1eZ9WsX1RON4cVBUrUuEJgyZsPBBQd0pCmXRAJ', NULL, NULL, '2019-03-15 01:08:23', '2019-03-15 01:08:23', NULL, NULL, 0),
(58, 2, 'personal', NULL, 'q1068628@nwytg.net', NULL, 'users/default.png', NULL, '', NULL, 0, NULL, NULL, NULL, '2019-03-15 02:11:32', '2019-03-15 02:11:32', NULL, NULL, 1),
(59, 2, 'personal', 'Awesome asakaa user', 'shukri.kionna@sellcow.net', NULL, 'users/default.png', NULL, '', NULL, 0, NULL, NULL, NULL, '2019-03-15 03:38:14', '2019-03-15 03:38:14', NULL, NULL, 1),
(60, 2, 'personal', 'Awesome asakaa user', 'scarlette.iyanuoluwa@sellcow.net', NULL, 'users/default.png', NULL, '', NULL, 0, NULL, NULL, NULL, '2019-03-15 05:53:01', '2019-03-15 05:53:01', NULL, NULL, 1),
(61, 2, 'personal', 'Awesome asakaa user', 'avilene.ceaira@sellcow.net', NULL, 'users/default.png', NULL, '', NULL, 0, NULL, NULL, NULL, '2019-03-15 06:12:03', '2019-03-15 06:12:03', NULL, NULL, 1),
(62, 2, 'personal', 'Awesome asakaa user', 'emillie.myrical@sellcow.net', NULL, 'users/default.png', NULL, '', NULL, 0, NULL, NULL, NULL, '2019-03-15 06:40:20', '2019-03-15 06:40:20', NULL, NULL, 1),
(63, 2, 'personal', 'Yeison', 'q1089393@nwytg.net', NULL, 'users/letterY.png', '$2y$10$1L6NL3RvK7lS.KbqVZDrK.IdKMQcDXBSwd/2lAgI6.GyL15UClWZy', 'mcihlfeeho', 0, 1, '1OXYrg92cy0OVnEkvkfXdgBsaVF1NkGJmtwL3S4NJ3LpAiHmuesQZDeFE9a6', NULL, '2950256', '2019-03-15 06:45:18', '2019-03-15 06:47:52', NULL, NULL, 1),
(64, 2, 'personal', 'Test', 'd5d3ow1h.gwp@20mail.it', NULL, 'users/letterT.png', '$2y$10$ISq2UH1RkJ6604LccHbjeOqtXjKamdlCp0SmvXREUx8rHODsDRgVG', 'i2s41ur1wb', 1, 1, NULL, NULL, '5483472', '2019-03-15 06:48:58', '2019-03-15 07:14:38', NULL, NULL, 0),
(65, 2, 'personal', NULL, '5ephvig2.0ew@20mail.it', NULL, 'users/default.png', NULL, '7nc6tlmuy4', NULL, 0, NULL, NULL, NULL, '2019-03-15 07:08:10', '2019-03-15 07:08:10', NULL, NULL, 0),
(66, 2, 'personal', 'Asdasd', '3trkn0an.nz1@20mail.it', NULL, 'users/letterA.png', '$2y$10$qKpiWpSZKQkJH4acJhfEAuksxiDxMWSBdO39XgRJi/QbJJUHJLHWy', 'ozdode6t5d', 1, 1, NULL, NULL, '6244943', '2019-03-15 07:11:57', '2019-03-15 07:13:08', NULL, NULL, 0),
(67, 2, 'personal', 'Awesome asakaa user', 'yeisoneduardocaicedo95@gmail.com', NULL, 'users/default.png', NULL, '', NULL, 0, NULL, NULL, NULL, '2019-03-15 07:14:49', '2019-03-15 07:14:49', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_has_projects`
--

CREATE TABLE `users_has_projects` (
  `id` int(11) NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `accepted` int(11) NOT NULL,
  `owner` int(11) DEFAULT NULL,
  `projects_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users_has_projects`
--

INSERT INTO `users_has_projects` (`id`, `users_id`, `accepted`, `owner`, `projects_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 8, '2018-07-18 06:17:39', '2018-07-18 06:17:39'),
(2, 1, 1, NULL, 9, '2018-07-17 05:00:00', '2018-07-18 05:00:00'),
(3, 1, 1, NULL, 14, '2018-07-18 08:14:21', '2018-07-18 08:14:21'),
(4, 2, 1, NULL, 16, '2018-07-26 10:26:36', '2018-07-26 10:26:36'),
(5, 1, 1, NULL, 102, '2018-08-17 07:52:22', '2018-08-17 07:52:22'),
(6, 1, 1, NULL, 103, '2018-08-17 08:55:26', '2018-08-17 08:55:26'),
(8, 5, 1, NULL, 104, '2018-09-03 19:42:18', '2018-09-03 19:42:18'),
(9, 6, 1, NULL, 105, '2018-09-03 19:58:35', '2018-09-03 19:58:35'),
(10, 6, 1, NULL, 14, '2018-09-03 20:00:08', '2018-09-03 20:00:18'),
(11, 1, 1, NULL, 106, '2018-09-03 21:42:14', '2018-09-03 21:42:14'),
(12, 1, 1, NULL, 107, '2018-09-03 21:55:33', '2018-09-03 21:55:33'),
(13, 13, 1, NULL, 108, '2018-09-04 00:57:28', '2018-09-04 00:57:28'),
(14, 17, 1, NULL, 109, '2018-09-04 01:18:24', '2018-09-04 01:18:24'),
(17, 17, 1, NULL, 107, '2018-09-04 02:21:22', '2018-09-04 04:32:09'),
(18, 17, 1, NULL, 106, '2018-09-04 04:26:51', '2018-09-04 04:32:07'),
(19, 1, 1, NULL, 15, '2018-09-06 05:00:00', '2018-09-06 05:00:00'),
(20, 17, 1, NULL, 110, '2018-09-07 02:10:21', '2018-09-07 02:10:21'),
(21, 1, 1, NULL, 110, '2018-09-07 02:11:07', '2018-09-07 02:11:28'),
(24, 17, 1, NULL, 112, '2018-09-07 22:15:58', '2018-09-07 22:15:58'),
(26, 1, 1, 1, 114, '2018-09-13 23:33:31', '2018-09-13 23:33:31'),
(27, 1, 1, 1, 115, '2018-09-22 04:47:54', '2018-09-22 04:47:54'),
(28, 17, 1, NULL, 115, '2018-10-06 05:20:23', '2018-10-06 05:20:26'),
(29, 17, 1, 17, 116, '2018-10-11 04:48:14', '2018-10-11 04:48:14'),
(30, 18, 1, NULL, 117, '2018-10-13 03:00:22', '2018-10-13 03:00:22'),
(31, 18, 1, 18, 118, '2018-10-13 04:46:36', '2018-10-13 04:46:36'),
(32, 17, 1, 17, 119, '2018-10-13 06:03:17', '2018-10-13 06:03:17'),
(33, 17, 1, 17, 120, '2018-10-18 00:35:31', '2018-10-18 00:35:31'),
(34, 17, 1, 17, 121, '2018-10-19 03:09:05', '2018-10-19 03:09:05'),
(35, 10, 1, NULL, 122, '2018-11-08 19:31:09', '2018-11-08 19:31:09'),
(36, 17, 1, 17, 123, '2018-11-13 07:49:53', '2018-11-13 07:49:53'),
(37, 17, 1, 17, 124, '2018-11-18 01:22:05', '2018-11-18 01:22:05'),
(38, 37, 1, NULL, 125, '2018-12-04 02:03:35', '2018-12-04 02:03:35'),
(39, 17, 1, 17, 126, '2019-01-08 06:17:53', '2019-01-08 06:17:53'),
(40, 17, 1, 17, 127, '2019-01-21 07:46:07', '2019-01-21 07:46:07'),
(41, 1, 1, NULL, 127, '2019-01-27 07:42:04', '2019-01-27 07:42:37'),
(42, 55, 1, NULL, 128, '2019-02-03 21:18:15', '2019-02-03 21:18:15'),
(43, 55, 1, 55, 129, '2019-02-03 21:24:49', '2019-02-03 21:24:49'),
(44, 1, 1, 1, 130, '2019-03-04 06:40:59', '2019-03-04 06:40:59'),
(46, 55, 1, NULL, 130, '2019-03-04 06:50:51', '2019-03-04 06:50:52'),
(47, 2, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(48, 10, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(49, 17, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(50, 18, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(51, 19, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(52, 20, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(53, 21, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(54, 22, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(55, 23, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(56, 24, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(57, 25, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(58, 26, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(59, 27, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(60, 28, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(61, 29, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(62, 30, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(63, 31, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(64, 32, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(65, 33, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(66, 34, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(67, 35, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(68, 37, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(69, 38, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(70, 39, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(71, 40, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(72, 41, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(73, 42, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(74, 43, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(75, 44, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(76, 45, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(77, 46, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(78, 47, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(79, 48, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(80, 49, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(81, 50, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(82, 51, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(83, 52, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(84, 53, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(85, 54, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(86, 55, 1, NULL, 130, '2019-03-04 06:52:33', '2019-03-04 06:52:33'),
(87, 58, 0, NULL, 127, '2019-03-15 02:11:32', '2019-03-15 02:11:32'),
(88, 59, 0, NULL, 127, '2019-03-15 03:38:14', '2019-03-15 03:38:14'),
(89, 60, 0, NULL, 127, '2019-03-15 05:53:01', '2019-03-15 05:53:01'),
(90, 61, 0, NULL, 127, '2019-03-15 06:12:03', '2019-03-15 06:12:03'),
(91, 62, 0, NULL, 127, '2019-03-15 06:40:20', '2019-03-15 06:40:20'),
(92, 63, 1, NULL, 127, '2019-03-15 06:45:18', '2019-03-15 06:47:44'),
(93, 64, 1, NULL, 131, '2019-03-15 07:14:38', '2019-03-15 07:14:38'),
(94, 67, 0, NULL, 131, '2019-03-15 07:14:49', '2019-03-15 07:14:49'),
(95, 55, 1, 55, 132, '2019-03-17 22:10:45', '2019-03-17 22:10:45'),
(96, 55, 1, 55, 133, '2019-03-17 22:11:54', '2019-03-17 22:11:54'),
(97, 55, 1, 55, 134, '2019-03-17 22:17:18', '2019-03-17 22:17:18'),
(98, 55, 1, 55, 135, '2019-03-17 22:17:24', '2019-03-17 22:17:24'),
(99, 55, 1, 55, 136, '2019-03-17 22:47:31', '2019-03-17 22:47:31'),
(100, 55, 1, 55, 137, '2019-03-17 23:01:42', '2019-03-17 23:01:42'),
(101, 55, 1, 55, 138, '2019-03-17 23:02:36', '2019-03-17 23:02:36'),
(102, 55, 1, 55, 139, '2019-03-17 23:06:12', '2019-03-17 23:06:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_has_businesses`
--

CREATE TABLE `user_has_businesses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `business_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user_has_businesses`
--

INSERT INTO `user_has_businesses` (`id`, `user_id`, `business_id`, `created_at`, `updated_at`) VALUES
(1, 17, 3, '2018-12-04 07:18:58', '2018-12-04 07:18:58'),
(2, 50, 4, '2018-12-19 04:57:34', '2018-12-19 04:57:34'),
(3, 53, 6, '2018-12-21 03:33:53', '2018-12-21 03:33:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voyager_themes`
--

CREATE TABLE `voyager_themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voyager_theme_options`
--

CREATE TABLE `voyager_theme_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `voyager_theme_id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indices de la tabla `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indices de la tabla `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indices de la tabla `discussions`
--
ALTER TABLE `discussions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `extras`
--
ALTER TABLE `extras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hours`
--
ALTER TABLE `hours`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `innovations`
--
ALTER TABLE `innovations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indices de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indices de la tabla `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indices de la tabla `taskhistorys`
--
ALTER TABLE `taskhistorys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taskhistorys_task_foreign` (`task`);

--
-- Indices de la tabla `taskhs`
--
ALTER TABLE `taskhs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `users_has_projects`
--
ALTER TABLE `users_has_projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_has_projects_projects_id_foreign` (`projects_id`),
  ADD KEY `index_key` (`users_id`) USING BTREE;

--
-- Indices de la tabla `user_has_businesses`
--
ALTER TABLE `user_has_businesses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `voyager_themes`
--
ALTER TABLE `voyager_themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `voyager_themes_folder_unique` (`folder`);

--
-- Indices de la tabla `voyager_theme_options`
--
ALTER TABLE `voyager_theme_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voyager_theme_options_voyager_theme_id_index` (`voyager_theme_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `discussions`
--
ALTER TABLE `discussions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `extras`
--
ALTER TABLE `extras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hours`
--
ALTER TABLE `hours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `innovations`
--
ALTER TABLE `innovations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `links`
--
ALTER TABLE `links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `taskhistorys`
--
ALTER TABLE `taskhistorys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `taskhs`
--
ALTER TABLE `taskhs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2328;

--
-- AUTO_INCREMENT de la tabla `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1689;

--
-- AUTO_INCREMENT de la tabla `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `users_has_projects`
--
ALTER TABLE `users_has_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT de la tabla `user_has_businesses`
--
ALTER TABLE `user_has_businesses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `voyager_themes`
--
ALTER TABLE `voyager_themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `voyager_theme_options`
--
ALTER TABLE `voyager_theme_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `taskhistorys`
--
ALTER TABLE `taskhistorys`
  ADD CONSTRAINT `taskhistorys_task_foreign` FOREIGN KEY (`task`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
