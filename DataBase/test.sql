

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tablas `menjase` prueba
--

CREATE TABLE `menjase` (
  `id_mensajes` int(7) NOT NULL,
  `texto_mensaje` varchar(200) DEFAULT NULL,
  `fecha_mensaje` timestamp NULL DEFAULT NULL,
  `id_usuario` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(2) NOT NULL,
  `nombre_completo` varchar(40) DEFAULT NULL,
  `correo` varchar(40) DEFAULT NULL,
  `celular` bigint(10) DEFAULT NULL,
  `clave` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `menjase`
--
ALTER TABLE `menjase`
  ADD PRIMARY KEY (`id_mensajes`),
  ADD KEY `id usuario` (`id_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(2) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `menjase`
--
ALTER TABLE `menjase`
  ADD CONSTRAINT `menjase_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
