-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-09-2026 a las 01:06:01
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
-- Base de datos: `practica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(5) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `fecha_de_ingreso` date NOT NULL,
  `nota` float NOT NULL,
  `idcursos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `fecha_de_ingreso`, `nota`, `idcursos`) VALUES
(1, 'Maria', '2020-09-01', 3.5, 1),
(2, 'Andrea', '2026-09-04', 4, 2),
(3, 'Salome', '2023-11-01', 4.8, 3),
(5, 'Oscar', '2025-09-10', 4.5, 1),
(6, 'Camila', '2023-10-10', 3, 2),
(7, 'Andrea', '2023-10-10', 3, 2),
(8, 'Pedro', '2021-01-10', 2.8, 3),
(9, 'Rosa', '2025-10-10', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `idcursos` int(5) NOT NULL,
  `nombre_curso` varchar(100) NOT NULL,
  `duración_meses` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`idcursos`, `nombre_curso`, `duración_meses`) VALUES
(1, 'Bases de datos', 3),
(2, 'Fundamentos de Python', 6),
(3, 'Inglés 1', 3);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `promedio1`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `promedio1` (
`nombre_curso` varchar(100)
,`Promedio de notas` double(19,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `resumenalumnos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `resumenalumnos` (
`nombre` varchar(100)
,`nota` float
,`nombre_curso` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `promedio1`
--
DROP TABLE IF EXISTS `promedio1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `promedio1`  AS SELECT `c`.`nombre_curso` AS `nombre_curso`, round(avg(`a`.`nota`),2) AS `Promedio de notas` FROM (`alumnos` `a` join `cursos` `c` on(`a`.`idcursos` = `c`.`idcursos`)) GROUP BY `c`.`nombre_curso` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `resumenalumnos`
--
DROP TABLE IF EXISTS `resumenalumnos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `resumenalumnos`  AS SELECT `a`.`nombre` AS `nombre`, `a`.`nota` AS `nota`, `c`.`nombre_curso` AS `nombre_curso` FROM (`alumnos` `a` join `cursos` `c` on(`c`.`idcursos` = `a`.`idcursos`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`idcursos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `idcursos` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`idcursos`) REFERENCES `alumnos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
