-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-10-2013 a las 04:59:35
-- Versión del servidor: 5.5.8
-- Versión de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `ru`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE IF NOT EXISTS `comentario` (
  `COMENTARIO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COMENTARIO` varchar(255) NOT NULL,
  `FECHA` date NOT NULL,
  `PADRE_ID` varchar(255) NOT NULL,
  `USUARIO_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`COMENTARIO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `comentario`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requerimiento`
--

CREATE TABLE IF NOT EXISTS `requerimiento` (
  `REQUERIMIENTO_ID` varchar(255) NOT NULL,
  `DESCRIPCION` int(11) NOT NULL,
  `FECHACREACION` int(11) NOT NULL,
  `VALOR` int(11) NOT NULL,
  `TIPO` int(11) NOT NULL,
  `USUARIO_ID` int(11) NOT NULL,
  PRIMARY KEY (`REQUERIMIENTO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `requerimiento`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE IF NOT EXISTS `rol` (
  `ROL_ID` int(11) NOT NULL,
  `NOMBRE` varchar(255) NOT NULL,
  PRIMARY KEY (`ROL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `rol`
--

INSERT INTO `rol` (`ROL_ID`, `NOMBRE`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_usuario`
--

CREATE TABLE IF NOT EXISTS `rol_usuario` (
  `USUARIO_ID` varchar(255) NOT NULL,
  `ROL_ID` int(11) NOT NULL,
  PRIMARY KEY (`USUARIO_ID`,`ROL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `rol_usuario`
--

INSERT INTO `rol_usuario` (`USUARIO_ID`, `ROL_ID`) VALUES
('AVELASCO', 1),
('DSILVA', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sprint`
--

CREATE TABLE IF NOT EXISTS `sprint` (
  `PRODUCTO` varchar(255) NOT NULL,
  `RELEASE_NUMBER` int(11) NOT NULL,
  `SPRINT_NUMBER` int(11) NOT NULL,
  `FECHA` date NOT NULL,
  `USUARIO_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`PRODUCTO`,`RELEASE_NUMBER`,`SPRINT_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `sprint`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `USUARIO_ID` varchar(255) NOT NULL,
  `NOMBRE` varchar(255) NOT NULL,
  `PATERNO` varchar(255) NOT NULL,
  `MATERNO` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  PRIMARY KEY (`USUARIO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`USUARIO_ID`, `NOMBRE`, `PATERNO`, `MATERNO`, `PASSWORD`) VALUES
('AVELASCO', 'ALLEN JOSEPH', 'VELASCO', 'ARIAS', 'e10adc3949ba59abbe56e057f20f883e'),
('DSILVA', 'DANIELA', 'SILVA', 'YESANG', 'e10adc3949ba59abbe56e057f20f883e');
