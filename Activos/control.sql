-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-07-2020 a las 04:03:26
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `control`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora_registro`
--

CREATE TABLE `bitacora_registro` (
  `id_bitacora` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_ubicacion` int(11) NOT NULL,
  `id_estado_usuario` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bitacora_registro`
--

INSERT INTO `bitacora_registro` (`id_bitacora`, `id_usuario`, `id_ubicacion`, `id_estado_usuario`, `fecha`) VALUES
(5, 1, 1, 1, '2020-02-13'),
(7, 1, 1, 3, '2020-07-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `id_tipo_documento` int(11) NOT NULL,
  `documento` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `contraseña` varchar(45) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `telefono` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `id_tipo_documento`, `documento`, `correo`, `contraseña`, `id_rol`, `telefono`) VALUES
(1, 'Andres', 1, '1006737203', 'cliente@gmail.com', 'SenaPorSiempre', 1, '3134567890');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id_curso` int(11) NOT NULL,
  `numero_curso` int(11) NOT NULL,
  `curso` varchar(45) NOT NULL,
  `id_nivel_curso` int(11) NOT NULL,
  `id_jornada_curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id_curso`, `numero_curso`, `curso`, `id_nivel_curso`, `id_jornada_curso`) VALUES
(1, 1835768, 'ADSI', 2, 2),
(7, 1256326, 'Administración', 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados_usuarios`
--

CREATE TABLE `estados_usuarios` (
  `id_estado` int(11) NOT NULL,
  `estado` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estados_usuarios`
--

INSERT INTO `estados_usuarios` (`id_estado`, `estado`) VALUES
(1, 'Entró'),
(3, 'Salió');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornadas_cursos`
--

CREATE TABLE `jornadas_cursos` (
  `id_jornada_curso` int(11) NOT NULL,
  `jornada_curso` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `jornadas_cursos`
--

INSERT INTO `jornadas_cursos` (`id_jornada_curso`, `jornada_curso`) VALUES
(1, 'Tarde'),
(2, 'Mañana'),
(5, 'Noche');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_clientes`
--

CREATE TABLE `log_clientes` (
  `id_log_cliente` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `novedad` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `log_clientes`
--

INSERT INTO `log_clientes` (`id_log_cliente`, `id_cliente`, `fecha`, `novedad`) VALUES
(1, 1, '2020-12-10', 'Eliminó un curso'),
(2, 1, '2020-01-30', 'Actualizó el registro de un curso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveles_cursos`
--

CREATE TABLE `niveles_cursos` (
  `id_nivel_curso` int(11) NOT NULL,
  `nivel_curso` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `niveles_cursos`
--

INSERT INTO `niveles_cursos` (`id_nivel_curso`, `nivel_curso`) VALUES
(1, 'Técnico'),
(2, 'Tecnólogo'),
(3, 'Complementario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL,
  `rol` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `rol`) VALUES
(1, 'Estudiante'),
(2, 'Vigilante'),
(3, 'Administrador'),
(4, 'Aseadora');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE `sedes` (
  `id_sede` int(11) NOT NULL,
  `sede` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sedes`
--

INSERT INTO `sedes` (`id_sede`, `sede`, `direccion`, `telefono`) VALUES
(1, 'La Modelo', 'Cra # - ', '3135673434'),
(2, 'Central', 'Cll # -', '3121314567');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_documentos`
--

CREATE TABLE `tipos_documentos` (
  `id_tipo_documento` int(11) NOT NULL,
  `tipo_documento` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipos_documentos`
--

INSERT INTO `tipos_documentos` (`id_tipo_documento`, `tipo_documento`) VALUES
(1, 'Cédula de ciudadanía'),
(2, 'Tarjeta de identidad'),
(3, 'Pasaporte'),
(7, 'Acta de nacimiento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicaciones`
--

CREATE TABLE `ubicaciones` (
  `id_ubicacion` int(11) NOT NULL,
  `ubicacion` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `id_sede` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ubicaciones`
--

INSERT INTO `ubicaciones` (`id_ubicacion`, `ubicacion`, `descripcion`, `id_sede`) VALUES
(1, 'Biblioteca', 'Piso 1, Bloque 3', 1),
(4, 'Salón de bilingüismo ', 'Piso 2, Aula 7', 2),
(5, 'Bienestar al aprendiz', 'Piso 3, Boque 1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `id_tipo_documento` int(11) NOT NULL,
  `documento` varchar(45) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `id_tipo_documento`, `documento`, `id_rol`, `id_estado`, `id_curso`) VALUES
(1, 'Pepito', 1, '1004634045', 1, 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bitacora_registro`
--
ALTER TABLE `bitacora_registro`
  ADD PRIMARY KEY (`id_bitacora`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_ubicacion` (`id_ubicacion`),
  ADD KEY `id_estado_usuario` (`id_estado_usuario`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `id_tipo_documento` (`id_tipo_documento`),
  ADD KEY `id_rol` (`id_rol`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_curso`),
  ADD KEY `id_nivel_curso` (`id_nivel_curso`),
  ADD KEY `id_jornada_curso` (`id_jornada_curso`);

--
-- Indices de la tabla `estados_usuarios`
--
ALTER TABLE `estados_usuarios`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `jornadas_cursos`
--
ALTER TABLE `jornadas_cursos`
  ADD PRIMARY KEY (`id_jornada_curso`);

--
-- Indices de la tabla `log_clientes`
--
ALTER TABLE `log_clientes`
  ADD PRIMARY KEY (`id_log_cliente`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `niveles_cursos`
--
ALTER TABLE `niveles_cursos`
  ADD PRIMARY KEY (`id_nivel_curso`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`id_sede`);

--
-- Indices de la tabla `tipos_documentos`
--
ALTER TABLE `tipos_documentos`
  ADD PRIMARY KEY (`id_tipo_documento`);

--
-- Indices de la tabla `ubicaciones`
--
ALTER TABLE `ubicaciones`
  ADD PRIMARY KEY (`id_ubicacion`),
  ADD KEY `id_sede` (`id_sede`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_tipo_documento` (`id_tipo_documento`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_estado` (`id_estado`),
  ADD KEY `id_curso` (`id_curso`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bitacora_registro`
--
ALTER TABLE `bitacora_registro`
  MODIFY `id_bitacora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `estados_usuarios`
--
ALTER TABLE `estados_usuarios`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `jornadas_cursos`
--
ALTER TABLE `jornadas_cursos`
  MODIFY `id_jornada_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `log_clientes`
--
ALTER TABLE `log_clientes`
  MODIFY `id_log_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `niveles_cursos`
--
ALTER TABLE `niveles_cursos`
  MODIFY `id_nivel_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `sedes`
--
ALTER TABLE `sedes`
  MODIFY `id_sede` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipos_documentos`
--
ALTER TABLE `tipos_documentos`
  MODIFY `id_tipo_documento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `ubicaciones`
--
ALTER TABLE `ubicaciones`
  MODIFY `id_ubicacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `bitacora_registro`
--
ALTER TABLE `bitacora_registro`
  ADD CONSTRAINT `bitacora_registro_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `bitacora_registro_ibfk_2` FOREIGN KEY (`id_ubicacion`) REFERENCES `ubicaciones` (`id_ubicacion`),
  ADD CONSTRAINT `bitacora_registro_ibfk_3` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `bitacora_registro_ibfk_4` FOREIGN KEY (`id_ubicacion`) REFERENCES `ubicaciones` (`id_ubicacion`),
  ADD CONSTRAINT `bitacora_registro_ibfk_5` FOREIGN KEY (`id_estado_usuario`) REFERENCES `estados_usuarios` (`id_estado`);

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`id_tipo_documento`) REFERENCES `tipos_documentos` (`id_tipo_documento`),
  ADD CONSTRAINT `clientes_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`);

--
-- Filtros para la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`id_nivel_curso`) REFERENCES `niveles_cursos` (`id_nivel_curso`),
  ADD CONSTRAINT `cursos_ibfk_2` FOREIGN KEY (`id_jornada_curso`) REFERENCES `jornadas_cursos` (`id_jornada_curso`);

--
-- Filtros para la tabla `log_clientes`
--
ALTER TABLE `log_clientes`
  ADD CONSTRAINT `log_clientes_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `log_clientes_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`);

--
-- Filtros para la tabla `ubicaciones`
--
ALTER TABLE `ubicaciones`
  ADD CONSTRAINT `ubicaciones_ibfk_1` FOREIGN KEY (`id_sede`) REFERENCES `sedes` (`id_sede`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_tipo_documento`) REFERENCES `tipos_documentos` (`id_tipo_documento`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`),
  ADD CONSTRAINT `usuarios_ibfk_3` FOREIGN KEY (`id_tipo_documento`) REFERENCES `tipos_documentos` (`id_tipo_documento`),
  ADD CONSTRAINT `usuarios_ibfk_4` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`),
  ADD CONSTRAINT `usuarios_ibfk_5` FOREIGN KEY (`id_estado`) REFERENCES `estados_usuarios` (`id_estado`),
  ADD CONSTRAINT `usuarios_ibfk_6` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
