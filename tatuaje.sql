-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 06-02-2018 a las 00:22:52
-- Versión del servidor: 5.6.36
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tatuaje`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boceto`
--

CREATE TABLE `boceto` (
  `id` int(11) NOT NULL,
  `enlace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_servicio` int(11) DEFAULT NULL,
  `precio` double NOT NULL,
  `dimension` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `boceto`
--

INSERT INTO `boceto` (`id`, `enlace`, `descripcion`, `id_servicio`, `precio`, `dimension`) VALUES
(1, 'http://www.tattooers.net/tattoo/706/tattoo-leg-shark.jpg', 'Tatuaje de tiburon', 1, 75, '30x10cm'),
(2, 'http://www.celebritytattoodesign.com/wp-content/uploads/2015/03/bon-jovi-fan-tattoo.jpg', 'Tatuaje Bon Jovi', 2, 100, '30x20cm'),
(8, 'https://i.pinimg.com/736x/29/c0/7a/29c07a1057944bfa629941f38da60611--harry-potter-tatoos.jpg', 'Snitch Harry Potter', 6, 60, '50x50cm'),
(9, 'https://i.pinimg.com/736x/3f/46/d5/3f46d5051cdafd7f967ab964cc6826e2--tatoo-music-music-tattoos.jpg', 'Tatuaje musical', 7, 50, '20x15cm'),
(10, 'http://icachondeo.com/wp-content/uploads/2014/02/tatoos.jpg', 'Leonidas', 8, 60, '30x40cm'),
(11, 'https://www.gettattoosideas.com/wp-content/uploads/2015/06/butterfly-tattoos-27.jpg', 'Mariposa', 9, 45, '20x20cm'),
(12, 'http://www.tattoo-models.net/wp-content/uploads/2017/03/fce6a4f7952ebce6807b307a82efb39e.jpg', 'Lobo', 10, 58, '40x50cm'),
(13, 'https://tantilizingtattoos.com/wp-content/uploads/2017/09/Finding-Tattoos.jpg', 'Dory', 11, 60, '14x33cm'),
(14, 'https://ultimatearts.com/wp-content/gallery/stripe/stripeswlandscape.jpg', 'Star Wars', 12, 80, '30x30cm'),
(15, 'http://www.culpamiatattoo.es/img/tattoos/tattoo-6.jpg', 'V de Vendetta', 13, 70, '50x20cm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primer_apellido` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segundo_apellido` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dni` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_tipopago` int(11) DEFAULT NULL,
  `ciudad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codigo_postal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provincia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descuento` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `nombre`, `primer_apellido`, `segundo_apellido`, `dni`, `direccion`, `id_tipopago`, `ciudad`, `codigo_postal`, `provincia`, `email`, `telefono`, `descuento`) VALUES
(1, 'Ignacio', 'Podrio', 'Mames', '12345678E', 'Ffdhgfngh', 1, 'Valencia', '46910', 'Valencia', 'sg@erreg.es', '123456789', 0.8),
(2, 'Rosana', 'Gutierrez', 'Apastar', '14253698T', 'Grehgfdhef', 2, 'Benetusser', '12345', 'Valencia', 'webdf@rgerg.com', '698712354', 1),
(3, 'Rosa', 'Saavedra', 'Causby', '12345689W', 'Benetusser 8', 2, 'Benetusser', '46910', 'Valencia', 'rosa@gmail.com', '978456398', 1),
(4, 'Roger', 'Rabbit', 'Segundo', '78945612L', 'Alfafar 53', 1, 'Alfafar', '46909', 'Valencia', 'roger@hotmail.com', '666777999', 0.9),
(5, 'Jessica', 'Rabbit', 'Coneja', '22389754Q', 'Alfafar 53', 2, 'Alfafar', '46019', 'Valencia', 'jessica@msn.es', '654258789', 0.9),
(6, 'Jose', 'Joestar', 'Bizarro', '14863597Q', 'Calle del Pillar Men 23', 1, 'El Cairo', '07785', 'El Cairo', 'jojo@hotmail.com', '569745936', 1),
(7, 'Dio', 'Brando', 'Tochaco', '00000001D', 'Calle Rata Penada 66', 2, 'Londres', '73698', 'Londres', 'itwasmedio@gmail.com', '000000001', 0.5),
(8, 'Waldo', 'Geraldo', 'Faldo', '75849668H', 'Avenida Wisconsin 7', 1, 'Chicago', '55569', 'Chicago', 'wgf@yahoo.wow', '698357415', 1),
(9, 'Topanga', 'Parriba', 'Depiernas', '45689725T', 'Calle del Mal Nombre 69', 2, 'Sant Boi', '66985', 'Barcelona', 'tepongo@burro.pozi', '698253621', 0.8),
(10, 'Faye', 'Valentine', 'Segunda', '55269875P', 'Calle Via Lactea 99', 2, 'Alcobendas', '99999', 'Madrid', 'faye@gmail.es', '659874125', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_factura` datetime DEFAULT NULL,
  `importe` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`id`, `descripcion`, `fecha_factura`, `importe`) VALUES
(1, 'Tatuaje 1', '2018-01-10 00:00:00', 25),
(2, 'Segundo tatuaje', '2017-05-16 00:00:00', 74.3),
(3, 'Tatuaje Tercero', '2017-04-18 00:00:00', 23.6),
(4, 'Tatuaje Cuarto', '2017-06-24 00:00:00', 45.7),
(5, 'Tatuaje Quinto', '2017-07-28 00:00:00', 93.75),
(6, 'Tatuaje Sexto', '2017-12-14 00:00:00', 100),
(7, 'Tatuaje Septimo', '2016-12-30 00:00:00', 87),
(8, 'Tatuaje Octavo', '2017-10-08 00:00:00', 89),
(9, 'Tatuaje Noveno', '2017-06-05 00:00:00', 56),
(10, 'Tatuaje DÃ©cimo', '2016-05-26 00:00:00', 66.95);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria`
--

CREATE TABLE `galeria` (
  `id` int(11) NOT NULL,
  `enlace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_imagen` datetime DEFAULT NULL,
  `id_servicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `galeria`
--

INSERT INTO `galeria` (`id`, `enlace`, `fecha_imagen`, `id_servicio`) VALUES
(1, 'http://www.tattooers.net/tattoo/706/tattoo-leg-shark.jpg', '2018-01-20 00:00:00', 1),
(2, 'http://www.celebritytattoodesign.com/wp-content/uploads/2015/03/bon-jovi-fan-tattoo.jpg', '2018-01-30 00:00:00', 2),
(3, 'https://i.pinimg.com/736x/29/c0/7a/29c07a1057944bfa629941f38da60611--harry-potter-tatoos.jpg', '2017-09-21 00:00:00', 6),
(4, 'https://i.pinimg.com/736x/3f/46/d5/3f46d5051cdafd7f967ab964cc6826e2--tatoo-music-music-tattoos.jpg', '2017-10-26 00:00:00', 7),
(5, 'http://icachondeo.com/wp-content/uploads/2014/02/tatoos.jpg', '2017-07-29 00:00:00', 8),
(6, 'https://www.gettattoosideas.com/wp-content/uploads/2015/06/butterfly-tattoos-27.jpg', '2018-01-28 00:00:00', 9),
(7, 'http://www.tattoo-models.net/wp-content/uploads/2017/03/fce6a4f7952ebce6807b307a82efb39e.jpg', '2017-10-27 10:36:00', 10),
(8, 'https://tantilizingtattoos.com/wp-content/uploads/2017/09/Finding-Tattoos.jpg', '2017-09-23 00:00:00', 11),
(9, 'https://ultimatearts.com/wp-content/gallery/stripe/stripeswlandscape.jpg', '2017-09-29 00:00:00', 12),
(10, 'http://www.culpamiatattoo.es/img/tattoos/tattoo-6.jpg', '2017-10-21 00:00:00', 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id` int(11) NOT NULL,
  `comentario` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_factura` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id`, `comentario`, `id_factura`, `id_cliente`, `id_usuario`) VALUES
(1, 'Tatuaje de un tiburon a color', 1, 1, 2),
(2, 'Retrato de Bon Jovi sin color', 2, 2, 1),
(6, 'Tatuaje Snitch dorada a color', 3, 3, 5),
(7, 'Tatuaje musical en brazo', 4, 4, 4),
(8, 'Leonidas a color en brazo', 5, 6, 2),
(9, 'Mariposa en hombro a color', 10, 5, 1),
(10, 'Lobo en brazo a color', 9, 7, 2),
(11, 'Dory de pequeÃ±a', 8, 9, 5),
(12, 'Androide Star Wars', 7, 8, 5),
(13, 'V de Vendetta', 6, 10, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesion`
--

CREATE TABLE `sesion` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_servicio` int(11) DEFAULT NULL,
  `fecha_inicio` datetime DEFAULT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sesion`
--

INSERT INTO `sesion` (`id`, `descripcion`, `id_servicio`, `fecha_inicio`, `fecha_fin`, `cantidad`) VALUES
(1, 'Sesiones para el tatuaje 1', 1, '2018-01-03 00:00:00', '2018-01-04 00:00:00', 2),
(2, 'Sesiones para el tatuaje 2', 2, '2018-01-24 00:00:00', '2018-01-24 00:00:00', 1),
(3, 'Tatuaje Tercero', 6, '2018-02-06 10:24:00', '2018-02-06 11:46:00', 1),
(4, 'Tatuaje Cuarto', 7, '2017-11-16 16:42:00', '2017-11-16 17:49:00', 1),
(5, 'Tatuaje Quinto', 8, '2018-01-18 15:39:00', '2018-02-07 16:43:00', 2),
(6, 'Tatuaje sexto', 9, '2017-12-06 10:31:00', '2018-02-07 11:33:00', 2),
(7, 'Tatuaje Septimo', 10, '2018-02-06 17:48:00', '2018-02-07 18:54:00', 2),
(8, 'Tatuaje Octavo', 11, '2017-10-19 16:00:00', '2017-10-19 18:45:00', 1),
(9, 'Tatuaje Noveno', 12, '2018-02-01 10:00:00', '2018-02-01 11:47:00', 1),
(10, 'Tatuaje Decimo', 13, '2018-01-15 00:00:00', '2018-01-16 00:00:00', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopago`
--

CREATE TABLE `tipopago` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipopago`
--

INSERT INTO `tipopago` (`id`, `descripcion`) VALUES
(1, 'Efectivo'),
(2, 'Tarjeta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`id`, `descripcion`) VALUES
(1, 'Administrador'),
(2, 'Empleado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primer_apellido` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `segundo_apellido` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_alta` datetime DEFAULT NULL,
  `id_tipousuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `primer_apellido`, `segundo_apellido`, `login`, `password`, `email`, `fecha_alta`, `id_tipousuario`) VALUES
(1, 'Fernando', 'Martin', 'Valero', 'fernando', '076a89c23179cedfc61171fe400ecf01fb76b9a48a68fb82dd0cd688d684d900', 'fmv_7791@hotmail.com', '2018-01-25 00:00:00', 1),
(2, 'Hector', 'Mas', NULL, 'hector', '51d3ba50d3e136bc03ca019303427831f4f49d88b775b4a529685533c8ce0e65', 'cxvbcv@sdfg.es', '2018-01-16 00:00:00', 2),
(3, 'Usuario', 'De', 'Pruebas', 'usuario', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'awsdf@asdf.es', '2018-01-01 00:00:00', 2),
(4, 'Ismael', 'Beiro', 'Gutierrez', 'ismael', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'isma@wow.com', '2018-02-06 00:00:00', 1),
(5, 'Empar', 'Manuela', 'Pozi', 'empar', 'da8ab09ab4889c6208116a675cad0b13e335943bd7fc418782d054b32fdfba04', 'empar@yolo.es', '2017-08-17 00:00:00', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `boceto`
--
ALTER TABLE `boceto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_imagen_servicio1_idx` (`id_servicio`) USING BTREE;

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cliente_tipopago1_idx` (`id_tipopago`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_galeria_servicio1_idx` (`id_servicio`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tatuaje_factura1_idx` (`id_factura`),
  ADD KEY `fk_tatuaje_cliente1_idx` (`id_cliente`),
  ADD KEY `fk_tatuaje_usuario1_idx` (`id_usuario`);

--
-- Indices de la tabla `sesion`
--
ALTER TABLE `sesion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sesion_servicio1_idx` (`id_servicio`);

--
-- Indices de la tabla `tipopago`
--
ALTER TABLE `tipopago`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Usuario_tipousuario_idx` (`id_tipousuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `boceto`
--
ALTER TABLE `boceto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `galeria`
--
ALTER TABLE `galeria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `sesion`
--
ALTER TABLE `sesion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `tipopago`
--
ALTER TABLE `tipopago`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `boceto`
--
ALTER TABLE `boceto`
  ADD CONSTRAINT `fk_imagen_servicio1` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `fk_cliente_tipopago1` FOREIGN KEY (`id_tipopago`) REFERENCES `tipopago` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD CONSTRAINT `fk_tatuaje_cliente1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tatuaje_factura1` FOREIGN KEY (`id_factura`) REFERENCES `factura` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tatuaje_usuario1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `sesion`
--
ALTER TABLE `sesion`
  ADD CONSTRAINT `fk_sesion_servicio1` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_Usuario_tipousuario` FOREIGN KEY (`id_tipousuario`) REFERENCES `tipousuario` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
