-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: transporte
-- ------------------------------------------------------
-- Server version	5.5.38-0+wheezy1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bases`
--

DROP TABLE IF EXISTS `bases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bases` (
  `id` varchar(50) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `direccion` varchar(70) COLLATE utf8_bin NOT NULL,
  `pais` varchar(30) COLLATE utf8_bin NOT NULL,
  `sub_div` varchar(30) COLLATE utf8_bin NOT NULL,
  `sub_div_terciaria` varchar(30) COLLATE utf8_bin NOT NULL,
  `cp` int(11) NOT NULL,
  `telefono` double NOT NULL,
  `latitud` double NOT NULL,
  `longitud` double NOT NULL,
  `poligono` polygon NOT NULL,
  `id_empresa` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bases`
--

LOCK TABLES `bases` WRITE;
/*!40000 ALTER TABLE `bases` DISABLE KEYS */;
INSERT INTO `bases` VALUES ('RFCBASEXXXXXX1','Base 1','Generica #1','MX','MX1','MX11',90000,5555555555,19.430373,-99.112281,'','API6609273E0');
/*!40000 ALTER TABLE `bases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_status`
--

DROP TABLE IF EXISTS `cat_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_status` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(25) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_status`
--

LOCK TABLES `cat_status` WRITE;
/*!40000 ALTER TABLE `cat_status` DISABLE KEYS */;
INSERT INTO `cat_status` VALUES (1,'Movimiento'),(2,'Parado'),(3,'Sin Conexion');
/*!40000 ALTER TABLE `cat_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dispositivo`
--

DROP TABLE IF EXISTS `dispositivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dispositivo` (
  `id` varchar(50) NOT NULL,
  `nombre` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `latitud` double NOT NULL,
  `longitud` double NOT NULL,
  `gps_date` datetime NOT NULL,
  `dns` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dispositivo`
--

LOCK TABLES `dispositivo` WRITE;
/*!40000 ALTER TABLE `dispositivo` DISABLE KEYS */;
INSERT INTO `dispositivo` VALUES ('299','Drone 299',25.4507,-100.997,'2014-12-17 10:41:30',''),('300','Drone 300',18.9214,-99.2025,'2013-12-05 13:55:36','');
/*!40000 ALTER TABLE `dispositivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `id` varchar(50) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES ('API6609273E0','Flecha Amarilla');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_gps`
--

DROP TABLE IF EXISTS `historial_gps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historial_gps` (
  `id` double NOT NULL AUTO_INCREMENT,
  `id_dispositivo` varchar(50) COLLATE utf8_bin NOT NULL,
  `latitud` double NOT NULL,
  `longitud` double NOT NULL,
  `fecha` datetime NOT NULL,
  `time_elapsed` double NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4508 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_gps`
--

LOCK TABLES `historial_gps` WRITE;
/*!40000 ALTER TABLE `historial_gps` DISABLE KEYS */;
INSERT INTO `historial_gps` VALUES (4447,'299',20.5249,-100.851,'2014-06-27 14:15:18',6169,3),(4449,'299',20.5249,-100.851,'2014-06-27 14:22:11',172,3),(4450,'299',20.5249,-100.851,'2014-06-27 14:26:09',1,1),(4451,'299',20.5248,-100.851,'2014-06-27 14:29:15',152,3),(4452,'299',20.5249,-100.851,'2014-06-27 14:30:23',1,1),(4453,'299',20.5248,-100.851,'2014-06-27 14:36:16',182,3),(4454,'299',20.5248,-100.851,'2014-06-27 14:39:09',1,1),(4455,'299',20.5249,-100.851,'2014-06-27 14:43:24',150,3),(4456,'299',20.5248,-100.851,'2014-06-27 14:50:13',165,3),(4457,'299',20.5248,-100.851,'2014-06-27 14:54:45',1,1),(4459,'299',20.5249,-100.851,'2014-12-16 19:06:37',14879512,3),(4460,'300',18.9214,-99.2025,'2013-12-05 13:55:36',0,3),(4461,'299',25.4506,-100.997,'2014-12-16 19:40:37',1,1),(4462,'299',25.4507,-100.997,'2014-12-16 19:43:47',1,1),(4463,'299',25.4506,-100.997,'2014-12-16 19:48:47',1,1),(4464,'299',25.4505,-100.997,'2014-12-16 19:50:37',1,1),(4465,'299',25.4506,-100.997,'2014-12-16 20:31:39',1,1),(4466,'299',25.4505,-100.997,'2014-12-16 20:32:38',1,1),(4467,'299',25.4506,-100.997,'2014-12-16 21:04:38',1,1),(4468,'299',25.4505,-100.997,'2014-12-16 21:16:44',1,1),(4469,'299',25.4506,-100.997,'2014-12-16 21:44:30',1,1),(4470,'299',25.4507,-100.997,'2014-12-16 21:47:40',1,1),(4471,'299',25.4506,-100.997,'2014-12-16 22:07:41',1,1),(4472,'299',25.4507,-100.997,'2014-12-16 22:10:41',1,1),(4473,'299',25.4506,-100.997,'2014-12-16 22:11:40',1,1),(4474,'299',25.4507,-100.997,'2014-12-16 22:14:40',1,1),(4475,'299',25.4506,-100.997,'2014-12-16 22:18:40',1,1),(4476,'299',25.4507,-100.997,'2014-12-16 22:35:40',1,1),(4477,'299',25.4506,-100.997,'2014-12-16 22:45:40',1,1),(4478,'299',25.4507,-100.997,'2014-12-16 22:46:40',1,1),(4479,'299',25.4506,-100.997,'2014-12-16 23:42:42',1,1),(4480,'299',25.4507,-100.997,'2014-12-16 23:44:42',1,1),(4481,'299',25.4506,-100.997,'2014-12-17 01:26:33',1,1),(4482,'299',25.4505,-100.997,'2014-12-17 01:29:34',1,1),(4483,'299',25.4506,-100.997,'2014-12-17 01:30:33',1,1),(4484,'299',25.4505,-100.997,'2014-12-17 01:36:33',1,1),(4485,'299',25.4506,-100.997,'2014-12-17 01:37:34',1,1),(4486,'299',25.4505,-100.997,'2014-12-17 01:39:33',1,1),(4487,'299',25.4506,-100.997,'2014-12-17 01:40:34',1,1),(4488,'299',25.4505,-100.997,'2014-12-17 01:41:38',1,1),(4489,'299',25.4506,-100.997,'2014-12-17 01:43:34',1,1),(4490,'299',25.4505,-100.997,'2014-12-17 01:45:34',1,1),(4491,'299',25.4506,-100.997,'2014-12-17 02:16:38',1,1),(4492,'299',25.4507,-100.997,'2014-12-17 02:18:34',1,1),(4493,'299',25.4506,-100.997,'2014-12-17 05:14:37',1,1),(4494,'299',25.4507,-100.997,'2014-12-17 05:41:38',1,1),(4495,'299',25.4506,-100.997,'2014-12-17 06:15:38',1,1),(4496,'299',25.4507,-100.997,'2014-12-17 06:20:33',124,3),(4497,'299',25.4507,-100.997,'2014-12-17 06:37:32',1,1),(4498,'299',25.4506,-100.997,'2014-12-17 07:17:34',1,1),(4499,'299',25.4505,-100.997,'2014-12-17 07:18:37',1,1),(4500,'299',25.4506,-100.997,'2014-12-17 07:30:34',1,1),(4501,'299',25.4507,-100.997,'2014-12-17 07:32:38',1,1),(4502,'299',25.4506,-100.997,'2014-12-17 09:55:27',1,1),(4503,'299',25.4507,-100.997,'2014-12-17 09:57:27',1,1),(4504,'299',25.4506,-100.997,'2014-12-17 10:27:28',1,1),(4505,'299',25.4507,-100.997,'2014-12-17 10:30:31',133,3),(4506,'299',25.4506,-100.997,'2014-12-17 10:41:30',302,3),(4507,'299',25.4507,-100.997,'2014-12-17 10:41:30',0,3);
/*!40000 ALTER TABLE `historial_gps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagenes`
--

DROP TABLE IF EXISTS `imagenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagenes` (
  `id` double NOT NULL AUTO_INCREMENT,
  `id_dron` varchar(100) COLLATE utf8_bin NOT NULL,
  `imagen` longtext COLLATE utf8_bin NOT NULL,
  `bytes` double NOT NULL,
  `kilobytes` double NOT NULL,
  `megabytes` double NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `ext` varchar(10) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagenes`
--

LOCK TABLES `imagenes` WRITE;
/*!40000 ALTER TABLE `imagenes` DISABLE KEYS */;
/*!40000 ALTER TABLE `imagenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operador`
--

DROP TABLE IF EXISTS `operador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operador` (
  `id` varchar(25) CHARACTER SET latin1 NOT NULL,
  `nombre` varchar(50) CHARACTER SET latin1 NOT NULL,
  `apellido_paterno` varchar(100) CHARACTER SET latin1 NOT NULL,
  `apellido_materno` varchar(100) CHARACTER SET latin1 NOT NULL,
  `id_vehiculo` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operador`
--

LOCK TABLES `operador` WRITE;
/*!40000 ALTER TABLE `operador` DISABLE KEYS */;
INSERT INTO `operador` VALUES ('RFCXXXXXXX1','Operador','Op1','Op2','XXX-XX2'),('RFCXXXXXXXX','Operador','Op1','Op2','XXX-XX1');
/*!40000 ALTER TABLE `operador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userName` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido_paterno` varchar(100) NOT NULL,
  `apellido_materno` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `codigo_postal` int(11) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `id_empresa` varchar(100) NOT NULL,
  PRIMARY KEY (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('flecha.amarilla@flechaamarilla.com','e10adc3949ba59abbe56e057f20f883e','Admin','Flecha','Amarilla','','',0,'','API6609273E0');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculos`
--

DROP TABLE IF EXISTS `vehiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehiculos` (
  `nombre` varchar(50) CHARACTER SET latin1 NOT NULL,
  `placa` varchar(50) CHARACTER SET latin1 NOT NULL,
  `id_base` varchar(100) CHARACTER SET latin1 NOT NULL,
  `id_dispositivo` double NOT NULL,
  PRIMARY KEY (`placa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculos`
--

LOCK TABLES `vehiculos` WRITE;
/*!40000 ALTER TABLE `vehiculos` DISABLE KEYS */;
INSERT INTO `vehiculos` VALUES ('Eco 01','XXX-XX1','RFCBASEXXXXXX1',299),('Eco 02','XXX-XX2','RFCBASEXXXXXX1',300);
/*!40000 ALTER TABLE `vehiculos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videoserver`
--

DROP TABLE IF EXISTS `videoserver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videoserver` (
  `id` double NOT NULL AUTO_INCREMENT,
  `id_dispositivo` double NOT NULL,
  `nombre_archivo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_creacion` date NOT NULL,
  `hora_creacion` time NOT NULL,
  `imagen` mediumtext COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videoserver`
--

LOCK TABLES `videoserver` WRITE;
/*!40000 ALTER TABLE `videoserver` DISABLE KEYS */;
/*!40000 ALTER TABLE `videoserver` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-17 13:15:51
