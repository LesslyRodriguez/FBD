-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2021 a las 07:24:25
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `itpa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `id` int(11) NOT NULL,
  `areas` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`id`, `areas`) VALUES
(1, ' edificio administrativo'),
(2, ' edificio administrativo'),
(3, 'servicios escolares'),
(4, 'recursos humanos'),
(5, 'logistica'),
(6, 'biblioteca'),
(7, 'financiero'),
(8, 'directivos'),
(9, 'lia'),
(10, 'mecatronica'),
(11, 'comunicacion'),
(12, 'aula');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_persona`
--

CREATE TABLE `datos_persona` (
  `id` int(11) NOT NULL,
  `codigo_tarjeta` varchar(32) NOT NULL,
  `nombres` varchar(32) NOT NULL,
  `id_roles` int(11) NOT NULL,
  `id_area` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `datos_persona`
--

INSERT INTO `datos_persona` (`id`, `codigo_tarjeta`, `nombres`, `id_roles`, `id_area`) VALUES
(1, '201050215', 'Alan santillan ', 1, 1),
(2, '201050233', 'Lessly Rodriguez', 5, 5),
(3, '201050218', 'Ricardo Rodriguez', 10, 2),
(4, '201050210', 'Leon Muñoz', 5, 9),
(7, '201050219', 'Galilea Nazaret', 5, 9),
(8, '201050216', 'sara sanches', 5, 1),
(9, '201050217', 'Eduardo gallegos', 6, 9),
(10, '201050212', 'Andrea Jimenez', 4, 5),
(11, '201050214', 'Oscar Guzman ', 3, 9),
(12, '2010502119', 'Omar sanchez', 6, 1),
(13, '2010502365', 'Ana tello', 11, 5),
(14, '2010502111', 'Aisha Martinez', 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `hora_fecha` datetime NOT NULL,
  `id_status` int(11) NOT NULL,
  `id_transporte` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`id`, `id_persona`, `hora_fecha`, `id_status`, `id_transporte`) VALUES
(1, 3, '2021-11-09 05:57:16', 1, 1),
(201050210, 2, '2021-11-09 05:59:14', 2, 10),
(201050211, 1, '2021-11-09 06:21:35', 1, 9),
(201050212, 12, '2021-11-09 07:02:54', 1, 9),
(201050213, 4, '2021-11-09 07:04:04', 1, 5),
(201050214, 5, '2021-11-09 07:05:25', 2, 9),
(201050215, 7, '2021-11-09 07:06:03', 2, 10),
(201050216, 9, '2021-11-09 07:06:24', 1, 1),
(201050217, 8, '2021-11-09 07:06:44', 2, 5),
(201050218, 9, '2021-11-09 07:07:00', 1, 9),
(201050219, 6, '2021-11-09 07:16:07', 2, 10),
(201050220, 10, '2021-11-09 07:16:29', 1, 7),
(201050221, 11, '2021-11-09 07:17:18', 1, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `rol` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `rol`) VALUES
(1, 'docente '),
(2, 'docente '),
(3, 'directivo '),
(4, 'alumno '),
(5, 'directivo'),
(6, 'proveedor'),
(7, 'limpieza '),
(8, 'mantenimiento'),
(9, 'asistente'),
(10, 'visitante'),
(11, 'cafeteria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transporte`
--

CREATE TABLE `transporte` (
  `id` int(11) NOT NULL,
  `tipo` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `transporte`
--

INSERT INTO `transporte` (`id`, `tipo`) VALUES
(1, 'carro'),
(5, 'taxi'),
(9, 'caminando'),
(10, 'bicicleta');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `datos_persona`
--
ALTER TABLE `datos_persona`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo_tarjeta` (`codigo_tarjeta`);

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `transporte`
--
ALTER TABLE `transporte`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `datos_persona`
--
ALTER TABLE `datos_persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201050222;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `transporte`
--
ALTER TABLE `transporte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
