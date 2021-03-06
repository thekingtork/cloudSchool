-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 19-12-2012 a las 19:45:34
-- Versión del servidor: 5.5.16
-- Versión de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cloud_cloudschool`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE IF NOT EXISTS `actividad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `porcentaje` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publicar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `categoria` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_inicio` datetime NOT NULL,
  `date_final` datetime NOT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `logro_competencia` longtext COLLATE utf8_unicode_ci NOT NULL,
  `plan_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8DF2BD06E899029B` (`plan_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`id`, `nombre`, `porcentaje`, `publicar`, `categoria`, `tipo`, `date_inicio`, `date_final`, `descripcion`, `logro_competencia`, `plan_id`) VALUES
(1, 'Actividad', '25', 'no', 'Virtual', 'Foro', '2012-12-18 05:07:50', '2012-12-18 05:07:50', 'Descripcion', 'Logros ó Competencias', 2),
(2, 'Actividad', '25', 'no', 'Virtual', 'Foro', '2012-12-18 05:07:50', '2012-12-18 05:07:50', 'Descripcion', 'Logros ó Competencias', 2),
(3, 'Actividad', '25', 'no', 'Virtual', 'Foro', '2012-12-18 05:07:50', '2012-12-18 05:07:50', 'Descripcion', 'Logros ó Competencias', 2),
(4, 'Actividad', '25', 'no', 'Virtual', 'Foro', '2012-12-18 05:07:50', '2012-12-18 05:07:50', 'Descripcion', 'Logros ó Competencias', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad_categoria`
--

CREATE TABLE IF NOT EXISTS `actividad_categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `actividad_categoria`
--

INSERT INTO `actividad_categoria` (`id`, `nombre`) VALUES
(1, 'Virtual'),
(2, 'En Casa'),
(3, 'En Clase');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad_tipo`
--

CREATE TABLE IF NOT EXISTS `actividad_tipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria_id` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_753D4F033397707A` (`categoria_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `actividad_tipo`
--

INSERT INTO `actividad_tipo` (`id`, `categoria_id`, `nombre`) VALUES
(1, 1, 'Foro'),
(2, 1, 'Chat'),
(3, 1, 'Evaluacion'),
(4, 3, 'Quiz'),
(5, 3, 'Exposición'),
(6, 3, 'Taller'),
(7, 3, 'Evaluacion'),
(8, 3, 'Otro'),
(9, 2, 'Tarea'),
(10, 1, 'Investigación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ajustesevaluacion`
--

CREATE TABLE IF NOT EXISTS `ajustesevaluacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modelo_evaluacion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `acumula` tinyint(1) NOT NULL,
  `escala` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `ajustesevaluacion`
--

INSERT INTO `ajustesevaluacion` (`id`, `modelo_evaluacion`, `acumula`, `escala`) VALUES
(1, 'Por Fortaleza y Dificultades', 0, 'Escala Cuantitativa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anio`
--

CREATE TABLE IF NOT EXISTS `anio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_create` datetime NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `anio`
--

INSERT INTO `anio` (`id`, `nombre`, `date_create`, `active`) VALUES
(2, '2012', '2012-11-19 02:45:43', 0),
(3, '2011', '2011-01-01 11:25:39', 0),
(4, '2010', '2010-02-01 13:19:28', 0),
(5, '2009', '2009-02-02 07:16:16', 0),
(6, '2008', '2008-02-04 08:16:00', 0),
(7, '2007', '2007-11-05 09:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE IF NOT EXISTS `area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`id`, `nombre`) VALUES
(1, 'Ciencias'),
(2, 'Area'),
(3, 'Area');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE IF NOT EXISTS `asignatura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area_id` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DD1ED51EBD0F409C` (`area_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`id`, `area_id`, `nombre`) VALUES
(1, 1, 'Quimica'),
(2, 1, 'Ciencias Naturales'),
(3, 1, 'Fisica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo_docente`
--

CREATE TABLE IF NOT EXISTS `cargo_docente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `cargo_docente`
--

INSERT INTO `cargo_docente` (`id`, `nombre`) VALUES
(1, 'Docente'),
(2, 'Director de Grupo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigo_verificacion`
--

CREATE TABLE IF NOT EXISTS `codigo_verificacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `modulo_id` int(11) DEFAULT NULL,
  `codigo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_create` datetime NOT NULL,
  `expire` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_26D7B57AA76ED395` (`user_id`),
  KEY `IDX_26D7B57AC07F55F5` (`modulo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `codigo_verificacion`
--

INSERT INTO `codigo_verificacion` (`id`, `user_id`, `modulo_id`, `codigo`, `date_create`, `expire`) VALUES
(9, 3, 1, 'OKSTOLNHT', '2012-11-19 23:08:00', 1),
(10, 3, 1, 'CMCOLURRK', '2012-11-25 16:03:00', 1),
(11, 3, 1, 'PUAAMWVTI', '2012-11-25 16:10:00', 1),
(12, 3, 1, 'XZUVWRYUP', '2012-11-25 16:12:00', 1),
(13, 3, 1, 'WGCNJSVZG', '2012-11-25 16:19:33', 1),
(14, 3, 2, 'CMMCGAUGQ', '2012-11-25 21:10:49', 0),
(15, 3, 2, 'ZRBCRBWKL', '2012-11-25 21:21:02', 0),
(16, 3, 2, 'XSNKSNTDW', '2012-11-25 21:42:57', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE IF NOT EXISTS `curso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cupo` int(11) NOT NULL,
  `grado_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BFA6FE891A441CC` (`grado_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`id`, `nombre`, `cupo`, `grado_id`) VALUES
(1, 'A', 3, 1),
(2, 'B', 35, 1),
(3, 'C', 35, 1),
(4, 'A', 35, 3),
(5, 'B', 35, 3),
(6, 'C', 35, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE IF NOT EXISTS `departamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33 ;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id`, `nombre`) VALUES
(1, 'Amazonas'),
(2, 'Antioquia'),
(3, 'Arauca'),
(4, 'Atlántico'),
(5, 'Bolívar'),
(6, 'Boyacá'),
(7, 'Caldas'),
(8, 'Caquetá'),
(9, 'Casanare'),
(10, 'Cauca'),
(11, 'Cesar'),
(12, 'Chocó'),
(13, 'Córdoba'),
(14, 'Cundinamarca'),
(15, 'Güainia'),
(16, 'Guaviare'),
(17, 'Huila'),
(18, 'La Guajira'),
(19, 'Magdalena'),
(20, 'Meta'),
(21, 'Nariño'),
(22, 'Norte de Santander'),
(23, 'Putumayo'),
(24, 'Quindo'),
(25, 'Risaralda'),
(26, 'San Andrés y Providencia'),
(27, 'Santander'),
(28, 'Sucre'),
(29, 'Tolima'),
(30, 'Valle del Cauca'),
(31, 'Vaupés'),
(32, 'Vichada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `esccualitativa`
--

CREATE TABLE IF NOT EXISTS `esccualitativa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valoracion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `esccualitativa`
--

INSERT INTO `esccualitativa` (`id`, `valoracion`) VALUES
(1, 'Insuficiente (I)'),
(2, 'Aceptable (A)'),
(3, 'Sobresaliente (S)'),
(4, 'Excelente (E)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escnacional`
--

CREATE TABLE IF NOT EXISTS `escnacional` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valoracion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `escnacional`
--

INSERT INTO `escnacional` (`id`, `valoracion`) VALUES
(1, 'Desempeño Bajo'),
(2, 'Desempeño Básico'),
(3, 'Desempeño Alto'),
(4, 'Desempeño Superior');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_civil`
--

CREATE TABLE IF NOT EXISTS `estado_civil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `estado_civil`
--

INSERT INTO `estado_civil` (`id`, `nombre`) VALUES
(1, 'Soltero(a)'),
(2, 'Casado(a)'),
(3, 'Divorciado(a)'),
(4, 'Viudo(a)'),
(5, 'Unión libre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_notificacion`
--

CREATE TABLE IF NOT EXISTS `estado_notificacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `estado_notificacion`
--

INSERT INTO `estado_notificacion` (`id`, `nombre`) VALUES
(1, 'No Leido'),
(2, 'Leido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_periodo`
--

CREATE TABLE IF NOT EXISTS `estado_periodo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `estado_periodo`
--

INSERT INTO `estado_periodo` (`id`, `nombre`) VALUES
(1, 'En proceso'),
(2, 'Detenido'),
(3, 'Finalizado'),
(4, 'En Espera');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE IF NOT EXISTS `grado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nivel_id` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B98F472ADA3426AE` (`nivel_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `grado`
--

INSERT INTO `grado` (`id`, `nivel_id`, `nombre`) VALUES
(1, 11, 'MATERNAL'),
(2, 11, 'TRANSICION'),
(3, 12, 'Primero'),
(4, 12, 'Segundo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado_sede`
--

CREATE TABLE IF NOT EXISTS `grado_sede` (
  `sede_id` int(11) NOT NULL,
  `grado_id` int(11) NOT NULL,
  PRIMARY KEY (`sede_id`,`grado_id`),
  KEY `IDX_25628CA7E19F41BF` (`sede_id`),
  KEY `IDX_25628CA791A441CC` (`grado_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion`
--

CREATE TABLE IF NOT EXISTS `inscripcion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anio_id` int(11) DEFAULT NULL,
  `inscripcion_inicio` datetime NOT NULL,
  `primer_periodo_final` datetime NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_935E99F0EC34184E` (`anio_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `inscripcion`
--

INSERT INTO `inscripcion` (`id`, `anio_id`, `inscripcion_inicio`, `primer_periodo_final`, `active`) VALUES
(5, 2, '2013-02-24 00:00:00', '2013-05-24 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institucion`
--

CREATE TABLE IF NOT EXISTS `institucion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dane` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `men` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rector` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secretario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `distribucion_usuario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `modelo_pedagogico` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url_imagen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `institucion`
--

INSERT INTO `institucion` (`id`, `nombre`, `direccion`, `ciudad`, `telefono`, `fax`, `nit`, `dane`, `men`, `rector`, `secretario`, `email`, `distribucion_usuario`, `modelo_pedagogico`, `url_imagen`) VALUES
(1, 'IE ejemplo 1', 'ejemplo 1', 'monteria', 'ejemplo 1', 'ejemplo 1', 'ejemplo 1', 'ejemplo 1', 'ejemplo 1', 'ejemplo 1', 'ejemplo 1', 'ejemplo@ejemplo.com', 'ejemplo 1', 'ejemplo 1', '870666.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornada`
--

CREATE TABLE IF NOT EXISTS `jornada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `jornada`
--

INSERT INTO `jornada` (`id`, `nombre`) VALUES
(1, 'Mañana'),
(2, 'Tarde'),
(3, 'Noche');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornada_sede`
--

CREATE TABLE IF NOT EXISTS `jornada_sede` (
  `sede_id` int(11) NOT NULL,
  `jornada_id` int(11) NOT NULL,
  PRIMARY KEY (`sede_id`,`jornada_id`),
  KEY `IDX_D0D5E90E19F41BF` (`sede_id`),
  KEY `IDX_D0D5E9026E992D9` (`jornada_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mmodulo_codigo`
--

CREATE TABLE IF NOT EXISTS `mmodulo_codigo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `mmodulo_codigo`
--

INSERT INTO `mmodulo_codigo` (`id`, `nombre`) VALUES
(1, 'apertura_año'),
(2, 'apertura_inscripciones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelocarnet`
--

CREATE TABLE IF NOT EXISTS `modelocarnet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modelo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dismodelo` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE IF NOT EXISTS `municipio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departamento_id` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FE98F5E05A91C08D` (`departamento_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1103 ;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`id`, `departamento_id`, `nombre`) VALUES
(1, 1, 'Leticia'),
(2, 1, 'Puerto Nariño'),
(3, 2, 'Abejorral'),
(4, 2, 'Abriaquí'),
(5, 2, 'Alejandria'),
(6, 2, 'Amagá'),
(7, 2, 'Amalfi'),
(8, 2, 'Andes'),
(9, 2, 'Angelópolis'),
(10, 2, 'Angostura'),
(11, 2, 'Anorí'),
(12, 2, 'Anzá'),
(13, 2, 'Apartadó'),
(14, 2, 'Arboletes'),
(15, 2, 'Argelia'),
(16, 2, 'Armenia'),
(17, 2, 'Barbosa'),
(18, 2, 'Bello'),
(19, 2, 'Belmira'),
(20, 2, 'Betania'),
(21, 2, 'Betulia'),
(22, 2, 'Bolívar'),
(23, 2, 'Briceño'),
(24, 2, 'Burítica'),
(25, 2, 'Caicedo'),
(26, 2, 'Caldas'),
(27, 2, 'Campamento'),
(28, 2, 'Caracolí'),
(29, 2, 'Caramanta'),
(30, 2, 'Carepa'),
(31, 2, 'Carmen de Viboral'),
(32, 2, 'Carolina'),
(33, 2, 'Caucasia'),
(34, 2, 'Cañasgordas'),
(35, 2, 'Chigorodó'),
(36, 2, 'Cisneros'),
(37, 2, 'Cocorná'),
(38, 2, 'Concepción'),
(39, 2, 'Concordia'),
(40, 2, 'Copacabana'),
(41, 2, 'Cáceres'),
(42, 2, 'Dabeiba'),
(43, 2, 'Don Matías'),
(44, 2, 'Ebéjico'),
(45, 2, 'El Bagre'),
(46, 2, 'Entrerríos'),
(47, 2, 'Envigado'),
(48, 2, 'Fredonia'),
(49, 2, 'Frontino'),
(50, 2, 'Giraldo'),
(51, 2, 'Girardota'),
(52, 2, 'Granada'),
(53, 2, 'Guadalupe'),
(54, 2, 'Guarne'),
(55, 2, 'Guatapé'),
(56, 2, 'Gómez Plata'),
(57, 2, 'Heliconia'),
(58, 2, 'Hispania'),
(59, 2, 'Itagüí'),
(60, 2, 'Ituango'),
(61, 2, 'Jardín'),
(62, 2, 'Jericó'),
(63, 2, 'La Ceja'),
(64, 2, 'La Estrella'),
(65, 2, 'La Pintada'),
(66, 2, 'La Unión'),
(67, 2, 'Liborina'),
(68, 2, 'Maceo'),
(69, 2, 'Marinilla'),
(70, 2, 'Medellín'),
(71, 2, 'Montebello'),
(72, 2, 'Murindó'),
(73, 2, 'Mutatá'),
(74, 2, 'Nariño'),
(75, 2, 'Nechí'),
(76, 2, 'Necoclí'),
(77, 2, 'Olaya'),
(78, 2, 'Peque'),
(79, 2, 'Peñol'),
(80, 2, 'Pueblorrico'),
(81, 2, 'Puerto Berrío'),
(82, 2, 'Puerto Nare'),
(83, 2, 'Puerto Triunfo'),
(84, 2, 'Remedios'),
(85, 2, 'Retiro'),
(86, 2, 'Ríonegro'),
(87, 2, 'Sabanalarga'),
(88, 2, 'Sabaneta'),
(89, 2, 'Salgar'),
(90, 2, 'San Andrés de Cuerquía'),
(91, 2, 'San Carlos'),
(92, 2, 'San Francisco'),
(93, 2, 'San Jerónimo'),
(94, 2, 'San José de Montaña'),
(95, 2, 'San Juan de Urabá'),
(96, 2, 'San Luís'),
(97, 2, 'San Pedro'),
(98, 2, 'San Pedro de Urabá'),
(99, 2, 'San Rafael'),
(100, 2, 'San Roque'),
(101, 2, 'San Vicente'),
(102, 2, 'Santa Bárbara'),
(103, 2, 'Santa Fé de Antioquia'),
(104, 2, 'Santa Rosa de Osos'),
(105, 2, 'Santo Domingo'),
(106, 2, 'Santuario'),
(107, 2, 'Segovia'),
(108, 2, 'Sonsón'),
(109, 2, 'Sopetrán'),
(110, 2, 'Tarazá'),
(111, 2, 'Tarso'),
(112, 2, 'Titiribí'),
(113, 2, 'Toledo'),
(114, 2, 'Turbo'),
(115, 2, 'Támesis'),
(116, 2, 'Uramita'),
(117, 2, 'Urrao'),
(118, 2, 'Valdivia'),
(119, 2, 'Valparaiso'),
(120, 2, 'Vegachí'),
(121, 2, 'Venecia'),
(122, 2, 'Vigía del Fuerte'),
(123, 2, 'Yalí'),
(124, 2, 'Yarumal'),
(125, 2, 'Yolombó'),
(126, 2, 'Yondó (Casabe)'),
(127, 2, 'Zaragoza'),
(128, 3, 'Arauca'),
(129, 3, 'Arauquita'),
(130, 3, 'Cravo Norte'),
(131, 3, 'Fortúl'),
(132, 3, 'Puerto Rondón'),
(133, 3, 'Saravena'),
(134, 3, 'Tame'),
(135, 4, 'Baranoa'),
(136, 4, 'Barranquilla'),
(137, 4, 'Campo de la Cruz'),
(138, 4, 'Candelaria'),
(139, 4, 'Galapa'),
(140, 4, 'Juan de Acosta'),
(141, 4, 'Luruaco'),
(142, 4, 'Malambo'),
(143, 4, 'Manatí'),
(144, 4, 'Palmar de Varela'),
(145, 4, 'Piojo'),
(146, 4, 'Polonuevo'),
(147, 4, 'Ponedera'),
(148, 4, 'Puerto Colombia'),
(149, 4, 'Repelón'),
(150, 4, 'Sabanagrande'),
(151, 4, 'Sabanalarga'),
(152, 4, 'Santa Lucía'),
(153, 4, 'Santo Tomás'),
(154, 4, 'Soledad'),
(155, 4, 'Suan'),
(156, 4, 'Tubará'),
(157, 4, 'Usiacuri'),
(158, 5, 'Achí'),
(159, 5, 'Altos del Rosario'),
(160, 5, 'Arenal'),
(161, 5, 'Arjona'),
(162, 5, 'Arroyohondo'),
(163, 5, 'Barranco de Loba'),
(164, 5, 'Calamar'),
(165, 5, 'Cantagallo'),
(166, 5, 'Cartagena'),
(167, 5, 'Cicuco'),
(168, 5, 'Clemencia'),
(169, 5, 'Córdoba'),
(170, 5, 'El Carmen de Bolívar'),
(171, 5, 'El Guamo'),
(172, 5, 'El Peñon'),
(173, 5, 'Hatillo de Loba'),
(174, 5, 'Magangué'),
(175, 5, 'Mahates'),
(176, 5, 'Margarita'),
(177, 5, 'María la Baja'),
(178, 5, 'Mompós'),
(179, 5, 'Montecristo'),
(180, 5, 'Morales'),
(181, 5, 'Norosí'),
(182, 5, 'Pinillos'),
(183, 5, 'Regidor'),
(184, 5, 'Río Viejo'),
(185, 5, 'San Cristobal'),
(186, 5, 'San Estanislao'),
(187, 5, 'San Fernando'),
(188, 5, 'San Jacinto'),
(189, 5, 'San Jacinto del Cauca'),
(190, 5, 'San Juan de Nepomuceno'),
(191, 5, 'San Martín de Loba'),
(192, 5, 'San Pablo'),
(193, 5, 'Santa Catalina'),
(194, 5, 'Santa Rosa '),
(195, 5, 'Santa Rosa del Sur'),
(196, 5, 'Simití'),
(197, 5, 'Soplaviento'),
(198, 5, 'Talaigua Nuevo'),
(199, 5, 'Tiquisio (Puerto Rico)'),
(200, 5, 'Turbaco'),
(201, 5, 'Turbaná'),
(202, 5, 'Villanueva'),
(203, 5, 'Zambrano'),
(204, 6, 'Almeida'),
(205, 6, 'Aquitania'),
(206, 6, 'Arcabuco'),
(207, 6, 'Belén'),
(208, 6, 'Berbeo'),
(209, 6, 'Beteitiva'),
(210, 6, 'Boavita'),
(211, 6, 'Boyacá'),
(212, 6, 'Briceño'),
(213, 6, 'Buenavista'),
(214, 6, 'Busbanza'),
(215, 6, 'Caldas'),
(216, 6, 'Campohermoso'),
(217, 6, 'Cerinza'),
(218, 6, 'Chinavita'),
(219, 6, 'Chiquinquirá'),
(220, 6, 'Chiscas'),
(221, 6, 'Chita'),
(222, 6, 'Chitaraque'),
(223, 6, 'Chivatá'),
(224, 6, 'Chíquiza'),
(225, 6, 'Chívor'),
(226, 6, 'Ciénaga'),
(227, 6, 'Coper'),
(228, 6, 'Corrales'),
(229, 6, 'Covarachía'),
(230, 6, 'Cubará'),
(231, 6, 'Cucaita'),
(232, 6, 'Cuitiva'),
(233, 6, 'Cómbita'),
(234, 6, 'Duitama'),
(235, 6, 'El Cocuy'),
(236, 6, 'El Espino'),
(237, 6, 'Firavitoba'),
(238, 6, 'Floresta'),
(239, 6, 'Gachantivá'),
(240, 6, 'Garagoa'),
(241, 6, 'Guacamayas'),
(242, 6, 'Guateque'),
(243, 6, 'Guayatá'),
(244, 6, 'Guicán'),
(245, 6, 'Gámeza'),
(246, 6, 'Izá'),
(247, 6, 'Jenesano'),
(248, 6, 'Jericó'),
(249, 6, 'La Capilla'),
(250, 6, 'La Uvita'),
(251, 6, 'La Victoria'),
(252, 6, 'Labranzagrande'),
(253, 6, 'Macanal'),
(254, 6, 'Maripí'),
(255, 6, 'Miraflores'),
(256, 6, 'Mongua'),
(257, 6, 'Monguí'),
(258, 6, 'Moniquirá'),
(259, 6, 'Motavita'),
(260, 6, 'Muzo'),
(261, 6, 'Nobsa'),
(262, 6, 'Nuevo Colón'),
(263, 6, 'Oicatá'),
(264, 6, 'Otanche'),
(265, 6, 'Pachavita'),
(266, 6, 'Paipa'),
(267, 6, 'Pajarito'),
(268, 6, 'Panqueba'),
(269, 6, 'Pauna'),
(270, 6, 'Paya'),
(271, 6, 'Paz de Río'),
(272, 6, 'Pesca'),
(273, 6, 'Pisva'),
(274, 6, 'Puerto Boyacá'),
(275, 6, 'Páez'),
(276, 6, 'Quipama'),
(277, 6, 'Ramiriquí'),
(278, 6, 'Rondón'),
(279, 6, 'Ráquira'),
(280, 6, 'Saboyá'),
(281, 6, 'Samacá'),
(282, 6, 'San Eduardo'),
(283, 6, 'San José de Pare'),
(284, 6, 'San Luís de Gaceno'),
(285, 6, 'San Mateo'),
(286, 6, 'San Miguel de Sema'),
(287, 6, 'San Pablo de Borbur'),
(288, 6, 'Santa María'),
(289, 6, 'Santa Rosa de Viterbo'),
(290, 6, 'Santa Sofía'),
(291, 6, 'Santana'),
(292, 6, 'Sativanorte'),
(293, 6, 'Sativasur'),
(294, 6, 'Siachoque'),
(295, 6, 'Soatá'),
(296, 6, 'Socha'),
(297, 6, 'Socotá'),
(298, 6, 'Sogamoso'),
(299, 6, 'Somondoco'),
(300, 6, 'Sora'),
(301, 6, 'Soracá'),
(302, 6, 'Sotaquirá'),
(303, 6, 'Susacón'),
(304, 6, 'Sutamarchán'),
(305, 6, 'Sutatenza'),
(306, 6, 'Sáchica'),
(307, 6, 'Tasco'),
(308, 6, 'Tenza'),
(309, 6, 'Tibaná'),
(310, 6, 'Tibasosa'),
(311, 6, 'Tinjacá'),
(312, 6, 'Tipacoque'),
(313, 6, 'Toca'),
(314, 6, 'Toguí'),
(315, 6, 'Topagá'),
(316, 6, 'Tota'),
(317, 6, 'Tunja'),
(318, 6, 'Tunungua'),
(319, 6, 'Turmequé'),
(320, 6, 'Tuta'),
(321, 6, 'Tutasá'),
(322, 6, 'Ventaquemada'),
(323, 6, 'Villa de Leiva'),
(324, 6, 'Viracachá'),
(325, 6, 'Zetaquirá'),
(326, 6, 'Úmbita'),
(327, 7, 'Aguadas'),
(328, 7, 'Anserma'),
(329, 7, 'Aranzazu'),
(330, 7, 'Belalcázar'),
(331, 7, 'Chinchiná'),
(332, 7, 'Filadelfia'),
(333, 7, 'La Dorada'),
(334, 7, 'La Merced'),
(335, 7, 'La Victoria'),
(336, 7, 'Manizales'),
(337, 7, 'Manzanares'),
(338, 7, 'Marmato'),
(339, 7, 'Marquetalia'),
(340, 7, 'Marulanda'),
(341, 7, 'Neira'),
(342, 7, 'Norcasia'),
(343, 7, 'Palestina'),
(344, 7, 'Pensilvania'),
(345, 7, 'Pácora'),
(346, 7, 'Risaralda'),
(347, 7, 'Río Sucio'),
(348, 7, 'Salamina'),
(349, 7, 'Samaná'),
(350, 7, 'San José'),
(351, 7, 'Supía'),
(352, 7, 'Villamaría'),
(353, 7, 'Viterbo'),
(354, 8, 'Albania'),
(355, 8, 'Belén de los Andaquíes'),
(356, 8, 'Cartagena del Chairá'),
(357, 8, 'Curillo'),
(358, 8, 'El Doncello'),
(359, 8, 'El Paujil'),
(360, 8, 'Florencia'),
(361, 8, 'La Montañita'),
(362, 8, 'Milán'),
(363, 8, 'Morelia'),
(364, 8, 'Puerto Rico'),
(365, 8, 'San José del Fragua'),
(366, 8, 'San Vicente del Caguán'),
(367, 8, 'Solano'),
(368, 8, 'Solita'),
(369, 8, 'Valparaiso'),
(370, 9, 'Aguazul'),
(371, 9, 'Chámeza'),
(372, 9, 'Hato Corozal'),
(373, 9, 'La Salina'),
(374, 9, 'Maní'),
(375, 9, 'Monterrey'),
(376, 9, 'Nunchía'),
(377, 9, 'Orocué'),
(378, 9, 'Paz de Ariporo'),
(379, 9, 'Pore'),
(380, 9, 'Recetor'),
(381, 9, 'Sabanalarga'),
(382, 9, 'San Luís de Palenque'),
(383, 9, 'Sácama'),
(384, 9, 'Tauramena'),
(385, 9, 'Trinidad'),
(386, 9, 'Támara'),
(387, 9, 'Villanueva'),
(388, 9, 'Yopal'),
(389, 10, 'Almaguer'),
(390, 10, 'Argelia'),
(391, 10, 'Balboa'),
(392, 10, 'Bolívar'),
(393, 10, 'Buenos Aires'),
(394, 10, 'Cajibío'),
(395, 10, 'Caldono'),
(396, 10, 'Caloto'),
(397, 10, 'Corinto'),
(398, 10, 'El Tambo'),
(399, 10, 'Florencia'),
(400, 10, 'Guachené'),
(401, 10, 'Guapí'),
(402, 10, 'Inzá'),
(403, 10, 'Jambaló'),
(404, 10, 'La Sierra'),
(405, 10, 'La Vega'),
(406, 10, 'López (Micay)'),
(407, 10, 'Mercaderes'),
(408, 10, 'Miranda'),
(409, 10, 'Morales'),
(410, 10, 'Padilla'),
(411, 10, 'Patía (El Bordo)'),
(412, 10, 'Piamonte'),
(413, 10, 'Piendamó'),
(414, 10, 'Popayán'),
(415, 10, 'Puerto Tejada'),
(416, 10, 'Puracé (Coconuco)'),
(417, 10, 'Páez (Belalcazar)'),
(418, 10, 'Rosas'),
(419, 10, 'San Sebastián'),
(420, 10, 'Santa Rosa'),
(421, 10, 'Santander de Quilichao'),
(422, 10, 'Silvia'),
(423, 10, 'Sotara (Paispamba)'),
(424, 10, 'Sucre'),
(425, 10, 'Suárez'),
(426, 10, 'Timbiquí'),
(427, 10, 'Timbío'),
(428, 10, 'Toribío'),
(429, 10, 'Totoró'),
(430, 10, 'Villa Rica'),
(431, 11, 'Aguachica'),
(432, 11, 'Agustín Codazzi'),
(433, 11, 'Astrea'),
(434, 11, 'Becerríl'),
(435, 11, 'Bosconia'),
(436, 11, 'Chimichagua'),
(437, 11, 'Chiriguaná'),
(438, 11, 'Curumaní'),
(439, 11, 'El Copey'),
(440, 11, 'El Paso'),
(441, 11, 'Gamarra'),
(442, 11, 'Gonzalez'),
(443, 11, 'La Gloria'),
(444, 11, 'La Jagua de Ibirico'),
(445, 11, 'La Paz (Robles)'),
(446, 11, 'Manaure Balcón del Cesar'),
(447, 11, 'Pailitas'),
(448, 11, 'Pelaya'),
(449, 11, 'Pueblo Bello'),
(450, 11, 'Río de oro'),
(451, 11, 'San Alberto'),
(452, 11, 'San Diego'),
(453, 11, 'San Martín'),
(454, 11, 'Tamalameque'),
(455, 11, 'Valledupar'),
(456, 12, 'Acandí'),
(457, 12, 'Alto Baudó (Pie de Pato)'),
(458, 12, 'Atrato (Yuto)'),
(459, 12, 'Bagadó'),
(460, 12, 'Bahía Solano (Mútis)'),
(461, 12, 'Bajo Baudó (Pizarro)'),
(462, 12, 'Belén de Bajirá'),
(463, 12, 'Bojayá (Bellavista)'),
(464, 12, 'Cantón de San Pablo'),
(465, 12, 'Carmen del Darién (CURBARADÓ)'),
(466, 12, 'Condoto'),
(467, 12, 'Cértegui'),
(468, 12, 'El Carmen de Atrato'),
(469, 12, 'Istmina'),
(470, 12, 'Juradó'),
(471, 12, 'Lloró'),
(472, 12, 'Medio Atrato'),
(473, 12, 'Medio Baudó'),
(474, 12, 'Medio San Juan (ANDAGOYA)'),
(475, 12, 'Novita'),
(476, 12, 'Nuquí'),
(477, 12, 'Quibdó'),
(478, 12, 'Río Iró'),
(479, 12, 'Río Quito'),
(480, 12, 'Ríosucio'),
(481, 12, 'San José del Palmar'),
(482, 12, 'Santa Genoveva de Docorodó'),
(483, 12, 'Sipí'),
(484, 12, 'Tadó'),
(485, 12, 'Unguía'),
(486, 12, 'Unión Panamericana (ÁNIMAS)'),
(487, 13, 'Ayapel'),
(488, 13, 'Buenavista'),
(489, 13, 'Canalete'),
(490, 13, 'Cereté'),
(491, 13, 'Chimá'),
(492, 13, 'Chinú'),
(493, 13, 'Ciénaga de Oro'),
(494, 13, 'Cotorra'),
(495, 13, 'La Apartada y La Frontera'),
(496, 13, 'Lorica'),
(497, 13, 'Los Córdobas'),
(498, 13, 'Momil'),
(499, 13, 'Montelíbano'),
(500, 13, 'Monteria'),
(501, 13, 'Moñitos'),
(502, 13, 'Planeta Rica'),
(503, 13, 'Pueblo Nuevo'),
(504, 13, 'Puerto Escondido'),
(505, 13, 'Puerto Libertador'),
(506, 13, 'Purísima'),
(507, 13, 'Sahagún'),
(508, 13, 'San Andrés Sotavento'),
(509, 13, 'San Antero'),
(510, 13, 'San Bernardo del Viento'),
(511, 13, 'San Carlos'),
(512, 13, 'San José de Uré'),
(513, 13, 'San Pelayo'),
(514, 13, 'Tierralta'),
(515, 13, 'Tuchín'),
(516, 13, 'Valencia'),
(517, 14, 'Agua de Dios'),
(518, 14, 'Albán'),
(519, 14, 'Anapoima'),
(520, 14, 'Anolaima'),
(521, 14, 'Apulo'),
(522, 14, 'Arbeláez'),
(523, 14, 'Beltrán'),
(524, 14, 'Bituima'),
(525, 14, 'Bogotá D.C.'),
(526, 14, 'Bojacá'),
(527, 14, 'Cabrera'),
(528, 14, 'Cachipay'),
(529, 14, 'Cajicá'),
(530, 14, 'Caparrapí'),
(531, 14, 'Carmen de Carupa'),
(532, 14, 'Chaguaní'),
(533, 14, 'Chipaque'),
(534, 14, 'Choachí'),
(535, 14, 'Chocontá'),
(536, 14, 'Chía'),
(537, 14, 'Cogua'),
(538, 14, 'Cota'),
(539, 14, 'Cucunubá'),
(540, 14, 'Cáqueza'),
(541, 14, 'El Colegio'),
(542, 14, 'El Peñón'),
(543, 14, 'El Rosal'),
(544, 14, 'Facatativá'),
(545, 14, 'Fosca'),
(546, 14, 'Funza'),
(547, 14, 'Fusagasugá'),
(548, 14, 'Fómeque'),
(549, 14, 'Fúquene'),
(550, 14, 'Gachalá'),
(551, 14, 'Gachancipá'),
(552, 14, 'Gachetá'),
(553, 14, 'Gama'),
(554, 14, 'Girardot'),
(555, 14, 'Granada'),
(556, 14, 'Guachetá'),
(557, 14, 'Guaduas'),
(558, 14, 'Guasca'),
(559, 14, 'Guataquí'),
(560, 14, 'Guatavita'),
(561, 14, 'Guayabal de Siquima'),
(562, 14, 'Guayabetal'),
(563, 14, 'Gutiérrez'),
(564, 14, 'Jerusalén'),
(565, 14, 'Junín'),
(566, 14, 'La Calera'),
(567, 14, 'La Mesa'),
(568, 14, 'La Palma'),
(569, 14, 'La Peña'),
(570, 14, 'La Vega'),
(571, 14, 'Lenguazaque'),
(572, 14, 'Machetá'),
(573, 14, 'Madrid'),
(574, 14, 'Manta'),
(575, 14, 'Medina'),
(576, 14, 'Mosquera'),
(577, 14, 'Nariño'),
(578, 14, 'Nemocón'),
(579, 14, 'Nilo'),
(580, 14, 'Nimaima'),
(581, 14, 'Nocaima'),
(582, 14, 'Pacho'),
(583, 14, 'Paime'),
(584, 14, 'Pandi'),
(585, 14, 'Paratebueno'),
(586, 14, 'Pasca'),
(587, 14, 'Puerto Salgar'),
(588, 14, 'Pulí'),
(589, 14, 'Quebradanegra'),
(590, 14, 'Quetame'),
(591, 14, 'Quipile'),
(592, 14, 'Ricaurte'),
(593, 14, 'San Antonio de Tequendama'),
(594, 14, 'San Bernardo'),
(595, 14, 'San Cayetano'),
(596, 14, 'San Francisco'),
(597, 14, 'San Juan de Río Seco'),
(598, 14, 'Sasaima'),
(599, 14, 'Sesquilé'),
(600, 14, 'Sibaté'),
(601, 14, 'Silvania'),
(602, 14, 'Simijaca'),
(603, 14, 'Soacha'),
(604, 14, 'Sopó'),
(605, 14, 'Subachoque'),
(606, 14, 'Suesca'),
(607, 14, 'Supatá'),
(608, 14, 'Susa'),
(609, 14, 'Sutatausa'),
(610, 14, 'Tabio'),
(611, 14, 'Tausa'),
(612, 14, 'Tena'),
(613, 14, 'Tenjo'),
(614, 14, 'Tibacuy'),
(615, 14, 'Tibirita'),
(616, 14, 'Tocaima'),
(617, 14, 'Tocancipá'),
(618, 14, 'Topaipí'),
(619, 14, 'Ubalá'),
(620, 14, 'Ubaque'),
(621, 14, 'Ubaté'),
(622, 14, 'Une'),
(623, 14, 'Venecia (Ospina Pérez)'),
(624, 14, 'Vergara'),
(625, 14, 'Viani'),
(626, 14, 'Villagómez'),
(627, 14, 'Villapinzón'),
(628, 14, 'Villeta'),
(629, 14, 'Viotá'),
(630, 14, 'Yacopí'),
(631, 14, 'Zipacón'),
(632, 14, 'Zipaquirá'),
(633, 14, 'Útica'),
(634, 15, 'Inírida'),
(635, 16, 'Calamar'),
(636, 16, 'El Retorno'),
(637, 16, 'Miraflores'),
(638, 16, 'San José del Guaviare'),
(639, 17, 'Acevedo'),
(640, 17, 'Agrado'),
(641, 17, 'Aipe'),
(642, 17, 'Algeciras'),
(643, 17, 'Altamira'),
(644, 17, 'Baraya'),
(645, 17, 'Campoalegre'),
(646, 17, 'Colombia'),
(647, 17, 'Elías'),
(648, 17, 'Garzón'),
(649, 17, 'Gigante'),
(650, 17, 'Guadalupe'),
(651, 17, 'Hobo'),
(652, 17, 'Isnos'),
(653, 17, 'La Argentina'),
(654, 17, 'La Plata'),
(655, 17, 'Neiva'),
(656, 17, 'Nátaga'),
(657, 17, 'Oporapa'),
(658, 17, 'Paicol'),
(659, 17, 'Palermo'),
(660, 17, 'Palestina'),
(661, 17, 'Pital'),
(662, 17, 'Pitalito'),
(663, 17, 'Rivera'),
(664, 17, 'Saladoblanco'),
(665, 17, 'San Agustín'),
(666, 17, 'Santa María'),
(667, 17, 'Suaza'),
(668, 17, 'Tarqui'),
(669, 17, 'Tello'),
(670, 17, 'Teruel'),
(671, 17, 'Tesalia'),
(672, 17, 'Timaná'),
(673, 17, 'Villavieja'),
(674, 17, 'Yaguará'),
(675, 17, 'Íquira'),
(676, 18, 'Albania'),
(677, 18, 'Barrancas'),
(678, 18, 'Dibulla'),
(679, 18, 'Distracción'),
(680, 18, 'El Molino'),
(681, 18, 'Fonseca'),
(682, 18, 'Hatonuevo'),
(683, 18, 'La Jagua del Pilar'),
(684, 18, 'Maicao'),
(685, 18, 'Manaure'),
(686, 18, 'Riohacha'),
(687, 18, 'San Juan del Cesar'),
(688, 18, 'Uribia'),
(689, 18, 'Urumita'),
(690, 18, 'Villanueva'),
(691, 19, 'Algarrobo'),
(692, 19, 'Aracataca'),
(693, 19, 'Ariguaní (El Difícil)'),
(694, 19, 'Cerro San Antonio'),
(695, 19, 'Chivolo'),
(696, 19, 'Ciénaga'),
(697, 19, 'Concordia'),
(698, 19, 'El Banco'),
(699, 19, 'El Piñon'),
(700, 19, 'El Retén'),
(701, 19, 'Fundación'),
(702, 19, 'Guamal'),
(703, 19, 'Nueva Granada'),
(704, 19, 'Pedraza'),
(705, 19, 'Pijiño'),
(706, 19, 'Pivijay'),
(707, 19, 'Plato'),
(708, 19, 'Puebloviejo'),
(709, 19, 'Remolino'),
(710, 19, 'Sabanas de San Angel (SAN ANGEL)'),
(711, 19, 'Salamina'),
(712, 19, 'San Sebastián de Buenavista'),
(713, 19, 'San Zenón'),
(714, 19, 'Santa Ana'),
(715, 19, 'Santa Bárbara de Pinto'),
(716, 19, 'Santa Marta'),
(717, 19, 'Sitionuevo'),
(718, 19, 'Tenerife'),
(719, 19, 'Zapayán (PUNTA DE PIEDRAS)'),
(720, 19, 'Zona Bananera (PRADO - SEVILLA)'),
(721, 20, 'Acacías'),
(722, 20, 'Barranca de Upía'),
(723, 20, 'Cabuyaro'),
(724, 20, 'Castilla la Nueva'),
(725, 20, 'Cubarral'),
(726, 20, 'Cumaral'),
(727, 20, 'El Calvario'),
(728, 20, 'El Castillo'),
(729, 20, 'El Dorado'),
(730, 20, 'Fuente de Oro'),
(731, 20, 'Granada'),
(732, 20, 'Guamal'),
(733, 20, 'La Macarena'),
(734, 20, 'Lejanías'),
(735, 20, 'Mapiripan'),
(736, 20, 'Mesetas'),
(737, 20, 'Puerto Concordia'),
(738, 20, 'Puerto Gaitán'),
(739, 20, 'Puerto Lleras'),
(740, 20, 'Puerto López'),
(741, 20, 'Puerto Rico'),
(742, 20, 'Restrepo'),
(743, 20, 'San Carlos de Guaroa'),
(744, 20, 'San Juan de Arama'),
(745, 20, 'San Juanito'),
(746, 20, 'San Martín'),
(747, 20, 'Uribe'),
(748, 20, 'Villavicencio'),
(749, 20, 'Vista Hermosa'),
(750, 21, 'Albán (San José)'),
(751, 21, 'Aldana'),
(752, 21, 'Ancuya'),
(753, 21, 'Arboleda (Berruecos)'),
(754, 21, 'Barbacoas'),
(755, 21, 'Belén'),
(756, 21, 'Buesaco'),
(757, 21, 'Chachaguí'),
(758, 21, 'Colón (Génova)'),
(759, 21, 'Consaca'),
(760, 21, 'Contadero'),
(761, 21, 'Cuaspud (Carlosama)'),
(762, 21, 'Cumbal'),
(763, 21, 'Cumbitara'),
(764, 21, 'Córdoba'),
(765, 21, 'El Charco'),
(766, 21, 'El Peñol'),
(767, 21, 'El Rosario'),
(768, 21, 'El Tablón de Gómez'),
(769, 21, 'El Tambo'),
(770, 21, 'Francisco Pizarro'),
(771, 21, 'Funes'),
(772, 21, 'Guachavés'),
(773, 21, 'Guachucal'),
(774, 21, 'Guaitarilla'),
(775, 21, 'Gualmatán'),
(776, 21, 'Iles'),
(777, 21, 'Imúes'),
(778, 21, 'Ipiales'),
(779, 21, 'La Cruz'),
(780, 21, 'La Florida'),
(781, 21, 'La Llanada'),
(782, 21, 'La Tola'),
(783, 21, 'La Unión'),
(784, 21, 'Leiva'),
(785, 21, 'Linares'),
(786, 21, 'Magüi (Payán)'),
(787, 21, 'Mallama (Piedrancha)'),
(788, 21, 'Mosquera'),
(789, 21, 'Nariño'),
(790, 21, 'Olaya Herrera'),
(791, 21, 'Ospina'),
(792, 21, 'Policarpa'),
(793, 21, 'Potosí'),
(794, 21, 'Providencia'),
(795, 21, 'Puerres'),
(796, 21, 'Pupiales'),
(797, 21, 'Ricaurte'),
(798, 21, 'Roberto Payán (San José)'),
(799, 21, 'Samaniego'),
(800, 21, 'San Bernardo'),
(801, 21, 'San Juan de Pasto'),
(802, 21, 'San Lorenzo'),
(803, 21, 'San Pablo'),
(804, 21, 'San Pedro de Cartago'),
(805, 21, 'Sandoná'),
(806, 21, 'Santa Bárbara (Iscuandé)'),
(807, 21, 'Sapuyes'),
(808, 21, 'Sotomayor (Los Andes)'),
(809, 21, 'Taminango'),
(810, 21, 'Tangua'),
(811, 21, 'Tumaco'),
(812, 21, 'Túquerres'),
(813, 21, 'Yacuanquer'),
(814, 22, 'Arboledas'),
(815, 22, 'Bochalema'),
(816, 22, 'Bucarasica'),
(817, 22, 'Chinácota'),
(818, 22, 'Chitagá'),
(819, 22, 'Convención'),
(820, 22, 'Cucutilla'),
(821, 22, 'Cáchira'),
(822, 22, 'Cácota'),
(823, 22, 'Cúcuta'),
(824, 22, 'Durania'),
(825, 22, 'El Carmen'),
(826, 22, 'El Tarra'),
(827, 22, 'El Zulia'),
(828, 22, 'Gramalote'),
(829, 22, 'Hacarí'),
(830, 22, 'Herrán'),
(831, 22, 'La Esperanza'),
(832, 22, 'La Playa'),
(833, 22, 'Labateca'),
(834, 22, 'Los Patios'),
(835, 22, 'Lourdes'),
(836, 22, 'Mutiscua'),
(837, 22, 'Ocaña'),
(838, 22, 'Pamplona'),
(839, 22, 'Pamplonita'),
(840, 22, 'Puerto Santander'),
(841, 22, 'Ragonvalia'),
(842, 22, 'Salazar'),
(843, 22, 'San Calixto'),
(844, 22, 'San Cayetano'),
(845, 22, 'Santiago'),
(846, 22, 'Sardinata'),
(847, 22, 'Silos'),
(848, 22, 'Teorama'),
(849, 22, 'Tibú'),
(850, 22, 'Toledo'),
(851, 22, 'Villa Caro'),
(852, 22, 'Villa del Rosario'),
(853, 22, 'Ábrego'),
(854, 23, 'Colón'),
(855, 23, 'Mocoa'),
(856, 23, 'Orito'),
(857, 23, 'Puerto Asís'),
(858, 23, 'Puerto Caicedo'),
(859, 23, 'Puerto Guzmán'),
(860, 23, 'Puerto Leguízamo'),
(861, 23, 'San Francisco'),
(862, 23, 'San Miguel'),
(863, 23, 'Santiago'),
(864, 23, 'Sibundoy'),
(865, 23, 'Valle del Guamuez'),
(866, 23, 'Villagarzón'),
(867, 24, 'Armenia'),
(868, 24, 'Buenavista'),
(869, 24, 'Calarcá'),
(870, 24, 'Circasia'),
(871, 24, 'Cordobá'),
(872, 24, 'Filandia'),
(873, 24, 'Génova'),
(874, 24, 'La Tebaida'),
(875, 24, 'Montenegro'),
(876, 24, 'Pijao'),
(877, 24, 'Quimbaya'),
(878, 24, 'Salento'),
(879, 25, 'Apía'),
(880, 25, 'Balboa'),
(881, 25, 'Belén de Umbría'),
(882, 25, 'Dos Quebradas'),
(883, 25, 'Guática'),
(884, 25, 'La Celia'),
(885, 25, 'La Virginia'),
(886, 25, 'Marsella'),
(887, 25, 'Mistrató'),
(888, 25, 'Pereira'),
(889, 25, 'Pueblo Rico'),
(890, 25, 'Quinchía'),
(891, 25, 'Santa Rosa de Cabal'),
(892, 25, 'Santuario'),
(893, 26, 'Providencia'),
(894, 27, 'Aguada'),
(895, 27, 'Albania'),
(896, 27, 'Aratoca'),
(897, 27, 'Barbosa'),
(898, 27, 'Barichara'),
(899, 27, 'Barrancabermeja'),
(900, 27, 'Betulia'),
(901, 27, 'Bolívar'),
(902, 27, 'Bucaramanga'),
(903, 27, 'Cabrera'),
(904, 27, 'California'),
(905, 27, 'Capitanejo'),
(906, 27, 'Carcasí'),
(907, 27, 'Cepita'),
(908, 27, 'Cerrito'),
(909, 27, 'Charalá'),
(910, 27, 'Charta'),
(911, 27, 'Chima'),
(912, 27, 'Chipatá'),
(913, 27, 'Cimitarra'),
(914, 27, 'Concepción'),
(915, 27, 'Confines'),
(916, 27, 'Contratación'),
(917, 27, 'Coromoro'),
(918, 27, 'Curití'),
(919, 27, 'El Carmen'),
(920, 27, 'El Guacamayo'),
(921, 27, 'El Peñon'),
(922, 27, 'El Playón'),
(923, 27, 'Encino'),
(924, 27, 'Enciso'),
(925, 27, 'Floridablanca'),
(926, 27, 'Florián'),
(927, 27, 'Galán'),
(928, 27, 'Girón'),
(929, 27, 'Guaca'),
(930, 27, 'Guadalupe'),
(931, 27, 'Guapota'),
(932, 27, 'Guavatá'),
(933, 27, 'Guepsa'),
(934, 27, 'Gámbita'),
(935, 27, 'Hato'),
(936, 27, 'Jesús María'),
(937, 27, 'Jordán'),
(938, 27, 'La Belleza'),
(939, 27, 'La Paz'),
(940, 27, 'Landázuri'),
(941, 27, 'Lebrija'),
(942, 27, 'Los Santos'),
(943, 27, 'Macaravita'),
(944, 27, 'Matanza'),
(945, 27, 'Mogotes'),
(946, 27, 'Molagavita'),
(947, 27, 'Málaga'),
(948, 27, 'Ocamonte'),
(949, 27, 'Oiba'),
(950, 27, 'Onzaga'),
(951, 27, 'Palmar'),
(952, 27, 'Palmas del Socorro'),
(953, 27, 'Pie de Cuesta'),
(954, 27, 'Pinchote'),
(955, 27, 'Puente Nacional'),
(956, 27, 'Puerto Parra'),
(957, 27, 'Puerto Wilches'),
(958, 27, 'Páramo'),
(959, 27, 'Rio Negro'),
(960, 27, 'Sabana de Torres'),
(961, 27, 'San Andrés'),
(962, 27, 'San Benito'),
(963, 27, 'San Gíl'),
(964, 27, 'San Joaquín'),
(965, 27, 'San José de Miranda'),
(966, 27, 'San Miguel'),
(967, 27, 'San Vicente del Chucurí'),
(968, 27, 'Santa Bárbara'),
(969, 27, 'Santa Helena del Opón'),
(970, 27, 'Simacota'),
(971, 27, 'Socorro'),
(972, 27, 'Suaita'),
(973, 27, 'Sucre'),
(974, 27, 'Suratá'),
(975, 27, 'Tona'),
(976, 27, 'Valle de San José'),
(977, 27, 'Vetas'),
(978, 27, 'Villanueva'),
(979, 27, 'Vélez'),
(980, 27, 'Zapatoca'),
(981, 28, 'Buenavista'),
(982, 28, 'Caimito'),
(983, 28, 'Chalán'),
(984, 28, 'Colosó (Ricaurte)'),
(985, 28, 'Corozal'),
(986, 28, 'Coveñas'),
(987, 28, 'El Roble'),
(988, 28, 'Galeras (Nueva Granada)'),
(989, 28, 'Guaranda'),
(990, 28, 'La Unión'),
(991, 28, 'Los Palmitos'),
(992, 28, 'Majagual'),
(993, 28, 'Morroa'),
(994, 28, 'Ovejas'),
(995, 28, 'Palmito'),
(996, 28, 'Sampués'),
(997, 28, 'San Benito Abad'),
(998, 28, 'San Juan de Betulia'),
(999, 28, 'San Marcos'),
(1000, 28, 'San Onofre'),
(1001, 28, 'San Pedro'),
(1002, 28, 'Sincelejo'),
(1003, 28, 'Sincé'),
(1004, 28, 'Sucre'),
(1005, 28, 'Tolú'),
(1006, 28, 'Tolú Viejo'),
(1007, 29, 'Alpujarra'),
(1008, 29, 'Alvarado'),
(1009, 29, 'Ambalema'),
(1010, 29, 'Anzoátegui'),
(1011, 29, 'Armero (Guayabal)'),
(1012, 29, 'Ataco'),
(1013, 29, 'Cajamarca'),
(1014, 29, 'Carmen de Apicalá'),
(1015, 29, 'Casabianca'),
(1016, 29, 'Chaparral'),
(1017, 29, 'Coello'),
(1018, 29, 'Coyaima'),
(1019, 29, 'Cunday'),
(1020, 29, 'Dolores'),
(1021, 29, 'Espinal'),
(1022, 29, 'Falan'),
(1023, 29, 'Flandes'),
(1024, 29, 'Fresno'),
(1025, 29, 'Guamo'),
(1026, 29, 'Herveo'),
(1027, 29, 'Honda'),
(1028, 29, 'Ibagué'),
(1029, 29, 'Icononzo'),
(1030, 29, 'Lérida'),
(1031, 29, 'Líbano'),
(1032, 29, 'Mariquita'),
(1033, 29, 'Melgar'),
(1034, 29, 'Murillo'),
(1035, 29, 'Natagaima'),
(1036, 29, 'Ortega'),
(1037, 29, 'Palocabildo'),
(1038, 29, 'Piedras'),
(1039, 29, 'Planadas'),
(1040, 29, 'Prado'),
(1041, 29, 'Purificación'),
(1042, 29, 'Rioblanco'),
(1043, 29, 'Roncesvalles'),
(1044, 29, 'Rovira'),
(1045, 29, 'Saldaña'),
(1046, 29, 'San Antonio'),
(1047, 29, 'San Luis'),
(1048, 29, 'Santa Isabel'),
(1049, 29, 'Suárez'),
(1050, 29, 'Valle de San Juan'),
(1051, 29, 'Venadillo'),
(1052, 29, 'Villahermosa'),
(1053, 29, 'Villarrica'),
(1054, 30, 'Alcalá'),
(1055, 30, 'Andalucía'),
(1056, 30, 'Ansermanuevo'),
(1057, 30, 'Argelia'),
(1058, 30, 'Bolívar'),
(1059, 30, 'Buenaventura'),
(1060, 30, 'Buga'),
(1061, 30, 'Bugalagrande'),
(1062, 30, 'Caicedonia'),
(1063, 30, 'Calima (Darién)'),
(1064, 30, 'Calí'),
(1065, 30, 'Candelaria'),
(1066, 30, 'Cartago'),
(1067, 30, 'Dagua'),
(1068, 30, 'El Cairo'),
(1069, 30, 'El Cerrito'),
(1070, 30, 'El Dovio'),
(1071, 30, 'El Águila'),
(1072, 30, 'Florida'),
(1073, 30, 'Ginebra'),
(1074, 30, 'Guacarí'),
(1075, 30, 'Jamundí'),
(1076, 30, 'La Cumbre'),
(1077, 30, 'La Unión'),
(1078, 30, 'La Victoria'),
(1079, 30, 'Obando'),
(1080, 30, 'Palmira'),
(1081, 30, 'Pradera'),
(1082, 30, 'Restrepo'),
(1083, 30, 'Riofrío'),
(1084, 30, 'Roldanillo'),
(1085, 30, 'San Pedro'),
(1086, 30, 'Sevilla'),
(1087, 30, 'Toro'),
(1088, 30, 'Trujillo'),
(1089, 30, 'Tulúa'),
(1090, 30, 'Ulloa'),
(1091, 30, 'Versalles'),
(1092, 30, 'Vijes'),
(1093, 30, 'Yotoco'),
(1094, 30, 'Yumbo'),
(1095, 30, 'Zarzal'),
(1096, 31, 'Carurú'),
(1097, 31, 'Mitú'),
(1098, 31, 'Taraira'),
(1099, 32, 'Cumaribo'),
(1100, 32, 'La Primavera'),
(1101, 32, 'Puerto Carreño'),
(1102, 32, 'Santa Rosalía');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivelesacademicos`
--

CREATE TABLE IF NOT EXISTS `nivelesacademicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `nivelesacademicos`
--

INSERT INTO `nivelesacademicos` (`id`, `nombre`) VALUES
(11, 'PREESCOLAR'),
(12, 'PRIMARIA'),
(13, 'Nivel'),
(14, 'Nivel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivelesacademicos_sede`
--

CREATE TABLE IF NOT EXISTS `nivelesacademicos_sede` (
  `sede_id` int(11) NOT NULL,
  `nivel_id` int(11) NOT NULL,
  PRIMARY KEY (`sede_id`,`nivel_id`),
  KEY `IDX_75D92101E19F41BF` (`sede_id`),
  KEY `IDX_75D92101DA3426AE` (`nivel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE IF NOT EXISTS `notificaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_id` int(11) DEFAULT NULL,
  `estado_id` int(11) DEFAULT NULL,
  `asunto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mensaje` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date_create` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `curso_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6FFCB21A76ED395` (`user_id`),
  KEY `IDX_6FFCB2187CB4A1F` (`curso_id`),
  KEY `IDX_6FFCB21A9276E6C` (`tipo_id`),
  KEY `IDX_6FFCB219F5A440B` (`estado_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `notificaciones`
--

INSERT INTO `notificaciones` (`id`, `tipo_id`, `estado_id`, `asunto`, `mensaje`, `date_create`, `user_id`, `curso_id`) VALUES
(1, 3, 1, 'Noti', 'exampl', '2012-11-18 10:14:30', 3, NULL),
(13, 3, 1, 'Codigo', 'OKSTOLNHT', '2012-11-19 23:08:37', 3, NULL),
(14, 3, 1, 'Codigo', 'CMCOLURRK', '2012-11-25 16:03:51', 3, NULL),
(15, 3, 1, 'Codigo', 'PUAAMWVTI', '2012-11-25 16:10:22', 3, NULL),
(16, 3, 1, 'Codigo', 'XZUVWRYUP', '2012-11-25 16:12:06', 3, NULL),
(17, 3, 1, 'Codigo', 'WGCNJSVZG', '2012-11-25 16:19:33', 3, NULL),
(18, 3, 1, 'Codigo', 'CMMCGAUGQ', '2012-11-25 21:10:49', 3, NULL),
(19, 3, 1, 'Codigo', 'ZRBCRBWKL', '2012-11-25 21:21:02', 3, NULL),
(20, 3, 1, 'Codigo', 'XSNKSNTDW', '2012-11-25 21:42:57', 3, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_administrativo`
--

CREATE TABLE IF NOT EXISTS `perfil_administrativo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `municipio_id` int(11) DEFAULT NULL,
  `tipodocumento_id` int(11) DEFAULT NULL,
  `cargo_id` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_nacimiento` datetime NOT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lugar_nacimiento` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nmr_documento` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `de` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sexo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `barrio` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estrato` int(11) NOT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `celular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `personas_cargo` int(11) NOT NULL,
  `titulo_profesional` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `anios_experienca` int(11) NOT NULL,
  `fecha_ingreso` datetime NOT NULL,
  `salario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipo_contrado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numero_contrado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `titulo_pregrado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `titulo_postgrado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `especialidad` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `escalafon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resolucion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_resolucion` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_7CCA0B3C58BC1BE0` (`municipio_id`),
  KEY `IDX_7CCA0B3C2E595373` (`tipodocumento_id`),
  KEY `IDX_7CCA0B3C813AC380` (`cargo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_docente`
--

CREATE TABLE IF NOT EXISTS `perfil_docente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `municipio_id` int(11) DEFAULT NULL,
  `tipodocumento_id` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_nacimiento` datetime NOT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lugar_nacimiento` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nmr_documento` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `de` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sexo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `barrio` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estrato` int(11) NOT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `celular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `personas_cargo` int(11) NOT NULL,
  `titulo_profesional` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `anios_experienca` int(11) NOT NULL,
  `fecha_ingreso` datetime NOT NULL,
  `salario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cargo_id` int(11) DEFAULT NULL,
  `tipo_contrado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numero_contrado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `titulo_pregrado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `titulo_postgrado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `especialidad` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `escalafon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resolucion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_resolucion` datetime NOT NULL,
  `estadocivil_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_23484C6558BC1BE0` (`municipio_id`),
  KEY `IDX_23484C652E595373` (`tipodocumento_id`),
  KEY `IDX_23484C65813AC380` (`cargo_id`),
  KEY `IDX_23484C65D2D890D2` (`estadocivil_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `perfil_docente`
--

INSERT INTO `perfil_docente` (`id`, `municipio_id`, `tipodocumento_id`, `nombre`, `apellido`, `fecha_nacimiento`, `direccion`, `lugar_nacimiento`, `nmr_documento`, `de`, `sexo`, `email`, `barrio`, `estrato`, `telefono`, `celular`, `personas_cargo`, `titulo_profesional`, `anios_experienca`, `fecha_ingreso`, `salario`, `cargo_id`, `tipo_contrado`, `numero_contrado`, `titulo_pregrado`, `titulo_postgrado`, `especialidad`, `escalafon`, `resolucion`, `fecha_resolucion`, `estadocivil_id`) VALUES
(1, 1, 1, 'Docente', 'Docente', '2012-12-10 00:00:00', 'Docente', 'Docente', '10134', 'Docente', 'm', 'Docente@Docente.com', 'Docente', 1, 'Docente', 'Docente', 1, 'Docente', 1, '2012-12-12 00:00:00', 'Docente', 1, 'Docente', 'Docente', 'Docente', 'Docente', 'Docente', 'Docente', 'Docente', '2012-12-11 00:00:00', NULL),
(2, 15, 1, 'Docente2', 'Docente2', '2012-12-07 00:00:00', 'Docente', 'Docente', '123456789', 'Docente', 'f', 'Docente@Docente.com', 'Docente', 1, 'Docente', 'Docente', 1, 'Docente', 1, '2012-12-21 00:00:00', 'Docente', 1, 'Docente', 'Docente', 'Docente', 'Docente', 'Docente', 'Docente', 'Docente', '2012-12-11 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_estudiante`
--

CREATE TABLE IF NOT EXISTS `perfil_estudiante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `municipio_id` int(11) DEFAULT NULL,
  `tipodocumento_id` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_nacimiento` datetime NOT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lugar_nacimiento` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nmr_documento` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `de` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sexo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `barrio` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estrato` int(11) NOT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `celular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `salud` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `observaciones_personal` longtext COLLATE utf8_unicode_ci NOT NULL,
  `colegio_procedencia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sede_procedencia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jornada_procedencia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nivel_procedencia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `curso_procedencia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `observaciones_academica` longtext COLLATE utf8_unicode_ci NOT NULL,
  `nmrPersonas` int(11) NOT NULL,
  `casa_direccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefono_familia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vive_con` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nmr_hermanos` int(11) NOT NULL,
  `celular_familia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datos_madre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cc_madre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datos_padre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cc_padre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datos_acudiente` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cc_acudiente` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `direccion_familia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A34B4FFB58BC1BE0` (`municipio_id`),
  KEY `IDX_A34B4FFB2E595373` (`tipodocumento_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `perfil_estudiante`
--

INSERT INTO `perfil_estudiante` (`id`, `municipio_id`, `tipodocumento_id`, `nombre`, `apellido`, `fecha_nacimiento`, `direccion`, `lugar_nacimiento`, `nmr_documento`, `de`, `sexo`, `email`, `barrio`, `estrato`, `telefono`, `celular`, `salud`, `observaciones_personal`, `colegio_procedencia`, `sede_procedencia`, `jornada_procedencia`, `nivel_procedencia`, `curso_procedencia`, `observaciones_academica`, `nmrPersonas`, `casa_direccion`, `telefono_familia`, `vive_con`, `nmr_hermanos`, `celular_familia`, `datos_madre`, `cc_madre`, `datos_padre`, `cc_padre`, `datos_acudiente`, `cc_acudiente`, `direccion_familia`) VALUES
(4, 1, 1, 'example', 'example', '2012-11-30 00:00:00', 'example', 'example', '123', 'example', 'f', 'example@example.example', 'example', 1, 'example', '123456', 'example', 'example', 'example', 'example', 'example', 'example', 'example', 'example', 2, 'example', 'example', 'example', 1, 'example', 'example', 'example', 'example', 'example', 'example', 'example', 'example'),
(5, 1, 1, 'Docente', 'Docente', '2012-11-30 00:00:00', 'Docente', 'Docente', '12345', 'Docente', 'm', 'Docente@Docente.Docente', 'Docente', 2, 'Docente', 'Docente', 'Docente', 'Docente', 'Docente', 'Docente', 'Docente', 'Docente', 'Docente', 'Docente', 2, 'Docente', 'Docente', 'Docente', 2, 'Docente', 'Docente', 'Docente', 'Docente', 'Docente', 'Docente', 'Docente', 'Docente'),
(6, 1, 1, 'Tork', '21', '2012-12-10 00:00:00', 'Tork', 'Tork', '1234567', 'Tork', 'm', 'Tork@Tork.Tork', 'Tork', 1, 'Tork', 'Tork', 'Tork', 'Tork', 'Tork', 'Tork', 'Tork', 'Tork', 'Tork', 'Tork', 1, 'Tork', 'Tork', 'Tork', 2, 'Tork', 'Tork', 'Tork', 'Tork', 'Tork', 'Tork', 'Tork', 'Tork'),
(7, 1, 1, 'estudiante', 'example', '2012-12-04 00:00:00', 'example', 'example', '1345', 'example', 'f', 'example@example.example', 'example', 1, '1234567', '123456', 'EPS', 'asdasdsa', 'example', 'example', 'example', 'example', 'example', 'sfsdfsd', 2, 'example', '123456', 'example', 3, '123456', 'example', 'example', 'example', '12345678', 'example', '1234568', 'example');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo`
--

CREATE TABLE IF NOT EXISTS `periodo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anio_id` int(11) DEFAULT NULL,
  `periodo_inicio` datetime NOT NULL,
  `primer_periodo_final` datetime NOT NULL,
  `porcentaje` double NOT NULL,
  `actividades_min` int(11) NOT NULL,
  `actividades_max` int(11) NOT NULL,
  `estado_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_7316C4EDEC34184E` (`anio_id`),
  KEY `IDX_7316C4ED9F5A440B` (`estado_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `periodo`
--

INSERT INTO `periodo` (`id`, `anio_id`, `periodo_inicio`, `primer_periodo_final`, `porcentaje`, `actividades_min`, `actividades_max`, `estado_id`) VALUES
(1, 2, '2012-12-15 00:00:00', '2012-12-15 00:00:00', 33, 1, 5, 4),
(2, 2, '2012-12-15 00:00:00', '2012-12-15 00:00:00', 35, 1, 4, 4),
(3, 2, '2012-12-15 00:00:00', '2012-12-15 00:00:00', 36, 1, 3, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planestudio`
--

CREATE TABLE IF NOT EXISTS `planestudio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sede_id` int(11) DEFAULT NULL,
  `curso_id` int(11) DEFAULT NULL,
  `asignatura_id` int(11) DEFAULT NULL,
  `nactividades` int(11) NOT NULL,
  `periodo_id` int(11) DEFAULT NULL,
  `principal` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BB415393E19F41BF` (`sede_id`),
  KEY `IDX_BB41539387CB4A1F` (`curso_id`),
  KEY `IDX_BB415393C5C70C5B` (`asignatura_id`),
  KEY `IDX_BB4153939C3921AB` (`periodo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `planestudio`
--

INSERT INTO `planestudio` (`id`, `sede_id`, `curso_id`, `asignatura_id`, `nactividades`, `periodo_id`, `principal`) VALUES
(2, NULL, 1, 1, 4, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rangocuantitativo`
--

CREATE TABLE IF NOT EXISTS `rangocuantitativo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `escalanacional_id` int(11) DEFAULT NULL,
  `limite1` double NOT NULL,
  `limite2` double NOT NULL,
  `limite3` double NOT NULL,
  `limite4` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C8D9BA93484AC310` (`escalanacional_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `rangocuantitativo`
--

INSERT INTO `rangocuantitativo` (`id`, `escalanacional_id`, `limite1`, `limite2`, `limite3`, `limite4`) VALUES
(1, NULL, 1.9, 2.9, 3.9, 4.9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`) VALUES
(1, 'ROLE_USER'),
(2, 'ROLE_ADMIN'),
(3, 'ROLE_SUPER_ADMIN'),
(4, 'ROLE_DOCENTE'),
(5, 'ROLE_ADMINISTRATIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede`
--

CREATE TABLE IF NOT EXISTS `sede` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rector` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secretaria` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institucion_id` int(11) DEFAULT NULL,
  `url_imagen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2A9BE2D1B239FBC6` (`institucion_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `sede`
--

INSERT INTO `sede` (`id`, `nombre`, `direccion`, `telefono`, `fax`, `email`, `rector`, `secretaria`, `institucion_id`, `url_imagen`) VALUES
(8, 'Sede 1', '1', '03X 7XX XXX XXX', 'XXX XXX XXX', 'sede1@institucion.com', 'Coordinador 1', 'Secretaria 1', NULL, '618194.png'),
(9, 'Sede 2', '2', '03X 7XX XXX XXX', 'XXX XXX XXX', 'sede2@institucion.com', 'Coordinador 2', 'Secretaria 2', NULL, 'ejemplo.png'),
(10, 'Sede 3', '3', '03X 7XX XXX XXX', 'XXX XXX XXX', 'sede3@institucion.com', 'Coordinador 3', 'Secretaria 3', NULL, 'ejemplo.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE IF NOT EXISTS `tipo_documento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`id`, `nombre`) VALUES
(1, 'CC'),
(2, 'TI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_notificacion`
--

CREATE TABLE IF NOT EXISTS `tipo_notificacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `tipo_notificacion`
--

INSERT INTO `tipo_notificacion` (`id`, `nombre`) VALUES
(1, 'Institucion'),
(2, 'Grupo'),
(3, 'Persona');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institucion_id` int(11) DEFAULT NULL,
  `profile_docente` int(11) DEFAULT NULL,
  `profile_estudiante` int(11) DEFAULT NULL,
  `profile_administrativo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`),
  UNIQUE KEY `UNIQ_8D93D6492E211138` (`profile_docente`),
  UNIQUE KEY `UNIQ_8D93D649FC5408F0` (`profile_estudiante`),
  UNIQUE KEY `UNIQ_8D93D649E8905583` (`profile_administrativo`),
  KEY `IDX_8D93D649B239FBC6` (`institucion_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `salt`, `nombre`, `apellido`, `avatar_url`, `institucion_id`, `profile_docente`, `profile_estudiante`, `profile_administrativo`) VALUES
(1, 'cloudadmin', 'y7q1ig71pslTX3iWrqgQv9SDGZYZFm6dJbajzTeYy26CM5BqPSzO2ZSdR19lwdkBW197/+J6YXWlCJQPskKiWQ==', '7eb3c4430aa57bdbd36710028e0089ef', '', '', '', NULL, NULL, NULL, NULL),
(3, 'ZOCPKOZZLO', 'BrihVuMtkhSXuKioci4RuWwuCEgbrnZ+/AFnSEjuFdJgW//W3sxRRKO3XUXoLJ2WkjeBNGa5I0O2wRlu0Z0eIw==', '58ffa8a4694ac5ffc7fea4b1f8bd0350', 'Amado', 'Ramos', 'imagen.jpg', 1, NULL, NULL, NULL),
(7, 'MDO', 'KKx8inoGUZ4uWst1QCZDY65h12TGr3ZF9l+JoCNzdD1BPrWvm/oVGk0WEXWc28YmzrVMXMAP3vEb48qc4eXpqA==', '2baa5cbec08b336b1ddfa00ac12b0a0a', 'example', 'example', 'images.png', 1, NULL, NULL, NULL),
(8, 'MDOJC', 'lispP26i4ncLGV2bMSn4pVJdu8f6LZ6ot7q8truXJLOMKZYK1erVxytROG4U+SA22uG4fw/GqBmJxvTmi0iygA==', 'c47313b2eec1aec1dd1599beab02ff87', 'Docente', 'Docente', 'images.png', 1, NULL, NULL, NULL),
(9, 'MDOJCEL', '1MGA5SmgcKooYTqQdBqEjsHs3sB4ZlwUGByygkQ2EKJkuwS6l8G421bRp8auSTcxIDihDAI+JcIwp1bYzLUueQ==', '7a066b539e66c80cf6db4edda279673b', 'Tork', '21', 'images.png', 1, NULL, NULL, NULL),
(10, 'ZOZJL', 'qWvOmqGmM27vl8TrRJs1wZta6QCUqVxTnLpmrKOu/oxGxEG+RLmTpIc2HqZH6uX3fqCSDvLnkH2WPdDQWQKrBg==', '8f47cd65839d6ac3abce23530fd8de7b', 'Docente', 'Docente', 'images.png', NULL, 1, NULL, NULL),
(11, 'ZNJLTCPIK', '5rWzT5onKiHAt0Jz/rcdS3LdlyGK4P7ZRFQbhvkMlG5wHJiAvwgxj61gnzusnvMNTfAXXgXOc0Y+N6AeE9VYQQ==', '7cec52b9bc63c811025001051e4213af', 'Docente2', 'Docente2', 'images.png', NULL, NULL, NULL, NULL),
(12, 'MOJC', 'F3dlSbHvNjQmSYb92PV/ApNR19aCrRQuqaSHYW0EIlQdJM39RbSBzW0lTew34gYFBfSYO1k9yLDKv+ZwlP76vw==', '6627622a51df78c31c86ec31c4e9ee77', 'estudiante', 'example', 'images.png', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `IDX_2DE8C6A3A76ED395` (`user_id`),
  KEY `IDX_2DE8C6A3D60322AC` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(1, 3),
(3, 2),
(7, 1),
(8, 1),
(9, 1),
(10, 4),
(11, 4),
(12, 1);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD CONSTRAINT `FK_8DF2BD06E899029B` FOREIGN KEY (`plan_id`) REFERENCES `planestudio` (`id`);

--
-- Filtros para la tabla `actividad_tipo`
--
ALTER TABLE `actividad_tipo`
  ADD CONSTRAINT `FK_753D4F033397707A` FOREIGN KEY (`categoria_id`) REFERENCES `actividad_categoria` (`id`);

--
-- Filtros para la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD CONSTRAINT `FK_DD1ED51EBD0F409C` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`);

--
-- Filtros para la tabla `codigo_verificacion`
--
ALTER TABLE `codigo_verificacion`
  ADD CONSTRAINT `FK_26D7B57AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_26D7B57AC07F55F5` FOREIGN KEY (`modulo_id`) REFERENCES `mmodulo_codigo` (`id`);

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `FK_BFA6FE891A441CC` FOREIGN KEY (`grado_id`) REFERENCES `grado` (`id`);

--
-- Filtros para la tabla `grado`
--
ALTER TABLE `grado`
  ADD CONSTRAINT `FK_B98F472ADA3426AE` FOREIGN KEY (`nivel_id`) REFERENCES `nivelesacademicos` (`id`);

--
-- Filtros para la tabla `grado_sede`
--
ALTER TABLE `grado_sede`
  ADD CONSTRAINT `FK_25628CA791A441CC` FOREIGN KEY (`grado_id`) REFERENCES `grado` (`id`),
  ADD CONSTRAINT `FK_25628CA7E19F41BF` FOREIGN KEY (`sede_id`) REFERENCES `sede` (`id`);

--
-- Filtros para la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD CONSTRAINT `FK_935E99F0EC34184E` FOREIGN KEY (`anio_id`) REFERENCES `anio` (`id`);

--
-- Filtros para la tabla `jornada_sede`
--
ALTER TABLE `jornada_sede`
  ADD CONSTRAINT `FK_D0D5E9026E992D9` FOREIGN KEY (`jornada_id`) REFERENCES `jornada` (`id`),
  ADD CONSTRAINT `FK_D0D5E90E19F41BF` FOREIGN KEY (`sede_id`) REFERENCES `sede` (`id`);

--
-- Filtros para la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `FK_FE98F5E05A91C08D` FOREIGN KEY (`departamento_id`) REFERENCES `departamento` (`id`);

--
-- Filtros para la tabla `nivelesacademicos_sede`
--
ALTER TABLE `nivelesacademicos_sede`
  ADD CONSTRAINT `FK_75D92101DA3426AE` FOREIGN KEY (`nivel_id`) REFERENCES `nivelesacademicos` (`id`),
  ADD CONSTRAINT `FK_75D92101E19F41BF` FOREIGN KEY (`sede_id`) REFERENCES `sede` (`id`);

--
-- Filtros para la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD CONSTRAINT `FK_6FFCB2187CB4A1F` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`id`),
  ADD CONSTRAINT `FK_6FFCB219F5A440B` FOREIGN KEY (`estado_id`) REFERENCES `estado_notificacion` (`id`),
  ADD CONSTRAINT `FK_6FFCB21A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_6FFCB21A9276E6C` FOREIGN KEY (`tipo_id`) REFERENCES `tipo_notificacion` (`id`);

--
-- Filtros para la tabla `perfil_administrativo`
--
ALTER TABLE `perfil_administrativo`
  ADD CONSTRAINT `FK_7CCA0B3C813AC380` FOREIGN KEY (`cargo_id`) REFERENCES `cargo_docente` (`id`),
  ADD CONSTRAINT `FK_7CCA0B3C2E595373` FOREIGN KEY (`tipodocumento_id`) REFERENCES `tipo_documento` (`id`),
  ADD CONSTRAINT `FK_7CCA0B3C58BC1BE0` FOREIGN KEY (`municipio_id`) REFERENCES `municipio` (`id`);

--
-- Filtros para la tabla `perfil_docente`
--
ALTER TABLE `perfil_docente`
  ADD CONSTRAINT `FK_23484C65D2D890D2` FOREIGN KEY (`estadocivil_id`) REFERENCES `estado_civil` (`id`),
  ADD CONSTRAINT `FK_23484C652E595373` FOREIGN KEY (`tipodocumento_id`) REFERENCES `tipo_documento` (`id`),
  ADD CONSTRAINT `FK_23484C6558BC1BE0` FOREIGN KEY (`municipio_id`) REFERENCES `municipio` (`id`),
  ADD CONSTRAINT `FK_23484C65813AC380` FOREIGN KEY (`cargo_id`) REFERENCES `cargo_docente` (`id`);

--
-- Filtros para la tabla `perfil_estudiante`
--
ALTER TABLE `perfil_estudiante`
  ADD CONSTRAINT `FK_A34B4FFB2E595373` FOREIGN KEY (`tipodocumento_id`) REFERENCES `tipo_documento` (`id`),
  ADD CONSTRAINT `FK_A34B4FFB58BC1BE0` FOREIGN KEY (`municipio_id`) REFERENCES `municipio` (`id`);

--
-- Filtros para la tabla `periodo`
--
ALTER TABLE `periodo`
  ADD CONSTRAINT `FK_7316C4ED9F5A440B` FOREIGN KEY (`estado_id`) REFERENCES `estado_periodo` (`id`),
  ADD CONSTRAINT `FK_7316C4EDEC34184E` FOREIGN KEY (`anio_id`) REFERENCES `anio` (`id`);

--
-- Filtros para la tabla `planestudio`
--
ALTER TABLE `planestudio`
  ADD CONSTRAINT `FK_BB41539387CB4A1F` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`id`),
  ADD CONSTRAINT `FK_BB4153939C3921AB` FOREIGN KEY (`periodo_id`) REFERENCES `periodo` (`id`),
  ADD CONSTRAINT `FK_BB415393C5C70C5B` FOREIGN KEY (`asignatura_id`) REFERENCES `asignatura` (`id`),
  ADD CONSTRAINT `FK_BB415393E19F41BF` FOREIGN KEY (`sede_id`) REFERENCES `sede` (`id`);

--
-- Filtros para la tabla `rangocuantitativo`
--
ALTER TABLE `rangocuantitativo`
  ADD CONSTRAINT `FK_C8D9BA93484AC310` FOREIGN KEY (`escalanacional_id`) REFERENCES `escnacional` (`id`);

--
-- Filtros para la tabla `sede`
--
ALTER TABLE `sede`
  ADD CONSTRAINT `FK_2A9BE2D1B239FBC6` FOREIGN KEY (`institucion_id`) REFERENCES `institucion` (`id`);

--
-- Filtros para la tabla `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D649E8905583` FOREIGN KEY (`profile_administrativo`) REFERENCES `perfil_administrativo` (`id`),
  ADD CONSTRAINT `FK_8D93D6492E211138` FOREIGN KEY (`profile_docente`) REFERENCES `perfil_docente` (`id`),
  ADD CONSTRAINT `FK_8D93D649B239FBC6` FOREIGN KEY (`institucion_id`) REFERENCES `institucion` (`id`),
  ADD CONSTRAINT `FK_8D93D649FC5408F0` FOREIGN KEY (`profile_estudiante`) REFERENCES `perfil_estudiante` (`id`);

--
-- Filtros para la tabla `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK_2DE8C6A3A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_2DE8C6A3D60322AC` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
