-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-12-2024 a las 16:54:29
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
-- Base de datos: `proyecto_f`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Usuario_idUsuario` varchar(15) NOT NULL,
  `dir_correo` varchar(45) NOT NULL,
  `Dir_fisica` varchar(45) DEFAULT NULL,
  `Fecha_nac` datetime NOT NULL,
  `Pref_contacte` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`Usuario_idUsuario`, `dir_correo`, `Dir_fisica`, `Fecha_nac`, `Pref_contacte`) VALUES
('U3', 'luis.martinez@example.com', 'Calle 123', '1990-07-20 00:00:00', 'Email'),
('U5', 'marta.lopez@example.com', 'Avenida 456', '1985-09-15 00:00:00', 'Teléfono'),
('U6', 'sofia.hernandez@example.com', 'Carrera 789', '1995-04-10 00:00:00', 'WhatsApp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `Usuario_idUsuario` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `Fecha_ingr` datetime NOT NULL,
  `Salario` int(11) NOT NULL,
  `login` int(11) NOT NULL,
  `Usuario_idUsuario1` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`Usuario_idUsuario`, `password`, `Fecha_ingr`, `Salario`, `login`, `Usuario_idUsuario1`) VALUES
('U2', 'pass123', '2022-05-15 00:00:00', 50000, 1, 'U2'),
('U4', 'secure456', '2023-03-10 00:00:00', 60000, 1, 'U4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `idFactura` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `iva` int(11) NOT NULL,
  `Subtotal` decimal(20,2) NOT NULL,
  `total` int(11) NOT NULL,
  `observacion` text DEFAULT NULL,
  `clientes_Usuario_idUsuario` varchar(15) DEFAULT NULL,
  `empleados_Usuario_idUsuario` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`idFactura`, `fecha`, `iva`, `Subtotal`, `total`, `observacion`, `clientes_Usuario_idUsuario`, `empleados_Usuario_idUsuario`) VALUES
(1, '2024-12-01', 16, 100.00, 116, 'Compra de frenos y llantas', 'U3', 'U2'),
(2, '2024-12-02', 16, 200.00, 232, 'Compra de batería', 'U3', 'U4'),
(3, '2024-12-03', 16, 300.00, 348, 'Compra de repuestos varios', 'U5', 'U2'),
(4, '2024-12-04', 16, 150.00, 174, 'Filtro de aire', 'U6', 'U4'),
(5, '2024-12-05', 16, 400.00, 464, 'Compra de suspensiones', 'U6', 'U4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelos`
--

CREATE TABLE `modelos` (
  `idmodelos` int(11) NOT NULL,
  `modelo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `modelos`
--

INSERT INTO `modelos` (`idmodelos`, `modelo`) VALUES
(1, 'Modelo A'),
(2, 'Modelo B'),
(3, 'Modelo C'),
(4, 'Modelo D'),
(5, 'Modelo E');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `repuesto`
--

CREATE TABLE `repuesto` (
  `cod_producto` varchar(15) NOT NULL,
  `desc_prod` varchar(100) DEFAULT NULL,
  `cantidad_existente` int(11) NOT NULL,
  `stock_max` int(11) NOT NULL,
  `stock_min` int(11) NOT NULL,
  `estado_prod` tinyint(4) NOT NULL,
  `Tipo_repuesto_idTipoRepuesto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `repuesto`
--

INSERT INTO `repuesto` (`cod_producto`, `desc_prod`, `cantidad_existente`, `stock_max`, `stock_min`, `estado_prod`, `Tipo_repuesto_idTipoRepuesto`) VALUES
('P1', 'Freno de disco', 50, 100, 10, 1, 1),
('P10', 'Rodamientos metálicos', 22, 40, 10, 1, 2),
('P2', 'Llanta radial', 30, 50, 5, 1, 1),
('P3', 'Filtro de aire', 20, 40, 5, 1, 2),
('P4', 'Batería de litio', 10, 20, 2, 1, 1),
('P5', 'Rodamientos cerámicos', 25, 50, 10, 1, 1),
('P6', 'Freno ABS', 40, 60, 5, 1, 3),
('P7', 'Suspensión hidráulica', 15, 30, 5, 1, 1),
('P8', 'Llanta RunFlat', 12, 25, 5, 1, 3),
('P9', 'Batería de ácido', 18, 35, 5, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` varchar(20) NOT NULL,
  `tipo_rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `tipo_rol`) VALUES
('R1', 'Administrador'),
('R2', 'Empleado'),
('R3', 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_repuesto`
--

CREATE TABLE `tipo_repuesto` (
  `idTipoRepuesto` int(11) NOT NULL,
  `Freno` varchar(45) DEFAULT NULL,
  `Llantas` varchar(45) DEFAULT NULL,
  `Suspensión` varchar(45) DEFAULT NULL,
  `Filtros` varchar(45) DEFAULT NULL,
  `Batería` varchar(45) DEFAULT NULL,
  `Rodamientos` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_repuesto`
--

INSERT INTO `tipo_repuesto` (`idTipoRepuesto`, `Freno`, `Llantas`, `Suspensión`, `Filtros`, `Batería`, `Rodamientos`) VALUES
(1, 'Disco', 'Radial', 'Hidráulica', 'Aire', 'Litio', 'Cerámicos'),
(2, 'Tambor', 'Diagonal', 'Neumática', 'Aceite', 'Ácido', 'Metálicos'),
(3, 'ABS', 'RunFlat', 'Mecánica', 'Carbono', 'Gel', 'Sintéticos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` varchar(15) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellido` varchar(20) NOT NULL,
  `Telefono` varchar(10) DEFAULT NULL,
  `Rol_id_rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `Nombre`, `Apellido`, `Telefono`, `Rol_id_rol`) VALUES
('U1', 'Juan', 'Pérez', '1234567890', 'R1'),
('U2', 'Ana', 'Gómez', '0987654321', 'R2'),
('U3', 'Luis', 'Martínez', '1122334455', 'R3'),
('U4', 'Carlos', 'Ramírez', '2233445566', 'R2'),
('U5', 'Marta', 'López', '6677889900', 'R3'),
('U6', 'Sofía', 'Hernández', '7788990011', 'R3');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Usuario_idUsuario`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`Usuario_idUsuario`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`idFactura`),
  ADD KEY `clientes_Usuario_idUsuario` (`clientes_Usuario_idUsuario`),
  ADD KEY `empleados_Usuario_idUsuario` (`empleados_Usuario_idUsuario`);

--
-- Indices de la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD PRIMARY KEY (`idmodelos`);

--
-- Indices de la tabla `repuesto`
--
ALTER TABLE `repuesto`
  ADD PRIMARY KEY (`cod_producto`),
  ADD KEY `Tipo_repuesto_idTipoRepuesto` (`Tipo_repuesto_idTipoRepuesto`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `tipo_repuesto`
--
ALTER TABLE `tipo_repuesto`
  ADD PRIMARY KEY (`idTipoRepuesto`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `Rol_id_rol` (`Rol_id_rol`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`clientes_Usuario_idUsuario`) REFERENCES `clientes` (`Usuario_idUsuario`),
  ADD CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`empleados_Usuario_idUsuario`) REFERENCES `empleados` (`Usuario_idUsuario`);

--
-- Filtros para la tabla `repuesto`
--
ALTER TABLE `repuesto`
  ADD CONSTRAINT `repuesto_ibfk_1` FOREIGN KEY (`Tipo_repuesto_idTipoRepuesto`) REFERENCES `tipo_repuesto` (`idTipoRepuesto`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`Rol_id_rol`) REFERENCES `rol` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
