-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-09-2026 a las 03:29:58
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `matriculas66`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `idcarrera` int(11) NOT NULL,
  `nombrecarrera` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`idcarrera`, `nombrecarrera`) VALUES
(1, 'Ingenieria de Sistemas'),
(2, 'Tecnologia en Desarrollo de Sotware'),
(3, 'Administración de empresas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `idcurso` int(11) NOT NULL,
  `nombrecurso` varchar(50) NOT NULL,
  `creditos` int(11) NOT NULL,
  `idprofesor` varchar(15) NOT NULL
) ;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`idcurso`, `nombrecurso`, `creditos`, `idprofesor`) VALUES
(1, 'Programación II', 3, '331P'),
(2, 'Ingeniería de Software', 2, '332P'),
(3, 'Sistemas Operativos', 2, '333P'),
(4, 'Redes de Computadores', 2, '334P'),
(5, 'Algoritmos y Estructuras de Datos', 2, '331P'),
(6, 'Desarrollo de Aplicaciones Móviles', 2, '331P'),
(7, 'Inteligencia Artificial', 2, '332P'),
(8, 'Seguridad Informática', 2, '332P'),
(9, 'Arquitectura de Computadores', 2, '333P'),
(10, 'Análisis de Sistemas', 2, '334P'),
(11, 'Electricidad_1', 5, '331P');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallematricula`
--

CREATE TABLE `detallematricula` (
  `idmatricula` int(11) NOT NULL,
  `idcurso` int(11) NOT NULL,
  `nota` decimal(4,2) DEFAULT NULL
) ;

--
-- Volcado de datos para la tabla `detallematricula`
--

INSERT INTO `detallematricula` (`idmatricula`, `idcurso`, `nota`) VALUES
(1, 1, 4.50),
(1, 2, 4.00),
(1, 3, 3.80),
(1, 5, 4.70),
(2, 1, 4.20),
(2, 4, 4.70),
(2, 6, 3.50),
(3, 1, 3.50),
(3, 2, 4.10),
(3, 4, 2.80),
(3, 7, 4.60),
(3, 9, 3.90),
(4, 3, 4.60),
(4, 8, 3.20),
(5, 1, 2.80),
(5, 5, 4.50),
(5, 7, 3.20),
(5, 10, 4.10),
(6, 2, 4.80),
(6, 6, 2.50),
(6, 8, 3.70),
(7, 3, 1.90),
(7, 4, 4.60),
(7, 9, 4.60),
(7, 10, 3.40),
(8, 1, 4.20),
(8, 4, 2.10),
(9, 2, 3.50),
(9, 5, 1.80),
(9, 8, 4.30),
(10, 3, 2.70);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `idestudiante` varchar(15) NOT NULL,
  `nombrestudiante` varchar(50) NOT NULL,
  `apellidoestudiante` varchar(50) NOT NULL,
  `edadestudiante` int(11) NOT NULL,
  `celularestudiante` varchar(15) NOT NULL,
  `dirreccionestudiante` varchar(50) NOT NULL,
  `idcarrera` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`idestudiante`, `nombrestudiante`, `apellidoestudiante`, `edadestudiante`, `celularestudiante`, `dirreccionestudiante`, `idcarrera`) VALUES
('1001E', 'Andrea', 'Gómez', 20, '3004567891', 'Carrera 45 #12-30', 1),
('1002E', 'Carlos', 'Pérez', 22, '3015678234', 'Calle 30 #45-20', 2),
('1003E', 'María', 'Rodríguez', 19, '3026789345', 'Carrera 60 #25-15', 3),
('1004E', 'Juan', 'Martínez', 24, '3037891456', 'Calle 50 #32-18', 1),
('1005E', 'Laura', 'Hernández', 21, '3048912567', 'Carrera 70 #40-25', 2),
('1006E', 'Santiago', 'López', 23, '3059123678', 'Calle 10 #55-40', 3),
('1007E', 'Valentina', 'Torres', 18, '3061234789', 'Carrera 35 #20-10', 1),
('1008E', 'Daniel', 'Ramírez', 25, '3072345890', 'Calle 80 #48-32', 2),
('1009E', 'Camila', 'Vargas', 20, '3083456901', 'Carrera 50 #15-45', 3),
('1010E', 'Felipe', 'Castro', 26, '3023549364', 'Calle 25 #60-12', 1),
('1011E', 'Sofía', 'Moreno', 22, '3105678123', 'Carrera 40 #35-28', 2),
('1012E', 'Mateo', 'Jiménez', 19, '3116789234', 'Calle 65 #30-16', 3),
('1013E', 'Paula', 'Ríos', 23, '3127890345', 'Carrera 55 #22-35', 1),
('1014E', 'Nicolás', 'Restrepo', 21, '3138901456', 'Calle 42 #70-20', 2),
('1015E', 'Isabella', 'Sánchez', 20, '3149012567', 'Carrera 30 #18-40', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matriculas`
--

CREATE TABLE `matriculas` (
  `idmatricula` int(11) NOT NULL,
  `idestudiante` varchar(15) NOT NULL,
  `semestre` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `matriculas`
--

INSERT INTO `matriculas` (`idmatricula`, `idestudiante`, `semestre`) VALUES
(1, '1001E', '2026-2'),
(2, '1002E', '2026-2'),
(3, '1003E', '2026-2'),
(4, '1004E', '2026-2'),
(5, '1005E', '2026-2'),
(6, '1006E', '2026-2'),
(7, '1007E', '2026-2'),
(8, '1008E', '2026-2'),
(9, '1009E', '2026-2'),
(10, '1010E', '2026-2'),
(11, '1001E', '2026-2'),
(12, '1001E', '2026-2'),
(13, '1002E', '2026-2'),
(14, '1003E', '2026-2'),
(15, '1004E', '2026-2'),
(16, '1005E', '2026-2'),
(17, '1006E', '2026-2'),
(18, '1007E', '2026-2'),
(19, '1008E', '2026-2'),
(20, '1009E', '2026-2'),
(21, '1010E', '2026-2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `idprofesor` varchar(15) NOT NULL,
  `nombreprofesor` varchar(50) NOT NULL,
  `apellidoprofesor` varchar(50) NOT NULL,
  `celularprofesor` varchar(15) NOT NULL,
  `oficinaprofesor` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`idprofesor`, `nombreprofesor`, `apellidoprofesor`, `celularprofesor`, `oficinaprofesor`) VALUES
('331P', 'Edison', 'Suarez', '3235678987', '31A'),
('332P', 'Camila', 'Diaz', '3124789867', '32A'),
('333P', 'Salome', 'Lopez', '3025678787', '33A'),
('334P', 'Isabela', 'Gomez', '3045768987', '34A'),
('335P', 'Juan', 'Restrepo', '3108907656', '35A');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`idcarrera`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`idcurso`),
  ADD KEY `idprofesor` (`idprofesor`);

--
-- Indices de la tabla `detallematricula`
--
ALTER TABLE `detallematricula`
  ADD PRIMARY KEY (`idmatricula`,`idcurso`),
  ADD KEY `idcurso` (`idcurso`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`idestudiante`),
  ADD KEY `idcarrera` (`idcarrera`);

--
-- Indices de la tabla `matriculas`
--
ALTER TABLE `matriculas`
  ADD PRIMARY KEY (`idmatricula`),
  ADD KEY `idestudiante` (`idestudiante`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`idprofesor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `idcarrera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `idcurso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `matriculas`
--
ALTER TABLE `matriculas`
  MODIFY `idmatricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`idprofesor`) REFERENCES `profesores` (`idprofesor`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `detallematricula`
--
ALTER TABLE `detallematricula`
  ADD CONSTRAINT `detallematricula_ibfk_1` FOREIGN KEY (`idmatricula`) REFERENCES `matriculas` (`idmatricula`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detallematricula_ibfk_2` FOREIGN KEY (`idcurso`) REFERENCES `cursos` (`idcurso`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `estudiantes_ibfk_1` FOREIGN KEY (`idcarrera`) REFERENCES `carreras` (`idcarrera`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `matriculas`
--
ALTER TABLE `matriculas`
  ADD CONSTRAINT `matriculas_ibfk_1` FOREIGN KEY (`idestudiante`) REFERENCES `estudiantes` (`idestudiante`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
