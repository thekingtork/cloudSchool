-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 18-11-2012 a las 20:05:49
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

UPDATE `ajustesevaluacion` SET `id` = 1,`modelo_evaluacion` = 'Por Logros',`acumula` = 1,`escala` = 'Escala Cualitativa' WHERE `ajustesevaluacion`.`id` = 1;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `anio`
--

UPDATE `anio` SET `id` = 1,`nombre` = '2012',`date_create` = '2007-01-01 00:00:00',`active` = 1 WHERE `anio`.`id` = 1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE IF NOT EXISTS `curso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jornada_id` int(11) DEFAULT NULL,
  `sede_id` int(11) DEFAULT NULL,
  `nivel_id` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cupo` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BFA6FE826E992D9` (`jornada_id`),
  KEY `IDX_BFA6FE8E19F41BF` (`sede_id`),
  KEY `IDX_BFA6FE8DA3426AE` (`nivel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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

UPDATE `departamento` SET `id` = 1,`nombre` = 'Amazonas' WHERE `departamento`.`id` = 1;
UPDATE `departamento` SET `id` = 2,`nombre` = 'Antioquia' WHERE `departamento`.`id` = 2;
UPDATE `departamento` SET `id` = 3,`nombre` = 'Arauca' WHERE `departamento`.`id` = 3;
UPDATE `departamento` SET `id` = 4,`nombre` = 'Atlántico' WHERE `departamento`.`id` = 4;
UPDATE `departamento` SET `id` = 5,`nombre` = 'Bolívar' WHERE `departamento`.`id` = 5;
UPDATE `departamento` SET `id` = 6,`nombre` = 'Boyacá' WHERE `departamento`.`id` = 6;
UPDATE `departamento` SET `id` = 7,`nombre` = 'Caldas' WHERE `departamento`.`id` = 7;
UPDATE `departamento` SET `id` = 8,`nombre` = 'Caquetá' WHERE `departamento`.`id` = 8;
UPDATE `departamento` SET `id` = 9,`nombre` = 'Casanare' WHERE `departamento`.`id` = 9;
UPDATE `departamento` SET `id` = 10,`nombre` = 'Cauca' WHERE `departamento`.`id` = 10;
UPDATE `departamento` SET `id` = 11,`nombre` = 'Cesar' WHERE `departamento`.`id` = 11;
UPDATE `departamento` SET `id` = 12,`nombre` = 'Chocó' WHERE `departamento`.`id` = 12;
UPDATE `departamento` SET `id` = 13,`nombre` = 'Córdoba' WHERE `departamento`.`id` = 13;
UPDATE `departamento` SET `id` = 14,`nombre` = 'Cundinamarca' WHERE `departamento`.`id` = 14;
UPDATE `departamento` SET `id` = 15,`nombre` = 'Güainia' WHERE `departamento`.`id` = 15;
UPDATE `departamento` SET `id` = 16,`nombre` = 'Guaviare' WHERE `departamento`.`id` = 16;
UPDATE `departamento` SET `id` = 17,`nombre` = 'Huila' WHERE `departamento`.`id` = 17;
UPDATE `departamento` SET `id` = 18,`nombre` = 'La Guajira' WHERE `departamento`.`id` = 18;
UPDATE `departamento` SET `id` = 19,`nombre` = 'Magdalena' WHERE `departamento`.`id` = 19;
UPDATE `departamento` SET `id` = 20,`nombre` = 'Meta' WHERE `departamento`.`id` = 20;
UPDATE `departamento` SET `id` = 21,`nombre` = 'Nariño' WHERE `departamento`.`id` = 21;
UPDATE `departamento` SET `id` = 22,`nombre` = 'Norte de Santander' WHERE `departamento`.`id` = 22;
UPDATE `departamento` SET `id` = 23,`nombre` = 'Putumayo' WHERE `departamento`.`id` = 23;
UPDATE `departamento` SET `id` = 24,`nombre` = 'Quindo' WHERE `departamento`.`id` = 24;
UPDATE `departamento` SET `id` = 25,`nombre` = 'Risaralda' WHERE `departamento`.`id` = 25;
UPDATE `departamento` SET `id` = 26,`nombre` = 'San Andrés y Providencia' WHERE `departamento`.`id` = 26;
UPDATE `departamento` SET `id` = 27,`nombre` = 'Santander' WHERE `departamento`.`id` = 27;
UPDATE `departamento` SET `id` = 28,`nombre` = 'Sucre' WHERE `departamento`.`id` = 28;
UPDATE `departamento` SET `id` = 29,`nombre` = 'Tolima' WHERE `departamento`.`id` = 29;
UPDATE `departamento` SET `id` = 30,`nombre` = 'Valle del Cauca' WHERE `departamento`.`id` = 30;
UPDATE `departamento` SET `id` = 31,`nombre` = 'Vaupés' WHERE `departamento`.`id` = 31;
UPDATE `departamento` SET `id` = 32,`nombre` = 'Vichada' WHERE `departamento`.`id` = 32;

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

UPDATE `esccualitativa` SET `id` = 1,`valoracion` = 'Insuficiente (I)' WHERE `esccualitativa`.`id` = 1;
UPDATE `esccualitativa` SET `id` = 2,`valoracion` = 'Aceptable (A)' WHERE `esccualitativa`.`id` = 2;
UPDATE `esccualitativa` SET `id` = 3,`valoracion` = 'Sobresaliente (S)' WHERE `esccualitativa`.`id` = 3;
UPDATE `esccualitativa` SET `id` = 4,`valoracion` = 'Excelente (E)' WHERE `esccualitativa`.`id` = 4;

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

UPDATE `escnacional` SET `id` = 1,`valoracion` = 'Desempeño Bajo' WHERE `escnacional`.`id` = 1;
UPDATE `escnacional` SET `id` = 2,`valoracion` = 'Desempeño Básico' WHERE `escnacional`.`id` = 2;
UPDATE `escnacional` SET `id` = 3,`valoracion` = 'Desempeño Alto' WHERE `escnacional`.`id` = 3;
UPDATE `escnacional` SET `id` = 4,`valoracion` = 'Desempeño Superior' WHERE `escnacional`.`id` = 4;

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

UPDATE `estado_notificacion` SET `id` = 1,`nombre` = 'No Leido' WHERE `estado_notificacion`.`id` = 1;
UPDATE `estado_notificacion` SET `id` = 2,`nombre` = 'Leido' WHERE `estado_notificacion`.`id` = 2;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_periodo`
--

CREATE TABLE IF NOT EXISTS `estado_periodo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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

UPDATE `institucion` SET `id` = 1,`nombre` = 'IE ejemplo 1',`direccion` = 'ejemplo 1',`ciudad` = 'ejemplo 1',`telefono` = 'ejemplo 1',`fax` = 'ejemplo 1',`nit` = 'ejemplo 1',`dane` = 'ejemplo 1',`men` = 'ejemplo 1',`rector` = 'ejemplo 1',`secretario` = 'ejemplo 1',`email` = 'ejemplo 1',`distribucion_usuario` = 'ejemplo 1',`modelo_pedagogico` = 'ejemplo 1',`url_imagen` = 'ejemplo 1' WHERE `institucion`.`id` = 1;

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

UPDATE `jornada` SET `id` = 1,`nombre` = 'Mañana' WHERE `jornada`.`id` = 1;
UPDATE `jornada` SET `id` = 2,`nombre` = 'Tarde' WHERE `jornada`.`id` = 2;
UPDATE `jornada` SET `id` = 3,`nombre` = 'Noche' WHERE `jornada`.`id` = 3;

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

--
-- Volcado de datos para la tabla `jornada_sede`
--

UPDATE `jornada_sede` SET `sede_id` = 1,`jornada_id` = 1 WHERE `jornada_sede`.`sede_id` = 1 AND `jornada_sede`.`jornada_id` = 1;

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

UPDATE `municipio` SET `id` = 1,`departamento_id` = 1,`nombre` = 'Leticia' WHERE `municipio`.`id` = 1;
UPDATE `municipio` SET `id` = 2,`departamento_id` = 1,`nombre` = 'Puerto Nariño' WHERE `municipio`.`id` = 2;
UPDATE `municipio` SET `id` = 3,`departamento_id` = 2,`nombre` = 'Abejorral' WHERE `municipio`.`id` = 3;
UPDATE `municipio` SET `id` = 4,`departamento_id` = 2,`nombre` = 'Abriaquí' WHERE `municipio`.`id` = 4;
UPDATE `municipio` SET `id` = 5,`departamento_id` = 2,`nombre` = 'Alejandria' WHERE `municipio`.`id` = 5;
UPDATE `municipio` SET `id` = 6,`departamento_id` = 2,`nombre` = 'Amagá' WHERE `municipio`.`id` = 6;
UPDATE `municipio` SET `id` = 7,`departamento_id` = 2,`nombre` = 'Amalfi' WHERE `municipio`.`id` = 7;
UPDATE `municipio` SET `id` = 8,`departamento_id` = 2,`nombre` = 'Andes' WHERE `municipio`.`id` = 8;
UPDATE `municipio` SET `id` = 9,`departamento_id` = 2,`nombre` = 'Angelópolis' WHERE `municipio`.`id` = 9;
UPDATE `municipio` SET `id` = 10,`departamento_id` = 2,`nombre` = 'Angostura' WHERE `municipio`.`id` = 10;
UPDATE `municipio` SET `id` = 11,`departamento_id` = 2,`nombre` = 'Anorí' WHERE `municipio`.`id` = 11;
UPDATE `municipio` SET `id` = 12,`departamento_id` = 2,`nombre` = 'Anzá' WHERE `municipio`.`id` = 12;
UPDATE `municipio` SET `id` = 13,`departamento_id` = 2,`nombre` = 'Apartadó' WHERE `municipio`.`id` = 13;
UPDATE `municipio` SET `id` = 14,`departamento_id` = 2,`nombre` = 'Arboletes' WHERE `municipio`.`id` = 14;
UPDATE `municipio` SET `id` = 15,`departamento_id` = 2,`nombre` = 'Argelia' WHERE `municipio`.`id` = 15;
UPDATE `municipio` SET `id` = 16,`departamento_id` = 2,`nombre` = 'Armenia' WHERE `municipio`.`id` = 16;
UPDATE `municipio` SET `id` = 17,`departamento_id` = 2,`nombre` = 'Barbosa' WHERE `municipio`.`id` = 17;
UPDATE `municipio` SET `id` = 18,`departamento_id` = 2,`nombre` = 'Bello' WHERE `municipio`.`id` = 18;
UPDATE `municipio` SET `id` = 19,`departamento_id` = 2,`nombre` = 'Belmira' WHERE `municipio`.`id` = 19;
UPDATE `municipio` SET `id` = 20,`departamento_id` = 2,`nombre` = 'Betania' WHERE `municipio`.`id` = 20;
UPDATE `municipio` SET `id` = 21,`departamento_id` = 2,`nombre` = 'Betulia' WHERE `municipio`.`id` = 21;
UPDATE `municipio` SET `id` = 22,`departamento_id` = 2,`nombre` = 'Bolívar' WHERE `municipio`.`id` = 22;
UPDATE `municipio` SET `id` = 23,`departamento_id` = 2,`nombre` = 'Briceño' WHERE `municipio`.`id` = 23;
UPDATE `municipio` SET `id` = 24,`departamento_id` = 2,`nombre` = 'Burítica' WHERE `municipio`.`id` = 24;
UPDATE `municipio` SET `id` = 25,`departamento_id` = 2,`nombre` = 'Caicedo' WHERE `municipio`.`id` = 25;
UPDATE `municipio` SET `id` = 26,`departamento_id` = 2,`nombre` = 'Caldas' WHERE `municipio`.`id` = 26;
UPDATE `municipio` SET `id` = 27,`departamento_id` = 2,`nombre` = 'Campamento' WHERE `municipio`.`id` = 27;
UPDATE `municipio` SET `id` = 28,`departamento_id` = 2,`nombre` = 'Caracolí' WHERE `municipio`.`id` = 28;
UPDATE `municipio` SET `id` = 29,`departamento_id` = 2,`nombre` = 'Caramanta' WHERE `municipio`.`id` = 29;
UPDATE `municipio` SET `id` = 30,`departamento_id` = 2,`nombre` = 'Carepa' WHERE `municipio`.`id` = 30;
UPDATE `municipio` SET `id` = 31,`departamento_id` = 2,`nombre` = 'Carmen de Viboral' WHERE `municipio`.`id` = 31;
UPDATE `municipio` SET `id` = 32,`departamento_id` = 2,`nombre` = 'Carolina' WHERE `municipio`.`id` = 32;
UPDATE `municipio` SET `id` = 33,`departamento_id` = 2,`nombre` = 'Caucasia' WHERE `municipio`.`id` = 33;
UPDATE `municipio` SET `id` = 34,`departamento_id` = 2,`nombre` = 'Cañasgordas' WHERE `municipio`.`id` = 34;
UPDATE `municipio` SET `id` = 35,`departamento_id` = 2,`nombre` = 'Chigorodó' WHERE `municipio`.`id` = 35;
UPDATE `municipio` SET `id` = 36,`departamento_id` = 2,`nombre` = 'Cisneros' WHERE `municipio`.`id` = 36;
UPDATE `municipio` SET `id` = 37,`departamento_id` = 2,`nombre` = 'Cocorná' WHERE `municipio`.`id` = 37;
UPDATE `municipio` SET `id` = 38,`departamento_id` = 2,`nombre` = 'Concepción' WHERE `municipio`.`id` = 38;
UPDATE `municipio` SET `id` = 39,`departamento_id` = 2,`nombre` = 'Concordia' WHERE `municipio`.`id` = 39;
UPDATE `municipio` SET `id` = 40,`departamento_id` = 2,`nombre` = 'Copacabana' WHERE `municipio`.`id` = 40;
UPDATE `municipio` SET `id` = 41,`departamento_id` = 2,`nombre` = 'Cáceres' WHERE `municipio`.`id` = 41;
UPDATE `municipio` SET `id` = 42,`departamento_id` = 2,`nombre` = 'Dabeiba' WHERE `municipio`.`id` = 42;
UPDATE `municipio` SET `id` = 43,`departamento_id` = 2,`nombre` = 'Don Matías' WHERE `municipio`.`id` = 43;
UPDATE `municipio` SET `id` = 44,`departamento_id` = 2,`nombre` = 'Ebéjico' WHERE `municipio`.`id` = 44;
UPDATE `municipio` SET `id` = 45,`departamento_id` = 2,`nombre` = 'El Bagre' WHERE `municipio`.`id` = 45;
UPDATE `municipio` SET `id` = 46,`departamento_id` = 2,`nombre` = 'Entrerríos' WHERE `municipio`.`id` = 46;
UPDATE `municipio` SET `id` = 47,`departamento_id` = 2,`nombre` = 'Envigado' WHERE `municipio`.`id` = 47;
UPDATE `municipio` SET `id` = 48,`departamento_id` = 2,`nombre` = 'Fredonia' WHERE `municipio`.`id` = 48;
UPDATE `municipio` SET `id` = 49,`departamento_id` = 2,`nombre` = 'Frontino' WHERE `municipio`.`id` = 49;
UPDATE `municipio` SET `id` = 50,`departamento_id` = 2,`nombre` = 'Giraldo' WHERE `municipio`.`id` = 50;
UPDATE `municipio` SET `id` = 51,`departamento_id` = 2,`nombre` = 'Girardota' WHERE `municipio`.`id` = 51;
UPDATE `municipio` SET `id` = 52,`departamento_id` = 2,`nombre` = 'Granada' WHERE `municipio`.`id` = 52;
UPDATE `municipio` SET `id` = 53,`departamento_id` = 2,`nombre` = 'Guadalupe' WHERE `municipio`.`id` = 53;
UPDATE `municipio` SET `id` = 54,`departamento_id` = 2,`nombre` = 'Guarne' WHERE `municipio`.`id` = 54;
UPDATE `municipio` SET `id` = 55,`departamento_id` = 2,`nombre` = 'Guatapé' WHERE `municipio`.`id` = 55;
UPDATE `municipio` SET `id` = 56,`departamento_id` = 2,`nombre` = 'Gómez Plata' WHERE `municipio`.`id` = 56;
UPDATE `municipio` SET `id` = 57,`departamento_id` = 2,`nombre` = 'Heliconia' WHERE `municipio`.`id` = 57;
UPDATE `municipio` SET `id` = 58,`departamento_id` = 2,`nombre` = 'Hispania' WHERE `municipio`.`id` = 58;
UPDATE `municipio` SET `id` = 59,`departamento_id` = 2,`nombre` = 'Itagüí' WHERE `municipio`.`id` = 59;
UPDATE `municipio` SET `id` = 60,`departamento_id` = 2,`nombre` = 'Ituango' WHERE `municipio`.`id` = 60;
UPDATE `municipio` SET `id` = 61,`departamento_id` = 2,`nombre` = 'Jardín' WHERE `municipio`.`id` = 61;
UPDATE `municipio` SET `id` = 62,`departamento_id` = 2,`nombre` = 'Jericó' WHERE `municipio`.`id` = 62;
UPDATE `municipio` SET `id` = 63,`departamento_id` = 2,`nombre` = 'La Ceja' WHERE `municipio`.`id` = 63;
UPDATE `municipio` SET `id` = 64,`departamento_id` = 2,`nombre` = 'La Estrella' WHERE `municipio`.`id` = 64;
UPDATE `municipio` SET `id` = 65,`departamento_id` = 2,`nombre` = 'La Pintada' WHERE `municipio`.`id` = 65;
UPDATE `municipio` SET `id` = 66,`departamento_id` = 2,`nombre` = 'La Unión' WHERE `municipio`.`id` = 66;
UPDATE `municipio` SET `id` = 67,`departamento_id` = 2,`nombre` = 'Liborina' WHERE `municipio`.`id` = 67;
UPDATE `municipio` SET `id` = 68,`departamento_id` = 2,`nombre` = 'Maceo' WHERE `municipio`.`id` = 68;
UPDATE `municipio` SET `id` = 69,`departamento_id` = 2,`nombre` = 'Marinilla' WHERE `municipio`.`id` = 69;
UPDATE `municipio` SET `id` = 70,`departamento_id` = 2,`nombre` = 'Medellín' WHERE `municipio`.`id` = 70;
UPDATE `municipio` SET `id` = 71,`departamento_id` = 2,`nombre` = 'Montebello' WHERE `municipio`.`id` = 71;
UPDATE `municipio` SET `id` = 72,`departamento_id` = 2,`nombre` = 'Murindó' WHERE `municipio`.`id` = 72;
UPDATE `municipio` SET `id` = 73,`departamento_id` = 2,`nombre` = 'Mutatá' WHERE `municipio`.`id` = 73;
UPDATE `municipio` SET `id` = 74,`departamento_id` = 2,`nombre` = 'Nariño' WHERE `municipio`.`id` = 74;
UPDATE `municipio` SET `id` = 75,`departamento_id` = 2,`nombre` = 'Nechí' WHERE `municipio`.`id` = 75;
UPDATE `municipio` SET `id` = 76,`departamento_id` = 2,`nombre` = 'Necoclí' WHERE `municipio`.`id` = 76;
UPDATE `municipio` SET `id` = 77,`departamento_id` = 2,`nombre` = 'Olaya' WHERE `municipio`.`id` = 77;
UPDATE `municipio` SET `id` = 78,`departamento_id` = 2,`nombre` = 'Peque' WHERE `municipio`.`id` = 78;
UPDATE `municipio` SET `id` = 79,`departamento_id` = 2,`nombre` = 'Peñol' WHERE `municipio`.`id` = 79;
UPDATE `municipio` SET `id` = 80,`departamento_id` = 2,`nombre` = 'Pueblorrico' WHERE `municipio`.`id` = 80;
UPDATE `municipio` SET `id` = 81,`departamento_id` = 2,`nombre` = 'Puerto Berrío' WHERE `municipio`.`id` = 81;
UPDATE `municipio` SET `id` = 82,`departamento_id` = 2,`nombre` = 'Puerto Nare' WHERE `municipio`.`id` = 82;
UPDATE `municipio` SET `id` = 83,`departamento_id` = 2,`nombre` = 'Puerto Triunfo' WHERE `municipio`.`id` = 83;
UPDATE `municipio` SET `id` = 84,`departamento_id` = 2,`nombre` = 'Remedios' WHERE `municipio`.`id` = 84;
UPDATE `municipio` SET `id` = 85,`departamento_id` = 2,`nombre` = 'Retiro' WHERE `municipio`.`id` = 85;
UPDATE `municipio` SET `id` = 86,`departamento_id` = 2,`nombre` = 'Ríonegro' WHERE `municipio`.`id` = 86;
UPDATE `municipio` SET `id` = 87,`departamento_id` = 2,`nombre` = 'Sabanalarga' WHERE `municipio`.`id` = 87;
UPDATE `municipio` SET `id` = 88,`departamento_id` = 2,`nombre` = 'Sabaneta' WHERE `municipio`.`id` = 88;
UPDATE `municipio` SET `id` = 89,`departamento_id` = 2,`nombre` = 'Salgar' WHERE `municipio`.`id` = 89;
UPDATE `municipio` SET `id` = 90,`departamento_id` = 2,`nombre` = 'San Andrés de Cuerquía' WHERE `municipio`.`id` = 90;
UPDATE `municipio` SET `id` = 91,`departamento_id` = 2,`nombre` = 'San Carlos' WHERE `municipio`.`id` = 91;
UPDATE `municipio` SET `id` = 92,`departamento_id` = 2,`nombre` = 'San Francisco' WHERE `municipio`.`id` = 92;
UPDATE `municipio` SET `id` = 93,`departamento_id` = 2,`nombre` = 'San Jerónimo' WHERE `municipio`.`id` = 93;
UPDATE `municipio` SET `id` = 94,`departamento_id` = 2,`nombre` = 'San José de Montaña' WHERE `municipio`.`id` = 94;
UPDATE `municipio` SET `id` = 95,`departamento_id` = 2,`nombre` = 'San Juan de Urabá' WHERE `municipio`.`id` = 95;
UPDATE `municipio` SET `id` = 96,`departamento_id` = 2,`nombre` = 'San Luís' WHERE `municipio`.`id` = 96;
UPDATE `municipio` SET `id` = 97,`departamento_id` = 2,`nombre` = 'San Pedro' WHERE `municipio`.`id` = 97;
UPDATE `municipio` SET `id` = 98,`departamento_id` = 2,`nombre` = 'San Pedro de Urabá' WHERE `municipio`.`id` = 98;
UPDATE `municipio` SET `id` = 99,`departamento_id` = 2,`nombre` = 'San Rafael' WHERE `municipio`.`id` = 99;
UPDATE `municipio` SET `id` = 100,`departamento_id` = 2,`nombre` = 'San Roque' WHERE `municipio`.`id` = 100;
UPDATE `municipio` SET `id` = 101,`departamento_id` = 2,`nombre` = 'San Vicente' WHERE `municipio`.`id` = 101;
UPDATE `municipio` SET `id` = 102,`departamento_id` = 2,`nombre` = 'Santa Bárbara' WHERE `municipio`.`id` = 102;
UPDATE `municipio` SET `id` = 103,`departamento_id` = 2,`nombre` = 'Santa Fé de Antioquia' WHERE `municipio`.`id` = 103;
UPDATE `municipio` SET `id` = 104,`departamento_id` = 2,`nombre` = 'Santa Rosa de Osos' WHERE `municipio`.`id` = 104;
UPDATE `municipio` SET `id` = 105,`departamento_id` = 2,`nombre` = 'Santo Domingo' WHERE `municipio`.`id` = 105;
UPDATE `municipio` SET `id` = 106,`departamento_id` = 2,`nombre` = 'Santuario' WHERE `municipio`.`id` = 106;
UPDATE `municipio` SET `id` = 107,`departamento_id` = 2,`nombre` = 'Segovia' WHERE `municipio`.`id` = 107;
UPDATE `municipio` SET `id` = 108,`departamento_id` = 2,`nombre` = 'Sonsón' WHERE `municipio`.`id` = 108;
UPDATE `municipio` SET `id` = 109,`departamento_id` = 2,`nombre` = 'Sopetrán' WHERE `municipio`.`id` = 109;
UPDATE `municipio` SET `id` = 110,`departamento_id` = 2,`nombre` = 'Tarazá' WHERE `municipio`.`id` = 110;
UPDATE `municipio` SET `id` = 111,`departamento_id` = 2,`nombre` = 'Tarso' WHERE `municipio`.`id` = 111;
UPDATE `municipio` SET `id` = 112,`departamento_id` = 2,`nombre` = 'Titiribí' WHERE `municipio`.`id` = 112;
UPDATE `municipio` SET `id` = 113,`departamento_id` = 2,`nombre` = 'Toledo' WHERE `municipio`.`id` = 113;
UPDATE `municipio` SET `id` = 114,`departamento_id` = 2,`nombre` = 'Turbo' WHERE `municipio`.`id` = 114;
UPDATE `municipio` SET `id` = 115,`departamento_id` = 2,`nombre` = 'Támesis' WHERE `municipio`.`id` = 115;
UPDATE `municipio` SET `id` = 116,`departamento_id` = 2,`nombre` = 'Uramita' WHERE `municipio`.`id` = 116;
UPDATE `municipio` SET `id` = 117,`departamento_id` = 2,`nombre` = 'Urrao' WHERE `municipio`.`id` = 117;
UPDATE `municipio` SET `id` = 118,`departamento_id` = 2,`nombre` = 'Valdivia' WHERE `municipio`.`id` = 118;
UPDATE `municipio` SET `id` = 119,`departamento_id` = 2,`nombre` = 'Valparaiso' WHERE `municipio`.`id` = 119;
UPDATE `municipio` SET `id` = 120,`departamento_id` = 2,`nombre` = 'Vegachí' WHERE `municipio`.`id` = 120;
UPDATE `municipio` SET `id` = 121,`departamento_id` = 2,`nombre` = 'Venecia' WHERE `municipio`.`id` = 121;
UPDATE `municipio` SET `id` = 122,`departamento_id` = 2,`nombre` = 'Vigía del Fuerte' WHERE `municipio`.`id` = 122;
UPDATE `municipio` SET `id` = 123,`departamento_id` = 2,`nombre` = 'Yalí' WHERE `municipio`.`id` = 123;
UPDATE `municipio` SET `id` = 124,`departamento_id` = 2,`nombre` = 'Yarumal' WHERE `municipio`.`id` = 124;
UPDATE `municipio` SET `id` = 125,`departamento_id` = 2,`nombre` = 'Yolombó' WHERE `municipio`.`id` = 125;
UPDATE `municipio` SET `id` = 126,`departamento_id` = 2,`nombre` = 'Yondó (Casabe)' WHERE `municipio`.`id` = 126;
UPDATE `municipio` SET `id` = 127,`departamento_id` = 2,`nombre` = 'Zaragoza' WHERE `municipio`.`id` = 127;
UPDATE `municipio` SET `id` = 128,`departamento_id` = 3,`nombre` = 'Arauca' WHERE `municipio`.`id` = 128;
UPDATE `municipio` SET `id` = 129,`departamento_id` = 3,`nombre` = 'Arauquita' WHERE `municipio`.`id` = 129;
UPDATE `municipio` SET `id` = 130,`departamento_id` = 3,`nombre` = 'Cravo Norte' WHERE `municipio`.`id` = 130;
UPDATE `municipio` SET `id` = 131,`departamento_id` = 3,`nombre` = 'Fortúl' WHERE `municipio`.`id` = 131;
UPDATE `municipio` SET `id` = 132,`departamento_id` = 3,`nombre` = 'Puerto Rondón' WHERE `municipio`.`id` = 132;
UPDATE `municipio` SET `id` = 133,`departamento_id` = 3,`nombre` = 'Saravena' WHERE `municipio`.`id` = 133;
UPDATE `municipio` SET `id` = 134,`departamento_id` = 3,`nombre` = 'Tame' WHERE `municipio`.`id` = 134;
UPDATE `municipio` SET `id` = 135,`departamento_id` = 4,`nombre` = 'Baranoa' WHERE `municipio`.`id` = 135;
UPDATE `municipio` SET `id` = 136,`departamento_id` = 4,`nombre` = 'Barranquilla' WHERE `municipio`.`id` = 136;
UPDATE `municipio` SET `id` = 137,`departamento_id` = 4,`nombre` = 'Campo de la Cruz' WHERE `municipio`.`id` = 137;
UPDATE `municipio` SET `id` = 138,`departamento_id` = 4,`nombre` = 'Candelaria' WHERE `municipio`.`id` = 138;
UPDATE `municipio` SET `id` = 139,`departamento_id` = 4,`nombre` = 'Galapa' WHERE `municipio`.`id` = 139;
UPDATE `municipio` SET `id` = 140,`departamento_id` = 4,`nombre` = 'Juan de Acosta' WHERE `municipio`.`id` = 140;
UPDATE `municipio` SET `id` = 141,`departamento_id` = 4,`nombre` = 'Luruaco' WHERE `municipio`.`id` = 141;
UPDATE `municipio` SET `id` = 142,`departamento_id` = 4,`nombre` = 'Malambo' WHERE `municipio`.`id` = 142;
UPDATE `municipio` SET `id` = 143,`departamento_id` = 4,`nombre` = 'Manatí' WHERE `municipio`.`id` = 143;
UPDATE `municipio` SET `id` = 144,`departamento_id` = 4,`nombre` = 'Palmar de Varela' WHERE `municipio`.`id` = 144;
UPDATE `municipio` SET `id` = 145,`departamento_id` = 4,`nombre` = 'Piojo' WHERE `municipio`.`id` = 145;
UPDATE `municipio` SET `id` = 146,`departamento_id` = 4,`nombre` = 'Polonuevo' WHERE `municipio`.`id` = 146;
UPDATE `municipio` SET `id` = 147,`departamento_id` = 4,`nombre` = 'Ponedera' WHERE `municipio`.`id` = 147;
UPDATE `municipio` SET `id` = 148,`departamento_id` = 4,`nombre` = 'Puerto Colombia' WHERE `municipio`.`id` = 148;
UPDATE `municipio` SET `id` = 149,`departamento_id` = 4,`nombre` = 'Repelón' WHERE `municipio`.`id` = 149;
UPDATE `municipio` SET `id` = 150,`departamento_id` = 4,`nombre` = 'Sabanagrande' WHERE `municipio`.`id` = 150;
UPDATE `municipio` SET `id` = 151,`departamento_id` = 4,`nombre` = 'Sabanalarga' WHERE `municipio`.`id` = 151;
UPDATE `municipio` SET `id` = 152,`departamento_id` = 4,`nombre` = 'Santa Lucía' WHERE `municipio`.`id` = 152;
UPDATE `municipio` SET `id` = 153,`departamento_id` = 4,`nombre` = 'Santo Tomás' WHERE `municipio`.`id` = 153;
UPDATE `municipio` SET `id` = 154,`departamento_id` = 4,`nombre` = 'Soledad' WHERE `municipio`.`id` = 154;
UPDATE `municipio` SET `id` = 155,`departamento_id` = 4,`nombre` = 'Suan' WHERE `municipio`.`id` = 155;
UPDATE `municipio` SET `id` = 156,`departamento_id` = 4,`nombre` = 'Tubará' WHERE `municipio`.`id` = 156;
UPDATE `municipio` SET `id` = 157,`departamento_id` = 4,`nombre` = 'Usiacuri' WHERE `municipio`.`id` = 157;
UPDATE `municipio` SET `id` = 158,`departamento_id` = 5,`nombre` = 'Achí' WHERE `municipio`.`id` = 158;
UPDATE `municipio` SET `id` = 159,`departamento_id` = 5,`nombre` = 'Altos del Rosario' WHERE `municipio`.`id` = 159;
UPDATE `municipio` SET `id` = 160,`departamento_id` = 5,`nombre` = 'Arenal' WHERE `municipio`.`id` = 160;
UPDATE `municipio` SET `id` = 161,`departamento_id` = 5,`nombre` = 'Arjona' WHERE `municipio`.`id` = 161;
UPDATE `municipio` SET `id` = 162,`departamento_id` = 5,`nombre` = 'Arroyohondo' WHERE `municipio`.`id` = 162;
UPDATE `municipio` SET `id` = 163,`departamento_id` = 5,`nombre` = 'Barranco de Loba' WHERE `municipio`.`id` = 163;
UPDATE `municipio` SET `id` = 164,`departamento_id` = 5,`nombre` = 'Calamar' WHERE `municipio`.`id` = 164;
UPDATE `municipio` SET `id` = 165,`departamento_id` = 5,`nombre` = 'Cantagallo' WHERE `municipio`.`id` = 165;
UPDATE `municipio` SET `id` = 166,`departamento_id` = 5,`nombre` = 'Cartagena' WHERE `municipio`.`id` = 166;
UPDATE `municipio` SET `id` = 167,`departamento_id` = 5,`nombre` = 'Cicuco' WHERE `municipio`.`id` = 167;
UPDATE `municipio` SET `id` = 168,`departamento_id` = 5,`nombre` = 'Clemencia' WHERE `municipio`.`id` = 168;
UPDATE `municipio` SET `id` = 169,`departamento_id` = 5,`nombre` = 'Córdoba' WHERE `municipio`.`id` = 169;
UPDATE `municipio` SET `id` = 170,`departamento_id` = 5,`nombre` = 'El Carmen de Bolívar' WHERE `municipio`.`id` = 170;
UPDATE `municipio` SET `id` = 171,`departamento_id` = 5,`nombre` = 'El Guamo' WHERE `municipio`.`id` = 171;
UPDATE `municipio` SET `id` = 172,`departamento_id` = 5,`nombre` = 'El Peñon' WHERE `municipio`.`id` = 172;
UPDATE `municipio` SET `id` = 173,`departamento_id` = 5,`nombre` = 'Hatillo de Loba' WHERE `municipio`.`id` = 173;
UPDATE `municipio` SET `id` = 174,`departamento_id` = 5,`nombre` = 'Magangué' WHERE `municipio`.`id` = 174;
UPDATE `municipio` SET `id` = 175,`departamento_id` = 5,`nombre` = 'Mahates' WHERE `municipio`.`id` = 175;
UPDATE `municipio` SET `id` = 176,`departamento_id` = 5,`nombre` = 'Margarita' WHERE `municipio`.`id` = 176;
UPDATE `municipio` SET `id` = 177,`departamento_id` = 5,`nombre` = 'María la Baja' WHERE `municipio`.`id` = 177;
UPDATE `municipio` SET `id` = 178,`departamento_id` = 5,`nombre` = 'Mompós' WHERE `municipio`.`id` = 178;
UPDATE `municipio` SET `id` = 179,`departamento_id` = 5,`nombre` = 'Montecristo' WHERE `municipio`.`id` = 179;
UPDATE `municipio` SET `id` = 180,`departamento_id` = 5,`nombre` = 'Morales' WHERE `municipio`.`id` = 180;
UPDATE `municipio` SET `id` = 181,`departamento_id` = 5,`nombre` = 'Norosí' WHERE `municipio`.`id` = 181;
UPDATE `municipio` SET `id` = 182,`departamento_id` = 5,`nombre` = 'Pinillos' WHERE `municipio`.`id` = 182;
UPDATE `municipio` SET `id` = 183,`departamento_id` = 5,`nombre` = 'Regidor' WHERE `municipio`.`id` = 183;
UPDATE `municipio` SET `id` = 184,`departamento_id` = 5,`nombre` = 'Río Viejo' WHERE `municipio`.`id` = 184;
UPDATE `municipio` SET `id` = 185,`departamento_id` = 5,`nombre` = 'San Cristobal' WHERE `municipio`.`id` = 185;
UPDATE `municipio` SET `id` = 186,`departamento_id` = 5,`nombre` = 'San Estanislao' WHERE `municipio`.`id` = 186;
UPDATE `municipio` SET `id` = 187,`departamento_id` = 5,`nombre` = 'San Fernando' WHERE `municipio`.`id` = 187;
UPDATE `municipio` SET `id` = 188,`departamento_id` = 5,`nombre` = 'San Jacinto' WHERE `municipio`.`id` = 188;
UPDATE `municipio` SET `id` = 189,`departamento_id` = 5,`nombre` = 'San Jacinto del Cauca' WHERE `municipio`.`id` = 189;
UPDATE `municipio` SET `id` = 190,`departamento_id` = 5,`nombre` = 'San Juan de Nepomuceno' WHERE `municipio`.`id` = 190;
UPDATE `municipio` SET `id` = 191,`departamento_id` = 5,`nombre` = 'San Martín de Loba' WHERE `municipio`.`id` = 191;
UPDATE `municipio` SET `id` = 192,`departamento_id` = 5,`nombre` = 'San Pablo' WHERE `municipio`.`id` = 192;
UPDATE `municipio` SET `id` = 193,`departamento_id` = 5,`nombre` = 'Santa Catalina' WHERE `municipio`.`id` = 193;
UPDATE `municipio` SET `id` = 194,`departamento_id` = 5,`nombre` = 'Santa Rosa ' WHERE `municipio`.`id` = 194;
UPDATE `municipio` SET `id` = 195,`departamento_id` = 5,`nombre` = 'Santa Rosa del Sur' WHERE `municipio`.`id` = 195;
UPDATE `municipio` SET `id` = 196,`departamento_id` = 5,`nombre` = 'Simití' WHERE `municipio`.`id` = 196;
UPDATE `municipio` SET `id` = 197,`departamento_id` = 5,`nombre` = 'Soplaviento' WHERE `municipio`.`id` = 197;
UPDATE `municipio` SET `id` = 198,`departamento_id` = 5,`nombre` = 'Talaigua Nuevo' WHERE `municipio`.`id` = 198;
UPDATE `municipio` SET `id` = 199,`departamento_id` = 5,`nombre` = 'Tiquisio (Puerto Rico)' WHERE `municipio`.`id` = 199;
UPDATE `municipio` SET `id` = 200,`departamento_id` = 5,`nombre` = 'Turbaco' WHERE `municipio`.`id` = 200;
UPDATE `municipio` SET `id` = 201,`departamento_id` = 5,`nombre` = 'Turbaná' WHERE `municipio`.`id` = 201;
UPDATE `municipio` SET `id` = 202,`departamento_id` = 5,`nombre` = 'Villanueva' WHERE `municipio`.`id` = 202;
UPDATE `municipio` SET `id` = 203,`departamento_id` = 5,`nombre` = 'Zambrano' WHERE `municipio`.`id` = 203;
UPDATE `municipio` SET `id` = 204,`departamento_id` = 6,`nombre` = 'Almeida' WHERE `municipio`.`id` = 204;
UPDATE `municipio` SET `id` = 205,`departamento_id` = 6,`nombre` = 'Aquitania' WHERE `municipio`.`id` = 205;
UPDATE `municipio` SET `id` = 206,`departamento_id` = 6,`nombre` = 'Arcabuco' WHERE `municipio`.`id` = 206;
UPDATE `municipio` SET `id` = 207,`departamento_id` = 6,`nombre` = 'Belén' WHERE `municipio`.`id` = 207;
UPDATE `municipio` SET `id` = 208,`departamento_id` = 6,`nombre` = 'Berbeo' WHERE `municipio`.`id` = 208;
UPDATE `municipio` SET `id` = 209,`departamento_id` = 6,`nombre` = 'Beteitiva' WHERE `municipio`.`id` = 209;
UPDATE `municipio` SET `id` = 210,`departamento_id` = 6,`nombre` = 'Boavita' WHERE `municipio`.`id` = 210;
UPDATE `municipio` SET `id` = 211,`departamento_id` = 6,`nombre` = 'Boyacá' WHERE `municipio`.`id` = 211;
UPDATE `municipio` SET `id` = 212,`departamento_id` = 6,`nombre` = 'Briceño' WHERE `municipio`.`id` = 212;
UPDATE `municipio` SET `id` = 213,`departamento_id` = 6,`nombre` = 'Buenavista' WHERE `municipio`.`id` = 213;
UPDATE `municipio` SET `id` = 214,`departamento_id` = 6,`nombre` = 'Busbanza' WHERE `municipio`.`id` = 214;
UPDATE `municipio` SET `id` = 215,`departamento_id` = 6,`nombre` = 'Caldas' WHERE `municipio`.`id` = 215;
UPDATE `municipio` SET `id` = 216,`departamento_id` = 6,`nombre` = 'Campohermoso' WHERE `municipio`.`id` = 216;
UPDATE `municipio` SET `id` = 217,`departamento_id` = 6,`nombre` = 'Cerinza' WHERE `municipio`.`id` = 217;
UPDATE `municipio` SET `id` = 218,`departamento_id` = 6,`nombre` = 'Chinavita' WHERE `municipio`.`id` = 218;
UPDATE `municipio` SET `id` = 219,`departamento_id` = 6,`nombre` = 'Chiquinquirá' WHERE `municipio`.`id` = 219;
UPDATE `municipio` SET `id` = 220,`departamento_id` = 6,`nombre` = 'Chiscas' WHERE `municipio`.`id` = 220;
UPDATE `municipio` SET `id` = 221,`departamento_id` = 6,`nombre` = 'Chita' WHERE `municipio`.`id` = 221;
UPDATE `municipio` SET `id` = 222,`departamento_id` = 6,`nombre` = 'Chitaraque' WHERE `municipio`.`id` = 222;
UPDATE `municipio` SET `id` = 223,`departamento_id` = 6,`nombre` = 'Chivatá' WHERE `municipio`.`id` = 223;
UPDATE `municipio` SET `id` = 224,`departamento_id` = 6,`nombre` = 'Chíquiza' WHERE `municipio`.`id` = 224;
UPDATE `municipio` SET `id` = 225,`departamento_id` = 6,`nombre` = 'Chívor' WHERE `municipio`.`id` = 225;
UPDATE `municipio` SET `id` = 226,`departamento_id` = 6,`nombre` = 'Ciénaga' WHERE `municipio`.`id` = 226;
UPDATE `municipio` SET `id` = 227,`departamento_id` = 6,`nombre` = 'Coper' WHERE `municipio`.`id` = 227;
UPDATE `municipio` SET `id` = 228,`departamento_id` = 6,`nombre` = 'Corrales' WHERE `municipio`.`id` = 228;
UPDATE `municipio` SET `id` = 229,`departamento_id` = 6,`nombre` = 'Covarachía' WHERE `municipio`.`id` = 229;
UPDATE `municipio` SET `id` = 230,`departamento_id` = 6,`nombre` = 'Cubará' WHERE `municipio`.`id` = 230;
UPDATE `municipio` SET `id` = 231,`departamento_id` = 6,`nombre` = 'Cucaita' WHERE `municipio`.`id` = 231;
UPDATE `municipio` SET `id` = 232,`departamento_id` = 6,`nombre` = 'Cuitiva' WHERE `municipio`.`id` = 232;
UPDATE `municipio` SET `id` = 233,`departamento_id` = 6,`nombre` = 'Cómbita' WHERE `municipio`.`id` = 233;
UPDATE `municipio` SET `id` = 234,`departamento_id` = 6,`nombre` = 'Duitama' WHERE `municipio`.`id` = 234;
UPDATE `municipio` SET `id` = 235,`departamento_id` = 6,`nombre` = 'El Cocuy' WHERE `municipio`.`id` = 235;
UPDATE `municipio` SET `id` = 236,`departamento_id` = 6,`nombre` = 'El Espino' WHERE `municipio`.`id` = 236;
UPDATE `municipio` SET `id` = 237,`departamento_id` = 6,`nombre` = 'Firavitoba' WHERE `municipio`.`id` = 237;
UPDATE `municipio` SET `id` = 238,`departamento_id` = 6,`nombre` = 'Floresta' WHERE `municipio`.`id` = 238;
UPDATE `municipio` SET `id` = 239,`departamento_id` = 6,`nombre` = 'Gachantivá' WHERE `municipio`.`id` = 239;
UPDATE `municipio` SET `id` = 240,`departamento_id` = 6,`nombre` = 'Garagoa' WHERE `municipio`.`id` = 240;
UPDATE `municipio` SET `id` = 241,`departamento_id` = 6,`nombre` = 'Guacamayas' WHERE `municipio`.`id` = 241;
UPDATE `municipio` SET `id` = 242,`departamento_id` = 6,`nombre` = 'Guateque' WHERE `municipio`.`id` = 242;
UPDATE `municipio` SET `id` = 243,`departamento_id` = 6,`nombre` = 'Guayatá' WHERE `municipio`.`id` = 243;
UPDATE `municipio` SET `id` = 244,`departamento_id` = 6,`nombre` = 'Guicán' WHERE `municipio`.`id` = 244;
UPDATE `municipio` SET `id` = 245,`departamento_id` = 6,`nombre` = 'Gámeza' WHERE `municipio`.`id` = 245;
UPDATE `municipio` SET `id` = 246,`departamento_id` = 6,`nombre` = 'Izá' WHERE `municipio`.`id` = 246;
UPDATE `municipio` SET `id` = 247,`departamento_id` = 6,`nombre` = 'Jenesano' WHERE `municipio`.`id` = 247;
UPDATE `municipio` SET `id` = 248,`departamento_id` = 6,`nombre` = 'Jericó' WHERE `municipio`.`id` = 248;
UPDATE `municipio` SET `id` = 249,`departamento_id` = 6,`nombre` = 'La Capilla' WHERE `municipio`.`id` = 249;
UPDATE `municipio` SET `id` = 250,`departamento_id` = 6,`nombre` = 'La Uvita' WHERE `municipio`.`id` = 250;
UPDATE `municipio` SET `id` = 251,`departamento_id` = 6,`nombre` = 'La Victoria' WHERE `municipio`.`id` = 251;
UPDATE `municipio` SET `id` = 252,`departamento_id` = 6,`nombre` = 'Labranzagrande' WHERE `municipio`.`id` = 252;
UPDATE `municipio` SET `id` = 253,`departamento_id` = 6,`nombre` = 'Macanal' WHERE `municipio`.`id` = 253;
UPDATE `municipio` SET `id` = 254,`departamento_id` = 6,`nombre` = 'Maripí' WHERE `municipio`.`id` = 254;
UPDATE `municipio` SET `id` = 255,`departamento_id` = 6,`nombre` = 'Miraflores' WHERE `municipio`.`id` = 255;
UPDATE `municipio` SET `id` = 256,`departamento_id` = 6,`nombre` = 'Mongua' WHERE `municipio`.`id` = 256;
UPDATE `municipio` SET `id` = 257,`departamento_id` = 6,`nombre` = 'Monguí' WHERE `municipio`.`id` = 257;
UPDATE `municipio` SET `id` = 258,`departamento_id` = 6,`nombre` = 'Moniquirá' WHERE `municipio`.`id` = 258;
UPDATE `municipio` SET `id` = 259,`departamento_id` = 6,`nombre` = 'Motavita' WHERE `municipio`.`id` = 259;
UPDATE `municipio` SET `id` = 260,`departamento_id` = 6,`nombre` = 'Muzo' WHERE `municipio`.`id` = 260;
UPDATE `municipio` SET `id` = 261,`departamento_id` = 6,`nombre` = 'Nobsa' WHERE `municipio`.`id` = 261;
UPDATE `municipio` SET `id` = 262,`departamento_id` = 6,`nombre` = 'Nuevo Colón' WHERE `municipio`.`id` = 262;
UPDATE `municipio` SET `id` = 263,`departamento_id` = 6,`nombre` = 'Oicatá' WHERE `municipio`.`id` = 263;
UPDATE `municipio` SET `id` = 264,`departamento_id` = 6,`nombre` = 'Otanche' WHERE `municipio`.`id` = 264;
UPDATE `municipio` SET `id` = 265,`departamento_id` = 6,`nombre` = 'Pachavita' WHERE `municipio`.`id` = 265;
UPDATE `municipio` SET `id` = 266,`departamento_id` = 6,`nombre` = 'Paipa' WHERE `municipio`.`id` = 266;
UPDATE `municipio` SET `id` = 267,`departamento_id` = 6,`nombre` = 'Pajarito' WHERE `municipio`.`id` = 267;
UPDATE `municipio` SET `id` = 268,`departamento_id` = 6,`nombre` = 'Panqueba' WHERE `municipio`.`id` = 268;
UPDATE `municipio` SET `id` = 269,`departamento_id` = 6,`nombre` = 'Pauna' WHERE `municipio`.`id` = 269;
UPDATE `municipio` SET `id` = 270,`departamento_id` = 6,`nombre` = 'Paya' WHERE `municipio`.`id` = 270;
UPDATE `municipio` SET `id` = 271,`departamento_id` = 6,`nombre` = 'Paz de Río' WHERE `municipio`.`id` = 271;
UPDATE `municipio` SET `id` = 272,`departamento_id` = 6,`nombre` = 'Pesca' WHERE `municipio`.`id` = 272;
UPDATE `municipio` SET `id` = 273,`departamento_id` = 6,`nombre` = 'Pisva' WHERE `municipio`.`id` = 273;
UPDATE `municipio` SET `id` = 274,`departamento_id` = 6,`nombre` = 'Puerto Boyacá' WHERE `municipio`.`id` = 274;
UPDATE `municipio` SET `id` = 275,`departamento_id` = 6,`nombre` = 'Páez' WHERE `municipio`.`id` = 275;
UPDATE `municipio` SET `id` = 276,`departamento_id` = 6,`nombre` = 'Quipama' WHERE `municipio`.`id` = 276;
UPDATE `municipio` SET `id` = 277,`departamento_id` = 6,`nombre` = 'Ramiriquí' WHERE `municipio`.`id` = 277;
UPDATE `municipio` SET `id` = 278,`departamento_id` = 6,`nombre` = 'Rondón' WHERE `municipio`.`id` = 278;
UPDATE `municipio` SET `id` = 279,`departamento_id` = 6,`nombre` = 'Ráquira' WHERE `municipio`.`id` = 279;
UPDATE `municipio` SET `id` = 280,`departamento_id` = 6,`nombre` = 'Saboyá' WHERE `municipio`.`id` = 280;
UPDATE `municipio` SET `id` = 281,`departamento_id` = 6,`nombre` = 'Samacá' WHERE `municipio`.`id` = 281;
UPDATE `municipio` SET `id` = 282,`departamento_id` = 6,`nombre` = 'San Eduardo' WHERE `municipio`.`id` = 282;
UPDATE `municipio` SET `id` = 283,`departamento_id` = 6,`nombre` = 'San José de Pare' WHERE `municipio`.`id` = 283;
UPDATE `municipio` SET `id` = 284,`departamento_id` = 6,`nombre` = 'San Luís de Gaceno' WHERE `municipio`.`id` = 284;
UPDATE `municipio` SET `id` = 285,`departamento_id` = 6,`nombre` = 'San Mateo' WHERE `municipio`.`id` = 285;
UPDATE `municipio` SET `id` = 286,`departamento_id` = 6,`nombre` = 'San Miguel de Sema' WHERE `municipio`.`id` = 286;
UPDATE `municipio` SET `id` = 287,`departamento_id` = 6,`nombre` = 'San Pablo de Borbur' WHERE `municipio`.`id` = 287;
UPDATE `municipio` SET `id` = 288,`departamento_id` = 6,`nombre` = 'Santa María' WHERE `municipio`.`id` = 288;
UPDATE `municipio` SET `id` = 289,`departamento_id` = 6,`nombre` = 'Santa Rosa de Viterbo' WHERE `municipio`.`id` = 289;
UPDATE `municipio` SET `id` = 290,`departamento_id` = 6,`nombre` = 'Santa Sofía' WHERE `municipio`.`id` = 290;
UPDATE `municipio` SET `id` = 291,`departamento_id` = 6,`nombre` = 'Santana' WHERE `municipio`.`id` = 291;
UPDATE `municipio` SET `id` = 292,`departamento_id` = 6,`nombre` = 'Sativanorte' WHERE `municipio`.`id` = 292;
UPDATE `municipio` SET `id` = 293,`departamento_id` = 6,`nombre` = 'Sativasur' WHERE `municipio`.`id` = 293;
UPDATE `municipio` SET `id` = 294,`departamento_id` = 6,`nombre` = 'Siachoque' WHERE `municipio`.`id` = 294;
UPDATE `municipio` SET `id` = 295,`departamento_id` = 6,`nombre` = 'Soatá' WHERE `municipio`.`id` = 295;
UPDATE `municipio` SET `id` = 296,`departamento_id` = 6,`nombre` = 'Socha' WHERE `municipio`.`id` = 296;
UPDATE `municipio` SET `id` = 297,`departamento_id` = 6,`nombre` = 'Socotá' WHERE `municipio`.`id` = 297;
UPDATE `municipio` SET `id` = 298,`departamento_id` = 6,`nombre` = 'Sogamoso' WHERE `municipio`.`id` = 298;
UPDATE `municipio` SET `id` = 299,`departamento_id` = 6,`nombre` = 'Somondoco' WHERE `municipio`.`id` = 299;
UPDATE `municipio` SET `id` = 300,`departamento_id` = 6,`nombre` = 'Sora' WHERE `municipio`.`id` = 300;
UPDATE `municipio` SET `id` = 301,`departamento_id` = 6,`nombre` = 'Soracá' WHERE `municipio`.`id` = 301;
UPDATE `municipio` SET `id` = 302,`departamento_id` = 6,`nombre` = 'Sotaquirá' WHERE `municipio`.`id` = 302;
UPDATE `municipio` SET `id` = 303,`departamento_id` = 6,`nombre` = 'Susacón' WHERE `municipio`.`id` = 303;
UPDATE `municipio` SET `id` = 304,`departamento_id` = 6,`nombre` = 'Sutamarchán' WHERE `municipio`.`id` = 304;
UPDATE `municipio` SET `id` = 305,`departamento_id` = 6,`nombre` = 'Sutatenza' WHERE `municipio`.`id` = 305;
UPDATE `municipio` SET `id` = 306,`departamento_id` = 6,`nombre` = 'Sáchica' WHERE `municipio`.`id` = 306;
UPDATE `municipio` SET `id` = 307,`departamento_id` = 6,`nombre` = 'Tasco' WHERE `municipio`.`id` = 307;
UPDATE `municipio` SET `id` = 308,`departamento_id` = 6,`nombre` = 'Tenza' WHERE `municipio`.`id` = 308;
UPDATE `municipio` SET `id` = 309,`departamento_id` = 6,`nombre` = 'Tibaná' WHERE `municipio`.`id` = 309;
UPDATE `municipio` SET `id` = 310,`departamento_id` = 6,`nombre` = 'Tibasosa' WHERE `municipio`.`id` = 310;
UPDATE `municipio` SET `id` = 311,`departamento_id` = 6,`nombre` = 'Tinjacá' WHERE `municipio`.`id` = 311;
UPDATE `municipio` SET `id` = 312,`departamento_id` = 6,`nombre` = 'Tipacoque' WHERE `municipio`.`id` = 312;
UPDATE `municipio` SET `id` = 313,`departamento_id` = 6,`nombre` = 'Toca' WHERE `municipio`.`id` = 313;
UPDATE `municipio` SET `id` = 314,`departamento_id` = 6,`nombre` = 'Toguí' WHERE `municipio`.`id` = 314;
UPDATE `municipio` SET `id` = 315,`departamento_id` = 6,`nombre` = 'Topagá' WHERE `municipio`.`id` = 315;
UPDATE `municipio` SET `id` = 316,`departamento_id` = 6,`nombre` = 'Tota' WHERE `municipio`.`id` = 316;
UPDATE `municipio` SET `id` = 317,`departamento_id` = 6,`nombre` = 'Tunja' WHERE `municipio`.`id` = 317;
UPDATE `municipio` SET `id` = 318,`departamento_id` = 6,`nombre` = 'Tunungua' WHERE `municipio`.`id` = 318;
UPDATE `municipio` SET `id` = 319,`departamento_id` = 6,`nombre` = 'Turmequé' WHERE `municipio`.`id` = 319;
UPDATE `municipio` SET `id` = 320,`departamento_id` = 6,`nombre` = 'Tuta' WHERE `municipio`.`id` = 320;
UPDATE `municipio` SET `id` = 321,`departamento_id` = 6,`nombre` = 'Tutasá' WHERE `municipio`.`id` = 321;
UPDATE `municipio` SET `id` = 322,`departamento_id` = 6,`nombre` = 'Ventaquemada' WHERE `municipio`.`id` = 322;
UPDATE `municipio` SET `id` = 323,`departamento_id` = 6,`nombre` = 'Villa de Leiva' WHERE `municipio`.`id` = 323;
UPDATE `municipio` SET `id` = 324,`departamento_id` = 6,`nombre` = 'Viracachá' WHERE `municipio`.`id` = 324;
UPDATE `municipio` SET `id` = 325,`departamento_id` = 6,`nombre` = 'Zetaquirá' WHERE `municipio`.`id` = 325;
UPDATE `municipio` SET `id` = 326,`departamento_id` = 6,`nombre` = 'Úmbita' WHERE `municipio`.`id` = 326;
UPDATE `municipio` SET `id` = 327,`departamento_id` = 7,`nombre` = 'Aguadas' WHERE `municipio`.`id` = 327;
UPDATE `municipio` SET `id` = 328,`departamento_id` = 7,`nombre` = 'Anserma' WHERE `municipio`.`id` = 328;
UPDATE `municipio` SET `id` = 329,`departamento_id` = 7,`nombre` = 'Aranzazu' WHERE `municipio`.`id` = 329;
UPDATE `municipio` SET `id` = 330,`departamento_id` = 7,`nombre` = 'Belalcázar' WHERE `municipio`.`id` = 330;
UPDATE `municipio` SET `id` = 331,`departamento_id` = 7,`nombre` = 'Chinchiná' WHERE `municipio`.`id` = 331;
UPDATE `municipio` SET `id` = 332,`departamento_id` = 7,`nombre` = 'Filadelfia' WHERE `municipio`.`id` = 332;
UPDATE `municipio` SET `id` = 333,`departamento_id` = 7,`nombre` = 'La Dorada' WHERE `municipio`.`id` = 333;
UPDATE `municipio` SET `id` = 334,`departamento_id` = 7,`nombre` = 'La Merced' WHERE `municipio`.`id` = 334;
UPDATE `municipio` SET `id` = 335,`departamento_id` = 7,`nombre` = 'La Victoria' WHERE `municipio`.`id` = 335;
UPDATE `municipio` SET `id` = 336,`departamento_id` = 7,`nombre` = 'Manizales' WHERE `municipio`.`id` = 336;
UPDATE `municipio` SET `id` = 337,`departamento_id` = 7,`nombre` = 'Manzanares' WHERE `municipio`.`id` = 337;
UPDATE `municipio` SET `id` = 338,`departamento_id` = 7,`nombre` = 'Marmato' WHERE `municipio`.`id` = 338;
UPDATE `municipio` SET `id` = 339,`departamento_id` = 7,`nombre` = 'Marquetalia' WHERE `municipio`.`id` = 339;
UPDATE `municipio` SET `id` = 340,`departamento_id` = 7,`nombre` = 'Marulanda' WHERE `municipio`.`id` = 340;
UPDATE `municipio` SET `id` = 341,`departamento_id` = 7,`nombre` = 'Neira' WHERE `municipio`.`id` = 341;
UPDATE `municipio` SET `id` = 342,`departamento_id` = 7,`nombre` = 'Norcasia' WHERE `municipio`.`id` = 342;
UPDATE `municipio` SET `id` = 343,`departamento_id` = 7,`nombre` = 'Palestina' WHERE `municipio`.`id` = 343;
UPDATE `municipio` SET `id` = 344,`departamento_id` = 7,`nombre` = 'Pensilvania' WHERE `municipio`.`id` = 344;
UPDATE `municipio` SET `id` = 345,`departamento_id` = 7,`nombre` = 'Pácora' WHERE `municipio`.`id` = 345;
UPDATE `municipio` SET `id` = 346,`departamento_id` = 7,`nombre` = 'Risaralda' WHERE `municipio`.`id` = 346;
UPDATE `municipio` SET `id` = 347,`departamento_id` = 7,`nombre` = 'Río Sucio' WHERE `municipio`.`id` = 347;
UPDATE `municipio` SET `id` = 348,`departamento_id` = 7,`nombre` = 'Salamina' WHERE `municipio`.`id` = 348;
UPDATE `municipio` SET `id` = 349,`departamento_id` = 7,`nombre` = 'Samaná' WHERE `municipio`.`id` = 349;
UPDATE `municipio` SET `id` = 350,`departamento_id` = 7,`nombre` = 'San José' WHERE `municipio`.`id` = 350;
UPDATE `municipio` SET `id` = 351,`departamento_id` = 7,`nombre` = 'Supía' WHERE `municipio`.`id` = 351;
UPDATE `municipio` SET `id` = 352,`departamento_id` = 7,`nombre` = 'Villamaría' WHERE `municipio`.`id` = 352;
UPDATE `municipio` SET `id` = 353,`departamento_id` = 7,`nombre` = 'Viterbo' WHERE `municipio`.`id` = 353;
UPDATE `municipio` SET `id` = 354,`departamento_id` = 8,`nombre` = 'Albania' WHERE `municipio`.`id` = 354;
UPDATE `municipio` SET `id` = 355,`departamento_id` = 8,`nombre` = 'Belén de los Andaquíes' WHERE `municipio`.`id` = 355;
UPDATE `municipio` SET `id` = 356,`departamento_id` = 8,`nombre` = 'Cartagena del Chairá' WHERE `municipio`.`id` = 356;
UPDATE `municipio` SET `id` = 357,`departamento_id` = 8,`nombre` = 'Curillo' WHERE `municipio`.`id` = 357;
UPDATE `municipio` SET `id` = 358,`departamento_id` = 8,`nombre` = 'El Doncello' WHERE `municipio`.`id` = 358;
UPDATE `municipio` SET `id` = 359,`departamento_id` = 8,`nombre` = 'El Paujil' WHERE `municipio`.`id` = 359;
UPDATE `municipio` SET `id` = 360,`departamento_id` = 8,`nombre` = 'Florencia' WHERE `municipio`.`id` = 360;
UPDATE `municipio` SET `id` = 361,`departamento_id` = 8,`nombre` = 'La Montañita' WHERE `municipio`.`id` = 361;
UPDATE `municipio` SET `id` = 362,`departamento_id` = 8,`nombre` = 'Milán' WHERE `municipio`.`id` = 362;
UPDATE `municipio` SET `id` = 363,`departamento_id` = 8,`nombre` = 'Morelia' WHERE `municipio`.`id` = 363;
UPDATE `municipio` SET `id` = 364,`departamento_id` = 8,`nombre` = 'Puerto Rico' WHERE `municipio`.`id` = 364;
UPDATE `municipio` SET `id` = 365,`departamento_id` = 8,`nombre` = 'San José del Fragua' WHERE `municipio`.`id` = 365;
UPDATE `municipio` SET `id` = 366,`departamento_id` = 8,`nombre` = 'San Vicente del Caguán' WHERE `municipio`.`id` = 366;
UPDATE `municipio` SET `id` = 367,`departamento_id` = 8,`nombre` = 'Solano' WHERE `municipio`.`id` = 367;
UPDATE `municipio` SET `id` = 368,`departamento_id` = 8,`nombre` = 'Solita' WHERE `municipio`.`id` = 368;
UPDATE `municipio` SET `id` = 369,`departamento_id` = 8,`nombre` = 'Valparaiso' WHERE `municipio`.`id` = 369;
UPDATE `municipio` SET `id` = 370,`departamento_id` = 9,`nombre` = 'Aguazul' WHERE `municipio`.`id` = 370;
UPDATE `municipio` SET `id` = 371,`departamento_id` = 9,`nombre` = 'Chámeza' WHERE `municipio`.`id` = 371;
UPDATE `municipio` SET `id` = 372,`departamento_id` = 9,`nombre` = 'Hato Corozal' WHERE `municipio`.`id` = 372;
UPDATE `municipio` SET `id` = 373,`departamento_id` = 9,`nombre` = 'La Salina' WHERE `municipio`.`id` = 373;
UPDATE `municipio` SET `id` = 374,`departamento_id` = 9,`nombre` = 'Maní' WHERE `municipio`.`id` = 374;
UPDATE `municipio` SET `id` = 375,`departamento_id` = 9,`nombre` = 'Monterrey' WHERE `municipio`.`id` = 375;
UPDATE `municipio` SET `id` = 376,`departamento_id` = 9,`nombre` = 'Nunchía' WHERE `municipio`.`id` = 376;
UPDATE `municipio` SET `id` = 377,`departamento_id` = 9,`nombre` = 'Orocué' WHERE `municipio`.`id` = 377;
UPDATE `municipio` SET `id` = 378,`departamento_id` = 9,`nombre` = 'Paz de Ariporo' WHERE `municipio`.`id` = 378;
UPDATE `municipio` SET `id` = 379,`departamento_id` = 9,`nombre` = 'Pore' WHERE `municipio`.`id` = 379;
UPDATE `municipio` SET `id` = 380,`departamento_id` = 9,`nombre` = 'Recetor' WHERE `municipio`.`id` = 380;
UPDATE `municipio` SET `id` = 381,`departamento_id` = 9,`nombre` = 'Sabanalarga' WHERE `municipio`.`id` = 381;
UPDATE `municipio` SET `id` = 382,`departamento_id` = 9,`nombre` = 'San Luís de Palenque' WHERE `municipio`.`id` = 382;
UPDATE `municipio` SET `id` = 383,`departamento_id` = 9,`nombre` = 'Sácama' WHERE `municipio`.`id` = 383;
UPDATE `municipio` SET `id` = 384,`departamento_id` = 9,`nombre` = 'Tauramena' WHERE `municipio`.`id` = 384;
UPDATE `municipio` SET `id` = 385,`departamento_id` = 9,`nombre` = 'Trinidad' WHERE `municipio`.`id` = 385;
UPDATE `municipio` SET `id` = 386,`departamento_id` = 9,`nombre` = 'Támara' WHERE `municipio`.`id` = 386;
UPDATE `municipio` SET `id` = 387,`departamento_id` = 9,`nombre` = 'Villanueva' WHERE `municipio`.`id` = 387;
UPDATE `municipio` SET `id` = 388,`departamento_id` = 9,`nombre` = 'Yopal' WHERE `municipio`.`id` = 388;
UPDATE `municipio` SET `id` = 389,`departamento_id` = 10,`nombre` = 'Almaguer' WHERE `municipio`.`id` = 389;
UPDATE `municipio` SET `id` = 390,`departamento_id` = 10,`nombre` = 'Argelia' WHERE `municipio`.`id` = 390;
UPDATE `municipio` SET `id` = 391,`departamento_id` = 10,`nombre` = 'Balboa' WHERE `municipio`.`id` = 391;
UPDATE `municipio` SET `id` = 392,`departamento_id` = 10,`nombre` = 'Bolívar' WHERE `municipio`.`id` = 392;
UPDATE `municipio` SET `id` = 393,`departamento_id` = 10,`nombre` = 'Buenos Aires' WHERE `municipio`.`id` = 393;
UPDATE `municipio` SET `id` = 394,`departamento_id` = 10,`nombre` = 'Cajibío' WHERE `municipio`.`id` = 394;
UPDATE `municipio` SET `id` = 395,`departamento_id` = 10,`nombre` = 'Caldono' WHERE `municipio`.`id` = 395;
UPDATE `municipio` SET `id` = 396,`departamento_id` = 10,`nombre` = 'Caloto' WHERE `municipio`.`id` = 396;
UPDATE `municipio` SET `id` = 397,`departamento_id` = 10,`nombre` = 'Corinto' WHERE `municipio`.`id` = 397;
UPDATE `municipio` SET `id` = 398,`departamento_id` = 10,`nombre` = 'El Tambo' WHERE `municipio`.`id` = 398;
UPDATE `municipio` SET `id` = 399,`departamento_id` = 10,`nombre` = 'Florencia' WHERE `municipio`.`id` = 399;
UPDATE `municipio` SET `id` = 400,`departamento_id` = 10,`nombre` = 'Guachené' WHERE `municipio`.`id` = 400;
UPDATE `municipio` SET `id` = 401,`departamento_id` = 10,`nombre` = 'Guapí' WHERE `municipio`.`id` = 401;
UPDATE `municipio` SET `id` = 402,`departamento_id` = 10,`nombre` = 'Inzá' WHERE `municipio`.`id` = 402;
UPDATE `municipio` SET `id` = 403,`departamento_id` = 10,`nombre` = 'Jambaló' WHERE `municipio`.`id` = 403;
UPDATE `municipio` SET `id` = 404,`departamento_id` = 10,`nombre` = 'La Sierra' WHERE `municipio`.`id` = 404;
UPDATE `municipio` SET `id` = 405,`departamento_id` = 10,`nombre` = 'La Vega' WHERE `municipio`.`id` = 405;
UPDATE `municipio` SET `id` = 406,`departamento_id` = 10,`nombre` = 'López (Micay)' WHERE `municipio`.`id` = 406;
UPDATE `municipio` SET `id` = 407,`departamento_id` = 10,`nombre` = 'Mercaderes' WHERE `municipio`.`id` = 407;
UPDATE `municipio` SET `id` = 408,`departamento_id` = 10,`nombre` = 'Miranda' WHERE `municipio`.`id` = 408;
UPDATE `municipio` SET `id` = 409,`departamento_id` = 10,`nombre` = 'Morales' WHERE `municipio`.`id` = 409;
UPDATE `municipio` SET `id` = 410,`departamento_id` = 10,`nombre` = 'Padilla' WHERE `municipio`.`id` = 410;
UPDATE `municipio` SET `id` = 411,`departamento_id` = 10,`nombre` = 'Patía (El Bordo)' WHERE `municipio`.`id` = 411;
UPDATE `municipio` SET `id` = 412,`departamento_id` = 10,`nombre` = 'Piamonte' WHERE `municipio`.`id` = 412;
UPDATE `municipio` SET `id` = 413,`departamento_id` = 10,`nombre` = 'Piendamó' WHERE `municipio`.`id` = 413;
UPDATE `municipio` SET `id` = 414,`departamento_id` = 10,`nombre` = 'Popayán' WHERE `municipio`.`id` = 414;
UPDATE `municipio` SET `id` = 415,`departamento_id` = 10,`nombre` = 'Puerto Tejada' WHERE `municipio`.`id` = 415;
UPDATE `municipio` SET `id` = 416,`departamento_id` = 10,`nombre` = 'Puracé (Coconuco)' WHERE `municipio`.`id` = 416;
UPDATE `municipio` SET `id` = 417,`departamento_id` = 10,`nombre` = 'Páez (Belalcazar)' WHERE `municipio`.`id` = 417;
UPDATE `municipio` SET `id` = 418,`departamento_id` = 10,`nombre` = 'Rosas' WHERE `municipio`.`id` = 418;
UPDATE `municipio` SET `id` = 419,`departamento_id` = 10,`nombre` = 'San Sebastián' WHERE `municipio`.`id` = 419;
UPDATE `municipio` SET `id` = 420,`departamento_id` = 10,`nombre` = 'Santa Rosa' WHERE `municipio`.`id` = 420;
UPDATE `municipio` SET `id` = 421,`departamento_id` = 10,`nombre` = 'Santander de Quilichao' WHERE `municipio`.`id` = 421;
UPDATE `municipio` SET `id` = 422,`departamento_id` = 10,`nombre` = 'Silvia' WHERE `municipio`.`id` = 422;
UPDATE `municipio` SET `id` = 423,`departamento_id` = 10,`nombre` = 'Sotara (Paispamba)' WHERE `municipio`.`id` = 423;
UPDATE `municipio` SET `id` = 424,`departamento_id` = 10,`nombre` = 'Sucre' WHERE `municipio`.`id` = 424;
UPDATE `municipio` SET `id` = 425,`departamento_id` = 10,`nombre` = 'Suárez' WHERE `municipio`.`id` = 425;
UPDATE `municipio` SET `id` = 426,`departamento_id` = 10,`nombre` = 'Timbiquí' WHERE `municipio`.`id` = 426;
UPDATE `municipio` SET `id` = 427,`departamento_id` = 10,`nombre` = 'Timbío' WHERE `municipio`.`id` = 427;
UPDATE `municipio` SET `id` = 428,`departamento_id` = 10,`nombre` = 'Toribío' WHERE `municipio`.`id` = 428;
UPDATE `municipio` SET `id` = 429,`departamento_id` = 10,`nombre` = 'Totoró' WHERE `municipio`.`id` = 429;
UPDATE `municipio` SET `id` = 430,`departamento_id` = 10,`nombre` = 'Villa Rica' WHERE `municipio`.`id` = 430;
UPDATE `municipio` SET `id` = 431,`departamento_id` = 11,`nombre` = 'Aguachica' WHERE `municipio`.`id` = 431;
UPDATE `municipio` SET `id` = 432,`departamento_id` = 11,`nombre` = 'Agustín Codazzi' WHERE `municipio`.`id` = 432;
UPDATE `municipio` SET `id` = 433,`departamento_id` = 11,`nombre` = 'Astrea' WHERE `municipio`.`id` = 433;
UPDATE `municipio` SET `id` = 434,`departamento_id` = 11,`nombre` = 'Becerríl' WHERE `municipio`.`id` = 434;
UPDATE `municipio` SET `id` = 435,`departamento_id` = 11,`nombre` = 'Bosconia' WHERE `municipio`.`id` = 435;
UPDATE `municipio` SET `id` = 436,`departamento_id` = 11,`nombre` = 'Chimichagua' WHERE `municipio`.`id` = 436;
UPDATE `municipio` SET `id` = 437,`departamento_id` = 11,`nombre` = 'Chiriguaná' WHERE `municipio`.`id` = 437;
UPDATE `municipio` SET `id` = 438,`departamento_id` = 11,`nombre` = 'Curumaní' WHERE `municipio`.`id` = 438;
UPDATE `municipio` SET `id` = 439,`departamento_id` = 11,`nombre` = 'El Copey' WHERE `municipio`.`id` = 439;
UPDATE `municipio` SET `id` = 440,`departamento_id` = 11,`nombre` = 'El Paso' WHERE `municipio`.`id` = 440;
UPDATE `municipio` SET `id` = 441,`departamento_id` = 11,`nombre` = 'Gamarra' WHERE `municipio`.`id` = 441;
UPDATE `municipio` SET `id` = 442,`departamento_id` = 11,`nombre` = 'Gonzalez' WHERE `municipio`.`id` = 442;
UPDATE `municipio` SET `id` = 443,`departamento_id` = 11,`nombre` = 'La Gloria' WHERE `municipio`.`id` = 443;
UPDATE `municipio` SET `id` = 444,`departamento_id` = 11,`nombre` = 'La Jagua de Ibirico' WHERE `municipio`.`id` = 444;
UPDATE `municipio` SET `id` = 445,`departamento_id` = 11,`nombre` = 'La Paz (Robles)' WHERE `municipio`.`id` = 445;
UPDATE `municipio` SET `id` = 446,`departamento_id` = 11,`nombre` = 'Manaure Balcón del Cesar' WHERE `municipio`.`id` = 446;
UPDATE `municipio` SET `id` = 447,`departamento_id` = 11,`nombre` = 'Pailitas' WHERE `municipio`.`id` = 447;
UPDATE `municipio` SET `id` = 448,`departamento_id` = 11,`nombre` = 'Pelaya' WHERE `municipio`.`id` = 448;
UPDATE `municipio` SET `id` = 449,`departamento_id` = 11,`nombre` = 'Pueblo Bello' WHERE `municipio`.`id` = 449;
UPDATE `municipio` SET `id` = 450,`departamento_id` = 11,`nombre` = 'Río de oro' WHERE `municipio`.`id` = 450;
UPDATE `municipio` SET `id` = 451,`departamento_id` = 11,`nombre` = 'San Alberto' WHERE `municipio`.`id` = 451;
UPDATE `municipio` SET `id` = 452,`departamento_id` = 11,`nombre` = 'San Diego' WHERE `municipio`.`id` = 452;
UPDATE `municipio` SET `id` = 453,`departamento_id` = 11,`nombre` = 'San Martín' WHERE `municipio`.`id` = 453;
UPDATE `municipio` SET `id` = 454,`departamento_id` = 11,`nombre` = 'Tamalameque' WHERE `municipio`.`id` = 454;
UPDATE `municipio` SET `id` = 455,`departamento_id` = 11,`nombre` = 'Valledupar' WHERE `municipio`.`id` = 455;
UPDATE `municipio` SET `id` = 456,`departamento_id` = 12,`nombre` = 'Acandí' WHERE `municipio`.`id` = 456;
UPDATE `municipio` SET `id` = 457,`departamento_id` = 12,`nombre` = 'Alto Baudó (Pie de Pato)' WHERE `municipio`.`id` = 457;
UPDATE `municipio` SET `id` = 458,`departamento_id` = 12,`nombre` = 'Atrato (Yuto)' WHERE `municipio`.`id` = 458;
UPDATE `municipio` SET `id` = 459,`departamento_id` = 12,`nombre` = 'Bagadó' WHERE `municipio`.`id` = 459;
UPDATE `municipio` SET `id` = 460,`departamento_id` = 12,`nombre` = 'Bahía Solano (Mútis)' WHERE `municipio`.`id` = 460;
UPDATE `municipio` SET `id` = 461,`departamento_id` = 12,`nombre` = 'Bajo Baudó (Pizarro)' WHERE `municipio`.`id` = 461;
UPDATE `municipio` SET `id` = 462,`departamento_id` = 12,`nombre` = 'Belén de Bajirá' WHERE `municipio`.`id` = 462;
UPDATE `municipio` SET `id` = 463,`departamento_id` = 12,`nombre` = 'Bojayá (Bellavista)' WHERE `municipio`.`id` = 463;
UPDATE `municipio` SET `id` = 464,`departamento_id` = 12,`nombre` = 'Cantón de San Pablo' WHERE `municipio`.`id` = 464;
UPDATE `municipio` SET `id` = 465,`departamento_id` = 12,`nombre` = 'Carmen del Darién (CURBARADÓ)' WHERE `municipio`.`id` = 465;
UPDATE `municipio` SET `id` = 466,`departamento_id` = 12,`nombre` = 'Condoto' WHERE `municipio`.`id` = 466;
UPDATE `municipio` SET `id` = 467,`departamento_id` = 12,`nombre` = 'Cértegui' WHERE `municipio`.`id` = 467;
UPDATE `municipio` SET `id` = 468,`departamento_id` = 12,`nombre` = 'El Carmen de Atrato' WHERE `municipio`.`id` = 468;
UPDATE `municipio` SET `id` = 469,`departamento_id` = 12,`nombre` = 'Istmina' WHERE `municipio`.`id` = 469;
UPDATE `municipio` SET `id` = 470,`departamento_id` = 12,`nombre` = 'Juradó' WHERE `municipio`.`id` = 470;
UPDATE `municipio` SET `id` = 471,`departamento_id` = 12,`nombre` = 'Lloró' WHERE `municipio`.`id` = 471;
UPDATE `municipio` SET `id` = 472,`departamento_id` = 12,`nombre` = 'Medio Atrato' WHERE `municipio`.`id` = 472;
UPDATE `municipio` SET `id` = 473,`departamento_id` = 12,`nombre` = 'Medio Baudó' WHERE `municipio`.`id` = 473;
UPDATE `municipio` SET `id` = 474,`departamento_id` = 12,`nombre` = 'Medio San Juan (ANDAGOYA)' WHERE `municipio`.`id` = 474;
UPDATE `municipio` SET `id` = 475,`departamento_id` = 12,`nombre` = 'Novita' WHERE `municipio`.`id` = 475;
UPDATE `municipio` SET `id` = 476,`departamento_id` = 12,`nombre` = 'Nuquí' WHERE `municipio`.`id` = 476;
UPDATE `municipio` SET `id` = 477,`departamento_id` = 12,`nombre` = 'Quibdó' WHERE `municipio`.`id` = 477;
UPDATE `municipio` SET `id` = 478,`departamento_id` = 12,`nombre` = 'Río Iró' WHERE `municipio`.`id` = 478;
UPDATE `municipio` SET `id` = 479,`departamento_id` = 12,`nombre` = 'Río Quito' WHERE `municipio`.`id` = 479;
UPDATE `municipio` SET `id` = 480,`departamento_id` = 12,`nombre` = 'Ríosucio' WHERE `municipio`.`id` = 480;
UPDATE `municipio` SET `id` = 481,`departamento_id` = 12,`nombre` = 'San José del Palmar' WHERE `municipio`.`id` = 481;
UPDATE `municipio` SET `id` = 482,`departamento_id` = 12,`nombre` = 'Santa Genoveva de Docorodó' WHERE `municipio`.`id` = 482;
UPDATE `municipio` SET `id` = 483,`departamento_id` = 12,`nombre` = 'Sipí' WHERE `municipio`.`id` = 483;
UPDATE `municipio` SET `id` = 484,`departamento_id` = 12,`nombre` = 'Tadó' WHERE `municipio`.`id` = 484;
UPDATE `municipio` SET `id` = 485,`departamento_id` = 12,`nombre` = 'Unguía' WHERE `municipio`.`id` = 485;
UPDATE `municipio` SET `id` = 486,`departamento_id` = 12,`nombre` = 'Unión Panamericana (ÁNIMAS)' WHERE `municipio`.`id` = 486;
UPDATE `municipio` SET `id` = 487,`departamento_id` = 13,`nombre` = 'Ayapel' WHERE `municipio`.`id` = 487;
UPDATE `municipio` SET `id` = 488,`departamento_id` = 13,`nombre` = 'Buenavista' WHERE `municipio`.`id` = 488;
UPDATE `municipio` SET `id` = 489,`departamento_id` = 13,`nombre` = 'Canalete' WHERE `municipio`.`id` = 489;
UPDATE `municipio` SET `id` = 490,`departamento_id` = 13,`nombre` = 'Cereté' WHERE `municipio`.`id` = 490;
UPDATE `municipio` SET `id` = 491,`departamento_id` = 13,`nombre` = 'Chimá' WHERE `municipio`.`id` = 491;
UPDATE `municipio` SET `id` = 492,`departamento_id` = 13,`nombre` = 'Chinú' WHERE `municipio`.`id` = 492;
UPDATE `municipio` SET `id` = 493,`departamento_id` = 13,`nombre` = 'Ciénaga de Oro' WHERE `municipio`.`id` = 493;
UPDATE `municipio` SET `id` = 494,`departamento_id` = 13,`nombre` = 'Cotorra' WHERE `municipio`.`id` = 494;
UPDATE `municipio` SET `id` = 495,`departamento_id` = 13,`nombre` = 'La Apartada y La Frontera' WHERE `municipio`.`id` = 495;
UPDATE `municipio` SET `id` = 496,`departamento_id` = 13,`nombre` = 'Lorica' WHERE `municipio`.`id` = 496;
UPDATE `municipio` SET `id` = 497,`departamento_id` = 13,`nombre` = 'Los Córdobas' WHERE `municipio`.`id` = 497;
UPDATE `municipio` SET `id` = 498,`departamento_id` = 13,`nombre` = 'Momil' WHERE `municipio`.`id` = 498;
UPDATE `municipio` SET `id` = 499,`departamento_id` = 13,`nombre` = 'Montelíbano' WHERE `municipio`.`id` = 499;
UPDATE `municipio` SET `id` = 500,`departamento_id` = 13,`nombre` = 'Monteria' WHERE `municipio`.`id` = 500;
UPDATE `municipio` SET `id` = 501,`departamento_id` = 13,`nombre` = 'Moñitos' WHERE `municipio`.`id` = 501;
UPDATE `municipio` SET `id` = 502,`departamento_id` = 13,`nombre` = 'Planeta Rica' WHERE `municipio`.`id` = 502;
UPDATE `municipio` SET `id` = 503,`departamento_id` = 13,`nombre` = 'Pueblo Nuevo' WHERE `municipio`.`id` = 503;
UPDATE `municipio` SET `id` = 504,`departamento_id` = 13,`nombre` = 'Puerto Escondido' WHERE `municipio`.`id` = 504;
UPDATE `municipio` SET `id` = 505,`departamento_id` = 13,`nombre` = 'Puerto Libertador' WHERE `municipio`.`id` = 505;
UPDATE `municipio` SET `id` = 506,`departamento_id` = 13,`nombre` = 'Purísima' WHERE `municipio`.`id` = 506;
UPDATE `municipio` SET `id` = 507,`departamento_id` = 13,`nombre` = 'Sahagún' WHERE `municipio`.`id` = 507;
UPDATE `municipio` SET `id` = 508,`departamento_id` = 13,`nombre` = 'San Andrés Sotavento' WHERE `municipio`.`id` = 508;
UPDATE `municipio` SET `id` = 509,`departamento_id` = 13,`nombre` = 'San Antero' WHERE `municipio`.`id` = 509;
UPDATE `municipio` SET `id` = 510,`departamento_id` = 13,`nombre` = 'San Bernardo del Viento' WHERE `municipio`.`id` = 510;
UPDATE `municipio` SET `id` = 511,`departamento_id` = 13,`nombre` = 'San Carlos' WHERE `municipio`.`id` = 511;
UPDATE `municipio` SET `id` = 512,`departamento_id` = 13,`nombre` = 'San José de Uré' WHERE `municipio`.`id` = 512;
UPDATE `municipio` SET `id` = 513,`departamento_id` = 13,`nombre` = 'San Pelayo' WHERE `municipio`.`id` = 513;
UPDATE `municipio` SET `id` = 514,`departamento_id` = 13,`nombre` = 'Tierralta' WHERE `municipio`.`id` = 514;
UPDATE `municipio` SET `id` = 515,`departamento_id` = 13,`nombre` = 'Tuchín' WHERE `municipio`.`id` = 515;
UPDATE `municipio` SET `id` = 516,`departamento_id` = 13,`nombre` = 'Valencia' WHERE `municipio`.`id` = 516;
UPDATE `municipio` SET `id` = 517,`departamento_id` = 14,`nombre` = 'Agua de Dios' WHERE `municipio`.`id` = 517;
UPDATE `municipio` SET `id` = 518,`departamento_id` = 14,`nombre` = 'Albán' WHERE `municipio`.`id` = 518;
UPDATE `municipio` SET `id` = 519,`departamento_id` = 14,`nombre` = 'Anapoima' WHERE `municipio`.`id` = 519;
UPDATE `municipio` SET `id` = 520,`departamento_id` = 14,`nombre` = 'Anolaima' WHERE `municipio`.`id` = 520;
UPDATE `municipio` SET `id` = 521,`departamento_id` = 14,`nombre` = 'Apulo' WHERE `municipio`.`id` = 521;
UPDATE `municipio` SET `id` = 522,`departamento_id` = 14,`nombre` = 'Arbeláez' WHERE `municipio`.`id` = 522;
UPDATE `municipio` SET `id` = 523,`departamento_id` = 14,`nombre` = 'Beltrán' WHERE `municipio`.`id` = 523;
UPDATE `municipio` SET `id` = 524,`departamento_id` = 14,`nombre` = 'Bituima' WHERE `municipio`.`id` = 524;
UPDATE `municipio` SET `id` = 525,`departamento_id` = 14,`nombre` = 'Bogotá D.C.' WHERE `municipio`.`id` = 525;
UPDATE `municipio` SET `id` = 526,`departamento_id` = 14,`nombre` = 'Bojacá' WHERE `municipio`.`id` = 526;
UPDATE `municipio` SET `id` = 527,`departamento_id` = 14,`nombre` = 'Cabrera' WHERE `municipio`.`id` = 527;
UPDATE `municipio` SET `id` = 528,`departamento_id` = 14,`nombre` = 'Cachipay' WHERE `municipio`.`id` = 528;
UPDATE `municipio` SET `id` = 529,`departamento_id` = 14,`nombre` = 'Cajicá' WHERE `municipio`.`id` = 529;
UPDATE `municipio` SET `id` = 530,`departamento_id` = 14,`nombre` = 'Caparrapí' WHERE `municipio`.`id` = 530;
UPDATE `municipio` SET `id` = 531,`departamento_id` = 14,`nombre` = 'Carmen de Carupa' WHERE `municipio`.`id` = 531;
UPDATE `municipio` SET `id` = 532,`departamento_id` = 14,`nombre` = 'Chaguaní' WHERE `municipio`.`id` = 532;
UPDATE `municipio` SET `id` = 533,`departamento_id` = 14,`nombre` = 'Chipaque' WHERE `municipio`.`id` = 533;
UPDATE `municipio` SET `id` = 534,`departamento_id` = 14,`nombre` = 'Choachí' WHERE `municipio`.`id` = 534;
UPDATE `municipio` SET `id` = 535,`departamento_id` = 14,`nombre` = 'Chocontá' WHERE `municipio`.`id` = 535;
UPDATE `municipio` SET `id` = 536,`departamento_id` = 14,`nombre` = 'Chía' WHERE `municipio`.`id` = 536;
UPDATE `municipio` SET `id` = 537,`departamento_id` = 14,`nombre` = 'Cogua' WHERE `municipio`.`id` = 537;
UPDATE `municipio` SET `id` = 538,`departamento_id` = 14,`nombre` = 'Cota' WHERE `municipio`.`id` = 538;
UPDATE `municipio` SET `id` = 539,`departamento_id` = 14,`nombre` = 'Cucunubá' WHERE `municipio`.`id` = 539;
UPDATE `municipio` SET `id` = 540,`departamento_id` = 14,`nombre` = 'Cáqueza' WHERE `municipio`.`id` = 540;
UPDATE `municipio` SET `id` = 541,`departamento_id` = 14,`nombre` = 'El Colegio' WHERE `municipio`.`id` = 541;
UPDATE `municipio` SET `id` = 542,`departamento_id` = 14,`nombre` = 'El Peñón' WHERE `municipio`.`id` = 542;
UPDATE `municipio` SET `id` = 543,`departamento_id` = 14,`nombre` = 'El Rosal' WHERE `municipio`.`id` = 543;
UPDATE `municipio` SET `id` = 544,`departamento_id` = 14,`nombre` = 'Facatativá' WHERE `municipio`.`id` = 544;
UPDATE `municipio` SET `id` = 545,`departamento_id` = 14,`nombre` = 'Fosca' WHERE `municipio`.`id` = 545;
UPDATE `municipio` SET `id` = 546,`departamento_id` = 14,`nombre` = 'Funza' WHERE `municipio`.`id` = 546;
UPDATE `municipio` SET `id` = 547,`departamento_id` = 14,`nombre` = 'Fusagasugá' WHERE `municipio`.`id` = 547;
UPDATE `municipio` SET `id` = 548,`departamento_id` = 14,`nombre` = 'Fómeque' WHERE `municipio`.`id` = 548;
UPDATE `municipio` SET `id` = 549,`departamento_id` = 14,`nombre` = 'Fúquene' WHERE `municipio`.`id` = 549;
UPDATE `municipio` SET `id` = 550,`departamento_id` = 14,`nombre` = 'Gachalá' WHERE `municipio`.`id` = 550;
UPDATE `municipio` SET `id` = 551,`departamento_id` = 14,`nombre` = 'Gachancipá' WHERE `municipio`.`id` = 551;
UPDATE `municipio` SET `id` = 552,`departamento_id` = 14,`nombre` = 'Gachetá' WHERE `municipio`.`id` = 552;
UPDATE `municipio` SET `id` = 553,`departamento_id` = 14,`nombre` = 'Gama' WHERE `municipio`.`id` = 553;
UPDATE `municipio` SET `id` = 554,`departamento_id` = 14,`nombre` = 'Girardot' WHERE `municipio`.`id` = 554;
UPDATE `municipio` SET `id` = 555,`departamento_id` = 14,`nombre` = 'Granada' WHERE `municipio`.`id` = 555;
UPDATE `municipio` SET `id` = 556,`departamento_id` = 14,`nombre` = 'Guachetá' WHERE `municipio`.`id` = 556;
UPDATE `municipio` SET `id` = 557,`departamento_id` = 14,`nombre` = 'Guaduas' WHERE `municipio`.`id` = 557;
UPDATE `municipio` SET `id` = 558,`departamento_id` = 14,`nombre` = 'Guasca' WHERE `municipio`.`id` = 558;
UPDATE `municipio` SET `id` = 559,`departamento_id` = 14,`nombre` = 'Guataquí' WHERE `municipio`.`id` = 559;
UPDATE `municipio` SET `id` = 560,`departamento_id` = 14,`nombre` = 'Guatavita' WHERE `municipio`.`id` = 560;
UPDATE `municipio` SET `id` = 561,`departamento_id` = 14,`nombre` = 'Guayabal de Siquima' WHERE `municipio`.`id` = 561;
UPDATE `municipio` SET `id` = 562,`departamento_id` = 14,`nombre` = 'Guayabetal' WHERE `municipio`.`id` = 562;
UPDATE `municipio` SET `id` = 563,`departamento_id` = 14,`nombre` = 'Gutiérrez' WHERE `municipio`.`id` = 563;
UPDATE `municipio` SET `id` = 564,`departamento_id` = 14,`nombre` = 'Jerusalén' WHERE `municipio`.`id` = 564;
UPDATE `municipio` SET `id` = 565,`departamento_id` = 14,`nombre` = 'Junín' WHERE `municipio`.`id` = 565;
UPDATE `municipio` SET `id` = 566,`departamento_id` = 14,`nombre` = 'La Calera' WHERE `municipio`.`id` = 566;
UPDATE `municipio` SET `id` = 567,`departamento_id` = 14,`nombre` = 'La Mesa' WHERE `municipio`.`id` = 567;
UPDATE `municipio` SET `id` = 568,`departamento_id` = 14,`nombre` = 'La Palma' WHERE `municipio`.`id` = 568;
UPDATE `municipio` SET `id` = 569,`departamento_id` = 14,`nombre` = 'La Peña' WHERE `municipio`.`id` = 569;
UPDATE `municipio` SET `id` = 570,`departamento_id` = 14,`nombre` = 'La Vega' WHERE `municipio`.`id` = 570;
UPDATE `municipio` SET `id` = 571,`departamento_id` = 14,`nombre` = 'Lenguazaque' WHERE `municipio`.`id` = 571;
UPDATE `municipio` SET `id` = 572,`departamento_id` = 14,`nombre` = 'Machetá' WHERE `municipio`.`id` = 572;
UPDATE `municipio` SET `id` = 573,`departamento_id` = 14,`nombre` = 'Madrid' WHERE `municipio`.`id` = 573;
UPDATE `municipio` SET `id` = 574,`departamento_id` = 14,`nombre` = 'Manta' WHERE `municipio`.`id` = 574;
UPDATE `municipio` SET `id` = 575,`departamento_id` = 14,`nombre` = 'Medina' WHERE `municipio`.`id` = 575;
UPDATE `municipio` SET `id` = 576,`departamento_id` = 14,`nombre` = 'Mosquera' WHERE `municipio`.`id` = 576;
UPDATE `municipio` SET `id` = 577,`departamento_id` = 14,`nombre` = 'Nariño' WHERE `municipio`.`id` = 577;
UPDATE `municipio` SET `id` = 578,`departamento_id` = 14,`nombre` = 'Nemocón' WHERE `municipio`.`id` = 578;
UPDATE `municipio` SET `id` = 579,`departamento_id` = 14,`nombre` = 'Nilo' WHERE `municipio`.`id` = 579;
UPDATE `municipio` SET `id` = 580,`departamento_id` = 14,`nombre` = 'Nimaima' WHERE `municipio`.`id` = 580;
UPDATE `municipio` SET `id` = 581,`departamento_id` = 14,`nombre` = 'Nocaima' WHERE `municipio`.`id` = 581;
UPDATE `municipio` SET `id` = 582,`departamento_id` = 14,`nombre` = 'Pacho' WHERE `municipio`.`id` = 582;
UPDATE `municipio` SET `id` = 583,`departamento_id` = 14,`nombre` = 'Paime' WHERE `municipio`.`id` = 583;
UPDATE `municipio` SET `id` = 584,`departamento_id` = 14,`nombre` = 'Pandi' WHERE `municipio`.`id` = 584;
UPDATE `municipio` SET `id` = 585,`departamento_id` = 14,`nombre` = 'Paratebueno' WHERE `municipio`.`id` = 585;
UPDATE `municipio` SET `id` = 586,`departamento_id` = 14,`nombre` = 'Pasca' WHERE `municipio`.`id` = 586;
UPDATE `municipio` SET `id` = 587,`departamento_id` = 14,`nombre` = 'Puerto Salgar' WHERE `municipio`.`id` = 587;
UPDATE `municipio` SET `id` = 588,`departamento_id` = 14,`nombre` = 'Pulí' WHERE `municipio`.`id` = 588;
UPDATE `municipio` SET `id` = 589,`departamento_id` = 14,`nombre` = 'Quebradanegra' WHERE `municipio`.`id` = 589;
UPDATE `municipio` SET `id` = 590,`departamento_id` = 14,`nombre` = 'Quetame' WHERE `municipio`.`id` = 590;
UPDATE `municipio` SET `id` = 591,`departamento_id` = 14,`nombre` = 'Quipile' WHERE `municipio`.`id` = 591;
UPDATE `municipio` SET `id` = 592,`departamento_id` = 14,`nombre` = 'Ricaurte' WHERE `municipio`.`id` = 592;
UPDATE `municipio` SET `id` = 593,`departamento_id` = 14,`nombre` = 'San Antonio de Tequendama' WHERE `municipio`.`id` = 593;
UPDATE `municipio` SET `id` = 594,`departamento_id` = 14,`nombre` = 'San Bernardo' WHERE `municipio`.`id` = 594;
UPDATE `municipio` SET `id` = 595,`departamento_id` = 14,`nombre` = 'San Cayetano' WHERE `municipio`.`id` = 595;
UPDATE `municipio` SET `id` = 596,`departamento_id` = 14,`nombre` = 'San Francisco' WHERE `municipio`.`id` = 596;
UPDATE `municipio` SET `id` = 597,`departamento_id` = 14,`nombre` = 'San Juan de Río Seco' WHERE `municipio`.`id` = 597;
UPDATE `municipio` SET `id` = 598,`departamento_id` = 14,`nombre` = 'Sasaima' WHERE `municipio`.`id` = 598;
UPDATE `municipio` SET `id` = 599,`departamento_id` = 14,`nombre` = 'Sesquilé' WHERE `municipio`.`id` = 599;
UPDATE `municipio` SET `id` = 600,`departamento_id` = 14,`nombre` = 'Sibaté' WHERE `municipio`.`id` = 600;
UPDATE `municipio` SET `id` = 601,`departamento_id` = 14,`nombre` = 'Silvania' WHERE `municipio`.`id` = 601;
UPDATE `municipio` SET `id` = 602,`departamento_id` = 14,`nombre` = 'Simijaca' WHERE `municipio`.`id` = 602;
UPDATE `municipio` SET `id` = 603,`departamento_id` = 14,`nombre` = 'Soacha' WHERE `municipio`.`id` = 603;
UPDATE `municipio` SET `id` = 604,`departamento_id` = 14,`nombre` = 'Sopó' WHERE `municipio`.`id` = 604;
UPDATE `municipio` SET `id` = 605,`departamento_id` = 14,`nombre` = 'Subachoque' WHERE `municipio`.`id` = 605;
UPDATE `municipio` SET `id` = 606,`departamento_id` = 14,`nombre` = 'Suesca' WHERE `municipio`.`id` = 606;
UPDATE `municipio` SET `id` = 607,`departamento_id` = 14,`nombre` = 'Supatá' WHERE `municipio`.`id` = 607;
UPDATE `municipio` SET `id` = 608,`departamento_id` = 14,`nombre` = 'Susa' WHERE `municipio`.`id` = 608;
UPDATE `municipio` SET `id` = 609,`departamento_id` = 14,`nombre` = 'Sutatausa' WHERE `municipio`.`id` = 609;
UPDATE `municipio` SET `id` = 610,`departamento_id` = 14,`nombre` = 'Tabio' WHERE `municipio`.`id` = 610;
UPDATE `municipio` SET `id` = 611,`departamento_id` = 14,`nombre` = 'Tausa' WHERE `municipio`.`id` = 611;
UPDATE `municipio` SET `id` = 612,`departamento_id` = 14,`nombre` = 'Tena' WHERE `municipio`.`id` = 612;
UPDATE `municipio` SET `id` = 613,`departamento_id` = 14,`nombre` = 'Tenjo' WHERE `municipio`.`id` = 613;
UPDATE `municipio` SET `id` = 614,`departamento_id` = 14,`nombre` = 'Tibacuy' WHERE `municipio`.`id` = 614;
UPDATE `municipio` SET `id` = 615,`departamento_id` = 14,`nombre` = 'Tibirita' WHERE `municipio`.`id` = 615;
UPDATE `municipio` SET `id` = 616,`departamento_id` = 14,`nombre` = 'Tocaima' WHERE `municipio`.`id` = 616;
UPDATE `municipio` SET `id` = 617,`departamento_id` = 14,`nombre` = 'Tocancipá' WHERE `municipio`.`id` = 617;
UPDATE `municipio` SET `id` = 618,`departamento_id` = 14,`nombre` = 'Topaipí' WHERE `municipio`.`id` = 618;
UPDATE `municipio` SET `id` = 619,`departamento_id` = 14,`nombre` = 'Ubalá' WHERE `municipio`.`id` = 619;
UPDATE `municipio` SET `id` = 620,`departamento_id` = 14,`nombre` = 'Ubaque' WHERE `municipio`.`id` = 620;
UPDATE `municipio` SET `id` = 621,`departamento_id` = 14,`nombre` = 'Ubaté' WHERE `municipio`.`id` = 621;
UPDATE `municipio` SET `id` = 622,`departamento_id` = 14,`nombre` = 'Une' WHERE `municipio`.`id` = 622;
UPDATE `municipio` SET `id` = 623,`departamento_id` = 14,`nombre` = 'Venecia (Ospina Pérez)' WHERE `municipio`.`id` = 623;
UPDATE `municipio` SET `id` = 624,`departamento_id` = 14,`nombre` = 'Vergara' WHERE `municipio`.`id` = 624;
UPDATE `municipio` SET `id` = 625,`departamento_id` = 14,`nombre` = 'Viani' WHERE `municipio`.`id` = 625;
UPDATE `municipio` SET `id` = 626,`departamento_id` = 14,`nombre` = 'Villagómez' WHERE `municipio`.`id` = 626;
UPDATE `municipio` SET `id` = 627,`departamento_id` = 14,`nombre` = 'Villapinzón' WHERE `municipio`.`id` = 627;
UPDATE `municipio` SET `id` = 628,`departamento_id` = 14,`nombre` = 'Villeta' WHERE `municipio`.`id` = 628;
UPDATE `municipio` SET `id` = 629,`departamento_id` = 14,`nombre` = 'Viotá' WHERE `municipio`.`id` = 629;
UPDATE `municipio` SET `id` = 630,`departamento_id` = 14,`nombre` = 'Yacopí' WHERE `municipio`.`id` = 630;
UPDATE `municipio` SET `id` = 631,`departamento_id` = 14,`nombre` = 'Zipacón' WHERE `municipio`.`id` = 631;
UPDATE `municipio` SET `id` = 632,`departamento_id` = 14,`nombre` = 'Zipaquirá' WHERE `municipio`.`id` = 632;
UPDATE `municipio` SET `id` = 633,`departamento_id` = 14,`nombre` = 'Útica' WHERE `municipio`.`id` = 633;
UPDATE `municipio` SET `id` = 634,`departamento_id` = 15,`nombre` = 'Inírida' WHERE `municipio`.`id` = 634;
UPDATE `municipio` SET `id` = 635,`departamento_id` = 16,`nombre` = 'Calamar' WHERE `municipio`.`id` = 635;
UPDATE `municipio` SET `id` = 636,`departamento_id` = 16,`nombre` = 'El Retorno' WHERE `municipio`.`id` = 636;
UPDATE `municipio` SET `id` = 637,`departamento_id` = 16,`nombre` = 'Miraflores' WHERE `municipio`.`id` = 637;
UPDATE `municipio` SET `id` = 638,`departamento_id` = 16,`nombre` = 'San José del Guaviare' WHERE `municipio`.`id` = 638;
UPDATE `municipio` SET `id` = 639,`departamento_id` = 17,`nombre` = 'Acevedo' WHERE `municipio`.`id` = 639;
UPDATE `municipio` SET `id` = 640,`departamento_id` = 17,`nombre` = 'Agrado' WHERE `municipio`.`id` = 640;
UPDATE `municipio` SET `id` = 641,`departamento_id` = 17,`nombre` = 'Aipe' WHERE `municipio`.`id` = 641;
UPDATE `municipio` SET `id` = 642,`departamento_id` = 17,`nombre` = 'Algeciras' WHERE `municipio`.`id` = 642;
UPDATE `municipio` SET `id` = 643,`departamento_id` = 17,`nombre` = 'Altamira' WHERE `municipio`.`id` = 643;
UPDATE `municipio` SET `id` = 644,`departamento_id` = 17,`nombre` = 'Baraya' WHERE `municipio`.`id` = 644;
UPDATE `municipio` SET `id` = 645,`departamento_id` = 17,`nombre` = 'Campoalegre' WHERE `municipio`.`id` = 645;
UPDATE `municipio` SET `id` = 646,`departamento_id` = 17,`nombre` = 'Colombia' WHERE `municipio`.`id` = 646;
UPDATE `municipio` SET `id` = 647,`departamento_id` = 17,`nombre` = 'Elías' WHERE `municipio`.`id` = 647;
UPDATE `municipio` SET `id` = 648,`departamento_id` = 17,`nombre` = 'Garzón' WHERE `municipio`.`id` = 648;
UPDATE `municipio` SET `id` = 649,`departamento_id` = 17,`nombre` = 'Gigante' WHERE `municipio`.`id` = 649;
UPDATE `municipio` SET `id` = 650,`departamento_id` = 17,`nombre` = 'Guadalupe' WHERE `municipio`.`id` = 650;
UPDATE `municipio` SET `id` = 651,`departamento_id` = 17,`nombre` = 'Hobo' WHERE `municipio`.`id` = 651;
UPDATE `municipio` SET `id` = 652,`departamento_id` = 17,`nombre` = 'Isnos' WHERE `municipio`.`id` = 652;
UPDATE `municipio` SET `id` = 653,`departamento_id` = 17,`nombre` = 'La Argentina' WHERE `municipio`.`id` = 653;
UPDATE `municipio` SET `id` = 654,`departamento_id` = 17,`nombre` = 'La Plata' WHERE `municipio`.`id` = 654;
UPDATE `municipio` SET `id` = 655,`departamento_id` = 17,`nombre` = 'Neiva' WHERE `municipio`.`id` = 655;
UPDATE `municipio` SET `id` = 656,`departamento_id` = 17,`nombre` = 'Nátaga' WHERE `municipio`.`id` = 656;
UPDATE `municipio` SET `id` = 657,`departamento_id` = 17,`nombre` = 'Oporapa' WHERE `municipio`.`id` = 657;
UPDATE `municipio` SET `id` = 658,`departamento_id` = 17,`nombre` = 'Paicol' WHERE `municipio`.`id` = 658;
UPDATE `municipio` SET `id` = 659,`departamento_id` = 17,`nombre` = 'Palermo' WHERE `municipio`.`id` = 659;
UPDATE `municipio` SET `id` = 660,`departamento_id` = 17,`nombre` = 'Palestina' WHERE `municipio`.`id` = 660;
UPDATE `municipio` SET `id` = 661,`departamento_id` = 17,`nombre` = 'Pital' WHERE `municipio`.`id` = 661;
UPDATE `municipio` SET `id` = 662,`departamento_id` = 17,`nombre` = 'Pitalito' WHERE `municipio`.`id` = 662;
UPDATE `municipio` SET `id` = 663,`departamento_id` = 17,`nombre` = 'Rivera' WHERE `municipio`.`id` = 663;
UPDATE `municipio` SET `id` = 664,`departamento_id` = 17,`nombre` = 'Saladoblanco' WHERE `municipio`.`id` = 664;
UPDATE `municipio` SET `id` = 665,`departamento_id` = 17,`nombre` = 'San Agustín' WHERE `municipio`.`id` = 665;
UPDATE `municipio` SET `id` = 666,`departamento_id` = 17,`nombre` = 'Santa María' WHERE `municipio`.`id` = 666;
UPDATE `municipio` SET `id` = 667,`departamento_id` = 17,`nombre` = 'Suaza' WHERE `municipio`.`id` = 667;
UPDATE `municipio` SET `id` = 668,`departamento_id` = 17,`nombre` = 'Tarqui' WHERE `municipio`.`id` = 668;
UPDATE `municipio` SET `id` = 669,`departamento_id` = 17,`nombre` = 'Tello' WHERE `municipio`.`id` = 669;
UPDATE `municipio` SET `id` = 670,`departamento_id` = 17,`nombre` = 'Teruel' WHERE `municipio`.`id` = 670;
UPDATE `municipio` SET `id` = 671,`departamento_id` = 17,`nombre` = 'Tesalia' WHERE `municipio`.`id` = 671;
UPDATE `municipio` SET `id` = 672,`departamento_id` = 17,`nombre` = 'Timaná' WHERE `municipio`.`id` = 672;
UPDATE `municipio` SET `id` = 673,`departamento_id` = 17,`nombre` = 'Villavieja' WHERE `municipio`.`id` = 673;
UPDATE `municipio` SET `id` = 674,`departamento_id` = 17,`nombre` = 'Yaguará' WHERE `municipio`.`id` = 674;
UPDATE `municipio` SET `id` = 675,`departamento_id` = 17,`nombre` = 'Íquira' WHERE `municipio`.`id` = 675;
UPDATE `municipio` SET `id` = 676,`departamento_id` = 18,`nombre` = 'Albania' WHERE `municipio`.`id` = 676;
UPDATE `municipio` SET `id` = 677,`departamento_id` = 18,`nombre` = 'Barrancas' WHERE `municipio`.`id` = 677;
UPDATE `municipio` SET `id` = 678,`departamento_id` = 18,`nombre` = 'Dibulla' WHERE `municipio`.`id` = 678;
UPDATE `municipio` SET `id` = 679,`departamento_id` = 18,`nombre` = 'Distracción' WHERE `municipio`.`id` = 679;
UPDATE `municipio` SET `id` = 680,`departamento_id` = 18,`nombre` = 'El Molino' WHERE `municipio`.`id` = 680;
UPDATE `municipio` SET `id` = 681,`departamento_id` = 18,`nombre` = 'Fonseca' WHERE `municipio`.`id` = 681;
UPDATE `municipio` SET `id` = 682,`departamento_id` = 18,`nombre` = 'Hatonuevo' WHERE `municipio`.`id` = 682;
UPDATE `municipio` SET `id` = 683,`departamento_id` = 18,`nombre` = 'La Jagua del Pilar' WHERE `municipio`.`id` = 683;
UPDATE `municipio` SET `id` = 684,`departamento_id` = 18,`nombre` = 'Maicao' WHERE `municipio`.`id` = 684;
UPDATE `municipio` SET `id` = 685,`departamento_id` = 18,`nombre` = 'Manaure' WHERE `municipio`.`id` = 685;
UPDATE `municipio` SET `id` = 686,`departamento_id` = 18,`nombre` = 'Riohacha' WHERE `municipio`.`id` = 686;
UPDATE `municipio` SET `id` = 687,`departamento_id` = 18,`nombre` = 'San Juan del Cesar' WHERE `municipio`.`id` = 687;
UPDATE `municipio` SET `id` = 688,`departamento_id` = 18,`nombre` = 'Uribia' WHERE `municipio`.`id` = 688;
UPDATE `municipio` SET `id` = 689,`departamento_id` = 18,`nombre` = 'Urumita' WHERE `municipio`.`id` = 689;
UPDATE `municipio` SET `id` = 690,`departamento_id` = 18,`nombre` = 'Villanueva' WHERE `municipio`.`id` = 690;
UPDATE `municipio` SET `id` = 691,`departamento_id` = 19,`nombre` = 'Algarrobo' WHERE `municipio`.`id` = 691;
UPDATE `municipio` SET `id` = 692,`departamento_id` = 19,`nombre` = 'Aracataca' WHERE `municipio`.`id` = 692;
UPDATE `municipio` SET `id` = 693,`departamento_id` = 19,`nombre` = 'Ariguaní (El Difícil)' WHERE `municipio`.`id` = 693;
UPDATE `municipio` SET `id` = 694,`departamento_id` = 19,`nombre` = 'Cerro San Antonio' WHERE `municipio`.`id` = 694;
UPDATE `municipio` SET `id` = 695,`departamento_id` = 19,`nombre` = 'Chivolo' WHERE `municipio`.`id` = 695;
UPDATE `municipio` SET `id` = 696,`departamento_id` = 19,`nombre` = 'Ciénaga' WHERE `municipio`.`id` = 696;
UPDATE `municipio` SET `id` = 697,`departamento_id` = 19,`nombre` = 'Concordia' WHERE `municipio`.`id` = 697;
UPDATE `municipio` SET `id` = 698,`departamento_id` = 19,`nombre` = 'El Banco' WHERE `municipio`.`id` = 698;
UPDATE `municipio` SET `id` = 699,`departamento_id` = 19,`nombre` = 'El Piñon' WHERE `municipio`.`id` = 699;
UPDATE `municipio` SET `id` = 700,`departamento_id` = 19,`nombre` = 'El Retén' WHERE `municipio`.`id` = 700;
UPDATE `municipio` SET `id` = 701,`departamento_id` = 19,`nombre` = 'Fundación' WHERE `municipio`.`id` = 701;
UPDATE `municipio` SET `id` = 702,`departamento_id` = 19,`nombre` = 'Guamal' WHERE `municipio`.`id` = 702;
UPDATE `municipio` SET `id` = 703,`departamento_id` = 19,`nombre` = 'Nueva Granada' WHERE `municipio`.`id` = 703;
UPDATE `municipio` SET `id` = 704,`departamento_id` = 19,`nombre` = 'Pedraza' WHERE `municipio`.`id` = 704;
UPDATE `municipio` SET `id` = 705,`departamento_id` = 19,`nombre` = 'Pijiño' WHERE `municipio`.`id` = 705;
UPDATE `municipio` SET `id` = 706,`departamento_id` = 19,`nombre` = 'Pivijay' WHERE `municipio`.`id` = 706;
UPDATE `municipio` SET `id` = 707,`departamento_id` = 19,`nombre` = 'Plato' WHERE `municipio`.`id` = 707;
UPDATE `municipio` SET `id` = 708,`departamento_id` = 19,`nombre` = 'Puebloviejo' WHERE `municipio`.`id` = 708;
UPDATE `municipio` SET `id` = 709,`departamento_id` = 19,`nombre` = 'Remolino' WHERE `municipio`.`id` = 709;
UPDATE `municipio` SET `id` = 710,`departamento_id` = 19,`nombre` = 'Sabanas de San Angel (SAN ANGEL)' WHERE `municipio`.`id` = 710;
UPDATE `municipio` SET `id` = 711,`departamento_id` = 19,`nombre` = 'Salamina' WHERE `municipio`.`id` = 711;
UPDATE `municipio` SET `id` = 712,`departamento_id` = 19,`nombre` = 'San Sebastián de Buenavista' WHERE `municipio`.`id` = 712;
UPDATE `municipio` SET `id` = 713,`departamento_id` = 19,`nombre` = 'San Zenón' WHERE `municipio`.`id` = 713;
UPDATE `municipio` SET `id` = 714,`departamento_id` = 19,`nombre` = 'Santa Ana' WHERE `municipio`.`id` = 714;
UPDATE `municipio` SET `id` = 715,`departamento_id` = 19,`nombre` = 'Santa Bárbara de Pinto' WHERE `municipio`.`id` = 715;
UPDATE `municipio` SET `id` = 716,`departamento_id` = 19,`nombre` = 'Santa Marta' WHERE `municipio`.`id` = 716;
UPDATE `municipio` SET `id` = 717,`departamento_id` = 19,`nombre` = 'Sitionuevo' WHERE `municipio`.`id` = 717;
UPDATE `municipio` SET `id` = 718,`departamento_id` = 19,`nombre` = 'Tenerife' WHERE `municipio`.`id` = 718;
UPDATE `municipio` SET `id` = 719,`departamento_id` = 19,`nombre` = 'Zapayán (PUNTA DE PIEDRAS)' WHERE `municipio`.`id` = 719;
UPDATE `municipio` SET `id` = 720,`departamento_id` = 19,`nombre` = 'Zona Bananera (PRADO - SEVILLA)' WHERE `municipio`.`id` = 720;
UPDATE `municipio` SET `id` = 721,`departamento_id` = 20,`nombre` = 'Acacías' WHERE `municipio`.`id` = 721;
UPDATE `municipio` SET `id` = 722,`departamento_id` = 20,`nombre` = 'Barranca de Upía' WHERE `municipio`.`id` = 722;
UPDATE `municipio` SET `id` = 723,`departamento_id` = 20,`nombre` = 'Cabuyaro' WHERE `municipio`.`id` = 723;
UPDATE `municipio` SET `id` = 724,`departamento_id` = 20,`nombre` = 'Castilla la Nueva' WHERE `municipio`.`id` = 724;
UPDATE `municipio` SET `id` = 725,`departamento_id` = 20,`nombre` = 'Cubarral' WHERE `municipio`.`id` = 725;
UPDATE `municipio` SET `id` = 726,`departamento_id` = 20,`nombre` = 'Cumaral' WHERE `municipio`.`id` = 726;
UPDATE `municipio` SET `id` = 727,`departamento_id` = 20,`nombre` = 'El Calvario' WHERE `municipio`.`id` = 727;
UPDATE `municipio` SET `id` = 728,`departamento_id` = 20,`nombre` = 'El Castillo' WHERE `municipio`.`id` = 728;
UPDATE `municipio` SET `id` = 729,`departamento_id` = 20,`nombre` = 'El Dorado' WHERE `municipio`.`id` = 729;
UPDATE `municipio` SET `id` = 730,`departamento_id` = 20,`nombre` = 'Fuente de Oro' WHERE `municipio`.`id` = 730;
UPDATE `municipio` SET `id` = 731,`departamento_id` = 20,`nombre` = 'Granada' WHERE `municipio`.`id` = 731;
UPDATE `municipio` SET `id` = 732,`departamento_id` = 20,`nombre` = 'Guamal' WHERE `municipio`.`id` = 732;
UPDATE `municipio` SET `id` = 733,`departamento_id` = 20,`nombre` = 'La Macarena' WHERE `municipio`.`id` = 733;
UPDATE `municipio` SET `id` = 734,`departamento_id` = 20,`nombre` = 'Lejanías' WHERE `municipio`.`id` = 734;
UPDATE `municipio` SET `id` = 735,`departamento_id` = 20,`nombre` = 'Mapiripan' WHERE `municipio`.`id` = 735;
UPDATE `municipio` SET `id` = 736,`departamento_id` = 20,`nombre` = 'Mesetas' WHERE `municipio`.`id` = 736;
UPDATE `municipio` SET `id` = 737,`departamento_id` = 20,`nombre` = 'Puerto Concordia' WHERE `municipio`.`id` = 737;
UPDATE `municipio` SET `id` = 738,`departamento_id` = 20,`nombre` = 'Puerto Gaitán' WHERE `municipio`.`id` = 738;
UPDATE `municipio` SET `id` = 739,`departamento_id` = 20,`nombre` = 'Puerto Lleras' WHERE `municipio`.`id` = 739;
UPDATE `municipio` SET `id` = 740,`departamento_id` = 20,`nombre` = 'Puerto López' WHERE `municipio`.`id` = 740;
UPDATE `municipio` SET `id` = 741,`departamento_id` = 20,`nombre` = 'Puerto Rico' WHERE `municipio`.`id` = 741;
UPDATE `municipio` SET `id` = 742,`departamento_id` = 20,`nombre` = 'Restrepo' WHERE `municipio`.`id` = 742;
UPDATE `municipio` SET `id` = 743,`departamento_id` = 20,`nombre` = 'San Carlos de Guaroa' WHERE `municipio`.`id` = 743;
UPDATE `municipio` SET `id` = 744,`departamento_id` = 20,`nombre` = 'San Juan de Arama' WHERE `municipio`.`id` = 744;
UPDATE `municipio` SET `id` = 745,`departamento_id` = 20,`nombre` = 'San Juanito' WHERE `municipio`.`id` = 745;
UPDATE `municipio` SET `id` = 746,`departamento_id` = 20,`nombre` = 'San Martín' WHERE `municipio`.`id` = 746;
UPDATE `municipio` SET `id` = 747,`departamento_id` = 20,`nombre` = 'Uribe' WHERE `municipio`.`id` = 747;
UPDATE `municipio` SET `id` = 748,`departamento_id` = 20,`nombre` = 'Villavicencio' WHERE `municipio`.`id` = 748;
UPDATE `municipio` SET `id` = 749,`departamento_id` = 20,`nombre` = 'Vista Hermosa' WHERE `municipio`.`id` = 749;
UPDATE `municipio` SET `id` = 750,`departamento_id` = 21,`nombre` = 'Albán (San José)' WHERE `municipio`.`id` = 750;
UPDATE `municipio` SET `id` = 751,`departamento_id` = 21,`nombre` = 'Aldana' WHERE `municipio`.`id` = 751;
UPDATE `municipio` SET `id` = 752,`departamento_id` = 21,`nombre` = 'Ancuya' WHERE `municipio`.`id` = 752;
UPDATE `municipio` SET `id` = 753,`departamento_id` = 21,`nombre` = 'Arboleda (Berruecos)' WHERE `municipio`.`id` = 753;
UPDATE `municipio` SET `id` = 754,`departamento_id` = 21,`nombre` = 'Barbacoas' WHERE `municipio`.`id` = 754;
UPDATE `municipio` SET `id` = 755,`departamento_id` = 21,`nombre` = 'Belén' WHERE `municipio`.`id` = 755;
UPDATE `municipio` SET `id` = 756,`departamento_id` = 21,`nombre` = 'Buesaco' WHERE `municipio`.`id` = 756;
UPDATE `municipio` SET `id` = 757,`departamento_id` = 21,`nombre` = 'Chachaguí' WHERE `municipio`.`id` = 757;
UPDATE `municipio` SET `id` = 758,`departamento_id` = 21,`nombre` = 'Colón (Génova)' WHERE `municipio`.`id` = 758;
UPDATE `municipio` SET `id` = 759,`departamento_id` = 21,`nombre` = 'Consaca' WHERE `municipio`.`id` = 759;
UPDATE `municipio` SET `id` = 760,`departamento_id` = 21,`nombre` = 'Contadero' WHERE `municipio`.`id` = 760;
UPDATE `municipio` SET `id` = 761,`departamento_id` = 21,`nombre` = 'Cuaspud (Carlosama)' WHERE `municipio`.`id` = 761;
UPDATE `municipio` SET `id` = 762,`departamento_id` = 21,`nombre` = 'Cumbal' WHERE `municipio`.`id` = 762;
UPDATE `municipio` SET `id` = 763,`departamento_id` = 21,`nombre` = 'Cumbitara' WHERE `municipio`.`id` = 763;
UPDATE `municipio` SET `id` = 764,`departamento_id` = 21,`nombre` = 'Córdoba' WHERE `municipio`.`id` = 764;
UPDATE `municipio` SET `id` = 765,`departamento_id` = 21,`nombre` = 'El Charco' WHERE `municipio`.`id` = 765;
UPDATE `municipio` SET `id` = 766,`departamento_id` = 21,`nombre` = 'El Peñol' WHERE `municipio`.`id` = 766;
UPDATE `municipio` SET `id` = 767,`departamento_id` = 21,`nombre` = 'El Rosario' WHERE `municipio`.`id` = 767;
UPDATE `municipio` SET `id` = 768,`departamento_id` = 21,`nombre` = 'El Tablón de Gómez' WHERE `municipio`.`id` = 768;
UPDATE `municipio` SET `id` = 769,`departamento_id` = 21,`nombre` = 'El Tambo' WHERE `municipio`.`id` = 769;
UPDATE `municipio` SET `id` = 770,`departamento_id` = 21,`nombre` = 'Francisco Pizarro' WHERE `municipio`.`id` = 770;
UPDATE `municipio` SET `id` = 771,`departamento_id` = 21,`nombre` = 'Funes' WHERE `municipio`.`id` = 771;
UPDATE `municipio` SET `id` = 772,`departamento_id` = 21,`nombre` = 'Guachavés' WHERE `municipio`.`id` = 772;
UPDATE `municipio` SET `id` = 773,`departamento_id` = 21,`nombre` = 'Guachucal' WHERE `municipio`.`id` = 773;
UPDATE `municipio` SET `id` = 774,`departamento_id` = 21,`nombre` = 'Guaitarilla' WHERE `municipio`.`id` = 774;
UPDATE `municipio` SET `id` = 775,`departamento_id` = 21,`nombre` = 'Gualmatán' WHERE `municipio`.`id` = 775;
UPDATE `municipio` SET `id` = 776,`departamento_id` = 21,`nombre` = 'Iles' WHERE `municipio`.`id` = 776;
UPDATE `municipio` SET `id` = 777,`departamento_id` = 21,`nombre` = 'Imúes' WHERE `municipio`.`id` = 777;
UPDATE `municipio` SET `id` = 778,`departamento_id` = 21,`nombre` = 'Ipiales' WHERE `municipio`.`id` = 778;
UPDATE `municipio` SET `id` = 779,`departamento_id` = 21,`nombre` = 'La Cruz' WHERE `municipio`.`id` = 779;
UPDATE `municipio` SET `id` = 780,`departamento_id` = 21,`nombre` = 'La Florida' WHERE `municipio`.`id` = 780;
UPDATE `municipio` SET `id` = 781,`departamento_id` = 21,`nombre` = 'La Llanada' WHERE `municipio`.`id` = 781;
UPDATE `municipio` SET `id` = 782,`departamento_id` = 21,`nombre` = 'La Tola' WHERE `municipio`.`id` = 782;
UPDATE `municipio` SET `id` = 783,`departamento_id` = 21,`nombre` = 'La Unión' WHERE `municipio`.`id` = 783;
UPDATE `municipio` SET `id` = 784,`departamento_id` = 21,`nombre` = 'Leiva' WHERE `municipio`.`id` = 784;
UPDATE `municipio` SET `id` = 785,`departamento_id` = 21,`nombre` = 'Linares' WHERE `municipio`.`id` = 785;
UPDATE `municipio` SET `id` = 786,`departamento_id` = 21,`nombre` = 'Magüi (Payán)' WHERE `municipio`.`id` = 786;
UPDATE `municipio` SET `id` = 787,`departamento_id` = 21,`nombre` = 'Mallama (Piedrancha)' WHERE `municipio`.`id` = 787;
UPDATE `municipio` SET `id` = 788,`departamento_id` = 21,`nombre` = 'Mosquera' WHERE `municipio`.`id` = 788;
UPDATE `municipio` SET `id` = 789,`departamento_id` = 21,`nombre` = 'Nariño' WHERE `municipio`.`id` = 789;
UPDATE `municipio` SET `id` = 790,`departamento_id` = 21,`nombre` = 'Olaya Herrera' WHERE `municipio`.`id` = 790;
UPDATE `municipio` SET `id` = 791,`departamento_id` = 21,`nombre` = 'Ospina' WHERE `municipio`.`id` = 791;
UPDATE `municipio` SET `id` = 792,`departamento_id` = 21,`nombre` = 'Policarpa' WHERE `municipio`.`id` = 792;
UPDATE `municipio` SET `id` = 793,`departamento_id` = 21,`nombre` = 'Potosí' WHERE `municipio`.`id` = 793;
UPDATE `municipio` SET `id` = 794,`departamento_id` = 21,`nombre` = 'Providencia' WHERE `municipio`.`id` = 794;
UPDATE `municipio` SET `id` = 795,`departamento_id` = 21,`nombre` = 'Puerres' WHERE `municipio`.`id` = 795;
UPDATE `municipio` SET `id` = 796,`departamento_id` = 21,`nombre` = 'Pupiales' WHERE `municipio`.`id` = 796;
UPDATE `municipio` SET `id` = 797,`departamento_id` = 21,`nombre` = 'Ricaurte' WHERE `municipio`.`id` = 797;
UPDATE `municipio` SET `id` = 798,`departamento_id` = 21,`nombre` = 'Roberto Payán (San José)' WHERE `municipio`.`id` = 798;
UPDATE `municipio` SET `id` = 799,`departamento_id` = 21,`nombre` = 'Samaniego' WHERE `municipio`.`id` = 799;
UPDATE `municipio` SET `id` = 800,`departamento_id` = 21,`nombre` = 'San Bernardo' WHERE `municipio`.`id` = 800;
UPDATE `municipio` SET `id` = 801,`departamento_id` = 21,`nombre` = 'San Juan de Pasto' WHERE `municipio`.`id` = 801;
UPDATE `municipio` SET `id` = 802,`departamento_id` = 21,`nombre` = 'San Lorenzo' WHERE `municipio`.`id` = 802;
UPDATE `municipio` SET `id` = 803,`departamento_id` = 21,`nombre` = 'San Pablo' WHERE `municipio`.`id` = 803;
UPDATE `municipio` SET `id` = 804,`departamento_id` = 21,`nombre` = 'San Pedro de Cartago' WHERE `municipio`.`id` = 804;
UPDATE `municipio` SET `id` = 805,`departamento_id` = 21,`nombre` = 'Sandoná' WHERE `municipio`.`id` = 805;
UPDATE `municipio` SET `id` = 806,`departamento_id` = 21,`nombre` = 'Santa Bárbara (Iscuandé)' WHERE `municipio`.`id` = 806;
UPDATE `municipio` SET `id` = 807,`departamento_id` = 21,`nombre` = 'Sapuyes' WHERE `municipio`.`id` = 807;
UPDATE `municipio` SET `id` = 808,`departamento_id` = 21,`nombre` = 'Sotomayor (Los Andes)' WHERE `municipio`.`id` = 808;
UPDATE `municipio` SET `id` = 809,`departamento_id` = 21,`nombre` = 'Taminango' WHERE `municipio`.`id` = 809;
UPDATE `municipio` SET `id` = 810,`departamento_id` = 21,`nombre` = 'Tangua' WHERE `municipio`.`id` = 810;
UPDATE `municipio` SET `id` = 811,`departamento_id` = 21,`nombre` = 'Tumaco' WHERE `municipio`.`id` = 811;
UPDATE `municipio` SET `id` = 812,`departamento_id` = 21,`nombre` = 'Túquerres' WHERE `municipio`.`id` = 812;
UPDATE `municipio` SET `id` = 813,`departamento_id` = 21,`nombre` = 'Yacuanquer' WHERE `municipio`.`id` = 813;
UPDATE `municipio` SET `id` = 814,`departamento_id` = 22,`nombre` = 'Arboledas' WHERE `municipio`.`id` = 814;
UPDATE `municipio` SET `id` = 815,`departamento_id` = 22,`nombre` = 'Bochalema' WHERE `municipio`.`id` = 815;
UPDATE `municipio` SET `id` = 816,`departamento_id` = 22,`nombre` = 'Bucarasica' WHERE `municipio`.`id` = 816;
UPDATE `municipio` SET `id` = 817,`departamento_id` = 22,`nombre` = 'Chinácota' WHERE `municipio`.`id` = 817;
UPDATE `municipio` SET `id` = 818,`departamento_id` = 22,`nombre` = 'Chitagá' WHERE `municipio`.`id` = 818;
UPDATE `municipio` SET `id` = 819,`departamento_id` = 22,`nombre` = 'Convención' WHERE `municipio`.`id` = 819;
UPDATE `municipio` SET `id` = 820,`departamento_id` = 22,`nombre` = 'Cucutilla' WHERE `municipio`.`id` = 820;
UPDATE `municipio` SET `id` = 821,`departamento_id` = 22,`nombre` = 'Cáchira' WHERE `municipio`.`id` = 821;
UPDATE `municipio` SET `id` = 822,`departamento_id` = 22,`nombre` = 'Cácota' WHERE `municipio`.`id` = 822;
UPDATE `municipio` SET `id` = 823,`departamento_id` = 22,`nombre` = 'Cúcuta' WHERE `municipio`.`id` = 823;
UPDATE `municipio` SET `id` = 824,`departamento_id` = 22,`nombre` = 'Durania' WHERE `municipio`.`id` = 824;
UPDATE `municipio` SET `id` = 825,`departamento_id` = 22,`nombre` = 'El Carmen' WHERE `municipio`.`id` = 825;
UPDATE `municipio` SET `id` = 826,`departamento_id` = 22,`nombre` = 'El Tarra' WHERE `municipio`.`id` = 826;
UPDATE `municipio` SET `id` = 827,`departamento_id` = 22,`nombre` = 'El Zulia' WHERE `municipio`.`id` = 827;
UPDATE `municipio` SET `id` = 828,`departamento_id` = 22,`nombre` = 'Gramalote' WHERE `municipio`.`id` = 828;
UPDATE `municipio` SET `id` = 829,`departamento_id` = 22,`nombre` = 'Hacarí' WHERE `municipio`.`id` = 829;
UPDATE `municipio` SET `id` = 830,`departamento_id` = 22,`nombre` = 'Herrán' WHERE `municipio`.`id` = 830;
UPDATE `municipio` SET `id` = 831,`departamento_id` = 22,`nombre` = 'La Esperanza' WHERE `municipio`.`id` = 831;
UPDATE `municipio` SET `id` = 832,`departamento_id` = 22,`nombre` = 'La Playa' WHERE `municipio`.`id` = 832;
UPDATE `municipio` SET `id` = 833,`departamento_id` = 22,`nombre` = 'Labateca' WHERE `municipio`.`id` = 833;
UPDATE `municipio` SET `id` = 834,`departamento_id` = 22,`nombre` = 'Los Patios' WHERE `municipio`.`id` = 834;
UPDATE `municipio` SET `id` = 835,`departamento_id` = 22,`nombre` = 'Lourdes' WHERE `municipio`.`id` = 835;
UPDATE `municipio` SET `id` = 836,`departamento_id` = 22,`nombre` = 'Mutiscua' WHERE `municipio`.`id` = 836;
UPDATE `municipio` SET `id` = 837,`departamento_id` = 22,`nombre` = 'Ocaña' WHERE `municipio`.`id` = 837;
UPDATE `municipio` SET `id` = 838,`departamento_id` = 22,`nombre` = 'Pamplona' WHERE `municipio`.`id` = 838;
UPDATE `municipio` SET `id` = 839,`departamento_id` = 22,`nombre` = 'Pamplonita' WHERE `municipio`.`id` = 839;
UPDATE `municipio` SET `id` = 840,`departamento_id` = 22,`nombre` = 'Puerto Santander' WHERE `municipio`.`id` = 840;
UPDATE `municipio` SET `id` = 841,`departamento_id` = 22,`nombre` = 'Ragonvalia' WHERE `municipio`.`id` = 841;
UPDATE `municipio` SET `id` = 842,`departamento_id` = 22,`nombre` = 'Salazar' WHERE `municipio`.`id` = 842;
UPDATE `municipio` SET `id` = 843,`departamento_id` = 22,`nombre` = 'San Calixto' WHERE `municipio`.`id` = 843;
UPDATE `municipio` SET `id` = 844,`departamento_id` = 22,`nombre` = 'San Cayetano' WHERE `municipio`.`id` = 844;
UPDATE `municipio` SET `id` = 845,`departamento_id` = 22,`nombre` = 'Santiago' WHERE `municipio`.`id` = 845;
UPDATE `municipio` SET `id` = 846,`departamento_id` = 22,`nombre` = 'Sardinata' WHERE `municipio`.`id` = 846;
UPDATE `municipio` SET `id` = 847,`departamento_id` = 22,`nombre` = 'Silos' WHERE `municipio`.`id` = 847;
UPDATE `municipio` SET `id` = 848,`departamento_id` = 22,`nombre` = 'Teorama' WHERE `municipio`.`id` = 848;
UPDATE `municipio` SET `id` = 849,`departamento_id` = 22,`nombre` = 'Tibú' WHERE `municipio`.`id` = 849;
UPDATE `municipio` SET `id` = 850,`departamento_id` = 22,`nombre` = 'Toledo' WHERE `municipio`.`id` = 850;
UPDATE `municipio` SET `id` = 851,`departamento_id` = 22,`nombre` = 'Villa Caro' WHERE `municipio`.`id` = 851;
UPDATE `municipio` SET `id` = 852,`departamento_id` = 22,`nombre` = 'Villa del Rosario' WHERE `municipio`.`id` = 852;
UPDATE `municipio` SET `id` = 853,`departamento_id` = 22,`nombre` = 'Ábrego' WHERE `municipio`.`id` = 853;
UPDATE `municipio` SET `id` = 854,`departamento_id` = 23,`nombre` = 'Colón' WHERE `municipio`.`id` = 854;
UPDATE `municipio` SET `id` = 855,`departamento_id` = 23,`nombre` = 'Mocoa' WHERE `municipio`.`id` = 855;
UPDATE `municipio` SET `id` = 856,`departamento_id` = 23,`nombre` = 'Orito' WHERE `municipio`.`id` = 856;
UPDATE `municipio` SET `id` = 857,`departamento_id` = 23,`nombre` = 'Puerto Asís' WHERE `municipio`.`id` = 857;
UPDATE `municipio` SET `id` = 858,`departamento_id` = 23,`nombre` = 'Puerto Caicedo' WHERE `municipio`.`id` = 858;
UPDATE `municipio` SET `id` = 859,`departamento_id` = 23,`nombre` = 'Puerto Guzmán' WHERE `municipio`.`id` = 859;
UPDATE `municipio` SET `id` = 860,`departamento_id` = 23,`nombre` = 'Puerto Leguízamo' WHERE `municipio`.`id` = 860;
UPDATE `municipio` SET `id` = 861,`departamento_id` = 23,`nombre` = 'San Francisco' WHERE `municipio`.`id` = 861;
UPDATE `municipio` SET `id` = 862,`departamento_id` = 23,`nombre` = 'San Miguel' WHERE `municipio`.`id` = 862;
UPDATE `municipio` SET `id` = 863,`departamento_id` = 23,`nombre` = 'Santiago' WHERE `municipio`.`id` = 863;
UPDATE `municipio` SET `id` = 864,`departamento_id` = 23,`nombre` = 'Sibundoy' WHERE `municipio`.`id` = 864;
UPDATE `municipio` SET `id` = 865,`departamento_id` = 23,`nombre` = 'Valle del Guamuez' WHERE `municipio`.`id` = 865;
UPDATE `municipio` SET `id` = 866,`departamento_id` = 23,`nombre` = 'Villagarzón' WHERE `municipio`.`id` = 866;
UPDATE `municipio` SET `id` = 867,`departamento_id` = 24,`nombre` = 'Armenia' WHERE `municipio`.`id` = 867;
UPDATE `municipio` SET `id` = 868,`departamento_id` = 24,`nombre` = 'Buenavista' WHERE `municipio`.`id` = 868;
UPDATE `municipio` SET `id` = 869,`departamento_id` = 24,`nombre` = 'Calarcá' WHERE `municipio`.`id` = 869;
UPDATE `municipio` SET `id` = 870,`departamento_id` = 24,`nombre` = 'Circasia' WHERE `municipio`.`id` = 870;
UPDATE `municipio` SET `id` = 871,`departamento_id` = 24,`nombre` = 'Cordobá' WHERE `municipio`.`id` = 871;
UPDATE `municipio` SET `id` = 872,`departamento_id` = 24,`nombre` = 'Filandia' WHERE `municipio`.`id` = 872;
UPDATE `municipio` SET `id` = 873,`departamento_id` = 24,`nombre` = 'Génova' WHERE `municipio`.`id` = 873;
UPDATE `municipio` SET `id` = 874,`departamento_id` = 24,`nombre` = 'La Tebaida' WHERE `municipio`.`id` = 874;
UPDATE `municipio` SET `id` = 875,`departamento_id` = 24,`nombre` = 'Montenegro' WHERE `municipio`.`id` = 875;
UPDATE `municipio` SET `id` = 876,`departamento_id` = 24,`nombre` = 'Pijao' WHERE `municipio`.`id` = 876;
UPDATE `municipio` SET `id` = 877,`departamento_id` = 24,`nombre` = 'Quimbaya' WHERE `municipio`.`id` = 877;
UPDATE `municipio` SET `id` = 878,`departamento_id` = 24,`nombre` = 'Salento' WHERE `municipio`.`id` = 878;
UPDATE `municipio` SET `id` = 879,`departamento_id` = 25,`nombre` = 'Apía' WHERE `municipio`.`id` = 879;
UPDATE `municipio` SET `id` = 880,`departamento_id` = 25,`nombre` = 'Balboa' WHERE `municipio`.`id` = 880;
UPDATE `municipio` SET `id` = 881,`departamento_id` = 25,`nombre` = 'Belén de Umbría' WHERE `municipio`.`id` = 881;
UPDATE `municipio` SET `id` = 882,`departamento_id` = 25,`nombre` = 'Dos Quebradas' WHERE `municipio`.`id` = 882;
UPDATE `municipio` SET `id` = 883,`departamento_id` = 25,`nombre` = 'Guática' WHERE `municipio`.`id` = 883;
UPDATE `municipio` SET `id` = 884,`departamento_id` = 25,`nombre` = 'La Celia' WHERE `municipio`.`id` = 884;
UPDATE `municipio` SET `id` = 885,`departamento_id` = 25,`nombre` = 'La Virginia' WHERE `municipio`.`id` = 885;
UPDATE `municipio` SET `id` = 886,`departamento_id` = 25,`nombre` = 'Marsella' WHERE `municipio`.`id` = 886;
UPDATE `municipio` SET `id` = 887,`departamento_id` = 25,`nombre` = 'Mistrató' WHERE `municipio`.`id` = 887;
UPDATE `municipio` SET `id` = 888,`departamento_id` = 25,`nombre` = 'Pereira' WHERE `municipio`.`id` = 888;
UPDATE `municipio` SET `id` = 889,`departamento_id` = 25,`nombre` = 'Pueblo Rico' WHERE `municipio`.`id` = 889;
UPDATE `municipio` SET `id` = 890,`departamento_id` = 25,`nombre` = 'Quinchía' WHERE `municipio`.`id` = 890;
UPDATE `municipio` SET `id` = 891,`departamento_id` = 25,`nombre` = 'Santa Rosa de Cabal' WHERE `municipio`.`id` = 891;
UPDATE `municipio` SET `id` = 892,`departamento_id` = 25,`nombre` = 'Santuario' WHERE `municipio`.`id` = 892;
UPDATE `municipio` SET `id` = 893,`departamento_id` = 26,`nombre` = 'Providencia' WHERE `municipio`.`id` = 893;
UPDATE `municipio` SET `id` = 894,`departamento_id` = 27,`nombre` = 'Aguada' WHERE `municipio`.`id` = 894;
UPDATE `municipio` SET `id` = 895,`departamento_id` = 27,`nombre` = 'Albania' WHERE `municipio`.`id` = 895;
UPDATE `municipio` SET `id` = 896,`departamento_id` = 27,`nombre` = 'Aratoca' WHERE `municipio`.`id` = 896;
UPDATE `municipio` SET `id` = 897,`departamento_id` = 27,`nombre` = 'Barbosa' WHERE `municipio`.`id` = 897;
UPDATE `municipio` SET `id` = 898,`departamento_id` = 27,`nombre` = 'Barichara' WHERE `municipio`.`id` = 898;
UPDATE `municipio` SET `id` = 899,`departamento_id` = 27,`nombre` = 'Barrancabermeja' WHERE `municipio`.`id` = 899;
UPDATE `municipio` SET `id` = 900,`departamento_id` = 27,`nombre` = 'Betulia' WHERE `municipio`.`id` = 900;
UPDATE `municipio` SET `id` = 901,`departamento_id` = 27,`nombre` = 'Bolívar' WHERE `municipio`.`id` = 901;
UPDATE `municipio` SET `id` = 902,`departamento_id` = 27,`nombre` = 'Bucaramanga' WHERE `municipio`.`id` = 902;
UPDATE `municipio` SET `id` = 903,`departamento_id` = 27,`nombre` = 'Cabrera' WHERE `municipio`.`id` = 903;
UPDATE `municipio` SET `id` = 904,`departamento_id` = 27,`nombre` = 'California' WHERE `municipio`.`id` = 904;
UPDATE `municipio` SET `id` = 905,`departamento_id` = 27,`nombre` = 'Capitanejo' WHERE `municipio`.`id` = 905;
UPDATE `municipio` SET `id` = 906,`departamento_id` = 27,`nombre` = 'Carcasí' WHERE `municipio`.`id` = 906;
UPDATE `municipio` SET `id` = 907,`departamento_id` = 27,`nombre` = 'Cepita' WHERE `municipio`.`id` = 907;
UPDATE `municipio` SET `id` = 908,`departamento_id` = 27,`nombre` = 'Cerrito' WHERE `municipio`.`id` = 908;
UPDATE `municipio` SET `id` = 909,`departamento_id` = 27,`nombre` = 'Charalá' WHERE `municipio`.`id` = 909;
UPDATE `municipio` SET `id` = 910,`departamento_id` = 27,`nombre` = 'Charta' WHERE `municipio`.`id` = 910;
UPDATE `municipio` SET `id` = 911,`departamento_id` = 27,`nombre` = 'Chima' WHERE `municipio`.`id` = 911;
UPDATE `municipio` SET `id` = 912,`departamento_id` = 27,`nombre` = 'Chipatá' WHERE `municipio`.`id` = 912;
UPDATE `municipio` SET `id` = 913,`departamento_id` = 27,`nombre` = 'Cimitarra' WHERE `municipio`.`id` = 913;
UPDATE `municipio` SET `id` = 914,`departamento_id` = 27,`nombre` = 'Concepción' WHERE `municipio`.`id` = 914;
UPDATE `municipio` SET `id` = 915,`departamento_id` = 27,`nombre` = 'Confines' WHERE `municipio`.`id` = 915;
UPDATE `municipio` SET `id` = 916,`departamento_id` = 27,`nombre` = 'Contratación' WHERE `municipio`.`id` = 916;
UPDATE `municipio` SET `id` = 917,`departamento_id` = 27,`nombre` = 'Coromoro' WHERE `municipio`.`id` = 917;
UPDATE `municipio` SET `id` = 918,`departamento_id` = 27,`nombre` = 'Curití' WHERE `municipio`.`id` = 918;
UPDATE `municipio` SET `id` = 919,`departamento_id` = 27,`nombre` = 'El Carmen' WHERE `municipio`.`id` = 919;
UPDATE `municipio` SET `id` = 920,`departamento_id` = 27,`nombre` = 'El Guacamayo' WHERE `municipio`.`id` = 920;
UPDATE `municipio` SET `id` = 921,`departamento_id` = 27,`nombre` = 'El Peñon' WHERE `municipio`.`id` = 921;
UPDATE `municipio` SET `id` = 922,`departamento_id` = 27,`nombre` = 'El Playón' WHERE `municipio`.`id` = 922;
UPDATE `municipio` SET `id` = 923,`departamento_id` = 27,`nombre` = 'Encino' WHERE `municipio`.`id` = 923;
UPDATE `municipio` SET `id` = 924,`departamento_id` = 27,`nombre` = 'Enciso' WHERE `municipio`.`id` = 924;
UPDATE `municipio` SET `id` = 925,`departamento_id` = 27,`nombre` = 'Floridablanca' WHERE `municipio`.`id` = 925;
UPDATE `municipio` SET `id` = 926,`departamento_id` = 27,`nombre` = 'Florián' WHERE `municipio`.`id` = 926;
UPDATE `municipio` SET `id` = 927,`departamento_id` = 27,`nombre` = 'Galán' WHERE `municipio`.`id` = 927;
UPDATE `municipio` SET `id` = 928,`departamento_id` = 27,`nombre` = 'Girón' WHERE `municipio`.`id` = 928;
UPDATE `municipio` SET `id` = 929,`departamento_id` = 27,`nombre` = 'Guaca' WHERE `municipio`.`id` = 929;
UPDATE `municipio` SET `id` = 930,`departamento_id` = 27,`nombre` = 'Guadalupe' WHERE `municipio`.`id` = 930;
UPDATE `municipio` SET `id` = 931,`departamento_id` = 27,`nombre` = 'Guapota' WHERE `municipio`.`id` = 931;
UPDATE `municipio` SET `id` = 932,`departamento_id` = 27,`nombre` = 'Guavatá' WHERE `municipio`.`id` = 932;
UPDATE `municipio` SET `id` = 933,`departamento_id` = 27,`nombre` = 'Guepsa' WHERE `municipio`.`id` = 933;
UPDATE `municipio` SET `id` = 934,`departamento_id` = 27,`nombre` = 'Gámbita' WHERE `municipio`.`id` = 934;
UPDATE `municipio` SET `id` = 935,`departamento_id` = 27,`nombre` = 'Hato' WHERE `municipio`.`id` = 935;
UPDATE `municipio` SET `id` = 936,`departamento_id` = 27,`nombre` = 'Jesús María' WHERE `municipio`.`id` = 936;
UPDATE `municipio` SET `id` = 937,`departamento_id` = 27,`nombre` = 'Jordán' WHERE `municipio`.`id` = 937;
UPDATE `municipio` SET `id` = 938,`departamento_id` = 27,`nombre` = 'La Belleza' WHERE `municipio`.`id` = 938;
UPDATE `municipio` SET `id` = 939,`departamento_id` = 27,`nombre` = 'La Paz' WHERE `municipio`.`id` = 939;
UPDATE `municipio` SET `id` = 940,`departamento_id` = 27,`nombre` = 'Landázuri' WHERE `municipio`.`id` = 940;
UPDATE `municipio` SET `id` = 941,`departamento_id` = 27,`nombre` = 'Lebrija' WHERE `municipio`.`id` = 941;
UPDATE `municipio` SET `id` = 942,`departamento_id` = 27,`nombre` = 'Los Santos' WHERE `municipio`.`id` = 942;
UPDATE `municipio` SET `id` = 943,`departamento_id` = 27,`nombre` = 'Macaravita' WHERE `municipio`.`id` = 943;
UPDATE `municipio` SET `id` = 944,`departamento_id` = 27,`nombre` = 'Matanza' WHERE `municipio`.`id` = 944;
UPDATE `municipio` SET `id` = 945,`departamento_id` = 27,`nombre` = 'Mogotes' WHERE `municipio`.`id` = 945;
UPDATE `municipio` SET `id` = 946,`departamento_id` = 27,`nombre` = 'Molagavita' WHERE `municipio`.`id` = 946;
UPDATE `municipio` SET `id` = 947,`departamento_id` = 27,`nombre` = 'Málaga' WHERE `municipio`.`id` = 947;
UPDATE `municipio` SET `id` = 948,`departamento_id` = 27,`nombre` = 'Ocamonte' WHERE `municipio`.`id` = 948;
UPDATE `municipio` SET `id` = 949,`departamento_id` = 27,`nombre` = 'Oiba' WHERE `municipio`.`id` = 949;
UPDATE `municipio` SET `id` = 950,`departamento_id` = 27,`nombre` = 'Onzaga' WHERE `municipio`.`id` = 950;
UPDATE `municipio` SET `id` = 951,`departamento_id` = 27,`nombre` = 'Palmar' WHERE `municipio`.`id` = 951;
UPDATE `municipio` SET `id` = 952,`departamento_id` = 27,`nombre` = 'Palmas del Socorro' WHERE `municipio`.`id` = 952;
UPDATE `municipio` SET `id` = 953,`departamento_id` = 27,`nombre` = 'Pie de Cuesta' WHERE `municipio`.`id` = 953;
UPDATE `municipio` SET `id` = 954,`departamento_id` = 27,`nombre` = 'Pinchote' WHERE `municipio`.`id` = 954;
UPDATE `municipio` SET `id` = 955,`departamento_id` = 27,`nombre` = 'Puente Nacional' WHERE `municipio`.`id` = 955;
UPDATE `municipio` SET `id` = 956,`departamento_id` = 27,`nombre` = 'Puerto Parra' WHERE `municipio`.`id` = 956;
UPDATE `municipio` SET `id` = 957,`departamento_id` = 27,`nombre` = 'Puerto Wilches' WHERE `municipio`.`id` = 957;
UPDATE `municipio` SET `id` = 958,`departamento_id` = 27,`nombre` = 'Páramo' WHERE `municipio`.`id` = 958;
UPDATE `municipio` SET `id` = 959,`departamento_id` = 27,`nombre` = 'Rio Negro' WHERE `municipio`.`id` = 959;
UPDATE `municipio` SET `id` = 960,`departamento_id` = 27,`nombre` = 'Sabana de Torres' WHERE `municipio`.`id` = 960;
UPDATE `municipio` SET `id` = 961,`departamento_id` = 27,`nombre` = 'San Andrés' WHERE `municipio`.`id` = 961;
UPDATE `municipio` SET `id` = 962,`departamento_id` = 27,`nombre` = 'San Benito' WHERE `municipio`.`id` = 962;
UPDATE `municipio` SET `id` = 963,`departamento_id` = 27,`nombre` = 'San Gíl' WHERE `municipio`.`id` = 963;
UPDATE `municipio` SET `id` = 964,`departamento_id` = 27,`nombre` = 'San Joaquín' WHERE `municipio`.`id` = 964;
UPDATE `municipio` SET `id` = 965,`departamento_id` = 27,`nombre` = 'San José de Miranda' WHERE `municipio`.`id` = 965;
UPDATE `municipio` SET `id` = 966,`departamento_id` = 27,`nombre` = 'San Miguel' WHERE `municipio`.`id` = 966;
UPDATE `municipio` SET `id` = 967,`departamento_id` = 27,`nombre` = 'San Vicente del Chucurí' WHERE `municipio`.`id` = 967;
UPDATE `municipio` SET `id` = 968,`departamento_id` = 27,`nombre` = 'Santa Bárbara' WHERE `municipio`.`id` = 968;
UPDATE `municipio` SET `id` = 969,`departamento_id` = 27,`nombre` = 'Santa Helena del Opón' WHERE `municipio`.`id` = 969;
UPDATE `municipio` SET `id` = 970,`departamento_id` = 27,`nombre` = 'Simacota' WHERE `municipio`.`id` = 970;
UPDATE `municipio` SET `id` = 971,`departamento_id` = 27,`nombre` = 'Socorro' WHERE `municipio`.`id` = 971;
UPDATE `municipio` SET `id` = 972,`departamento_id` = 27,`nombre` = 'Suaita' WHERE `municipio`.`id` = 972;
UPDATE `municipio` SET `id` = 973,`departamento_id` = 27,`nombre` = 'Sucre' WHERE `municipio`.`id` = 973;
UPDATE `municipio` SET `id` = 974,`departamento_id` = 27,`nombre` = 'Suratá' WHERE `municipio`.`id` = 974;
UPDATE `municipio` SET `id` = 975,`departamento_id` = 27,`nombre` = 'Tona' WHERE `municipio`.`id` = 975;
UPDATE `municipio` SET `id` = 976,`departamento_id` = 27,`nombre` = 'Valle de San José' WHERE `municipio`.`id` = 976;
UPDATE `municipio` SET `id` = 977,`departamento_id` = 27,`nombre` = 'Vetas' WHERE `municipio`.`id` = 977;
UPDATE `municipio` SET `id` = 978,`departamento_id` = 27,`nombre` = 'Villanueva' WHERE `municipio`.`id` = 978;
UPDATE `municipio` SET `id` = 979,`departamento_id` = 27,`nombre` = 'Vélez' WHERE `municipio`.`id` = 979;
UPDATE `municipio` SET `id` = 980,`departamento_id` = 27,`nombre` = 'Zapatoca' WHERE `municipio`.`id` = 980;
UPDATE `municipio` SET `id` = 981,`departamento_id` = 28,`nombre` = 'Buenavista' WHERE `municipio`.`id` = 981;
UPDATE `municipio` SET `id` = 982,`departamento_id` = 28,`nombre` = 'Caimito' WHERE `municipio`.`id` = 982;
UPDATE `municipio` SET `id` = 983,`departamento_id` = 28,`nombre` = 'Chalán' WHERE `municipio`.`id` = 983;
UPDATE `municipio` SET `id` = 984,`departamento_id` = 28,`nombre` = 'Colosó (Ricaurte)' WHERE `municipio`.`id` = 984;
UPDATE `municipio` SET `id` = 985,`departamento_id` = 28,`nombre` = 'Corozal' WHERE `municipio`.`id` = 985;
UPDATE `municipio` SET `id` = 986,`departamento_id` = 28,`nombre` = 'Coveñas' WHERE `municipio`.`id` = 986;
UPDATE `municipio` SET `id` = 987,`departamento_id` = 28,`nombre` = 'El Roble' WHERE `municipio`.`id` = 987;
UPDATE `municipio` SET `id` = 988,`departamento_id` = 28,`nombre` = 'Galeras (Nueva Granada)' WHERE `municipio`.`id` = 988;
UPDATE `municipio` SET `id` = 989,`departamento_id` = 28,`nombre` = 'Guaranda' WHERE `municipio`.`id` = 989;
UPDATE `municipio` SET `id` = 990,`departamento_id` = 28,`nombre` = 'La Unión' WHERE `municipio`.`id` = 990;
UPDATE `municipio` SET `id` = 991,`departamento_id` = 28,`nombre` = 'Los Palmitos' WHERE `municipio`.`id` = 991;
UPDATE `municipio` SET `id` = 992,`departamento_id` = 28,`nombre` = 'Majagual' WHERE `municipio`.`id` = 992;
UPDATE `municipio` SET `id` = 993,`departamento_id` = 28,`nombre` = 'Morroa' WHERE `municipio`.`id` = 993;
UPDATE `municipio` SET `id` = 994,`departamento_id` = 28,`nombre` = 'Ovejas' WHERE `municipio`.`id` = 994;
UPDATE `municipio` SET `id` = 995,`departamento_id` = 28,`nombre` = 'Palmito' WHERE `municipio`.`id` = 995;
UPDATE `municipio` SET `id` = 996,`departamento_id` = 28,`nombre` = 'Sampués' WHERE `municipio`.`id` = 996;
UPDATE `municipio` SET `id` = 997,`departamento_id` = 28,`nombre` = 'San Benito Abad' WHERE `municipio`.`id` = 997;
UPDATE `municipio` SET `id` = 998,`departamento_id` = 28,`nombre` = 'San Juan de Betulia' WHERE `municipio`.`id` = 998;
UPDATE `municipio` SET `id` = 999,`departamento_id` = 28,`nombre` = 'San Marcos' WHERE `municipio`.`id` = 999;
UPDATE `municipio` SET `id` = 1000,`departamento_id` = 28,`nombre` = 'San Onofre' WHERE `municipio`.`id` = 1000;
UPDATE `municipio` SET `id` = 1001,`departamento_id` = 28,`nombre` = 'San Pedro' WHERE `municipio`.`id` = 1001;
UPDATE `municipio` SET `id` = 1002,`departamento_id` = 28,`nombre` = 'Sincelejo' WHERE `municipio`.`id` = 1002;
UPDATE `municipio` SET `id` = 1003,`departamento_id` = 28,`nombre` = 'Sincé' WHERE `municipio`.`id` = 1003;
UPDATE `municipio` SET `id` = 1004,`departamento_id` = 28,`nombre` = 'Sucre' WHERE `municipio`.`id` = 1004;
UPDATE `municipio` SET `id` = 1005,`departamento_id` = 28,`nombre` = 'Tolú' WHERE `municipio`.`id` = 1005;
UPDATE `municipio` SET `id` = 1006,`departamento_id` = 28,`nombre` = 'Tolú Viejo' WHERE `municipio`.`id` = 1006;
UPDATE `municipio` SET `id` = 1007,`departamento_id` = 29,`nombre` = 'Alpujarra' WHERE `municipio`.`id` = 1007;
UPDATE `municipio` SET `id` = 1008,`departamento_id` = 29,`nombre` = 'Alvarado' WHERE `municipio`.`id` = 1008;
UPDATE `municipio` SET `id` = 1009,`departamento_id` = 29,`nombre` = 'Ambalema' WHERE `municipio`.`id` = 1009;
UPDATE `municipio` SET `id` = 1010,`departamento_id` = 29,`nombre` = 'Anzoátegui' WHERE `municipio`.`id` = 1010;
UPDATE `municipio` SET `id` = 1011,`departamento_id` = 29,`nombre` = 'Armero (Guayabal)' WHERE `municipio`.`id` = 1011;
UPDATE `municipio` SET `id` = 1012,`departamento_id` = 29,`nombre` = 'Ataco' WHERE `municipio`.`id` = 1012;
UPDATE `municipio` SET `id` = 1013,`departamento_id` = 29,`nombre` = 'Cajamarca' WHERE `municipio`.`id` = 1013;
UPDATE `municipio` SET `id` = 1014,`departamento_id` = 29,`nombre` = 'Carmen de Apicalá' WHERE `municipio`.`id` = 1014;
UPDATE `municipio` SET `id` = 1015,`departamento_id` = 29,`nombre` = 'Casabianca' WHERE `municipio`.`id` = 1015;
UPDATE `municipio` SET `id` = 1016,`departamento_id` = 29,`nombre` = 'Chaparral' WHERE `municipio`.`id` = 1016;
UPDATE `municipio` SET `id` = 1017,`departamento_id` = 29,`nombre` = 'Coello' WHERE `municipio`.`id` = 1017;
UPDATE `municipio` SET `id` = 1018,`departamento_id` = 29,`nombre` = 'Coyaima' WHERE `municipio`.`id` = 1018;
UPDATE `municipio` SET `id` = 1019,`departamento_id` = 29,`nombre` = 'Cunday' WHERE `municipio`.`id` = 1019;
UPDATE `municipio` SET `id` = 1020,`departamento_id` = 29,`nombre` = 'Dolores' WHERE `municipio`.`id` = 1020;
UPDATE `municipio` SET `id` = 1021,`departamento_id` = 29,`nombre` = 'Espinal' WHERE `municipio`.`id` = 1021;
UPDATE `municipio` SET `id` = 1022,`departamento_id` = 29,`nombre` = 'Falan' WHERE `municipio`.`id` = 1022;
UPDATE `municipio` SET `id` = 1023,`departamento_id` = 29,`nombre` = 'Flandes' WHERE `municipio`.`id` = 1023;
UPDATE `municipio` SET `id` = 1024,`departamento_id` = 29,`nombre` = 'Fresno' WHERE `municipio`.`id` = 1024;
UPDATE `municipio` SET `id` = 1025,`departamento_id` = 29,`nombre` = 'Guamo' WHERE `municipio`.`id` = 1025;
UPDATE `municipio` SET `id` = 1026,`departamento_id` = 29,`nombre` = 'Herveo' WHERE `municipio`.`id` = 1026;
UPDATE `municipio` SET `id` = 1027,`departamento_id` = 29,`nombre` = 'Honda' WHERE `municipio`.`id` = 1027;
UPDATE `municipio` SET `id` = 1028,`departamento_id` = 29,`nombre` = 'Ibagué' WHERE `municipio`.`id` = 1028;
UPDATE `municipio` SET `id` = 1029,`departamento_id` = 29,`nombre` = 'Icononzo' WHERE `municipio`.`id` = 1029;
UPDATE `municipio` SET `id` = 1030,`departamento_id` = 29,`nombre` = 'Lérida' WHERE `municipio`.`id` = 1030;
UPDATE `municipio` SET `id` = 1031,`departamento_id` = 29,`nombre` = 'Líbano' WHERE `municipio`.`id` = 1031;
UPDATE `municipio` SET `id` = 1032,`departamento_id` = 29,`nombre` = 'Mariquita' WHERE `municipio`.`id` = 1032;
UPDATE `municipio` SET `id` = 1033,`departamento_id` = 29,`nombre` = 'Melgar' WHERE `municipio`.`id` = 1033;
UPDATE `municipio` SET `id` = 1034,`departamento_id` = 29,`nombre` = 'Murillo' WHERE `municipio`.`id` = 1034;
UPDATE `municipio` SET `id` = 1035,`departamento_id` = 29,`nombre` = 'Natagaima' WHERE `municipio`.`id` = 1035;
UPDATE `municipio` SET `id` = 1036,`departamento_id` = 29,`nombre` = 'Ortega' WHERE `municipio`.`id` = 1036;
UPDATE `municipio` SET `id` = 1037,`departamento_id` = 29,`nombre` = 'Palocabildo' WHERE `municipio`.`id` = 1037;
UPDATE `municipio` SET `id` = 1038,`departamento_id` = 29,`nombre` = 'Piedras' WHERE `municipio`.`id` = 1038;
UPDATE `municipio` SET `id` = 1039,`departamento_id` = 29,`nombre` = 'Planadas' WHERE `municipio`.`id` = 1039;
UPDATE `municipio` SET `id` = 1040,`departamento_id` = 29,`nombre` = 'Prado' WHERE `municipio`.`id` = 1040;
UPDATE `municipio` SET `id` = 1041,`departamento_id` = 29,`nombre` = 'Purificación' WHERE `municipio`.`id` = 1041;
UPDATE `municipio` SET `id` = 1042,`departamento_id` = 29,`nombre` = 'Rioblanco' WHERE `municipio`.`id` = 1042;
UPDATE `municipio` SET `id` = 1043,`departamento_id` = 29,`nombre` = 'Roncesvalles' WHERE `municipio`.`id` = 1043;
UPDATE `municipio` SET `id` = 1044,`departamento_id` = 29,`nombre` = 'Rovira' WHERE `municipio`.`id` = 1044;
UPDATE `municipio` SET `id` = 1045,`departamento_id` = 29,`nombre` = 'Saldaña' WHERE `municipio`.`id` = 1045;
UPDATE `municipio` SET `id` = 1046,`departamento_id` = 29,`nombre` = 'San Antonio' WHERE `municipio`.`id` = 1046;
UPDATE `municipio` SET `id` = 1047,`departamento_id` = 29,`nombre` = 'San Luis' WHERE `municipio`.`id` = 1047;
UPDATE `municipio` SET `id` = 1048,`departamento_id` = 29,`nombre` = 'Santa Isabel' WHERE `municipio`.`id` = 1048;
UPDATE `municipio` SET `id` = 1049,`departamento_id` = 29,`nombre` = 'Suárez' WHERE `municipio`.`id` = 1049;
UPDATE `municipio` SET `id` = 1050,`departamento_id` = 29,`nombre` = 'Valle de San Juan' WHERE `municipio`.`id` = 1050;
UPDATE `municipio` SET `id` = 1051,`departamento_id` = 29,`nombre` = 'Venadillo' WHERE `municipio`.`id` = 1051;
UPDATE `municipio` SET `id` = 1052,`departamento_id` = 29,`nombre` = 'Villahermosa' WHERE `municipio`.`id` = 1052;
UPDATE `municipio` SET `id` = 1053,`departamento_id` = 29,`nombre` = 'Villarrica' WHERE `municipio`.`id` = 1053;
UPDATE `municipio` SET `id` = 1054,`departamento_id` = 30,`nombre` = 'Alcalá' WHERE `municipio`.`id` = 1054;
UPDATE `municipio` SET `id` = 1055,`departamento_id` = 30,`nombre` = 'Andalucía' WHERE `municipio`.`id` = 1055;
UPDATE `municipio` SET `id` = 1056,`departamento_id` = 30,`nombre` = 'Ansermanuevo' WHERE `municipio`.`id` = 1056;
UPDATE `municipio` SET `id` = 1057,`departamento_id` = 30,`nombre` = 'Argelia' WHERE `municipio`.`id` = 1057;
UPDATE `municipio` SET `id` = 1058,`departamento_id` = 30,`nombre` = 'Bolívar' WHERE `municipio`.`id` = 1058;
UPDATE `municipio` SET `id` = 1059,`departamento_id` = 30,`nombre` = 'Buenaventura' WHERE `municipio`.`id` = 1059;
UPDATE `municipio` SET `id` = 1060,`departamento_id` = 30,`nombre` = 'Buga' WHERE `municipio`.`id` = 1060;
UPDATE `municipio` SET `id` = 1061,`departamento_id` = 30,`nombre` = 'Bugalagrande' WHERE `municipio`.`id` = 1061;
UPDATE `municipio` SET `id` = 1062,`departamento_id` = 30,`nombre` = 'Caicedonia' WHERE `municipio`.`id` = 1062;
UPDATE `municipio` SET `id` = 1063,`departamento_id` = 30,`nombre` = 'Calima (Darién)' WHERE `municipio`.`id` = 1063;
UPDATE `municipio` SET `id` = 1064,`departamento_id` = 30,`nombre` = 'Calí' WHERE `municipio`.`id` = 1064;
UPDATE `municipio` SET `id` = 1065,`departamento_id` = 30,`nombre` = 'Candelaria' WHERE `municipio`.`id` = 1065;
UPDATE `municipio` SET `id` = 1066,`departamento_id` = 30,`nombre` = 'Cartago' WHERE `municipio`.`id` = 1066;
UPDATE `municipio` SET `id` = 1067,`departamento_id` = 30,`nombre` = 'Dagua' WHERE `municipio`.`id` = 1067;
UPDATE `municipio` SET `id` = 1068,`departamento_id` = 30,`nombre` = 'El Cairo' WHERE `municipio`.`id` = 1068;
UPDATE `municipio` SET `id` = 1069,`departamento_id` = 30,`nombre` = 'El Cerrito' WHERE `municipio`.`id` = 1069;
UPDATE `municipio` SET `id` = 1070,`departamento_id` = 30,`nombre` = 'El Dovio' WHERE `municipio`.`id` = 1070;
UPDATE `municipio` SET `id` = 1071,`departamento_id` = 30,`nombre` = 'El Águila' WHERE `municipio`.`id` = 1071;
UPDATE `municipio` SET `id` = 1072,`departamento_id` = 30,`nombre` = 'Florida' WHERE `municipio`.`id` = 1072;
UPDATE `municipio` SET `id` = 1073,`departamento_id` = 30,`nombre` = 'Ginebra' WHERE `municipio`.`id` = 1073;
UPDATE `municipio` SET `id` = 1074,`departamento_id` = 30,`nombre` = 'Guacarí' WHERE `municipio`.`id` = 1074;
UPDATE `municipio` SET `id` = 1075,`departamento_id` = 30,`nombre` = 'Jamundí' WHERE `municipio`.`id` = 1075;
UPDATE `municipio` SET `id` = 1076,`departamento_id` = 30,`nombre` = 'La Cumbre' WHERE `municipio`.`id` = 1076;
UPDATE `municipio` SET `id` = 1077,`departamento_id` = 30,`nombre` = 'La Unión' WHERE `municipio`.`id` = 1077;
UPDATE `municipio` SET `id` = 1078,`departamento_id` = 30,`nombre` = 'La Victoria' WHERE `municipio`.`id` = 1078;
UPDATE `municipio` SET `id` = 1079,`departamento_id` = 30,`nombre` = 'Obando' WHERE `municipio`.`id` = 1079;
UPDATE `municipio` SET `id` = 1080,`departamento_id` = 30,`nombre` = 'Palmira' WHERE `municipio`.`id` = 1080;
UPDATE `municipio` SET `id` = 1081,`departamento_id` = 30,`nombre` = 'Pradera' WHERE `municipio`.`id` = 1081;
UPDATE `municipio` SET `id` = 1082,`departamento_id` = 30,`nombre` = 'Restrepo' WHERE `municipio`.`id` = 1082;
UPDATE `municipio` SET `id` = 1083,`departamento_id` = 30,`nombre` = 'Riofrío' WHERE `municipio`.`id` = 1083;
UPDATE `municipio` SET `id` = 1084,`departamento_id` = 30,`nombre` = 'Roldanillo' WHERE `municipio`.`id` = 1084;
UPDATE `municipio` SET `id` = 1085,`departamento_id` = 30,`nombre` = 'San Pedro' WHERE `municipio`.`id` = 1085;
UPDATE `municipio` SET `id` = 1086,`departamento_id` = 30,`nombre` = 'Sevilla' WHERE `municipio`.`id` = 1086;
UPDATE `municipio` SET `id` = 1087,`departamento_id` = 30,`nombre` = 'Toro' WHERE `municipio`.`id` = 1087;
UPDATE `municipio` SET `id` = 1088,`departamento_id` = 30,`nombre` = 'Trujillo' WHERE `municipio`.`id` = 1088;
UPDATE `municipio` SET `id` = 1089,`departamento_id` = 30,`nombre` = 'Tulúa' WHERE `municipio`.`id` = 1089;
UPDATE `municipio` SET `id` = 1090,`departamento_id` = 30,`nombre` = 'Ulloa' WHERE `municipio`.`id` = 1090;
UPDATE `municipio` SET `id` = 1091,`departamento_id` = 30,`nombre` = 'Versalles' WHERE `municipio`.`id` = 1091;
UPDATE `municipio` SET `id` = 1092,`departamento_id` = 30,`nombre` = 'Vijes' WHERE `municipio`.`id` = 1092;
UPDATE `municipio` SET `id` = 1093,`departamento_id` = 30,`nombre` = 'Yotoco' WHERE `municipio`.`id` = 1093;
UPDATE `municipio` SET `id` = 1094,`departamento_id` = 30,`nombre` = 'Yumbo' WHERE `municipio`.`id` = 1094;
UPDATE `municipio` SET `id` = 1095,`departamento_id` = 30,`nombre` = 'Zarzal' WHERE `municipio`.`id` = 1095;
UPDATE `municipio` SET `id` = 1096,`departamento_id` = 31,`nombre` = 'Carurú' WHERE `municipio`.`id` = 1096;
UPDATE `municipio` SET `id` = 1097,`departamento_id` = 31,`nombre` = 'Mitú' WHERE `municipio`.`id` = 1097;
UPDATE `municipio` SET `id` = 1098,`departamento_id` = 31,`nombre` = 'Taraira' WHERE `municipio`.`id` = 1098;
UPDATE `municipio` SET `id` = 1099,`departamento_id` = 32,`nombre` = 'Cumaribo' WHERE `municipio`.`id` = 1099;
UPDATE `municipio` SET `id` = 1100,`departamento_id` = 32,`nombre` = 'La Primavera' WHERE `municipio`.`id` = 1100;
UPDATE `municipio` SET `id` = 1101,`departamento_id` = 32,`nombre` = 'Puerto Carreño' WHERE `municipio`.`id` = 1101;
UPDATE `municipio` SET `id` = 1102,`departamento_id` = 32,`nombre` = 'Santa Rosalía' WHERE `municipio`.`id` = 1102;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivelesacademicos`
--

CREATE TABLE IF NOT EXISTS `nivelesacademicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `nivelesacademicos`
--

UPDATE `nivelesacademicos` SET `id` = 1,`nombre` = 'Pre-escolar' WHERE `nivelesacademicos`.`id` = 1;
UPDATE `nivelesacademicos` SET `id` = 2,`nombre` = 'Primaria' WHERE `nivelesacademicos`.`id` = 2;
UPDATE `nivelesacademicos` SET `id` = 3,`nombre` = 'Básica secundaria' WHERE `nivelesacademicos`.`id` = 3;
UPDATE `nivelesacademicos` SET `id` = 4,`nombre` = 'Media académica' WHERE `nivelesacademicos`.`id` = 4;
UPDATE `nivelesacademicos` SET `id` = 5,`nombre` = 'Nocturno' WHERE `nivelesacademicos`.`id` = 5;

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

--
-- Volcado de datos para la tabla `nivelesacademicos_sede`
--

UPDATE `nivelesacademicos_sede` SET `sede_id` = 1,`nivel_id` = 1 WHERE `nivelesacademicos_sede`.`sede_id` = 1 AND `nivelesacademicos_sede`.`nivel_id` = 1;
UPDATE `nivelesacademicos_sede` SET `sede_id` = 1,`nivel_id` = 2 WHERE `nivelesacademicos_sede`.`sede_id` = 1 AND `nivelesacademicos_sede`.`nivel_id` = 2;
UPDATE `nivelesacademicos_sede` SET `sede_id` = 1,`nivel_id` = 3 WHERE `nivelesacademicos_sede`.`sede_id` = 1 AND `nivelesacademicos_sede`.`nivel_id` = 3;

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
  UNIQUE KEY `UNIQ_6FFCB21A9276E6C` (`tipo_id`),
  UNIQUE KEY `UNIQ_6FFCB219F5A440B` (`estado_id`),
  UNIQUE KEY `UNIQ_6FFCB21A76ED395` (`user_id`),
  UNIQUE KEY `UNIQ_6FFCB2187CB4A1F` (`curso_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `notificaciones`
--

UPDATE `notificaciones` SET `id` = 1,`tipo_id` = 3,`estado_id` = 1,`asunto` = 'Noti',`mensaje` = 'exampl',`date_create` = '2012-11-18 10:14:30',`user_id` = 3,`curso_id` = NULL WHERE `notificaciones`.`id` = 1;

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
  UNIQUE KEY `UNIQ_7316C4ED9F5A440B` (`estado_id`),
  KEY `IDX_7316C4EDEC34184E` (`anio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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

UPDATE `rangocuantitativo` SET `id` = 1,`escalanacional_id` = NULL,`limite1` = 0,`limite2` = 0,`limite3` = 0,`limite4` = 0 WHERE `rangocuantitativo`.`id` = 1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `roles`
--

UPDATE `roles` SET `id` = 1,`nombre` = 'ROLE_USER' WHERE `roles`.`id` = 1;
UPDATE `roles` SET `id` = 2,`nombre` = 'ROLE_ADMIN' WHERE `roles`.`id` = 2;
UPDATE `roles` SET `id` = 3,`nombre` = 'ROLE_SUPER_ADMIN' WHERE `roles`.`id` = 3;
UPDATE `roles` SET `id` = 4,`nombre` = 'ROLE_DOCENTE' WHERE `roles`.`id` = 4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede`
--

CREATE TABLE IF NOT EXISTS `sede` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capacidad` int(11) NOT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rector` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secretaria` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institucion_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2A9BE2D1B239FBC6` (`institucion_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `sede`
--

UPDATE `sede` SET `id` = 1,`nombre` = 'ejemplo',`capacidad` = 123,`direccion` = 'ejemplo',`telefono` = 'ejemplo',`fax` = 'ejemplo',`email` = 'ejemplo',`rector` = 'ejemplo',`secretaria` = 'ejemplo',`institucion_id` = 1 WHERE `sede`.`id` = 1;

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

UPDATE `tipo_documento` SET `id` = 1,`nombre` = 'Cédula de Ciudadania' WHERE `tipo_documento`.`id` = 1;
UPDATE `tipo_documento` SET `id` = 2,`nombre` = 'Tarjeta de Identidad' WHERE `tipo_documento`.`id` = 2;

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

UPDATE `tipo_notificacion` SET `id` = 1,`nombre` = 'Institucion' WHERE `tipo_notificacion`.`id` = 1;
UPDATE `tipo_notificacion` SET `id` = 2,`nombre` = 'Grupo' WHERE `tipo_notificacion`.`id` = 2;
UPDATE `tipo_notificacion` SET `id` = 3,`nombre` = 'Persona' WHERE `tipo_notificacion`.`id` = 3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `municipio_id` int(11) DEFAULT NULL,
  `tipodocumento_id` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellido_materno` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_nacimiento` datetime NOT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lugar_nacimiento` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nmr_documento` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sexo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institucion_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`),
  KEY `IDX_8D93D64958BC1BE0` (`municipio_id`),
  KEY `IDX_8D93D6492E595373` (`tipodocumento_id`),
  KEY `IDX_8D93D649B239FBC6` (`institucion_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `user`
--

UPDATE `user` SET `id` = 1,`username` = 'cloudadmin',`password` = 'y7q1ig71pslTX3iWrqgQv9SDGZYZFm6dJbajzTeYy26CM5BqPSzO2ZSdR19lwdkBW197/+J6YXWlCJQPskKiWQ==',`salt` = '7eb3c4430aa57bdbd36710028e0089ef',`municipio_id` = NULL,`tipodocumento_id` = NULL,`nombre` = '',`apellido` = '',`apellido_materno` = '',`fecha_nacimiento` = '0000-00-00 00:00:00',`direccion` = '',`lugar_nacimiento` = '',`nmr_documento` = '',`sexo` = '',`email` = '',`avatar_url` = '',`institucion_id` = NULL WHERE `user`.`id` = 1;
UPDATE `user` SET `id` = 3,`username` = 'ZOCPKOZZLO',`password` = 'BrihVuMtkhSXuKioci4RuWwuCEgbrnZ+/AFnSEjuFdJgW//W3sxRRKO3XUXoLJ2WkjeBNGa5I0O2wRlu0Z0eIw==',`salt` = '58ffa8a4694ac5ffc7fea4b1f8bd0350',`municipio_id` = 91,`tipodocumento_id` = 1,`nombre` = 'Amado',`apellido` = 'Ramos',`apellido_materno` = 'Arboleda',`fecha_nacimiento` = '2012-11-28 00:00:00',`direccion` = 'Cr 8 N 40 - 50',`lugar_nacimiento` = 'Monteria',`nmr_documento` = '1067901140',`sexo` = 'm',`email` = 'amado0529@gmail.com',`avatar_url` = 'imagen.jpg',`institucion_id` = 1 WHERE `user`.`id` = 3;

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

UPDATE `user_role` SET `user_id` = 1,`role_id` = 3 WHERE `user_role`.`user_id` = 1 AND `user_role`.`role_id` = 3;
UPDATE `user_role` SET `user_id` = 3,`role_id` = 2 WHERE `user_role`.`user_id` = 3 AND `user_role`.`role_id` = 2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `FK_BFA6FE826E992D9` FOREIGN KEY (`jornada_id`) REFERENCES `jornada` (`id`),
  ADD CONSTRAINT `FK_BFA6FE8DA3426AE` FOREIGN KEY (`nivel_id`) REFERENCES `nivelesacademicos` (`id`),
  ADD CONSTRAINT `FK_BFA6FE8E19F41BF` FOREIGN KEY (`sede_id`) REFERENCES `sede` (`id`);

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
-- Filtros para la tabla `periodo`
--
ALTER TABLE `periodo`
  ADD CONSTRAINT `FK_7316C4ED9F5A440B` FOREIGN KEY (`estado_id`) REFERENCES `estado_periodo` (`id`),
  ADD CONSTRAINT `FK_7316C4EDEC34184E` FOREIGN KEY (`anio_id`) REFERENCES `anio` (`id`);

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
  ADD CONSTRAINT `FK_8D93D6492E595373` FOREIGN KEY (`tipodocumento_id`) REFERENCES `tipo_documento` (`id`),
  ADD CONSTRAINT `FK_8D93D64958BC1BE0` FOREIGN KEY (`municipio_id`) REFERENCES `municipio` (`id`),
  ADD CONSTRAINT `FK_8D93D649B239FBC6` FOREIGN KEY (`institucion_id`) REFERENCES `institucion` (`id`);

--
-- Filtros para la tabla `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK_2DE8C6A3A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_2DE8C6A3D60322AC` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
