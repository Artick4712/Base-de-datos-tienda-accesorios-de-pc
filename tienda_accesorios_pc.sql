-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-06-2026 a las 18:13:24
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_accesorios_pc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`, `descripcion`) VALUES
(1, 'Teclados', 'Teclados para PC'),
(2, 'Mouse', 'Ratones para PC'),
(3, 'Monitores', 'Pantallas y monitores'),
(4, 'Auriculares', 'Headsets y audífonos'),
(5, 'Micrófonos', 'Micrófonos para streaming'),
(6, 'Tarjetas Gráficas', 'GPU'),
(7, 'Procesadores', 'CPU'),
(8, 'Memorias RAM', 'RAM DDR4 y DDR5'),
(9, 'Discos SSD', 'Almacenamiento SSD'),
(10, 'Discos HDD', 'Almacenamiento HDD'),
(11, 'Fuentes de Poder', 'PSU'),
(12, 'Gabinetes', 'Cases para PC'),
(13, 'Placas Madre', 'Motherboards'),
(14, 'Ventiladores', 'Cooling'),
(15, 'Webcams', 'Cámaras web'),
(16, 'Impresoras', 'Equipos de impresión'),
(17, 'Routers', 'Equipos de red'),
(18, 'UPS', 'Respaldo eléctrico'),
(19, 'Adaptadores', 'Adaptadores varios'),
(20, 'Cables', 'Cables y conectores'),
(21, 'Sillas Gamer', 'Mobiliario gamer'),
(22, 'Mesas Gamer', 'Escritorios gamer'),
(23, 'Laptops', 'Portátiles'),
(24, 'Tablets', 'Dispositivos móviles'),
(25, 'Accesorios', 'Accesorios varios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `email`, `telefono`, `direccion`, `fecha_registro`) VALUES
(1, 'Alexander Lemus', 'alex.lemus@mail.com', '7011-2233', 'San Salvador, El Salvador', '2026-01-10'),
(2, 'Gabriela Henriquez', 'gaby.hen@mail.com', '7522-3344', 'Santa Ana, El Salvador', '2026-01-12'),
(3, 'Josué Quinteros', 'josue.quint@mail.com', '6133-4455', 'San Miguel, El Salvador', '2026-01-15'),
(4, 'Valeria Morales', 'vale.morales@mail.com', '7844-5566', 'La Libertad, El Salvador', '2026-01-18'),
(5, 'Fernando Flores', 'fer.flores@mail.com', '7255-6677', 'Antiguo Cuscatlán, El Salvador', '2026-01-20'),
(6, 'Andrea Meléndez', 'andrea.mel@mail.com', '6066-7788', 'Soyapango, El Salvador', '2026-01-22'),
(7, 'Ricardo Alvarenga', 'ric.alv@mail.com', '7977-8899', 'Mejicanos, El Salvador', '2026-01-25'),
(8, 'Daniela Campos', 'dani.campos@mail.com', '7188-9900', 'Apopa, El Salvador', '2026-01-28'),
(9, 'Carlos Gutiérrez', 'carlos.gut@mail.com', '6399-0011', 'San Tecla, El Salvador', '2026-02-01'),
(10, 'Mariana Benítez', 'mari.ben@mail.com', '7400-1122', 'Usulután, El Salvador', '2026-02-03'),
(11, 'Rodrigo Martínez', 'rodrigo.mar@mail.com', '7611-2244', 'Sonsonate, El Salvador', '2026-02-05'),
(12, 'Elena Rostran', 'elena.ros@mail.com', '6122-3355', 'Ahuachapán, El Salvador', '2026-02-08'),
(13, 'Mauricio Peña', 'mauri.pena@mail.com', '7033-4466', 'Chalatenango, El Salvador', '2026-02-10'),
(14, 'Claudia Rivas', 'claudia.rivas@mail.com', '7744-5577', 'San Vicente, El Salvador', '2026-02-12'),
(15, 'Diego Orellana', 'diego.ore@mail.com', '6255-6688', 'Cojutepeque, El Salvador', '2026-02-15'),
(16, 'Beatriz Solórzano', 'bea.solo@mail.com', '7566-7799', 'Zacatecoluca, El Salvador', '2026-02-17'),
(17, 'Kevin Alvarado', 'kevin.alv@mail.com', '7877-8800', 'Sensuntepeque, El Salvador', '2026-02-20'),
(18, 'Sofía Cárcamo', 'sofia.car@mail.com', '6088-9911', 'San Francisco Gotera, El Salvador', '2026-02-22'),
(19, 'William Aguilar', 'will.agui@mail.com', '7399-0022', 'San Salvador, El Salvador', '2026-02-25'),
(20, 'Vanessa Zelaya', 'vane.zel@mail.com', '7100-1133', 'Santa Tecla, El Salvador', '2026-02-27'),
(21, 'Manuel Escobar', 'manuel.esc@mail.com', '7622-3344', 'Delgado, El Salvador', '2026-03-01'),
(22, 'Patricia Guillén', 'patty.gui@mail.com', '6433-4455', 'Ilopango, El Salvador', '2026-03-03'),
(23, 'Jorge Portillo', 'jorge.por@mail.com', '7944-5566', 'San Marcos, El Salvador', '2026-03-05'),
(24, 'Adriana Quintanilla', 'adri.quin@mail.com', '7255-6677', 'San Martín, El Salvador', '2026-03-08'),
(25, 'Héctor Cardoza', 'hector.car@mail.com', '7066-7788', 'Apopa, El Salvador', '2026-03-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `id_detalle` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_ventas`
--

INSERT INTO `detalle_ventas` (`id_detalle`, `id_venta`, `id_producto`, `cantidad`, `precio_unitario`, `subtotal`) VALUES
(1, 1, 1, 1, 589.00, 589.00),
(2, 2, 5, 1, 115.00, 115.00),
(3, 2, 6, 1, 45.00, 45.00),
(4, 3, 3, 1, 1699.00, 1699.00),
(5, 4, 5, 2, 115.00, 230.00),
(6, 5, 14, 1, 119.00, 119.00),
(7, 6, 2, 1, 399.00, 399.00),
(8, 7, 6, 1, 45.00, 45.00),
(9, 7, 21, 1, 12.00, 12.00),
(10, 8, 4, 1, 519.00, 519.00),
(11, 9, 9, 1, 420.00, 420.00),
(12, 10, 18, 1, 129.00, 129.00),
(13, 11, 15, 1, 149.00, 149.00),
(14, 11, 20, 1, 149.00, 149.00),
(15, 12, 23, 1, 79.00, 79.00),
(16, 13, 24, 1, 249.00, 249.00),
(17, 14, 25, 1, 59.99, 59.99),
(18, 15, 22, 1, 149.00, 149.00),
(19, 16, 13, 1, 279.00, 279.00),
(20, 16, 11, 1, 135.00, 135.00),
(21, 17, 5, 1, 115.00, 115.00),
(22, 18, 10, 1, 219.00, 219.00),
(23, 19, 16, 1, 95.00, 95.00),
(24, 20, 13, 1, 279.00, 279.00),
(25, 21, 12, 1, 189.00, 189.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `id_categoria`, `id_proveedor`, `precio`, `stock`, `descripcion`) VALUES
(1, 'Intel Core i9-14900K', 1, 2, 589.00, 15, 'Procesador de 24 núcleos hasta 6.0 GHz'),
(2, 'AMD Ryzen 7 7800X3D', 1, 13, 399.00, 25, 'El mejor procesador para gaming con 3D V-Cache'),
(3, 'NVIDIA RTX 4090 24GB', 2, 2, 1699.00, 5, 'Tarjeta gráfica tope de gama arquitectura Ada Lovelace'),
(4, 'AMD Radeon RX 7800 XT', 2, 14, 519.00, 12, 'Tarjeta gráfica excelente rendimiento 1440p'),
(5, 'Corsair Vengeance DDR5 32GB', 3, 13, 115.00, 40, 'Kit de memoria RAM 2x16GB 6000MHz CL30'),
(6, 'Kingston Fury Beast DDR4 16GB', 3, 1, 45.00, 60, 'Módulo único de 16GB 3200MHz DDR4'),
(7, 'Samsung 990 Pro 2TB NVMe', 4, 18, 175.00, 30, 'SSD M.2 PCIe 4.0 velocidades de hasta 7450 MB/s'),
(8, 'Seagate BarraCuda 2TB', 4, 1, 55.00, 50, 'Disco duro mecánico interno 3.5 pulgadas SATA 6Gb/s'),
(9, 'ASUS ROG Strix Z790-E', 5, 14, 420.00, 8, 'Placa base Intel LGA1700 con Wi-Fi 6E y PCIe 5.0'),
(10, 'MSI MAG B650 Tomahawk', 5, 4, 219.00, 14, 'Placa base AMD AM5 ideal para Ryzen serie 7000'),
(11, 'EVGA SuperNOVA 850G GT', 6, 2, 135.00, 20, 'Fuente de poder de 850W certificación 80 Plus Gold'),
(12, 'Corsair RM1000x 1000W', 6, 13, 189.00, 10, 'Fuente completamente modular 80 Plus Gold'),
(13, 'NZXT Kraken Elite 360', 7, 6, 279.00, 8, 'Refrigeración líquida AIO con pantalla LCD personalizable'),
(14, 'Noctua NH-D15 chromax.black', 7, 6, 119.00, 15, 'Disipador por aire de doble torre de alto rendimiento'),
(15, 'Lian Li PC-O11 Dynamic', 8, 3, 149.00, 18, 'Gabinete de cristal templado ideal para refrigeración líquida'),
(16, 'Corsair 4000D Airflow', 8, 1, 95.00, 25, 'Chasis semitorre ATX con panel frontal optimizado'),
(17, 'ASUS TUF Gaming VG27AQ', 9, 4, 299.00, 10, 'Monitor de 27 pulgadas WQHD (2K) a 165Hz IPS'),
(18, 'Logitech G Pro X Superlight', 11, 1, 129.00, 22, 'Mouse gaming inalámbrico ultraligero de 63 gramos'),
(19, 'Razer BlackWidow V4 Pro', 10, 13, 229.00, 12, 'Teclado mecánico con interruptores verdes y RGB'),
(20, 'HyperX Cloud II Wireless', 12, 1, 149.00, 35, 'Auriculares inalámbricos para gaming con sonido 7.1'),
(21, 'Artic MX-6 (4g)', 14, 6, 12.00, 100, 'Pasta térmica de alto rendimiento de micropartículas de carbono'),
(22, 'Elgato Stream Deck MK.2', 24, 2, 149.00, 15, 'Controlador de estudio con 15 teclas LCD personalizables'),
(23, 'Logitech C920s Pro HD', 17, 9, 79.00, 20, 'Cámara web Full HD 1080p con tapa de privacidad'),
(24, 'Shure MV7 USB', 18, 2, 249.00, 7, 'Micrófono dinámico híbrido USB y XLR para podcast y streaming'),
(25, 'Mando Inalámbrico Xbox', 25, 1, 59.99, 40, 'Control oficial de Xbox Series X/S compatible con PC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_proveedor` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `contacto` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_proveedor`, `nombre`, `contacto`, `telefono`, `email`, `pais`) VALUES
(1, 'TechDistributors S.A.', 'Juan Pérez', '+503 2255-0101', 'ventas@techdist.com', 'El Salvador'),
(2, 'Global Components Inc.', 'Alice Johnson', '+1 555-0198', 'sales@globalcomp.com', 'Estados Unidos'),
(3, 'Asia Import S.A. de C.V.', 'Li Wei', '+86 21 6234 5678', 'import@asiaimport.com', 'China'),
(4, 'Equipos Informáticos SV', 'Carlos Mendoza', '+503 2133-4455', 'contacto@equiposv.com', 'El Salvador'),
(5, 'Mega Technology', 'Sofía Rodríguez', '+55 11 98765-4321', 'info@megatech.com', 'Brasil'),
(6, 'Cyber Hardware', 'Hans Müller', '+49 30 123456', 'support@cyberhw.de', 'Alemania'),
(7, 'Logística Digital', 'Ana Martínez', '+52 55 5555-1234', 'ventas@logisticadigital.mx', 'México'),
(8, 'Pacific Electronics', 'Kenji Tanaka', '+81 3 1234 5678', 'tanaka@pacificelec.jp', 'Japón'),
(9, 'Sistemas Avanzados', 'Roberto Gómez', '+503 2510-9000', 'rgomez@sistemasav.com', 'El Salvador'),
(10, 'EuroTech Wholesale', 'Pierre Dupont', '+33 1 4268 5300', 'wholesale@eurotech.fr', 'Francia'),
(11, 'Andina Distribuciones', 'María Clara', '+57 1 601 2345', 'ventas@andinadist.co', 'Colombia'),
(12, 'Inversiones Tecnológicas', 'Luis Flores', '+503 2288-7766', 'lflores@invertelas.com', 'El Salvador'),
(13, 'Silicon Valley Supply', 'David Smith', '+1 408-555-0122', 'dsmith@svsupply.com', 'Estados Unidos'),
(14, 'Taiwán Chipsets Co.', 'Chen Lin', '+886 2 2700 1234', 'sales@twchips.tw', 'Taiwán'),
(15, 'Latam PC Parts', 'Gabriel Silva', '+54 11 4321-8765', 'gsilva@latampc.ar', 'Argentina'),
(16, 'Soluciones Informáticas', 'Elena Vásquez', '+503 2345-6789', 'evasquez@solucionesinfo.com', 'El Salvador'),
(17, 'Nordic Hardware', 'Erik Johansson', '+46 8 123 45 67', 'erik@nordichw.se', 'Suecia'),
(18, 'Corea Tech Parts', 'Min-ho Kim', '+82 2 555 0143', 'kim@coreatech.kr', 'Corea del Sur'),
(19, 'UK Computing Ltd.', 'Sarah Green', '+44 20 7946 0192', 'sarah@ukcomputing.co.uk', 'Reino Unido'),
(20, 'Guate Hardware', 'Fernando Toro', '+502 2233-4455', 'ftoro@guatehw.gt', 'Guatemala'),
(21, 'Distribuidora Cuscatlán', 'Mauricio Rivas', '+503 2260-1122', 'mrivas@distcuscatlan.com', 'El Salvador'),
(22, 'Innova Tech Canada', 'Robert Brown', '+1 416-555-0145', 'rbrown@innovatech.ca', 'Canadá'),
(23, 'Aussie Parts Group', 'Mark Taylor', '+61 2 9876 5432', 'mtaylor@aussieparts.com.au', 'Australia'),
(24, 'Honduras Tecnológica', 'Olga Benítez', '+504 2235-8899', 'obenitez@hondurastech.hn', 'Honduras'),
(25, 'Zetta Byte Corp', 'Alexei Volkov', '+7 495 123-4567', 'avolkov@zettabyte.ru', 'Rusia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `metodo_pago` varchar(50) DEFAULT NULL,
  `total` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `id_cliente`, `fecha`, `metodo_pago`, `total`) VALUES
(1, 1, '2026-03-01', 'Tarjeta de Crédito', 589.00),
(2, 2, '2026-03-02', 'Efectivo', 160.00),
(3, 3, '2026-03-03', 'Transferencia Bancaria', 1699.00),
(4, 4, '2026-03-05', 'Tarjeta de Débito', 230.00),
(5, 5, '2026-03-06', 'PayPal', 119.00),
(6, 6, '2026-03-08', 'Tarjeta de Crédito', 399.00),
(7, 7, '2026-03-10', 'Efectivo', 57.00),
(8, 8, '2026-03-12', 'Transferencia Bancaria', 519.00),
(9, 9, '2026-03-13', 'Tarjeta de Débito', 420.00),
(10, 10, '2026-03-15', 'PayPal', 129.00),
(11, 11, '2026-03-16', 'Tarjeta de Crédito', 294.00),
(12, 12, '2026-03-18', 'Efectivo', 79.00),
(13, 13, '2026-03-20', 'Transferencia Bancaria', 249.00),
(14, 14, '2026-03-22', 'Tarjeta de Débito', 59.99),
(15, 15, '2026-03-25', 'PayPal', 149.00),
(16, 16, '2026-03-26', 'Tarjeta de Crédito', 389.00),
(17, 17, '2026-03-28', 'Efectivo', 115.00),
(18, 18, '2026-03-29', 'Transferencia Bancaria', 219.00),
(19, 19, '2026-04-01', 'Tarjeta de Débito', 95.00),
(20, 20, '2026-04-02', 'PayPal', 279.00),
(21, 21, '2026-04-04', 'Tarjeta de Crédito', 189.00),
(22, 22, '2026-04-05', 'Efectivo', 135.00),
(23, 23, '2026-04-07', 'Transferencia Bancaria', 299.00),
(24, 24, '2026-04-09', 'Tarjeta de Débito', 175.00),
(25, 25, '2026-04-10', 'PayPal', 229.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_venta` (`id_venta`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`),
  ADD CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
