-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-10-2017 a las 03:52:35
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
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `ruta_imagen` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `categoria`, `nombre`, `descripcion`, `ruta_imagen`) VALUES
(1, 1, 'BOMBAS  KAWASAKI', 'Bombas kawasaki  k3v 112 dt  para diversas  excavadoras', 'pic02.jpg'),
(6, 1, 'BOMBAS PILOTO', 'Bombas piloto', 'pic02.jpg'),
(7, 1, 'MOTORREDUCTORES DE TRANSLACIÓN ', 'Motorreductores de translación ', 'pic02.jpg'),
(8, 1, 'MOTORREDUCTORES DE GIRO', 'Motorreductores de giro', 'pic02.jpg'),
(9, 1, 'BANCOS DE VÁLVULAS', 'Bancos de válvulas', 'pic02.jpg'),
(10, 1, 'PEDALES Y MANDOS', 'Pedales y mandos', 'pic02.jpg'),
(11, 1, 'ACTUADORES O CILINDROS HIDRÁULICOS ', 'Actuadores o cilindros hidráulicos ', 'pic02.jpg'),
(12, 1, 'VÁLVULAS DE ALIVIO Y PRINCIPALES', 'Válvulas de alivio y principales', 'pic02.jpg'),
(13, 1, 'MANGUERAS, TUBOS, RACORES Y CHEQUES', 'Mangueras, tubos, racores y cheques', 'pic02.jpg'),
(14, 1, 'EMPAQUETADURAS Y SELLOS EN GENERAL', 'Empaquetaduras y sellos en general', 'pic02.jpg'),
(15, 1, 'EMPAQUETADURAS Y SELLOS EN GENERAL', 'Empaquetaduras y sellos en general', 'pic02.jpg'),
(16, 1, 'FILTROS. PILOTOS DE LÍNEA , RETORNO Y SUCCIÓN', 'Filtros. pilotos de línea , retorno y succión', 'pic02.jpg'),
(17, 1, 'MANÓMETROS DE ALTA Y BAJA PRESIÓN ', 'Manómetros de alta y baja presión ', 'pic02.jpg'),
(18, 1, 'REGULADORES Y ENFRIADORES DE ACEITE', 'Reguladores y enfriadores de aceite', 'pic02.jpg'),
(19, 2, 'CABLES Y FUSIBLES', 'Cables en diferentes calibres, fusibles, bombillos, lamparas, terminales, probadores electrónicos y análogos , cintas dieléctricas, horometros digitales y análogos, reloj de revoluciones de motor, switches,pulsadores, contactores.', 'pic03.jpg'),
(20, 2, 'MOTORES DE ARRANQUE', 'Motores de arranque de 12 y 24 voltios ', 'pic03.jpg'),
(21, 2, 'ALTERNADORES', 'Alternadores de 12 y 24 v', 'pic02.jpg'),
(22, 2, 'CARGADORES DE BATERÍAS', 'Cargadores de baterías', 'pic02.jpg'),
(23, 2, 'Limpia Parabrisas', 'Brazos y plumillas', 'pic02.jpg'),
(24, 2, 'LAMPARAS LED', 'Lamparas led multi voltaje ', 'pic02.jpg'),
(25, 2, 'BOMBAS DE TANQUEO', 'Bomba de tanqueo 24v ', 'pic02.jpg'),
(26, 2, 'BATERIAS', 'Baterías en general para cualquier vehículo.', 'pic02.jpg'),
(27, 2, 'CONECTORES Y CABLEADO', 'Cables de todos los tipos.', 'pic02.jpg\r\n'),
(28, 2, 'ELECTROVALVULAS ', 'Electroválvulas neumáticas y proporcionales', 'pic02.jpg'),
(29, 2, 'ARNES DE MOTOR', 'Arnes de motor , cabina y chasis', 'pic02.jpg'),
(30, 2, 'COMPRESORES', 'Compresor de a/c ', 'pic02.jpg'),
(31, 4, 'COMPUTADORES DE MANDOS', 'Computadoras de equipo como de motor ', 'pic02.jpg'),
(32, 4, 'MONITORES', 'Monitores para cualquier tipo de maquinaria', 'pic02.jpg'),
(33, 4, 'MOTORES DE CELERACION', 'Motores de celeracion ', 'pic02.jpg'),
(34, 4, 'MEMBRANA DE INSTRUMENTOS', 'Membrana de instrumentos ', 'pic02.jpg'),
(35, 4, 'AIRE ACONDICIONADO', 'Aires acondicionados y controles', 'pic02.jpg'),
(36, 4, 'SENSORES', 'Sensores en general', 'pic02.jpg'),
(37, 4, 'ENCENDEDORES', 'Encendedores para cigarrillos', 'pic02.jpg'),
(38, 4, 'PASACINTAS  Y PARLANTES', 'Equipo de sonido y parlantes.', 'pic02.jpg'),
(39, 3, 'KIT DE EMPAQUETADURAS', 'Kit de empaquetaduras ', 'pic02.jpg'),
(40, 3, 'KIT DE REPARACIÓN MOTORES', 'Kit de reparación completo ( anillos ,pistones bielas, casquetes, pines, bulones )\r\n', 'pic02.jpg'),
(41, 3, 'TURBOS', 'Turbos', 'pic02.jpg'),
(42, 3, 'RADIADORES', 'Radiadores ', 'pic02.jpg'),
(43, 3, 'MANGUERAS', 'Mangueras de agua e hidráulicas ', 'pic02.jpg'),
(44, 3, 'SOPORTES DE MOTOR', 'Soportes de motor', 'pic02.jpg'),
(45, 3, 'BOMBAS', 'Bombas de agua y de presión de lubricación', 'pic02.jpg'),
(46, 3, 'VOLANTES', 'Volantes y cintas dentadas.', 'pic02.jpg'),
(47, 3, 'KIT DE FILTROS', 'Kit de filtros generales ', 'pic02.jpg');

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
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
