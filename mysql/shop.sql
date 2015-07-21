-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: shop
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
-- Table structure for table `accesorios`
--

DROP TABLE IF EXISTS `accesorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesorios` (
  `idAccesorio` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `precio` double NOT NULL,
  `descripcion` varchar(600) NOT NULL,
  `categoria` int(11) NOT NULL,
  `subCategoria` int(11) NOT NULL,
  PRIMARY KEY (`idAccesorio`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesorios`
--

LOCK TABLES `accesorios` WRITE;
/*!40000 ALTER TABLE `accesorios` DISABLE KEYS */;
INSERT INTO `accesorios` VALUES (1,'Camara IP Fija',2800,'Camara IP con lente fija',1,1),(2,'Camara PTZ',6800,'Camara con movimiento 360 grados, Zoom, Deteccion de movimiento.',1,1),(3,'Ethernet',500,'Conexion a internet por un cable Ethernet',1,2),(4,'Wi-Fi',700,'Conexion a internet por señal Wi-Fi',1,2),(5,'3G',1200,'Conexion a Internet por medio de la Red 3G',1,2),(6,'Disco Duro 8GB',200,'Almacenamiento Interno de 8GB para Videos e Informacion de la Camara',1,3),(7,'Disco Duro 16GB',380,'Almacenamiento Interno de 16GB para Videos e Informacion de la Camara',1,3),(8,'Disco Duro 32GB',520,'Almacenamiento Interno de 32GB para Videos e Informacion de la Camara',1,3),(9,'Memoria SSD 32GB',1500,'Expancion de 32GB de Almacenamiento.',1,4),(10,'Memoria SSD 64GB',2200,'Expancion de 64GB de Almacenamiento',1,4),(11,'Memoria SSD128GB',3200,'Expancion de 128GB de Almacenamiento',1,4),(12,'Boton de Emergencia Telefonico',100,'Equipo de emergencias conectado directamente al centro de respuesta de emergencias.',1,0),(13,'Pistola Radar',100,'Equipo de Scaneo de Velocidad. Perfecto para Complementar las infracciones electronicas moviles.',1,0),(14,'Soporte de Poste',1000,'Soporte Ideal para Colocar en Postes o Lugares Elevados',1,0),(15,'Soporte de Muro',1000,'Soporte Ideal para Colocar tu Drone en Muro Especifico',1,0),(16,'Soporte de Esquina',1000,'Ideal para colocar el Drone en una esquina de algun muro',1,0),(17,'Base para Techo',1000,'Base para colocacion en los Techos',1,0),(18,'Totem mobiliario para interiores',1000,'Terminado de mueble para colocacion en tienda comercial con drone de 200mm.',1,0),(19,'Brazo de Pared',1000,'Brazo de Colocacion en caso de no Existir Postes Cercanos',1,0),(20,'Carcasa Semaforo',1000,'Carcasa para Drone de 200 mm en semáforo urbano.',1,0),(21,'Carcasa Vehicular Cuadrada',1000,'Carcasa cuadrangular para interiores de Taxi urbano.',1,0),(22,'Carcasa Torreta PTZ',1000,'Carcasa para torreta con camara tipo PTZ para exteriores.',1,0),(23,'Reconocimiento Facial',1000,'Sistema para la captura de sospechosos desde terminales integradas con cámara fotográfica o cámara de video digital. Captura de información de los detenidos. Captura de la imagen del individuo para el procesamiento de las características faciales así mismo captura de imágenes de características especiales tales como tatuajes, lesiones, cicatrices, deformaciones, amputaciones, etc. Registro de persona que lleva a cabo la consignación. Cotejo de la fotografía al ser tomada, automáticamente contra la base de datos registrada anteriormente por medio de la tecnología de reconocimiento facial.',2,5),(24,'Extracción Facial',1000,'El modulo de extracción facial permite estudiar una imagen con múltiples rostros. Envía los rostros obtenidos al proceso de reconocimiento facial para obtener los resultados individuales correspondientes a cada uno.',2,5),(25,'Reconocimiento Facial por Video',1000,'Sistema para identificación de individuos desde foto, retrato hablado escaneado o video vigilancia. Modelado en 3D para ubicar rostros. Las imágenes faciales se adquieren directamente de las cámaras de seguridad pública. Se lleva a cabo un cotejo de rostros en tiempo real contra la base de datos de individuos. El tipo de acceso a información es a las bases de datos que se encuentran en las corporaciones de seguridad publica. Se permite una escalabilidad a un mayor número de registros para mantener el nivel de respuesta.',2,5),(26,'Reconocimiento Facial Móvil',1000,'Sistema de consultas remotas desde terminales móviles con autenticación inicial de usuarios. Autenticación del individuo para acceso a criterios de búsqueda según el grupo al que pertenezca. Provee una lista de personas con tales características y fotografía del individuo. ',2,5),(27,'Vehículos Robados',1000,'Vehículos Robados opera por medio del reconocimiento automático de matrículas (Automatic number plate recognition o ANPR); la cual es un método de vigilancia que utiliza reconocimiento óptico de caracteres en imágenes para leer las matrículas de los vehículos.',2,6),(28,'Búsqueda de Personas',1000,'Permite las búsquedas de personas, utilizando cualquier criterio, desde cualquier base de datos disponible.',2,7),(29,'Órdenes de Aprensión',1000,'Sistema para la administración de órdenes de aprehensión ligado a base de datos para verificar si el individuo detenido cuenta con una orden de aprehensión abierta.',2,7),(30,'Trabajo Social',1000,'Permite registrar detalles vitales sobre una persona desaparecida u otros individuos que no son infractores ni victimas. Generación de reportes de las personas desaparecidas. Análisis de fotografía y cotejo automático con los registros que se encuentran en las diferentes bases de datos por medio de reconocimiento facial. Generación de reportes para la creación de panfletos de personas extraviadas o de búsqueda.',2,7),(31,'Administración de Personal',1000,'Administra personal del trabajo para registrar accesos y salidas del edificio, asi como las horas en la cuales estubo presente dentro de las instaciones. Guarda un expediente por trabajador de todas sus actividades y areas a las que pertenece, gestiona los prestamos de material y resguardos que se le dan al empleado.',2,7),(32,'Administración de Arrestos',1000,'Administra el proceso de detención del infractor, maneja el expediente delictivo del mismo así como reincidencias en un mismo delito. Califica la gravedad.',2,7),(33,'Administración de Evidencias',1000,'Documenta las evidencias y el seguimiento de la custodia de las mismas con un inventario para saber con que se dispone y para su control en caso de ser enviadas a otras dependencias.',2,7),(34,'Búsquedas Avanzadas',1000,'Permite las búsquedas avanzadas, Búsquedas cruzadas utilizando cualquier criterio, desde cualquier base de datos disponible.',2,7),(35,'Administradores',1000,'Administra los usuarios del sistema, incluyendo privilegios de acceso y seguridad. Autenticación de nuevos usuarios al sistema, captura e impresión de fotos de identificación, reportes de bases de datos e insignias de identificación.',2,7),(36,'Acceso a Bases de Datos Externas',1000,'Licencia par acceder a bases de datos de sistemas existentes.',2,7),(37,'Administración de Emergencias',1000,'Acceso a control de puntos de interés bancos, comercios, escuelas, sitios públicos, búsqueda de unidades en tiempo real, historial detallado de unidades cercanas a un punto, vista por capas, verificación de actividad por zonas.',2,8),(38,'GPS',1000,'Permite fijar unidades para seguirlas atraves del mapa; tomar distancias; verificar coordenadas satelitales de algún punto de interés para envió de apoyo aéreo; verificar historial de unidades en el mapa de la ciudad en un tiempo determinado. Búsqueda de elementos por numero de unidad, tipo de unidad; puntos de interés por nombre o por tipo de punto de interés;  Generación de reportes impresos de alarmas ciudadanas activas para tener un historial de las actividades del observador.',2,8),(39,'Reportes Históricos',1000,'Genera los historiales de la localizacion o movientos de las unidades dentro del mapa.',2,8),(40,'Enlaces a Capas de Información',1000,'En proceso de descripción.',2,8),(41,'Torreta Larga',1000,'Torreta con 4 cámaras fijas para exteriores con sujeción magnética.',1,0),(42,'Base Pasillo',1000,'Base para montaje de Drone de 100 mm en interiores (pasillo de oficina).',1,0),(43,'Carcasa Visera Vehicular',1000,'Carcasa con Drone doble para montaje en interior de vehículo.',1,0),(44,'Soporte de Poste 360 grados',1000,'Soporte para poste con 4 camaras para cubrir un total de 360 grados de vision.',1,0),(45,'Carcaza Taxi Beagle',1000,'Carcasa para camara interior para taxi con tarjeta beagle',1,0),(46,'Carcasa Dron Clasica',1000,'Carcasa gris redonda',1,0);
/*!40000 ALTER TABLE `accesorios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrito`
--

DROP TABLE IF EXISTS `carrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrito` (
  `idCarrito` double NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `accesorios` varchar(100) NOT NULL,
  `precio` double NOT NULL,
  `unidades` int(11) NOT NULL,
  PRIMARY KEY (`idCarrito`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrito`
--

LOCK TABLES `carrito` WRITE;
/*!40000 ALTER TABLE `carrito` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Hardware'),(2,'Software');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compra` (
  `idCompra` int(11) NOT NULL AUTO_INCREMENT,
  `idProducto` int(11) NOT NULL,
  `idCarrito` int(11) NOT NULL,
  `idContrato` int(11) NOT NULL,
  `idPedido` int(11) NOT NULL,
  `idPago` int(11) NOT NULL,
  `fechaCompra` datetime NOT NULL,
  `banco` varchar(50) NOT NULL,
  `accesorios` varchar(100) NOT NULL,
  `unidades` int(11) NOT NULL,
  `precioUnitario` double NOT NULL,
  PRIMARY KEY (`idCompra`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contrato`
--

DROP TABLE IF EXISTS `contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contrato` (
  `idContrato` double NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) NOT NULL,
  `tiempoContrato` varchar(50) NOT NULL,
  `tiempoPrecio` double NOT NULL,
  `tipoConexion` varchar(50) NOT NULL,
  `conexionPrecio` double NOT NULL,
  `formatoImagen` varchar(50) NOT NULL,
  `formatoPrecio` double NOT NULL,
  `almacenamiento` varchar(50) NOT NULL,
  `precioAlmacenamiento` double NOT NULL,
  `fechaInicio` date NOT NULL,
  PRIMARY KEY (`idContrato`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrato`
--

LOCK TABLES `contrato` WRITE;
/*!40000 ALTER TABLE `contrato` DISABLE KEYS */;
/*!40000 ALTER TABLE `contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados` (
  `iso31662` varchar(50) NOT NULL,
  `codigoPais` varchar(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `latitud` double NOT NULL,
  `longitud` double NOT NULL,
  `poblacion` double NOT NULL,
  PRIMARY KEY (`iso31662`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES ('','MX','Aguascalientes',22,-102.5,1032680),('BCN','MX','Baja California',30,-115,0),('BCS','MX','Baja California Sur',25.8333333,-111.8333333,475586),('CAM','MX','Campeche',19,-90.5,743869),('CHH','MX','Chihuahua',28.5,-106,3316178),('CHP','MX','Chiapas',16.5,-92.5,4250246),('COA','MX','Coahuila de Zaragoza',27.3333333,-102,2415862),('COL','MX','Colima',19.1666667,-104,597970),('DIF','MX','Distrito Federal',19.25,-99.1666667,8657050),('DUR','MX','Durango',24.8333333,-104.8333333,1460178),('GRO','MX','Guerrero',17.6666667,-100,3237579),('GUA','MX','Guanajuato',21,-101,4908056),('HID','MX','Hidalgo',20.5,-99,2356133),('JAL','MX','Jalisco',20.3333333,-103.6666667,6653364),('MEX','MX','México',19.3333333,-99.5,0),('MIC','MX','Michoacán de Ocampo',19.1666667,-101.8333333,4090997),('MOR','MX','Morelos',18.75,-99,1680239),('NAY','MX','Nayarit',22,-105,941442),('NLE','MX','Nuevo León',25.6666667,-100,4123418),('OAX','MX','Oaxaca',17,-96.5,3625487),('PUE','MX','Puebla',18.8333333,-98,5522918),('QUE','MX','Querétaro de Arteaga',21,-99.9166667,1568610),('ROO','MX','Quintana Roo',19.6666667,-88.5,1090281),('SIN','MX','Sinaloa',25,-107.5,2641696),('SLP','MX','San Luis Potosí',22.5,-100.5,2391929),('SON','MX','Sonora',29.3333333,-110.6666667,2351427),('TAB','MX','Tabasco',18,-92.6666667,2041286),('TAM','MX','Tamaulipas',24,-98.75,2976339),('TLA','MX','Tlaxcala',19.4166667,-98.1666667,1044369),('VER','MX','Veracruz-Llave',19.3333333,-96.6666667,7058898),('YUC','MX','Yucatán',20.8333333,-89,1761761),('ZAC','MX','Zacatecas',23,-103,1363577);
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `familia`
--

DROP TABLE IF EXISTS `familia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `familia` (
  `idFamilia` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  PRIMARY KEY (`idFamilia`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familia`
--

LOCK TABLES `familia` WRITE;
/*!40000 ALTER TABLE `familia` DISABLE KEYS */;
INSERT INTO `familia` VALUES (1,'Drones'),(2,'Plataformas'),(3,'Soportes');
/*!40000 ALTER TABLE `familia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gobierno`
--

DROP TABLE IF EXISTS `gobierno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gobierno` (
  `userName` varchar(50) NOT NULL,
  `claveGubernamental` varchar(100) NOT NULL,
  `jurisdiccion` varchar(100) NOT NULL,
  PRIMARY KEY (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gobierno`
--

LOCK TABLES `gobierno` WRITE;
/*!40000 ALTER TABLE `gobierno` DISABLE KEYS */;
/*!40000 ALTER TABLE `gobierno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `idImagen` int(11) NOT NULL AUTO_INCREMENT,
  `idProducto` int(11) NOT NULL DEFAULT '0',
  `nombre` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `ancho` int(11) NOT NULL,
  `alto` int(11) NOT NULL,
  `posicion` varchar(50) NOT NULL,
  PRIMARY KEY (`idImagen`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,1,'dron.png','/imagenes/productos/',1024,522,'cinta'),(2,2,'dronTV.png','/imagenes/productos/',1920,978,'cinta'),(3,3,'dronPTZ.png','/imagenes/productos/',1024,522,'cinta'),(4,4,'dronVehicular.png','/imagenes/productos/',1920,978,'cinta'),(5,14,'PExpedienteDelictivo.png','/imagenes/productos/',137,137,'cinta'),(6,15,'PGeolocalizacion.png','/imagenes/productos/',128,128,'cinta'),(7,12,'PReconocimientoFacial.png','/imagenes/productos/',137,137,'cinta'),(8,13,'PReconocimientoPlacas.png','/imagenes/productos/',137,137,'cinta'),(9,5,'soportePoste.png','/imagenes/productos/',1024,522,'cinta'),(10,6,'soporteMuro.png','/imagenes/productos/',1024,522,'cinta'),(11,7,'soporteEsquina.png','/imagenes/productos/',1024,522,'cinta'),(12,8,'baseTecho.png','/imagenes/productos/',1024,522,'cinta'),(13,9,'totem.png','/imagenes/productos/',1024,522,'cinta'),(14,10,'brazoPared.png','/imagenes/productos/',1024,522,'cinta'),(15,11,'carcasaSemaforo.png','/imagenes/productos/',1024,522,'cinta'),(16,18,'soporteP360.png','/imagenes/productos/',1024,522,'cinta'),(17,19,'basePasillo.png','/imagenes/productos/',1024,522,'cinta'),(18,1,'dronVideo','/videos/',1024,524,'video'),(19,18,'soporteP360','/videos/',1024,524,'video'),(20,14,'PExpedienteDelictivo.png','/imagenes/productos/',137,137,'panel1'),(21,1,'dron2.png','/imagenes/productos/',1024,522,'panel1'),(22,18,'soporteP360.png','/imagenes/productos/',1024,522,'panel1'),(23,1,'dron3.png','/imagenes/productos/',1024,522,'panel2'),(24,5,'soportePoste2.png','/imagenes/productos/',1024,522,'lista-accesorios'),(25,16,'botonEmergencia.png','/imagenes/productos/',1024,522,'lista-accesorios'),(26,17,'pistolaRadar.png','/imagenes/productos/',1024,522,'lista-accesorios'),(27,6,'soporteMuro2.png','/imagenes/productos/',1024,522,'lista-accesorios'),(28,7,'soporteEsquina2.png','/imagenes/productos/',1024,522,'lista-accesorios'),(29,8,'baseTecho2.png','/imagenes/productos/',1024,522,'lista-accesorios'),(30,9,'totem2.png','/imagenes/productos/',1024,522,'lista-accesorios'),(31,10,'brazoPared2.png','/imagenes/productos/',1024,522,'lista-accesorios'),(32,11,'carcasaSemaforo2.png','/imagenes/productos/',1024,522,'lista-accesorios'),(33,19,'basePasillo2.png','/imagenes/productos/',1024,522,'lista-accesorios'),(34,18,'soporteP3602.png','/imagenes/productos/',1024,522,'lista-accesorios'),(35,18,'soporteP3603.png','/imagenes/productos/',1024,522,'panel2'),(36,14,'PExpedienteDelictivo.png','/imagenes/productos/',137,137,'panel2'),(37,1,'dron2.png','/imagenes/productos/',1024,522,'lista-accesorios'),(38,2,'dronTV2.png','/imagenes/productos/',1024,522,'lista-accesorios'),(39,3,'dronPTZ.png','/imagenes/productos/',1024,522,'lista-accesorios'),(40,4,'dronVehicular2.png','/imagenes/productos/',1024,522,'lista-accesorios'),(41,14,'PExpedienteDelictivo.png','/imagenes/productos/',1024,522,'lista-accesorios'),(42,15,'PGeolocalizacion.png','/imagenes/productos/',1024,522,'lista-accesorios'),(43,12,'PReconocimientoFacial.png','/imagenes/productos/',1024,522,'lista-accesorios'),(44,13,'PReconocimientoPlacas.png','/imagenes/productos/',1024,522,'lista-accesorios'),(45,2,'dronTV3.png','/imagenes/productos/',1920,978,'panel2'),(46,3,'dronPTZ.png','/imagenes/productos/',1920,978,'panel2'),(47,4,'dronVehicular2.png','/imagenes/productos/',1920,978,'panel2'),(48,5,'soportePoste3.png','/imagenes/productos/',1024,522,'panel2'),(49,6,'soporteMuro3.png','/imagenes/productos/',1024,522,'panel2'),(50,7,'soporteEsquina3.png','/imagenes/productos/',1024,522,'panel2'),(51,8,'baseTecho3.png','/imagenes/productos/',1024,522,'panel2'),(52,9,'totem3.png','/imagenes/productos/',1024,522,'panel2'),(53,10,'brazoPared3.png','/imagenes/productos/',1024,522,'panel2'),(54,11,'carcasaSemaforo3.png','/imagenes/productos/',1024,522,'panel2'),(55,16,'botonEmergencia.png','/imagenes/productos/',1024,522,'panel2'),(56,17,'pistolaRadar.png','/imagenes/productos/',1024,522,'panel2'),(57,19,'basePasillo3.png','/imagenes/productos/',1024,522,'panel2'),(58,12,'PReconocimientoFacial.png','/imagenes/productos/',137,137,'panel2'),(59,13,'PReconocimientoPlacas.png','/imagenes/productos/',137,137,'panel2'),(60,15,'PGeolocalizacion.png','/imagenes/productos/',128,128,'panel2'),(68,5,'soportePoste.png','/imagenes/productos/',1024,522,'panel1'),(69,6,'soporteMuro.png','/imagenes/productos/',1024,522,'panel1'),(70,7,'soporteEsquina.png','/imagenes/productos/',1024,522,'panel1'),(71,8,'baseTecho2.png','/imagenes/productos/',1024,522,'panel1'),(72,9,'totem3.png','/imagenes/productos/',1024,522,'panel1'),(73,10,'brazoPared3.png','/imagenes/productos/',1024,522,'panel1'),(74,11,'carcasaSemaforo2.png','/imagenes/productos/',1024,522,'panel1'),(75,16,'botonEmergencia.png','/imagenes/productos/',1024,522,'panel1'),(76,17,'pistolaRadar.png','/imagenes/productos/',1024,522,'panel1'),(77,19,'basePasillo3.png','/imagenes/productos/',1024,522,'panel1'),(78,5,'soportePoste','/videos/',1024,524,'video'),(79,6,'soporteMuro','/videos/',1024,524,'video'),(80,7,'soporteEsquina','/videos/',1024,524,'video'),(81,8,'baseTecho','/videos/',1024,524,'video'),(82,9,'totem','/videos/',1024,524,'video'),(83,10,'brazoPared','/videos/',1024,524,'video'),(84,11,'carcasaSemaforo','/videos/',1024,524,'video'),(85,16,'botonEmergencia','/videos/',1024,524,'video'),(86,17,'pistolaRadar','/videos/',1024,524,'video'),(87,19,'basePasillo','/videos/',1024,524,'video'),(88,5,'soportePoste.png','/imagenes/productos/',1024,522,'galeria'),(89,5,'soportePoste2.png','/imagenes/productos/',1024,522,'galeria'),(90,5,'soportePoste3.png','/imagenes/productos/',1024,522,'galeria'),(91,6,'soporteMuro.png','/imagenes/productos/',1024,522,'galeria'),(92,5,'soportePoste4.png','/imagenes/productos/',1024,522,'galeria'),(93,5,'soportePoste5.png','/imagenes/productos/',1024,522,'galeria'),(94,5,'soportePoste6.png','/imagenes/productos/',1024,522,'galeria'),(95,6,'soporteMuro2.png','/imagenes/productos/',1024,522,'galeria'),(96,6,'soporteMuro3.png','/imagenes/productos/',1024,522,'galeria'),(98,6,'soporteMuro4.png','/imagenes/productos/',1024,522,'galeria'),(99,6,'soporteMuro5.png','/imagenes/productos/',1024,522,'galeria'),(100,6,'soporteMuro6.png','/imagenes/productos/',1024,522,'galeria'),(101,7,'soporteEsquina.png','/imagenes/productos/',1024,522,'galeria'),(102,7,'soporteEsquina2.png','/imagenes/productos/',1024,522,'galeria'),(103,7,'soporteEsquina3.png','/imagenes/productos/',1024,522,'galeria'),(104,7,'soporteEsquina4.png','/imagenes/productos/',1024,522,'galeria'),(105,7,'soporteEsquina5.png','/imagenes/productos/',1024,522,'galeria'),(106,7,'soporteEsquina6.png','/imagenes/productos/',1024,522,'galeria'),(107,8,'baseTecho.png','/imagenes/productos/',1024,522,'galeria'),(108,8,'baseTecho2.png','/imagenes/productos/',1024,522,'galeria'),(109,8,'baseTecho3.png','/imagenes/productos/',1024,522,'galeria'),(110,8,'baseTecho4.png','/imagenes/productos/',1024,522,'galeria'),(111,8,'baseTecho5.png','/imagenes/productos/',1024,522,'galeria'),(112,8,'baseTecho6.png','/imagenes/productos/',1024,522,'galeria'),(113,9,'totem.png','/imagenes/productos/',1024,522,'galeria'),(114,9,'totem2.png','/imagenes/productos/',1024,522,'galeria'),(115,9,'totem3.png','/imagenes/productos/',1024,522,'galeria'),(116,9,'totem4.png','/imagenes/productos/',1024,522,'galeria'),(117,9,'totem5.png','/imagenes/productos/',1024,522,'galeria'),(118,9,'totem6.png','/imagenes/productos/',1024,522,'galeria'),(119,10,'brazoPared.png','/imagenes/productos/',1024,522,'galeria'),(120,10,'brazoPared2.png','/imagenes/productos/',1024,522,'galeria'),(121,10,'brazoPared3.png','/imagenes/productos/',1024,522,'galeria'),(122,10,'brazoPared4.png','/imagenes/productos/',1024,522,'galeria'),(123,10,'brazoPared5.png','/imagenes/productos/',1024,522,'galeria'),(124,10,'brazoPared6.png','/imagenes/productos/',1024,522,'galeria'),(125,11,'carcasaSemaforo.png','/imagenes/productos/',1024,522,'galeria'),(126,11,'carcasaSemaforo2.png','/imagenes/productos/',1024,522,'galeria'),(127,11,'carcasaSemaforo3.png','/imagenes/productos/',1024,522,'galeria'),(128,11,'carcasaSemaforo4.png','/imagenes/productos/',1024,522,'galeria'),(129,11,'carcasaSemaforo5.png','/imagenes/productos/',1024,522,'galeria'),(130,11,'carcasaSemaforo6.png','/imagenes/productos/',1024,522,'galeria'),(131,16,'botonEmergencia.png','/imagenes/productos/',1024,522,'galeria'),(132,16,'botonEmeregencia2.png','/imagenes/productos/',1024,522,'galeria'),(133,16,'botonEmergencia3.png','/imagenes/productos/',1024,522,'galeria'),(134,16,'botonEmergencia4.png','/imagenes/productos/',1024,522,'galeria'),(135,16,'botonEmergencia5.png','/imagenes/productos/',1024,522,'galeria'),(136,16,'botonEmergencia6.png','/imagenes/productos/',1024,522,'galeria'),(137,17,'pistolaRadar.png','/imagenes/productos/',1024,522,'galeria'),(138,17,'pistolaRadar2.png','/imagenes/productos/',1024,522,'galeria'),(139,17,'pistolaRadar3.png','/imagenes/productos/',1024,522,'galeria'),(140,17,'pistolaRadar4.png','/imagenes/productos/',1024,522,'galeria'),(141,17,'pistolaRadar5.png','/imagenes/productos/',1024,522,'galeria'),(142,17,'pistolaRadar6.png','/imagenes/productos/',1024,522,'galeria'),(143,18,'soporteP360.png','/imagenes/productos/',1024,522,'galeria'),(144,18,'soporteP3602.png','/imagenes/productos/',1024,522,'galeria'),(145,18,'soporteP3603.png','/imagenes/productos/',1024,522,'galeria'),(146,18,'soporteP3604.png','/imagenes/productos/',1024,522,'galeria'),(147,18,'soporteP3605.png','/imagenes/productos/',1024,522,'galeria'),(148,18,'soporteP3606.png','/imagenes/productos/',1024,522,'galeria'),(149,19,'basePasillo.png','/imagenes/productos/',1024,522,'galeria'),(150,19,'basePasillo2.png','/imagenes/productos/',1024,522,'galeria'),(151,19,'basePasillo3.png','/imagenes/productos/',1024,522,'galeria'),(152,19,'basePasillo4.png','/imagenes/productos/',1024,522,'galeria'),(153,19,'basePasillo5.png','/imagenes/productos/',1024,522,'galeria'),(154,19,'basePasillo6.png','/imagenes/productos/',1024,522,'galeria'),(155,2,'dronTV.png','/imagenes/productos/',1024,522,'panel1'),(156,3,'dronPTZ.png','/imagenes/productos/',1024,522,'panel1'),(157,4,'dronVehicular.png','/imagenes/productos/',1024,522,'panel1'),(158,12,'PReconocimientoFacial.png','/imagenes/productos/',173,173,'panel1'),(159,13,'PReconocimientoPlacas.png','/imagenes/productos/',173,173,'panel1'),(160,15,'PGeolocalizacion.png','/imagenes/productos/',173,173,'panel1');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negocio`
--

DROP TABLE IF EXISTS `negocio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negocio` (
  `userName` int(11) NOT NULL,
  `razonSocial` varchar(100) NOT NULL,
  `rfc` varchar(100) NOT NULL,
  `giroNegocio` varchar(600) NOT NULL,
  PRIMARY KEY (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negocio`
--

LOCK TABLES `negocio` WRITE;
/*!40000 ALTER TABLE `negocio` DISABLE KEYS */;
/*!40000 ALTER TABLE `negocio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paises` (
  `iso2` varchar(20) NOT NULL,
  `iso3` varchar(20) NOT NULL,
  `isoNum` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `capital` varchar(30) NOT NULL,
  `km2` double NOT NULL,
  `poblacion` double NOT NULL,
  PRIMARY KEY (`iso2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` VALUES ('AD','AND',20,'Andorra','Andorra la Vella',468,84000),('AE','ARE',784,'Emiratos Árabes Unidos','Abu Dhabi',82880,4975593),('AF','AFG',4,'Afganistán','Kabul',647500,29121286),('AG','ATG',28,'Antigua y Barbuda','Saint John\'s',443,86754),('AI','AIA',660,'Anguila','The Valley',102,13254),('AL','ALB',8,'Albania','Tirana',28748,2986952),('AM','ARM',51,'Armenia','Ereván',29800,2968000),('AO','AGO',24,'Angola','Luanda',1246700,13068161),('AQ','ATA',10,'Antártida','',14000000,0),('AR','ARG',32,'Argentina','Buenos Aires',2766890,41343201),('AS','ASM',16,'Samoa Americana','Pago Pago',199,57881),('AT','AUT',40,'Austria','Viena',83858,8205000),('AU','AUS',36,'Australia','Canberra',7686850,21515754),('AW','ABW',533,'Aruba','Oranjestad',193,71566),('AX','ALA',248,'Islas de Åland','Mariehamn',0,26711),('AZ','AZE',31,'Azerbaiyán','Bakú',86600,8303512),('BA','BIH',70,'Bosnia y Herzegovina','Sarajevo',51129,4590000),('BB','BRB',52,'Barbados','Bridgetown',431,285653),('BD','BGD',50,'Bangladesh','Dacca',144000,156118464),('BE','BEL',56,'Bélgica','Bruselas',30510,10403000),('BF','BFA',854,'Burkina Faso','Uagadugú',274200,16241811),('BG','BGR',100,'Bulgaria','Sofía',110910,7148785),('BH','BHR',48,'Bahréin','Manama',665,738004),('BI','BDI',108,'Burundi','Bujumbura',27830,9863117),('BJ','BEN',204,'Benín','Porto-Novo',112620,9056010),('BL','BLM',652,'San Bartolomé','Gustavia',21,8450),('BM','BMU',60,'Bermudas','Hamilton',53,65365),('BN','BRN',96,'Brunéi','Bandar Seri Begawan',5770,395027),('BO','BOL',68,'Bolivia','Sucre',1098580,9947418),('BQ','BES',535,'Bonaire','',0,18012),('BR','BRA',76,'Brasil','Brasilia',8511965,201103330),('BS','BHS',44,'Bahamas','Nassau',13940,301790),('BT','BTN',64,'Bután','Thimphu',47000,699847),('BV','BVT',74,'Isla Bouvet','',0,0),('BW','BWA',72,'Botsuana','Gaborone',600370,2029307),('BY','BLR',112,'Bielorrusia','Minsk',207600,9685000),('BZ','BLZ',84,'Belice','Belmopán',22966,314522),('CA','CAN',124,'Canadá','Ottawa',9984670,33679000),('CC','CCK',166,'Islas Cocos','West Island',14,628),('CD','COD',180,'Zaire','Kinshasa',2345410,70916439),('CF','CAF',140,'República Centroafricana','Bangui',622984,4844927),('CG','COG',178,'Congo [República]','Brazzaville',342000,3039126),('CH','CHE',756,'Suiza','Berna',41290,7581000),('CI','CIV',384,'Costa de Marfil','Yamoussoukro',322460,21058798),('CK','COK',184,'Islas Cook','Avarua',240,21388),('CL','CHL',152,'Chile','Santiago de Chile',756950,16746491),('CM','CMR',120,'Camerún','Yaundé',475440,19294149),('CN','CHN',156,'China','Pekín',9596960,1330044000),('CO','COL',170,'Colombia','Bogotá',1138910,44205293),('CR','CRI',188,'Costa Rica','San José',51100,4516220),('CU','CUB',192,'Cuba','La Habana',110860,11423000),('CV','CPV',132,'Cabo Verde','Praia',4033,508659),('CW','CUW',531,'Curazao','Willemstad',0,141766),('CX','CXR',162,'Isla Christmas','Flying Fish Cove',135,1500),('CY','CYP',196,'Chipre','Nicosia',9250,1102677),('CZ','CZE',203,'Chequia','Praga',78866,10476000),('DE','DEU',276,'Alemania','Berlín',357021,81802257),('DJ','DJI',262,'Yibuti','Yibuti',23000,740528),('DK','DNK',208,'Dinamarca','Copenhague',43094,5484000),('DM','DMA',212,'Dominica','Roseau',754,72813),('DO','DOM',214,'República Dominicana','Santo Domingo',48730,9823821),('DZ','DZA',12,'Argelia','Argel',2381740,34586184),('EC','ECU',218,'Ecuador','Quito',283560,14790608),('EE','EST',233,'Estonia','Tallin',45226,1291170),('EG','EGY',818,'Egipto','Cairo',1001450,80471869),('EH','ESH',732,'Sáhara Occidental','El Aaiún',266000,273008),('ER','ERI',232,'Eritrea','Asmara',121320,5792984),('ES','ESP',724,'España','Madrid',504782,46505963),('ET','ETH',231,'Etiopía','Addis Abeba',1127127,88013491),('FI','FIN',246,'Finlandia','Helsinki',337030,5244000),('FJ','FJI',242,'Fiyi','Suva',18270,875983),('FK','FLK',238,'Islas Malvinas','Puerto Argentino/Stanley',12173,2638),('FM','FSM',583,'Micronesia','Palikir',702,107708),('FO','FRO',234,'Islas Feroe','Tórshavn',1399,48228),('FR','FRA',250,'Francia','París',547030,64768389),('GA','GAB',266,'Gabón','Libreville',267667,1545255),('GB','GBR',826,'Reino Unido','Londres',244820,62348447),('GD','GRD',308,'Granada','Saint George\'s',344,107818),('GE','GEO',268,'Georgia','Tiflis',69700,4630000),('GF','GUF',254,'Guayana Francesa','Cayenne',91000,195506),('GG','GGY',831,'Guernsey','Saint Peter Port',78,65228),('GH','GHA',288,'Ghana','Accra',239460,24339838),('GI','GIB',292,'Gibraltar','Gibraltar',6.5,27884),('GL','GRL',304,'Groenlandia','Nuuk',2166086,56375),('GM','GMB',270,'Gambia','Banjul',11300,1593256),('GN','GIN',324,'Guinea','Conakry',245857,10324025),('GP','GLP',312,'Guadalupe','Basse-Terre',1780,443000),('GQ','GNQ',226,'Guinea Ecuatorial','Ciudad de Malabo',28051,1014999),('GR','GRC',300,'Grecia','Atenas',131940,11000000),('GS','SGS',239,'Islas Georgia del Sur y Sandwi','Grytviken',3903,30),('GT','GTM',320,'Guatemala','Guate',108890,13550440),('GU','GUM',316,'Guam','Agaña',549,159358),('GW','GNB',624,'Guinea-Bissáu','Bissau',36120,1565126),('GY','GUY',328,'Guyana','Georgetown',214970,748486),('HK','HKG',344,'Hong Kong','Hong Kong',1092,6898686),('HM','HMD',334,'Islas Heard y McDonald','',412,0),('HN','HND',340,'Honduras','Tegucigalpa',112090,7989415),('HR','HRV',191,'Croacia','Zagreb',56542,4491000),('HT','HTI',332,'Haití','Puerto Príncipe',27750,9648924),('HU','HUN',348,'Hungría','Budapest',93030,9930000),('ID','IDN',360,'Indonesia','Yakarta',1919440,242968342),('IE','IRL',372,'Irlanda','Dublín',70280,4622917),('IL','ISR',376,'Israel','',20770,7353985),('IM','IMN',833,'Isla de Man','Douglas',572,75049),('IN','IND',356,'India','Nueva Delhi',3287590,1173108018),('IO','IOT',86,'Territorio Británico del Océan','',60,4000),('IQ','IRQ',368,'Irak','Bagdad',437072,29671605),('IR','IRN',364,'Irán','Teherán',1648000,76923300),('IS','ISL',352,'Islandia','Reikiavik',103000,308910),('IT','ITA',380,'Italia','Roma',301230,60340328),('JE','JEY',832,'Jersey','Saint Helier',116,90812),('JM','JAM',388,'Jamaica','Kingston',10991,2847232),('JO','JOR',400,'Jordania','Ammán',92300,6407085),('JP','JPN',392,'Japón','Tokio',377835,127288000),('KE','KEN',404,'Kenia','Nairobi',582650,40046566),('KG','KGZ',417,'Kirguistán','Bishkek',198500,5508626),('KH','KHM',116,'Camboya','Phnom Penh',181040,14453680),('KI','KIR',296,'Kiribati','Tarawa',811,92533),('KM','COM',174,'Comoras','Moroni',2170,773407),('KN','KNA',659,'San Cristóbal y Nieves','Basseterre',261,49898),('KP','PRK',408,'Corea del Norte','Pyongyang',120540,22912177),('KR','KOR',410,'Corea del Sur','Seúl',98480,48422644),('KW','KWT',414,'Kuwait','Ciudad de Kuwait',17820,2789132),('KY','CYM',136,'Islas Caimán','George Town',262,44270),('KZ','KAZ',398,'Kazajstán','Astaná',2717300,15340000),('LA','LAO',418,'Laos','Vientiane',236800,6368162),('LB','LBN',422,'Líbano','Beirut',10400,4125247),('LC','LCA',662,'Santa Lucía','Castries',616,160922),('LI','LIE',438,'Liechtenstein','Vaduz',160,35000),('LK','LKA',144,'Sri Lanka','Colombo',65610,21513990),('LR','LBR',430,'Liberia','Monrovia',111370,3685076),('LS','LSO',426,'Lesotho','Maseru',30355,1919552),('LT','LTU',440,'Lituania','Vilna',65200,3565000),('LU','LUX',442,'Luxemburgo','Luxemburgo',2586,497538),('LV','LVA',428,'Letonia','Riga',64589,2217969),('LY','LBY',434,'Libia','Trípoli',1759540,6461454),('MA','MAR',504,'Marruecos','Rabat',446550,31627428),('MC','MCO',492,'Mónaco','Mónaco',1.95,32965),('MD','MDA',498,'Moldavia','Chi?in?u',33843,4324000),('ME','MNE',499,'Montenegro','Podgorica',14026,666730),('MF','MAF',663,'San Martín','Marigot',53,35925),('MG','MDG',450,'Madagascar','Antananarivo',587040,21281844),('MH','MHL',584,'Islas Marshall','Majuro',181.3,65859),('MK','MKD',807,'Macedonia','Skopje',25333,2061000),('ML','MLI',466,'Mali','Bamako',1240000,13796354),('MM','MMR',104,'Myanmar [Birmania]','Nay Pyi Taw',678500,53414374),('MN','MNG',496,'Mongolia','Ulán Bator',1565000,3086918),('MO','MAC',446,'Macao','Macao',254,449198),('MP','MNP',580,'Islas Marianas del Norte','Saipan',477,53883),('MQ','MTQ',474,'Martinica','Fort-de-France',1100,432900),('MR','MRT',478,'Mauritania','Nuakchott',1030700,3205060),('MS','MSR',500,'Montserrat','Plymouth',102,9341),('MT','MLT',470,'Malta','Valletta',316,403000),('MU','MUS',480,'Mauricio','Port Louis',2040,1294104),('MV','MDV',462,'Maldivas','Malé',300,395650),('MW','MWI',454,'Malaui','Lilongwe',118480,15447500),('MX','MEX',484,'México','Ciudad de México',1972550,112468855),('MY','MYS',458,'Malasia','Kuala Lumpur',329750,28274729),('MZ','MOZ',508,'Mozambique','Maputo',801590,22061451),('NA','NAM',516,'Namibia','Windhoek',825418,2128471),('NC','NCL',540,'Nueva Caledonia','Numea',19060,216494),('NE','NER',562,'Níger','Niamey',1267000,15878271),('NF','NFK',574,'Isla Norfolk','Kingston',34.6,1828),('NG','NGA',566,'Nigeria','Abuja',923768,154000000),('NI','NIC',558,'Nicaragua','Managua',129494,5995928),('NL','NLD',528,'Holanda','Amsterdam',41526,16645000),('NO','NOR',578,'Noruega','Oslo',324220,5009150),('NP','NPL',524,'Nepal','Katmandú',140800,28951852),('NR','NRU',520,'Nauru','',21,10065),('NU','NIU',570,'Isla Niue','Alofi',260,2166),('NZ','NZL',554,'Nueva Zelanda','Wellington',268680,4252277),('OM','OMN',512,'Omán','Mascate',212460,2967717),('PA','PAN',591,'Panamá','Ciudad de Panamá',78200,3410676),('PE','PER',604,'Perú','Lima',1285220,29907003),('PF','PYF',258,'Polinesia Francesa','Papeete',4167,270485),('PG','PNG',598,'Papúa-Nueva Guinea','Port Moresby',462840,6064515),('PH','PHL',608,'Filipinas','Manila',300000,99900177),('PK','PAK',586,'Pakistán','Islamabad',803940,184404791),('PL','POL',616,'Polonia','Varsovia',312685,38500000),('PM','SPM',666,'San Pedro y Miquelón','Saint-Pierre',242,7012),('PN','PCN',612,'Islas Pitcairn','Adamstown',47,46),('PR','PRI',630,'Puerto Rico','San Juan',9104,3916632),('PS','PSE',275,'Territorios Palestinos','',5970,3800000),('PT','PRT',620,'Portugal','Lisboa',92391,10676000),('PW','PLW',585,'Palau','Melekeok - Palau State Capital',458,19907),('PY','PRY',600,'Paraguay','Asunción',406750,6375830),('QA','QAT',634,'Qatar','Doha',11437,840926),('RE','REU',638,'Reunión','Saint-Denis',2517,776948),('RO','ROU',642,'Rumanía','Bucarest',237500,21959278),('RS','SRB',688,'Serbia','Belgrado',88361,7344847),('RU','RUS',643,'Rusia','Moscú',17100000,140702000),('RW','RWA',646,'Ruanda','Kigali',26338,11055976),('SA','SAU',682,'Arabia Saudí','Riad',1960582,25731776),('SB','SLB',90,'Islas Salomón','Honiara',28450,559198),('SC','SYC',690,'Seychelles','Victoria',455,88340),('SD','SDN',729,'Sudán','Jartum',1861484,35000000),('SE','SWE',752,'Suecia','Estocolmo',449964,9045000),('SG','SGP',702,'Singapur','Singapur',692.7,4701069),('SH','SHN',654,'Santa Elena','Jamestown',410,7460),('SI','SVN',705,'Eslovenia','Liubliana',20273,2007000),('SJ','SJM',744,'Svalbard y Jan Mayen','Longyearbyen',62049,2550),('SK','SVK',703,'Eslovaquia','Bratislava',48845,5455000),('SL','SLE',694,'Sierra Leona','Freetown',71740,5245695),('SM','SMR',674,'San Marino','San Marino',61.2,31477),('SN','SEN',686,'Senegal','Dakar',196190,12323252),('SO','SOM',706,'Somalia','Mogadiscio',637657,10112453),('SR','SUR',740,'Surinam','Paramaribo',163270,492829),('SS','SSD',728,'Sudán del Sur','Juba',644329,8260490),('ST','STP',678,'Santo Tomé y Príncipe','Santo Tomé',1001,175808),('SV','SLV',222,'El Salvador','San Salvador',21040,6052064),('SX','SXM',534,'San Martín','Philipsburg',0,37429),('SY','SYR',760,'Siria','Damasco',185180,22198110),('SZ','SWZ',748,'Suazilandia','Mbabane',17363,1354051),('TC','TCA',796,'Islas Turcas y Caicos','Cockburn Town',430,20556),('TD','TCD',148,'Chad','N\'Djamena',1284000,10543464),('TF','ATF',260,'Territorios Australes Francese','Port-aux-Français',7829,140),('TG','TGO',768,'Togo','Lomé',56785,6587239),('TH','THA',764,'Tailandia','Bangkok',514000,67089500),('TJ','TJK',762,'Tayikistán','Dushanbe',143100,7487489),('TK','TKL',772,'Tokelau','',10,1466),('TL','TLS',626,'Timor Oriental','Dili',15007,1154625),('TM','TKM',795,'Turkmenistán','A?gabat',488100,4940916),('TN','TUN',788,'Túnez','Tunez',163610,10589025),('TO','TON',776,'Tonga','Nuku\'alofa',748,122580),('TR','TUR',792,'Turquía','Ankara',780580,77804122),('TT','TTO',780,'Trinidad y Tobago','Puerto España',5128,1228691),('TV','TUV',798,'Tuvalu','Fongafale (atolón de Funafuti)',26,10472),('TW','TWN',158,'Taiwán','Taipéi',35980,22894384),('TZ','TZA',834,'Tanzania','Dodoma',945087,41892895),('UA','UKR',804,'Ucrania','Kiev',603700,45415596),('UG','UGA',800,'Uganda','Kampala',236040,33398682),('UM','UMI',581,'Islas menores alejadas de los ','',0,0),('US','USA',840,'Estados Unidos','Washington',9629091,310232863),('UY','URY',858,'Uruguay','Montevideo',176220,3477000),('UZ','UZB',860,'Uzbekistán','Tashkent',447400,27865738),('VA','VAT',336,'Ciudad del Vaticano','Vaticano',0.44,921),('VC','VCT',670,'San Vicente y las Granadinas','Kingstown',389,104217),('VE','VEN',862,'Venezuela','Caracas',912050,27223228),('VG','VGB',92,'Islas Vírgenes','Road Town',153,21730),('VI','VIR',850,'Islas Vírgenes de los Estados ','Charlotte Amalie',352,108708),('VN','VNM',704,'Vietnam','Hanoi',329560,89571130),('VU','VUT',548,'Vanuatu','Port Vila',12200,221552),('WF','WLF',876,'Wallis y Futuna','Mata-Utu',274,16025),('WS','WSM',882,'Samoa','Apia',2944,192001),('XK','XKX',0,'Kosovo','Pri?tina',0,1800000),('YE','YEM',887,'Yemen','Saná',527970,23495361),('YT','MYT',175,'Mayotte','Mamoudzou',374,159042),('ZA','ZAF',710,'Sudáfrica','Pretoria',1219912,49000000),('ZM','ZMB',894,'Zambia','Lusaka',752614,13460305),('ZW','ZWE',716,'Zimbawe','Harare',390580,11651858);
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido` (
  `idPedido` double NOT NULL AUTO_INCREMENT,
  `idStatus` int(11) NOT NULL,
  `fechaEntrega` datetime NOT NULL,
  PRIMARY KEY (`idPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `precios`
--

DROP TABLE IF EXISTS `precios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `precios` (
  `idPrecio` int(11) NOT NULL AUTO_INCREMENT,
  `idProducto` int(11) NOT NULL,
  `idAccesorio` int(11) NOT NULL,
  `defaults` tinyint(1) NOT NULL,
  PRIMARY KEY (`idPrecio`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precios`
--

LOCK TABLES `precios` WRITE;
/*!40000 ALTER TABLE `precios` DISABLE KEYS */;
INSERT INTO `precios` VALUES (1,1,1,1),(2,1,2,0),(3,1,3,1),(4,1,4,0),(5,1,5,0),(6,1,6,1),(7,1,7,0),(8,1,8,0),(9,1,9,1),(10,1,10,0),(11,1,11,0),(12,2,3,1),(13,2,4,0),(14,2,5,0),(15,2,6,1),(16,2,7,0),(17,2,8,0),(18,2,9,1),(19,2,10,0),(20,2,11,0),(21,3,2,1),(22,3,3,1),(23,3,4,0),(24,3,5,0),(25,3,6,1),(26,3,7,0),(27,3,8,0),(28,3,9,1),(29,3,10,0),(30,3,11,0),(31,4,1,1),(32,4,2,0),(33,4,3,0),(34,4,4,0),(35,4,5,1),(36,4,6,1),(37,4,7,0),(38,4,8,0),(39,4,9,1),(40,4,10,0),(41,4,11,0),(42,5,14,1),(43,6,15,1),(44,7,16,1),(45,8,17,1),(46,9,18,1),(47,10,19,1),(48,11,20,1),(49,12,23,1),(50,12,24,0),(51,12,25,0),(52,12,26,0),(53,13,27,1),(54,14,28,1),(55,14,29,0),(56,14,30,0),(57,14,31,0),(58,14,32,0),(59,14,33,0),(60,14,34,0),(61,14,35,0),(62,14,36,0),(63,15,37,1),(64,15,38,0),(65,15,39,0),(66,15,40,0),(67,16,12,1),(68,17,13,1),(69,18,44,1),(70,19,42,1),(71,3,1,0);
/*!40000 ALTER TABLE `precios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `familia` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL AUTO_INCREMENT,
  `idCategoria` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `descripcion` varchar(600) NOT NULL,
  `aspectosTecnicos` varchar(600) NOT NULL,
  `votos` double NOT NULL DEFAULT '0',
  `estrella1` double NOT NULL DEFAULT '0',
  `estrella2` double NOT NULL DEFAULT '0',
  `estrella3` double NOT NULL DEFAULT '0',
  `estrella4` double NOT NULL DEFAULT '0',
  `estrella5` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,1,1,'Drone','GlobalCorporation','El Dron clasico con su acabado en gris y su ligeresa ideal para ponerlo en cualquier parte de su negocio o casa, es resistente gracias a los materiales con los cuales fue construido.','Aluminio|93mm|110mm|400 gramos|70mm|1 GB LP-DDR2|512MB LP-DDR|Acelerómetro 3 Ejes|Magnetómetro 3 Ejes|Giroscopio de 3 Ejes|Sensor de Presión|32Kb + 32Kb L1 cache|512Kb L2 cache|Acelerador de Gráficos 3D|Multi-Procesamiento Simétrico|32Kb + 32Kb L1 cache|Compresión de video H.264 Motion JPEG|Resoluciones de 176x120 a 720x480|30 imágenes por segundo en todas las resoluciones|Ajustes de la imagen: Color, Compresión, Brillo, Contraste, Saturación',0,0,0,0,0,0),(1,2,1,'Drone TV','GlobalCorporation','Dron TV le permitira consultar todas las actualizaciones, noticias y nuevos productos con respecto a los productos Global.','Aluminio|93mm|110mm|400 gramos|70mm|1 GB LP-DDR2|512MB LP-DDR|Acelerómetro 3 Ejes|Magnetómetro 3 Ejes|Giroscopio de 3 Ejes|Sensor de Presión|32Kb + 32Kb L1 cache|512Kb L2 cache|Acelerador de Gráficos 3D|Multi-Procesamiento Simétrico|32Kb + 32Kb L1 cache|Compresión de video H.264 Motion JPEG|Resoluciones de 176x120 a 720x480|30 imágenes por segundo en todas las resoluciones|Ajustes de la imagen: Color, Compresión, Brillo, Contraste, Saturación',0,1,0,0,0,0),(1,3,1,'Drone PTZ','GlobalCorporation','Ideal para detectar cual quien movimiento dentro de su negocio o casa, el Dron PTZ contiene tecnología sensible al moviento, cubriendo un mayor espacio en visibilidad eliminando puntos ciegos entre camaras. Ligero y Resistente la mejor opcion para una vigilancia continua.','Aluminio|93mm|110mm|400 gramos|70mm|1 GB LP-DDR2|512MB LP-DDR|Acelerómetro 3 Ejes|Magnetómetro 3 Ejes|Giroscopio de 3 Ejes|Sensor de Presión|32Kb + 32Kb L1 cache|512Kb L2 cache|Acelerador de Gráficos 3D|Multi-Procesamiento Simétrico|32Kb + 32Kb L1 cache|Compresión de video H.264 Motion JPEG|Resoluciones de 176x120 a 720x480|30 imágenes por segundo en todas las resoluciones|Ajustes de la imagen: Color, Compresión, Brillo, Contraste, Saturación',0,0,0,0,0,0),(1,4,1,'Drone Vehicular','GlobalCorporation','El Dron Vehicular es ideal para vigilar constantemente su auto, podra identificar a las personas que se suban o que utilizen su sutomovil.','Aluminio|93mm|110mm|400 gramos|70mm|1 GB LP-DDR2|512MB LP-DDR|Acelerómetro 3 Ejes|Magnetómetro 3 Ejes|Giroscopio de 3 Ejes|Sensor de Presión|32Kb + 32Kb L1 cache|512Kb L2 cache|Acelerador de Gráficos 3D|Multi-Procesamiento Simétrico|32Kb + 32Kb L1 cache|Compresión de video H.264 Motion JPEG|Resoluciones de 176x120 a 720x480|30 imágenes por segundo en todas las resoluciones|Ajustes de la imagen: Color, Compresión, Brillo, Contraste, Saturación',0,0,0,0,0,0),(3,5,1,'Soporte de Poste','GlobalCorporation','Soporte Ideal para Colocar en Postes o Lugares Elevados','especificacion1,especificacion2,especificacion3,especificacion4,especificacion5 ,especificacion6,especificacion7,especificacion8',0,0,0,0,0,0),(3,6,1,'Soporte de Muro','GlobalCorporation','Soporte Ideal para Colocar tu Drone en Muro Especifico','especificacion1,especificacion2,especificacion3,especificacion4,especificacion5 ,especificacion6,especificacion7,especificacion8',0,0,0,0,0,0),(3,7,1,'Soporte de Esquina','GlobalCorporation','Ideal para colocar el Drone en una esquina de algun muro','especificacion1,especificacion2,especificacion3,especificacion4,especificacion5 ,especificacion6,especificacion7,especificacion8',0,0,0,3,0,0),(3,8,1,'Base para Techo','GlobalCorporation','Base para colocacion en los Techos','especificacion1,especificacion2,especificacion3,especificacion4,especificacion5 ,especificacion6,especificacion7,especificacion8',0,0,0,0,0,0),(3,9,1,'Totem mobiliario para interiores','GlobalCorporation','Terminado de mueble para colocacion en tienda comercial con drone de 200mm.','especificacion1,especificacion2,especificacion3,especificacion4,especificacion5 ,especificacion6,especificacion7,especificacion8',0,0,0,0,0,0),(3,10,1,'Brazo de Pared','GlobalCorporation','Brazo de Colocacion en caso de no Existir Postes Cercanos','especificacion1,especificacion2,especificacion3,especificacion4,especificacion5 ,especificacion6,especificacion7,especificacion8',0,0,0,0,0,0),(3,11,1,'Carcasa de Semáforo','GlobalCorporation','Carcasa para Drone de 200 mm en semáforo urbano.','especificacion1,especificacion2,especificacion3,especificacion4,especificacion5 ,especificacion6,especificacion7,especificacion8',0,0,0,0,0,0),(2,12,2,'Reconocimiento Facial','Global Corporation','El reconocimiento facial es una plataforma activa que abarca diverso software, como procesado de imágenes, reconocimiento de patrones, visión por ordenador y redes neuronales. Involucra tanto a investigadores del área de informática como a científicos. Estos sistemas utilizan un lector que define el rostro este se verifica comparando con los rostros existentes en la base de datos.','especificacion1,especificacion2,especificacion3,especificacion4,especificacion5 ,especificacion6,especificacion7,especificacion8',0,0,0,0,0,0),(2,13,2,'Reconocimiento de Placas','Global Corporation','La plataforma de Reconocimiento de Placas opera por medio del reconocimiento automático de matrículas. Es un método de vigilancia que utiliza reconocimiento optico para leer las matrículas de los vehículos. Esta es integrable al sistema de video vigilancia de las fuerzas de policia para su uso en las diferentes estructuras urbanas, casetas de peaje, puntos de revisión y autopistas de pago. la información obtenida es compradara con bases de datos.','especificacion1,especificacion2,especificacion3,especificacion4,especificacion5 ,especificacion6,especificacion7,especificacion8',0,0,0,0,0,0),(2,14,2,'Expediente Delictivo','Global Corporation','Plataforma para obtener el expediente del historial criminal.','especificacion1,especificacion2,especificacion3,especificacion4,especificacion5 ,especificacion6,especificacion7,especificacion8',0,0,0,0,0,0),(2,15,2,'Geolocalización','Global Corporation','Es un plataforma modular de alta disponibilidad para la gestión de actuaciones, comunicaciones y recursos fijos y móviles en caso de emergencia. Esta Plataforma es integrable al sistema de video vigilancia de las fuerzas de policía para su visualización ya sea en video, mapas digitales y aplicaciones con las mas avanzadas tecnologías.','especificacion1,especificacion2,especificacion3,especificacion4,especificacion5 ,especificacion6,especificacion7,especificacion8',0,0,0,0,0,0),(3,16,1,'Boton de Emergencia Telefonico','Global Corporation','Equipo de emergencias conectado directamente al centro de respuesta de emergencias.','especificacion1,especificacion2,especificacion3,especificacion4,especificacion5 ,especificacion6,especificacion7,especificacion8',0,0,0,0,0,0),(3,17,1,'Pistola Radar','Global Corporation','Equipo de Scaneo de Velocidad. Perfecto para Complementar las infracciones electronicas moviles.','especificacion1,especificacion2,especificacion3,especificacion4,especificacion5 ,especificacion6,especificacion7,especificacion8',0,0,0,0,0,0),(3,18,1,'Soporte de Poste 360 grados','Global Corporation','Soporte para poste con 4 camaras para cubrir un total de 360 grados de vision','especificacion1,especificacion2,especificacion3,especificacion4,especificacion5 ,especificacion6,especificacion7,especificacion8',0,0,0,0,0,0),(3,19,1,'Base Pasillo','Global Corporation','Base para montaje de Drone de 100 mm en interiores (pasillo de oficina).','especificacion1,especificacion2,especificacion3,especificacion4,especificacion5 ,especificacion6,especificacion7,especificacion8',0,0,0,0,0,0);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviciosusuario`
--

DROP TABLE IF EXISTS `serviciosusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serviciosusuario` (
  `idServicio` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `idAccesorio` int(11) NOT NULL,
  PRIMARY KEY (`idServicio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviciosusuario`
--

LOCK TABLES `serviciosusuario` WRITE;
/*!40000 ALTER TABLE `serviciosusuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `serviciosusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `idStatus` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`idStatus`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Cancelado'),(2,'Devuelto'),(3,'Entregado');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategoria`
--

DROP TABLE IF EXISTS `subcategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategoria` (
  `idSubCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `url` varchar(100) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  PRIMARY KEY (`idSubCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategoria`
--

LOCK TABLES `subcategoria` WRITE;
/*!40000 ALTER TABLE `subcategoria` DISABLE KEYS */;
INSERT INTO `subcategoria` VALUES (1,'Camaras','Seleccione el tipo de Camara que Requiere su Dron','/imagenes/pagina/','droneFrontal2.png'),(2,'Transmision de Datos','Seleccione el tipo de Transmision que requiere su Dron','/imagenes/pagina/','ethernet.png'),(3,'Disco Duro','Almacenamiento Principal donde se encuentra el SIstema Operativo y la configuracion del Dron','/imagenes/pagina/','discoDuro.png'),(4,'Almacenamiento Extra','Disco Secundario que provee una mayor capacidad de almacenamiento extra de video','/imagenes/pagina/','ssd.jpg'),(5,'Reconocimiento Facial','Plataforma con diferentes Software encargados del Reconocimiento Facial','/imagenes/pagina/','PReconocimientoFacial.png'),(6,'Reconocimiento de Placas','Plataforma para reconocimiento de placas y recuperacion o busqueda de vehiculos robados','/imagenes/pagina/','PReconocimientoPlacas.png'),(7,'Expediente Delictivo','Plataforma que contiene diferentes programas para tratar el perfil delictivo de una persona','/imagenes/pagina/','PExpedienteDelictivo.png'),(8,'Geolocalización','Plataforma para localización Satelital','/imagenes/pagina/','PGeolocalizacion.png');
/*!40000 ALTER TABLE `subcategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipopago`
--

DROP TABLE IF EXISTS `tipopago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipopago` (
  `userName` varchar(50) NOT NULL,
  `nCuentaTelefono` varchar(100) NOT NULL,
  `compania` varchar(100) NOT NULL,
  PRIMARY KEY (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipopago`
--

LOCK TABLES `tipopago` WRITE;
/*!40000 ALTER TABLE `tipopago` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipopago` ENABLE KEYS */;
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
  `name` varchar(100) NOT NULL,
  `lastNameFather` varchar(100) NOT NULL,
  `lastNameMother` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `town` varchar(100) NOT NULL,
  `township` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `postalCode` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `typeUser` varchar(50) NOT NULL,
  `validate` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `lastAccess` datetime NOT NULL,
  `creation` datetime NOT NULL,
  `up_date` datetime NOT NULL,
  `interfaz` varchar(25) NOT NULL,
  PRIMARY KEY (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('5516318161','10a0d765c7c285036248e0e9a9e8b800','Claro','Demo','','','','','','','',0,'','',1,1,'2013-11-25 00:00:00','2013-11-25 00:00:00','2013-11-25 00:00:00','viveclaro'),('alfredo.luna','fc094c037514bd7a3fb6589774721773','Alfredo','Luna','Leon','','','','','','',0,'','',1,1,'2013-11-19 00:00:00','2013-11-19 00:00:00','2013-11-19 00:00:00','praxair'),('arturo.lozano','addfe1da850aa0dc341e400ab847ee02','Arturo','Lozano','','','','','','','',0,'','',1,1,'2013-11-19 00:00:00','2013-11-19 00:00:00','2013-11-19 00:00:00','praxair'),('erick_ga','e10adc3949ba59abbe56e057f20f883e','Erick','Aguilar','Garcia','Robles #26','mx','df','mh','union olivos','erick@hotmail.com',1530,'','particular',1,1,'0000-00-00 00:00:00','2012-11-26 11:12:31','2012-11-26 11:12:31',''),('federal','97e10870c1c1130f46519c9006903c9b','Federal','Admin','Demo','','Mexico','','','','',0,'','',1,1,'2013-10-18 18:19:00','2013-10-18 18:19:00','2013-10-18 18:19:00',''),('jesuseduardo','ace86531e9fa1888968532a32242c055','Jesus Eduardo','Gomez','','','','','','','',0,'','',1,1,'2013-11-19 00:00:00','2013-11-19 00:00:00','2013-11-19 00:00:00','praxair'),('luis.fuentes','fcea920f7412b5da7be0cf42b8c93759','Luis','Fuentes','Colomo','Calle Sierra Gorda #13','','','','','',0,'','particular',1,1,'2012-09-17 09:58:44','2012-09-17 09:58:44','2012-09-17 09:58:44','taxi'),('mariano.ojeda','20559968131bf76a9d19a97755175338','Mariano','Ojeda','','','','','','','',0,'31874654','',1,1,'2013-11-15 00:00:00','2013-11-15 00:00:00','2013-11-15 00:00:00','praxair'),('oscar_khan','9df04c7c7f6d9686aebee5b6733a11b3','Oscar','Flores','Medellín','Agua Marina #7, Col. La Joya, Tlaxcala, Tlax.','','','','','',0,'','particular',1,1,'2012-08-27 18:41:31','2012-08-27 18:00:01','2012-08-27 18:41:31','bus');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `version`
--

DROP TABLE IF EXISTS `version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `version` (
  `idVersion` int(11) NOT NULL AUTO_INCREMENT,
  `idProducto` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `detalles` varchar(100) NOT NULL,
  PRIMARY KEY (`idVersion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `version`
--

LOCK TABLES `version` WRITE;
/*!40000 ALTER TABLE `version` DISABLE KEYS */;
/*!40000 ALTER TABLE `version` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-17 13:15:37
