-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-12-2021 a las 22:42:35
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancelacion`
--

CREATE TABLE `cancelacion` (
  `id` int(11) NOT NULL,
  `motivo` longtext NOT NULL,
  `idventa` int(11) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `createAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `icono` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `titulo`, `icono`) VALUES
(1, 'Ropa Hombre', ''),
(2, 'Ropa Mujer', ''),
(3, 'Tenis', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `pais` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `direccion` varchar(400) NOT NULL,
  `zip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`id`, `iduser`, `pais`, `region`, `ciudad`, `direccion`, `zip`) VALUES
(3, 5, 'Mexico', 'Jalisco', 'Guadalajara', 'Zaragoza #343 Haciendas', 80923),
(4, 14, 'Mexico', 'Nuevo Leon', 'Monterrey', 'Av. Insurgentes #454 Arboledas', 23710),
(5, 6, 'Mexico', 'Aguascalientes', 'Aguascalientes', 'Congreso de chilpancingo #343 Morelos 1', 24741),
(7, 7, 'Mexico', 'Aguascalientes', 'Aguascalientes', 'Hacienda de chapingo 104 Real de Haciendas', 20196),
(8, 1, 'Mexico', 'Aguascalientes', 'Aguascalientes', 'Congreso de chilpancingo #813 Morelos 1', 20298),
(10, 16, 'México', 'Auascalientes', 'Aguascalientes', 'Artillero Mier 384', 20298),
(14, 28, 'México', 'Jalisco', 'Guadalajara', 'Av Fundcion #454', 34934),
(15, 20, 'México', 'Mazatlan', 'Sinaloa', 'Los altos #4565', 3044345),
(16, 34, 'México', 'Sinaloa', 'Michoacan', 'Calle Altamira #6767', 5435345),
(17, 36, 'México', 'Guanajuato', 'Leon', 'Calle Mirador #89478', 432423),
(18, 31, 'México', 'Mazatlan', 'Sinaloa', 'Av de los maestros #499', 304434),
(19, 24, 'México', 'Sinaloa', 'Michoacan', 'Calle Altamira #4534', 5435345),
(20, 23, 'México', 'Guadalajara', 'Jalisco', 'Av Pedro Parga #32432', 34934),
(21, 25, 'México', 'Guadalajara', 'Jalisco', 'Av Pedro Parga #34435', 34934),
(22, 29, 'Estados unidos', 'Texas', 'Dallas', 'Melbourne St. #2344A', 999596),
(23, 35, 'México', 'Guadalajara', 'Jalisco', 'Av Pedro #32A', 34934),
(25, 18, 'México', 'Mazatlan', 'Sinaloa', 'Los altos #454', 3044345),
(26, 30, 'México', 'Guadalajara', 'Jalisco', 'Av Convencion #32432', 34934),
(27, 15, 'México', 'Guanajuato', 'Leon', 'Calle Mirador #192', 343454),
(28, 19, 'México', 'Sinaloa', 'Michoacan', 'Calle Altamira #4534', 5435345),
(29, 21, 'México', 'Guadalajara', 'Jalisco', 'Av Fundcion #4900', 34934),
(30, 39, 'México', 'Guadalajara', 'Jalisco', 'Av Pedro Parga #32432', 34934),
(31, 6, 'México', 'Mazatlan', 'Sinaloa', 'Los altos #4565', 3044345),
(32, 38, 'México', 'Mazatlan', 'Sinaloa', 'Los altos #4565', 3044345),
(33, 27, 'México', 'Guadalajara', 'Jalisco', 'Av Fundcion #454', 34934),
(34, 37, 'México', 'Sinaloa', 'Michoacan', 'Calle Altamira #4534', 5435345),
(35, 33, 'México', 'Guadalajara', 'Jalisco', 'Av Fundcion #454', 34934),
(36, 33, 'México', 'Sinaloa', 'Michoacan', 'Calle Altamira #6767', 5435345),
(37, 33, 'México', 'Guadalajara', 'Jalisco', 'Av Pedro Parga #32432', 34934),
(38, 17, 'México', 'Sinaloa', 'Michoacan', 'Calle Altamira #4534', 5435345),
(39, 22, 'México', 'Guanajuato', 'Leon', 'Calle Mirador #89478', 432423);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria`
--

CREATE TABLE `galeria` (
  `id` int(11) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `idproducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `galeria`
--

INSERT INTO `galeria` (`id`, `foto`, `idproducto`) VALUES
(73, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs`
--

CREATE TABLE `logs` (
  `ID_Movement` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Action` varchar(30) NOT NULL,
  `Change_Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `logs`
--

INSERT INTO `logs` (`ID_Movement`, `Product_ID`, `Action`, `Change_Date`) VALUES
(1, 2, 'Deleted', '2021-11-26 16:31:18'),
(2, 37, 'Deleted', '2021-11-26 16:31:18'),
(3, 38, 'Deleted', '2021-11-26 16:31:18'),
(4, 41, 'Deleted', '2021-11-26 16:31:18'),
(5, 43, 'Deleted', '2021-11-26 16:31:18'),
(6, 1, 'Updated', '2021-11-26 16:33:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id` int(11) NOT NULL,
  `nombres` varchar(150) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `mensaje` longtext NOT NULL,
  `telefono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`id`, `nombres`, `correo`, `mensaje`, `telefono`) VALUES
(1, 'Irvin Navarro', 'irvinnavarro@gmail.com', 'Excelente página', '4491430727');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `titulo` varchar(300) NOT NULL,
  `resena` varchar(500) NOT NULL,
  `contenido` longtext NOT NULL,
  `idcategoria` int(11) DEFAULT NULL,
  `poster` varchar(200) DEFAULT NULL,
  `precio_ahora` decimal(7,2) NOT NULL,
  `precio_antes` decimal(7,2) DEFAULT NULL,
  `estado` varchar(10) NOT NULL,
  `stock` int(11) NOT NULL,
  `slug` longtext NOT NULL,
  `num_ventas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `titulo`, `resena`, `contenido`, `idcategoria`, `poster`, `precio_ahora`, `precio_antes`, `estado`, `stock`, `slug`, `num_ventas`) VALUES
(1, '', '', '', 1, '', '0.00', '0.00', '', 0, '', 0);

--
-- Disparadores `producto`
--
DELIMITER $$
CREATE TRIGGER `DeleteLog` BEFORE DELETE ON `producto` FOR EACH ROW INSERT INTO logs VALUES(null, OLD.id, "Deleted", NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `InsertLog` AFTER INSERT ON `producto` FOR EACH ROW INSERT INTO logs VALUES (null, NEW.id, "Inserted", NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `UpdateLog` AFTER UPDATE ON `producto` FOR EACH ROW INSERT INTO logs VALUES (null, NEW.id, "Updated", NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resena`
--

CREATE TABLE `resena` (
  `id` int(11) NOT NULL,
  `resena` longtext NOT NULL,
  `iduser` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `createAt` date NOT NULL,
  `foto_uno` varchar(50) DEFAULT NULL,
  `foto_dos` varchar(50) DEFAULT NULL,
  `foto_tres` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `fullname`, `email`, `email_verified_at`, `password`, `role`, `telefono`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Federico', 'Robles', 'admin@fitstyle.com', NULL, '$2y$10$pGoaLkcOLTwTScKhg6M/zOIKQyan7WO9nZTWM85Y6f0bVXx49aaSa', 'ADMIN', '4498074403', NULL, '2021-11-27 00:55:36', '2021-11-27 00:55:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `transaccion` varchar(100) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `metodo` varchar(50) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `createAt` date NOT NULL,
  `iddireccion` int(11) NOT NULL,
  `track` varchar(50) DEFAULT NULL,
  `tiempo` varchar(50) DEFAULT NULL,
  `medio_postal` varchar(50) DEFAULT NULL,
  `estado` varchar(20) NOT NULL,
  `total` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cancelacion`
--
ALTER TABLE `cancelacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cancelacion_venta` (`idventa`);

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_carrito_compra` (`idproducto`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_galeria_producto` (`idproducto`);

--
-- Indices de la tabla `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`ID_Movement`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_categoria_producto` (`idcategoria`);

--
-- Indices de la tabla `resena`
--
ALTER TABLE `resena`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_reseña_producto` (`idproducto`),
  ADD KEY `fk_reseña_user` (`iduser`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_venta_producto` (`idproducto`),
  ADD KEY `fk_venta_direccion` (`iddireccion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cancelacion`
--
ALTER TABLE `cancelacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `direccion`
--
ALTER TABLE `direccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `galeria`
--
ALTER TABLE `galeria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT de la tabla `logs`
--
ALTER TABLE `logs`
  MODIFY `ID_Movement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `resena`
--
ALTER TABLE `resena`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cancelacion`
--
ALTER TABLE `cancelacion`
  ADD CONSTRAINT `fk_cancelacion_venta` FOREIGN KEY (`idventa`) REFERENCES `venta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `fk_carrito_compra` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD CONSTRAINT `fk_galeria_producto` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_categoria_producto` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id`) REFERENCES `mensajes` (`id`);

--
-- Filtros para la tabla `resena`
--
ALTER TABLE `resena`
  ADD CONSTRAINT `fk_reseña_producto` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reseña_user` FOREIGN KEY (`iduser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `fk_venta_direccion` FOREIGN KEY (`iddireccion`) REFERENCES `direccion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_venta_producto` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
