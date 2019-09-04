-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-09-2019 a las 21:34:37
-- Versión del servidor: 10.1.29-MariaDB
-- Versión de PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Estructura de tabla para la tabla `cats`
--

CREATE TABLE `cats` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `company_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cats`
--

INSERT INTO `cats` (`id`, `name`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'sustainability', 0, '2019-09-03 17:41:58', '2019-09-03 17:41:58'),
(2, 'lifeandhealth', 0, '2019-09-03 17:41:58', '2019-09-03 17:41:58'),
(3, 'lifeandhealth', 0, '2019-09-03 17:42:04', '2019-09-03 17:42:04'),
(4, 'beautyandfashion', 0, '2019-09-03 17:42:53', '2019-09-03 17:42:53'),
(5, 'homeandpets', 0, '2019-09-03 17:42:53', '2019-09-03 17:42:53'),
(6, 'scienceandtechnology', 0, '2019-09-03 17:42:53', '2019-09-03 17:42:53'),
(7, 'tourismandtravel', 0, '2019-09-03 17:42:53', '2019-09-03 17:42:53'),
(8, 'transport', 0, '2019-09-03 17:43:28', '2019-09-03 17:43:28'),
(9, 'food', 0, '2019-09-03 17:43:28', '2019-09-03 17:43:28'),
(10, 'politicsandsociety', 0, '2019-09-03 17:43:28', '2019-09-03 17:43:28'),
(11, 'sportsandentertainment', 0, '2019-09-03 17:43:28', '2019-09-03 17:43:28'),
(12, 'businessandconsumer', 0, '2019-09-03 17:43:28', '2019-09-03 17:43:28');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cats`
--
ALTER TABLE `cats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

UPDATE `innovations` SET category ='1sustainability' where category='sustainability';
UPDATE `innovations` SET category ='2lifeandhealth' where category='lifeandhealth';
UPDATE `innovations` SET category ='3artandculture' where category='artandculture';
UPDATE `innovations` SET category ='4beautyandfashion' where category='beautyandfashion';
UPDATE `innovations` SET category ='5homeandpets' where category='homeandpets';
UPDATE `innovations` SET category ='6scienceandtechnology' where category='scienceandtechnology';
UPDATE `innovations` SET category ='7tourismandtravel' where category='tourismandtravel';
UPDATE `innovations` SET category ='8transport' where category='transport';
UPDATE `innovations` SET category ='9food' where category='food';
UPDATE `innovations` SET category ='10politicsandsociety' where category='politicsandsociety';
UPDATE `innovations` SET category ='11sportsandentertainment' where category='sportsandentertainment';
UPDATE `innovations` SET category ='12businessandconsumer' where category='businessandconsumer';