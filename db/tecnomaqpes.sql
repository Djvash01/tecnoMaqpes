-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-10-2017 a las 00:52:09
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
(1, 1, 'BOMBAS  KAWASAKI', 'Bombas kawasaki  k3v 112 dt  para diversas  excavadoras', 'pic01.jpg'),
(6, 1, 'BOMBAS PILOTO', 'Bombas piloto', 'pic06.jpg'),
(7, 1, 'MOTORREDUCTORES DE TRANSLACIÓN ', 'Motorreductores de translación ', 'pic07.jpg'),
(8, 1, 'MOTORREDUCTORES DE GIRO', 'Motorreductores de giro', 'pic08.jpg'),
(9, 1, 'BANCOS DE VÁLVULAS', 'Bancos de válvulas', 'pic09.jpg'),
(10, 1, 'PEDALES Y MANDOS', 'Pedales y mandos', 'pic10.jpg'),
(11, 1, 'ACTUADORES O CILINDROS HIDRÁULICOS ', 'Actuadores o cilindros hidráulicos ', 'pic11.jpg'),
(12, 1, 'VÁLVULAS DE ALIVIO Y PRINCIPALES', 'Válvulas de alivio y principales', 'pic12.jpg'),
(13, 1, 'MANGUERAS, TUBOS, RACORES Y CHEQUES', 'Mangueras, tubos, racores y cheques', 'pic13.jpg'),
(14, 1, 'EMPAQUETADURAS Y SELLOS EN GENERAL', 'Empaquetaduras y sellos en general', 'pic14.jpg'),
(16, 1, 'FILTROS. PILOTOS DE LÍNEA , RETORNO Y SUCCIÓN', 'Filtros. pilotos de línea , retorno y succión', 'pic16.jpg'),
(17, 1, 'MANÓMETROS DE ALTA Y BAJA PRESIÓN ', 'Manómetros de alta y baja presión ', 'pic17.jpg'),
(18, 1, 'REGULADORES Y ENFRIADORES DE ACEITE', 'Reguladores y enfriadores de aceite', 'pic18.jpg'),
(19, 2, 'CABLES Y FUSIBLES', 'Cables en diferentes calibres, fusibles, bombillos, lamparas, terminales, probadores electrónicos y análogos , cintas dieléctricas, horometros digitales y análogos, reloj de revoluciones de motor, switches,pulsadores, contactores.', 'pic19.jpg'),
(20, 2, 'MOTORES DE ARRANQUE', 'Motores de arranque de 12 y 24 voltios ', 'pic20.jpg'),
(21, 2, 'ALTERNADORES', 'Alternadores de 12 y 24 v', 'pic21.jpg'),
(22, 2, 'CARGADORES DE BATERÍAS', 'Cargadores de baterías', 'pic22.jpg'),
(23, 2, 'Limpia Parabrisas', 'Brazos y plumillas', 'pic23.jpg'),
(24, 2, 'LAMPARAS LED', 'Lamparas led multi voltaje ', 'pic24.jpg'),
(25, 2, 'BOMBAS DE TANQUEO', 'Bomba de tanqueo 24v ', 'pic25.jpg'),
(26, 2, 'BATERIAS', 'Baterías en general para cualquier vehículo.', 'pic26.jpg'),
(27, 2, 'CONECTORES Y CABLEADO', 'Cables de todos los tipos.', 'pic27.jpg\n'),
(28, 2, 'ELECTROVALVULAS ', 'Electroválvulas neumáticas y proporcionales', 'pic28.jpg'),
(29, 2, 'ARNES DE MOTOR', 'Arnes de motor , cabina y chasis', 'pic29.jpg'),
(30, 2, 'COMPRESORES', 'Compresor de a/c ', 'pic30.jpg'),
(31, 4, 'COMPUTADORES DE MANDOS', 'Computadoras de equipo como de motor ', 'pic31.jpg'),
(32, 4, 'MONITORES', 'Monitores para cualquier tipo de maquinaria', 'pic32.jpg'),
(33, 4, 'MOTORES DE CELERACION', 'Motores de celeracion ', 'pic33.jpg'),
(34, 4, 'MEMBRANA DE INSTRUMENTOS', 'Membrana de instrumentos ', 'pic34.jpg'),
(35, 4, 'AIRE ACONDICIONADO', 'Aires acondicionados y controles', 'pic35.jpg'),
(36, 4, 'SENSORES', 'Sensores en general', 'pic36.jpg'),
(37, 4, 'ENCENDEDORES', 'Encendedores para cigarrillos', 'pic37.jpg'),
(38, 4, 'PASACINTAS  Y PARLANTES', 'Equipo de sonido y parlantes.', 'pic38.jpg'),
(39, 3, 'KIT DE EMPAQUETADURAS', 'Kit de empaquetaduras ', 'pic39.jpg'),
(40, 3, 'KIT DE REPARACIÓN MOTORES', 'Kit de reparación completo ( anillos ,pistones bielas, casquetes, pines, bulones )\r\n', 'pic40.jpg'),
(41, 3, 'TURBOS', 'Turbos', 'pic41.jpg'),
(42, 3, 'RADIADORES', 'Radiadores ', 'pic42.jpg'),
(43, 3, 'MANGUERAS', 'Mangueras de agua e hidráulicas ', 'pic43.jpg'),
(44, 3, 'SOPORTES DE MOTOR', 'Soportes de motor', 'pic44.jpg'),
(45, 3, 'BOMBAS', 'Bombas de agua y de presión de lubricación', 'pic45.jpg'),
(46, 3, 'VOLANTES', 'Volantes y cintas dentadas.', 'pic46.jpg'),
(47, 3, 'KIT DE FILTROS', 'Kit de filtros generales ', 'pic47.jpg');

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
