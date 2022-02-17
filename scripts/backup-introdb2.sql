-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: introDB2
-- ------------------------------------------------------
-- Server version	8.0.27


--
-- Table structure for table `billeteras`
--

DROP TABLE IF EXISTS `billeteras`;

CREATE TABLE `billeteras` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `precio` float(9,2) NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;


--
-- Dumping data for table `billeteras`
--

LOCK TABLES `billeteras` WRITE;
/*!40000 ALTER TABLE `billeteras` DISABLE KEYS */;
INSERT INTO `billeteras` VALUES (1,'Ledger Nano S',16000.00,30),(2,'Trezor One',19500.00,30),(3,'Trezor T',78000.00,20),(4,'Ledger Nano X',56000.00,20),(5,'Coolwallet Pro',56600.00,15);
/*!40000 ALTER TABLE `billeteras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;

CREATE TABLE `categorias` (
  `idCategoria` tinyint NOT NULL AUTO_INCREMENT,
  `catNombre` varchar(30) NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;


--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Smartphone'),(2,'Cámaras mirorless'),(3,'Lentes'),(4,'Parlantes bluetooth'),(5,'Smart TV'),(6,'Consolas'),(7,'Tablets'),(8,'Crypto wallet');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destinos`
--

DROP TABLE IF EXISTS `destinos`;

CREATE TABLE `destinos` (
  `idDestino` tinyint NOT NULL AUTO_INCREMENT,
  `destNombre` varchar(100) NOT NULL,
  `idRegion` tinyint NOT NULL,
  `destPrecio` float(9,2) NOT NULL,
  `destAsientos` tinyint NOT NULL,
  `destDisponibles` tinyint NOT NULL,
  `destActivo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idDestino`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;


--
-- Dumping data for table `destinos`
--

LOCK TABLES `destinos` WRITE;
/*!40000 ALTER TABLE `destinos` DISABLE KEYS */;
INSERT INTO `destinos` VALUES (1,'Londres (Heathrow)',5,9711.00,5,5,1),(2,'Amsterdam (Schiphol)',5,6231.00,5,5,1),(3,'Miami (Wilcox Field)',4,6517.00,5,5,1),(4,'Tokio (Narita)',7,8704.00,5,5,1),(5,'Kuala Lumpur (KLIA)',8,8570.00,5,5,1),(6,'Bangkok (Suvarnabhumi)',8,8469.00,5,5,1),(7,'París (Charles de Gaulle)',5,7713.00,5,5,1),(8,'Cancún (Cancún)',3,6494.00,5,5,1),(9,'Milán (Malpensa)',5,6756.00,5,5,1),(10,'Johannesburgo (O.R. Tambo)',9,8250.00,4,4,1);
/*!40000 ALTER TABLE `destinos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;

CREATE TABLE `marcas` (
  `idMarca` tinyint NOT NULL AUTO_INCREMENT,
  `mkNombre` varchar(30) NOT NULL,
  PRIMARY KEY (`idMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;


--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (1,'Nikon'),(2,'Apple'),(3,'Audiotechnica'),(4,'Marshall'),(5,'Samsung'),(6,'Huawei'),(7,'Ledger'),(8,'Safepal'),(9,'Trezor');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;

CREATE TABLE `productos` (
  `idProducto` int NOT NULL AUTO_INCREMENT,
  `prdNombre` varchar(75) NOT NULL,
  `prdPrecio` double(8,2) NOT NULL,
  `idMarca` tinyint NOT NULL,
  `idCategoria` tinyint NOT NULL,
  `prdDescripcion` text NOT NULL,
  `prdImagen` varchar(45) NOT NULL,
  `prdActivo` tinyint(1) NOT NULL,
  PRIMARY KEY (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;


--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Nikon Z6',1650.00,1,2,'Cuerpo de cámara sin espejo formato full frame. Resolución 24.5 MPX. Bluetooth, Wi-Fi, GPS. ISO 100-51200','nikon-z6.jpg',1),(2,'iPhone 12 Pro (256GB) gold',1200.00,2,1,'Apple iPhone 12 Pro de 256GB color dorado, libre de carrier.','iphone-12-pro-gold.png',1),(3,'Marshall Acton II',300.00,4,4,'Altavoz inalámbrico Marshall Acton II. Wi-Fi y Bluetooth multihabitación color negro.','marshall-acton.jpg',1),(4,'Homepod Mini',99.00,2,4,'Altavoz inteligente inalámbrico. Compatible con Siri. Wifi, Bluetooth. Compatible con multihabitación.','homepod-mini.jpg',1),(5,'Samsung Class QLED Q80T Series',1200.00,5,5,'Smart TV Samsung Class QLED Q80T Series, 65\", 4K, UHD','Q80T.jpg',1),(6,'P40 Pro Plus 512GB',1250.00,6,1,'Smartphone Huawei P40 Pro Plus 5G 512GB','P40-pro-plus.jpg',1),(7,'Ledger Nano S',40.00,7,8,'Crypto billetera con pantalla','noDisponible.jpg',1),(8,'Trezor T',130.00,9,8,'Crypto billetera copn pantalla táctil','noDisponible.jpg',1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regiones`
--

DROP TABLE IF EXISTS `regiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regiones` (
  `idRegion` tinyint NOT NULL AUTO_INCREMENT,
  `regNombre` varchar(75) NOT NULL,
  PRIMARY KEY (`idRegion`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;


--
-- Dumping data for table `regiones`
--

LOCK TABLES `regiones` WRITE;
/*!40000 ALTER TABLE `regiones` DISABLE KEYS */;
INSERT INTO `regiones` VALUES (1,'América del Sur'),(2,'América Central'),(3,'Caribe y México'),(4,'América del Norte'),(5,'Europa Occidental'),(6,'Europa del Este'),(7,'Asia'),(8,'Oceanía'),(9,'África'),(10,'Antártida');
/*!40000 ALTER TABLE `regiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_de_datos`
--

DROP TABLE IF EXISTS `tipos_de_datos`;

CREATE TABLE `tipos_de_datos` (
  `Id` tinyint NOT NULL AUTO_INCREMENT,
  `Numericos` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Alfanumericos` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Fecha` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;


--
-- Dumping data for table `tipos_de_datos`
--

LOCK TABLES `tipos_de_datos` WRITE;
/*!40000 ALTER TABLE `tipos_de_datos` DISABLE KEYS */;
INSERT INTO `tipos_de_datos` VALUES (1,'int','char','date'),(2,'tinyint','varchar','datetime'),(3,'smallint','tinytext','time'),(4,'mediumint','smalltext','timestamp'),(5,'int','mediumtext',''),(6,'boolean','text',''),(7,'float','binary',''),(8,'double','blob',''),(9,'bit','text',''),(10,'decimal','enum','');
/*!40000 ALTER TABLE `tipos_de_datos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



-- Dump completed on 2022-02-17 10:23:07
