-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-10-2017 a las 03:18:09
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tecnomaqpes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Hidraulicos'),
(2, 'Electronicos'),
(3, 'Mecanicos'),
(4, 'Mandos, Terminales y Accesorios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  `subcategoria` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `ruta_imagen` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `categoria`, `subcategoria`, `nombre`, `descripcion`, `ruta_imagen`) VALUES
(1, 1, 2, 'BOMBAS  KAWASAKI', 'Bombas KAWASAKI  K3V 112 DT  para diversas  excavadoras', 'pic02.jpg'),
(6, 1, 2, 'BOMBAS PILOTO', 'BOMBAS PILOTO', 'pic02.jpg'),
(7, 1, 2, 'MOTORREDUCTORES DE TRANSLACIÓN ', 'MOTORREDUCTORES DE TRANSLACIÓN ', 'pic02.jpg'),
(8, 1, 2, 'MOTORREDUCTORES DE GIRO', 'MOTORREDUCTORES DE GIRO', 'pic02.jpg'),
(9, 1, 2, 'BANCOS DE VÁLVULAS', 'BANCOS DE VÁLVULAS', 'pic02.jpg'),
(10, 1, 2, 'PEDALES Y MANDOS', 'PEDALES Y MANDOS', 'pic02.jpg'),
(11, 1, 2, 'ACTUADORES O CILINDROS HIDRÁULICOS ', 'ACTUADORES O CILINDROS HIDRÁULICOS ', 'pic02.jpg'),
(12, 1, 2, 'VÁLVULAS DE ALIVIO Y PRINCIPALES', 'VÁLVULAS DE ALIVIO Y PRINCIPALES', 'pic02.jpg'),
(13, 1, 2, 'MANGUERAS, TUBOS, RACORES Y CHEQUES', 'MANGUERAS, TUBOS, RACORES Y CHEQUES', 'pic02.jpg'),
(14, 1, 2, 'EMPAQUETADURAS Y SELLOS EN GENERAL', 'EMPAQUETADURAS Y SELLOS EN GENERAL', 'pic02.jpg'),
(15, 1, 2, 'EMPAQUETADURAS Y SELLOS EN GENERAL', 'EMPAQUETADURAS Y SELLOS EN GENERAL', 'pic02.jpg'),
(16, 1, 2, 'FILTROS. PILOTOS DE LÍNEA , RETORNO Y SUCCIÓN', 'FILTROS. PILOTOS DE LÍNEA , RETORNO Y SUCCIÓN', 'pic02.jpg'),
(17, 1, 2, 'MANÓMETROS DE ALTA Y BAJA PRESIÓN ', 'MANÓMETROS DE ALTA Y BAJA PRESIÓN ', 'pic02.jpg'),
(18, 1, 2, 'REGULADORES Y ENFRIADORES DE ACEITE', 'REGULADORES Y ENFRIADORES DE ACEITE', 'pic02.jpg'),
(19, 2, 1, 'CABLES Y FUSIBLES', 'Cables en diferentes calibres, fusibles, bombillos, lamparas, terminales, probadores electrónicos y análogos , cintas dieléctricas, horometros digitales y análogos, reloj de revoluciones de motor, switches,pulsadores, contactores.', 'pic03.jpg'),
(20, 2, 1, 'MOTORES DE ARRANQUE', 'Motores de arranque de 12 y 24 voltios ', 'pic03.jpg'),
(21, 2, 1, 'ALTERNADORES', 'Alternadores de 12 y 24 V', 'pic02.jpg'),
(22, 2, 1, 'CARGADORES DE BATERÍAS', 'CARGADORES DE BATERÍAS', 'pic02.jpg'),
(23, 2, 1, 'Limpia Parabrisas', 'Brazos y Plumillas', 'pic02.jpg'),
(24, 2, 1, 'LAMPARAS LED', 'Lamparas LED multi voltaje ', 'pic02.jpg'),
(25, 2, 1, 'BOMBAS DE TANQUEO', 'Bomba de tanqueo 24v ', 'pic02.jpg'),
(26, 2, 1, 'BATERIAS', 'Baterías en general para cualquier vehículo.', 'pic02.jpg'),
(27, 2, 1, 'CONECTORES Y CABLEADO', 'Cables de todos los tipos.', 'pic02.jpg\r\n'),
(28, 2, 1, 'ELECTROVALVULAS ', 'Electroválvulas neumáticas y proporcionales', 'pic02.jpg'),
(29, 2, 1, 'ARNES DE MOTOR', 'Arnes de motor , cabina y chasis', 'pic02.jpg'),
(30, 2, 1, 'COMPRESORES', 'compresor de A/C ', 'pic02.jpg'),
(31, 4, 1, 'COMPUTADORES DE MANDOS', 'computadoras de equipo como de motor ', 'pic02.jpg'),
(32, 4, 1, 'MONITORES', 'Monitores para cualquier tipo de maquinaria', 'pic02.jpg'),
(33, 4, 1, 'MOTORES DE CELERACION', 'motores de celeracion ', 'pic02.jpg'),
(34, 4, 1, 'MEMBRANA DE INSTRUMENTOS', 'Membrana de instrumentos ', 'pic02.jpg'),
(35, 4, 1, 'AIRE ACONDICIONADO', 'Aires acondicionados y controles', 'pic02.jpg'),
(36, 4, 1, 'SENSORES', 'Sensores en general', 'pic02.jpg'),
(37, 4, 1, 'ENCENDEDORES', 'Encendedores para cigarrillos', 'pic02.jpg'),
(38, 4, 1, 'PASACINTAS  Y PARLANTES', 'Equipo de sonido y parlantes.', 'pic02.jpg'),
(39, 3, 1, 'KIT DE EMPAQUETADURAS', 'kit de empaquetaduras ', 'pic02.jpg'),
(40, 3, 1, 'KIT DE REPARACIÓN MOTORES', 'kit de reparación completo ( anillos ,pistones bielas, casquetes, pines, bulones )\r\n', 'pic02.jpg'),
(41, 3, 1, 'TURBOS', 'Turbos', 'pic02.jpg'),
(42, 3, 1, 'RADIADORES', 'Radiadores ', 'pic02.jpg'),
(43, 3, 1, 'MANGUERAS', 'Mangueras de agua e hidráulicas ', 'pic02.jpg'),
(44, 3, 1, 'SOPORTES DE MOTOR', 'Soportes de motor', 'pic02.jpg'),
(45, 3, 1, 'BOMBAS', 'Bombas de agua y de presión de lubricación', 'pic02.jpg'),
(46, 3, 1, 'VOLANTES', 'Volantes y cintas dentadas.', 'pic02.jpg'),
(47, 3, 1, 'KIT DE FILTROS', 'Kit de filtros generales ', 'pic02.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`id`, `categoria`, `nombre`) VALUES
(1, 1, 'Sin Categoría'),
(2, 1, 'Bombas hidraulicas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `clave` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `clave`) VALUES
(1, 'admin', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
