
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE `mensaje` (
  `id_mensaje` int(7) NOT NULL,
  `texto_mensaje` varchar(200) DEFAULT NULL,
  `fecha_mensaje` timestamp NULL DEFAULT current_timestamp(),
  `id_usuario` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mensaje`
--

INSERT INTO `mensaje` (`id_mensaje`, `texto_mensaje`, `fecha_mensaje`, `id_usuario`) VALUES
(1, 'prueba', '2020-11-11 23:52:09', 1),
(2, 'prueba 3\r\n', '2020-11-11 23:55:06', 1),
(3, 'prueba 4', '2020-11-11 23:55:18', 1),
(4, 'Hola compañeros este es un mensaje de amistad ', '2020-11-11 23:56:36', 1),
(5, 'mas que un mensaje ', '2020-11-11 23:58:40', 3),
(6, 'Lo mejor de la U......', '2020-11-11 23:59:06', 3),
(7, 'Hola compañeros ', '2020-11-12 00:02:51', 5),
(8, 'prueba  2', '2020-11-12 00:33:45', 5);

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
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre_completo`, `correo`, `celular`, `clave`) VALUES
(1, 'Jorge Correa', 'jcorrea@uc.edu.co', 3176491084, '1322b3d149533755ccd3835cc3b7ca20'),
(2, 'Diana Castaño', 'dianamilenac2003@hotmail.com', 3173726379, '89a37d335252117b93dfae1b70a1229e'),
(3, 'Juan Perez', 'prueba@gmail', 3171234567, '89a37d335252117b93dfae1b70a1229e'),
(4, 'Carlos Palacios', 'carlos@gmail.co', 3173216549, '89a37d335252117b93dfae1b70a1229e'),
(5, 'JorgeAndresCorreaBedoya', 'jorgecorrea98@hotmail.com', 3176491083, '89a37d335252117b93dfae1b70a1229e');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`id_mensaje`),
  ADD KEY `id usuario` (`id_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `id_mensaje` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD CONSTRAINT `mensaje_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
