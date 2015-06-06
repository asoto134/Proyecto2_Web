CREATE DATABASE  IF NOT EXISTS `proyecto2web` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `proyecto2web`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: localhost    Database: proyecto2web
-- ------------------------------------------------------
-- Server version	5.6.12-log

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
-- Table structure for table `bitacora_contrasenias`
--

DROP TABLE IF EXISTS `bitacora_contrasenias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitacora_contrasenias` (
  `Usuario_idUsuario` int(11) NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla con los datos de usuario.',
  `contrasenia` varchar(45) NOT NULL COMMENT 'La contraseña actual.',
  `contraseniaAnterior` varchar(45) NOT NULL COMMENT 'La contraseña anterior.',
  `fechaModificacion` date NOT NULL COMMENT 'Fecha en la que se modifico la contraseña.',
  PRIMARY KEY (`Usuario_idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla donde se lleva un control de los cambios en la contraseña de cada usuario.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora_contrasenias`
--

LOCK TABLES `bitacora_contrasenias` WRITE;
/*!40000 ALTER TABLE `bitacora_contrasenias` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitacora_contrasenias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cantidad_huevos`
--

DROP TABLE IF EXISTS `cantidad_huevos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cantidad_huevos` (
  `idcantidad_Huevos` int(11) NOT NULL AUTO_INCREMENT,
  `Cantidad` varchar(45) DEFAULT NULL,
  `fechaCreacion` date DEFAULT NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` date DEFAULT NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idcantidad_Huevos`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cantidad_huevos`
--

LOCK TABLES `cantidad_huevos` WRITE;
/*!40000 ALTER TABLE `cantidad_huevos` DISABLE KEYS */;
INSERT INTO `cantidad_huevos` VALUES (1,'15 huevos','2015-06-02','root@localhost',NULL,NULL),(2,'2 Huevos','2015-06-02','root@localhost',NULL,NULL),(3,'3 a 5 huevos','2015-06-02','root@localhost',NULL,NULL),(4,'2 o 3 huevos','2015-06-02','root@localhost',NULL,NULL),(5,'2 a 4 huevos','2015-06-02','root@localhost',NULL,NULL),(6,'1 huevo','2015-06-02','root@localhost',NULL,NULL),(7,'Desconocido','2015-06-02','root@localhost',NULL,NULL),(8,'3 huevos','2015-06-02','root@localhost',NULL,NULL),(9,'3 o 4 huevos','2015-06-02','root@localhost',NULL,NULL);
/*!40000 ALTER TABLE `cantidad_huevos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`cantidad_Huevos_BEFORE_INSERT` BEFORE INSERT ON `cantidad_Huevos` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`cantidad_Huevos_BEFORE_UPDATE` BEFORE UPDATE ON `cantidad_Huevos` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `clase`
--

DROP TABLE IF EXISTS `clase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clase` (
  `idClase` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id que se asigna automaticamente por la base de datos a cada clase.',
  `Clase` varchar(45) DEFAULT NULL COMMENT 'Nombre de la  clase.',
  `fechaCreacion` date DEFAULT NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` date DEFAULT NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idClase`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Tabla donde se guardan las clases de cada ave.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clase`
--

LOCK TABLES `clase` WRITE;
/*!40000 ALTER TABLE `clase` DISABLE KEYS */;
INSERT INTO `clase` VALUES (1,'Aves','2015-06-02','root@localhost',NULL,NULL);
/*!40000 ALTER TABLE `clase` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Clase_BEFORE_INSERT` BEFORE INSERT ON `Clase` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Clase_BEFORE_UPDATE` BEFORE UPDATE ON `Clase` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `color` (
  `idColor` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id que se asigna automaticamente por la base de datos a cada color.',
  `Color` varchar(45) DEFAULT NULL COMMENT 'Nombre del color.',
  `fechaCreacion` date DEFAULT NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` date DEFAULT NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idColor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Tabla donde se guardan los colores de las aves.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (1,'Amarillo con Rojo','2015-06-02','root@localhost',NULL,NULL),(2,'Blanco','2015-06-02','root@localhost',NULL,NULL),(3,'Multicolor','2015-06-02','root@localhost',NULL,NULL),(4,'Blanco con Cafe','2015-06-02','root@localhost',NULL,NULL),(5,'Azul','2015-06-02','root@localhost',NULL,NULL);
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Color_BEFORE_INSERT` BEFORE INSERT ON `Color` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Color_BEFORE_UPDATE` BEFORE UPDATE ON `Color` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `correo`
--

DROP TABLE IF EXISTS `correo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `correo` (
  `Persona_idPersona` int(11) NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla con los datos de la persona.',
  `Correo` varchar(45) NOT NULL COMMENT 'correo de la persona.',
  `fechaCreacion` date DEFAULT NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` date DEFAULT NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`Persona_idPersona`,`Correo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla donde se guardan los correos de cada persona.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correo`
--

LOCK TABLES `correo` WRITE;
/*!40000 ALTER TABLE `correo` DISABLE KEYS */;
INSERT INTO `correo` VALUES (45,'b','2015-06-03','root@localhost',NULL,NULL),(113790395,'sotoadrian4@gmail.com','2015-05-30','root@localhost','2015-06-03','root@localhost'),(113790396,'prueba4@prueba.com','2015-06-02','root@localhost',NULL,NULL);
/*!40000 ALTER TABLE `correo` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Correo_BEFORE_INSERT` BEFORE INSERT ON `Correo` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Correo_BEFORE_UPDATE` BEFORE UPDATE ON `Correo` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `especie`
--

DROP TABLE IF EXISTS `especie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especie` (
  `idEspecie` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id que se asigna automaticamente por la base de datos a cada especie.',
  `Genero_idGenero` int(11) NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla con los datos del genero del ave.',
  `Especie` varchar(45) DEFAULT NULL COMMENT 'Nombre de la especie del ave.',
  `Nombre_Comun` varchar(45) DEFAULT NULL COMMENT 'Nombre común del ave.',
  `Nombre_en_Ingles` varchar(45) DEFAULT NULL COMMENT 'Nombre en inglés del ave.',
  `Nombre_Cientifico` varchar(45) DEFAULT NULL COMMENT 'Nombre cientifico del ave.',
  `fechaCreacion` date DEFAULT NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` date DEFAULT NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  `cantidad_Huevos_idcantidad_Huevos` int(11) NOT NULL,
  PRIMARY KEY (`idEspecie`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='Tabla donde se guardan las especies de aves.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especie`
--

LOCK TABLES `especie` WRITE;
/*!40000 ALTER TABLE `especie` DISABLE KEYS */;
INSERT INTO `especie` VALUES (1,1,'Cuclillos','Garrapatero Piquiestriado','Groovee-billed Ani','Crotophaga sulcirostris','2015-06-02','root@localhost',NULL,NULL,1),(2,2,'Chotacabras','Chotacabras Campestre','Common Pauraque','Nyctidromus albicollis','2015-06-02','root@localhost',NULL,NULL,2),(3,3,'Martines','Martín Pescador Verde','Green Kingfisher','Chloroceryle americana','2015-06-02','root@localhost',NULL,NULL,3),(4,4,'Bucos','Buco Bigotiblanco','White-Whiskered Puffbird','Malacoptila panamensis','2015-06-02','root@localhost',NULL,NULL,4),(5,5,'Jacamares','Jacamara Rabirrufa','Rufous-tailed Jacamar','Galbula ruficauda','2015-06-02','root@localhost',NULL,NULL,5),(6,6,'Reinitas','Reinita Azulada','Tropical Parula','Parula pitiayumi','2015-06-02','root@localhost',NULL,NULL,6),(7,7,'Reinitas','Reinita Amarilla','Yellow Warbler','Dendroica petechia','2015-06-02','root@localhost',NULL,NULL,7),(8,8,'Reinitas','Reinita  Cachetinegra','Kentucky Warbler','Oporornis formosus','2015-06-02','root@localhost',NULL,NULL,8),(9,9,'Reinitas','Candelita Pechinegra','Slate-throated Redstart','Myioborus miniatus','2015-06-02','root@localhost',NULL,NULL,4),(10,9,'Reinitas','Candelita Collajera','Collared Redstart','Myioborus torquatus','2015-06-02','root@localhost',NULL,NULL,4),(11,10,'Reinitas','Reinita Cabecicastaña','Chestnut-capped Warbler','Basileuteurus delattrii','2015-06-02','root@localhost',NULL,NULL,4),(12,17,'Pinzones','Pinzón Piquianaranjado','Orange-billed Sparrow','Arremon aurantiirostris','2015-06-02','root@localhost',NULL,NULL,2),(13,18,'Pinzones','Pinzón Cabecilistado','Black-striped Sparrow','Arremonops conirostris','2015-06-02','root@localhost',NULL,NULL,4),(14,20,'Soterrés','Soterré Chinchiriguí','Plain Wren','Thryothorus modestus','2015-06-02','root@localhost',NULL,NULL,2),(15,20,'Soterrés','Soterré Carimoteado ','Rufous-breasted Wren','Thryothorus rutilus','2015-06-02','root@localhost',NULL,NULL,8),(16,21,'Soterrés','Soterré Selvático Pechiblanco','White-breasted Wood-Wren','Henicorhina leucosticta','2015-06-02','root@localhost',NULL,NULL,2),(17,21,'Soterrés','Soterré Selvático Pechigris','Gay-breasted Wood-Wren','Henicorhna leucophrys','2015-06-02','root@localhost',NULL,NULL,2),(18,11,'Semilleros','Saltator Gorjianteado','Buff-throated Saltator','Saltator maximus','2015-06-02','root@localhost',NULL,NULL,2),(19,11,'Semilleros','Saltator Listado','Streaked Saltator','Saltator albicollis','2015-06-02','root@localhost',NULL,NULL,2),(20,12,'Semilleros','Piquigureso Negro Azulado','Blue-black','Cyanocompsa cyanoides','2015-06-02','root@localhost',NULL,NULL,2),(21,13,'Semilleros','Semillero Cariamarillo','Yellow-faced Grassquit','Tiaris olivacea','2015-06-02','root@localhost',NULL,NULL,4),(22,14,'Semilleros','Espiguero Variable','Variable Seedeater','Sporophila aurita','2015-06-02','root@localhost',NULL,NULL,4),(23,15,'Semilleros','Jilguero Menor','Lesser or Dark-backed Gold-finch','Carduelis psaltria','2015-06-02','root@localhost',NULL,NULL,9),(24,16,'Semilleros','Fringilo Gargantiamarillo','Yellow-throated Brush-finch','Atlapetes gutturalis','2015-06-02','root@localhost',NULL,NULL,4),(25,19,'Semilleros','Chingolo','Rufous-collared Sparrow','Zonotrichia capensis','2015-06-02','root@localhost',NULL,NULL,4);
/*!40000 ALTER TABLE `especie` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Especie_BEFORE_INSERT` BEFORE INSERT ON `Especie` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Especie_BEFORE_UPDATE` BEFORE UPDATE ON `Especie` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `familia`
--

DROP TABLE IF EXISTS `familia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `familia` (
  `idFamilia` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id que se asigna automaticamente por la base de datos a cada familia.',
  `Suborden_idSuborden` int(11) NOT NULL,
  `Familia` varchar(45) DEFAULT NULL COMMENT 'Nombre de la familia.',
  `fechaCreacion` date DEFAULT NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` date DEFAULT NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idFamilia`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Tabla para guardar los datos de las familias de aves.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familia`
--

LOCK TABLES `familia` WRITE;
/*!40000 ALTER TABLE `familia` DISABLE KEYS */;
INSERT INTO `familia` VALUES (1,1,'Cuculidae','2015-06-02','root@localhost',NULL,NULL),(2,2,'Caprimulgidae','2015-06-02','root@localhost',NULL,NULL),(3,3,'Alcedinidae','2015-06-02','root@localhost',NULL,NULL),(4,4,'Galbulidae','2015-06-02','root@localhost',NULL,NULL),(5,4,'Bucconidae','2015-06-02','root@localhost',NULL,NULL),(6,5,'Parulidae','2015-06-02','root@localhost',NULL,NULL),(7,6,'Fringillidae','2015-06-02','root@localhost',NULL,NULL),(8,5,'Troglodytidae','2015-06-02','root@localhost',NULL,NULL);
/*!40000 ALTER TABLE `familia` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Familia_BEFORE_INSERT` BEFORE INSERT ON `Familia` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Familia_BEFORE_UPDATE` BEFORE UPDATE ON `Familia` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `fotografia`
--

DROP TABLE IF EXISTS `fotografia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fotografia` (
  `idFotografia` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id que se asigna automaticamente por la base de datos a cada fotografia.',
  `nombre` varchar(45) DEFAULT NULL COMMENT 'Nombre de la fotografia.',
  `descripcion` varchar(100) DEFAULT NULL COMMENT 'Una breve descripcion de la fotografia.',
  `formato` varchar(45) DEFAULT NULL COMMENT 'Tipo de formato de la imagen.',
  `tamanio` int(11) DEFAULT NULL COMMENT 'tamaño en bytes de la imagen.',
  `URL` varchar(100) DEFAULT NULL COMMENT 'Codificacion de la imagen en la base de datos.',
  `fechaCreacion` date DEFAULT NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` date DEFAULT NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  `Pajaros_X_Persona_Pajaros_X_Persona_id` int(11) NOT NULL,
  PRIMARY KEY (`idFotografia`,`Pajaros_X_Persona_Pajaros_X_Persona_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla donde se guardan las imagenes de cada usuario.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotografia`
--

LOCK TABLES `fotografia` WRITE;
/*!40000 ALTER TABLE `fotografia` DISABLE KEYS */;
/*!40000 ALTER TABLE `fotografia` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Fotografia_BEFORE_INSERT` BEFORE INSERT ON `Fotografia` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Fotografia_BEFORE_UPDATE` BEFORE UPDATE ON `Fotografia` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genero` (
  `idGenero` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id que se asigna automaticamente por la base de datos a cada genero.',
  `Familia_idFamilia` int(11) NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla con los datos de la fam ilia del ave.',
  `Genero` varchar(45) DEFAULT NULL COMMENT 'Nombre del genero.',
  `fechaCreacion` date DEFAULT NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` date DEFAULT NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='Tabla donde se guardan los generos del ave.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,1,'Crotophaga','2015-06-02','root@localhost',NULL,NULL),(2,2,'Nyctidromus','2015-06-02','root@localhost',NULL,NULL),(3,3,'Chloroceryle','2015-06-02','root@localhost',NULL,NULL),(4,4,'Galbula','2015-06-02','root@localhost',NULL,NULL),(5,5,'Malacoptila','2015-06-02','root@localhost',NULL,NULL),(6,6,'Parula','2015-06-02','root@localhost',NULL,NULL),(7,6,'Setophaga','2015-06-02','root@localhost',NULL,NULL),(8,6,'Oporornis','2015-06-02','root@localhost',NULL,NULL),(9,6,'Myioborus','2015-06-02','root@localhost',NULL,NULL),(10,6,'Basileuterus','2015-06-02','root@localhost',NULL,NULL),(11,7,'Saltator','2015-06-02','root@localhost',NULL,NULL),(12,7,'Cyanocompsa','2015-06-02','root@localhost',NULL,NULL),(13,7,'Tiaris','2015-06-02','root@localhost',NULL,NULL),(14,7,'Sporophila','2015-06-02','root@localhost',NULL,NULL),(15,7,'Carduelis','2015-06-02','root@localhost',NULL,NULL),(16,7,'Atlapetes','2015-06-02','root@localhost',NULL,NULL),(17,7,'Arremon','2015-06-02','root@localhost',NULL,NULL),(18,7,'Arremonops','2015-06-02','root@localhost',NULL,NULL),(19,7,'Zonotrichia','2015-06-02','root@localhost',NULL,NULL),(20,8,'Thryothorus','2015-06-02','root@localhost',NULL,NULL),(21,8,'Henicorhina','2015-06-02','root@localhost',NULL,NULL);
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Genero_BEFORE_INSERT` BEFORE INSERT ON `Genero` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Genero_BEFORE_UPDATE` BEFORE UPDATE ON `Genero` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `orden`
--

DROP TABLE IF EXISTS `orden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orden` (
  `idOrden` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id que se asigna automaticamente por la base de datos a cada orden.',
  `Clase_idClase` int(11) NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla con los datos de la clase en la tabla de las clases.',
  `Orden` varchar(45) DEFAULT NULL COMMENT 'Nombre del orden.',
  `fechaCreacion` date DEFAULT NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` date DEFAULT NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idOrden`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Tabla donde se guardan los tipo de orden de cada ave.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden`
--

LOCK TABLES `orden` WRITE;
/*!40000 ALTER TABLE `orden` DISABLE KEYS */;
INSERT INTO `orden` VALUES (1,1,'Cuculiformes','2015-06-02','root@localhost',NULL,NULL),(2,1,'Caprimulgiformes','2015-06-02','root@localhost',NULL,NULL),(3,1,'Coraciiformes','2015-06-02','root@localhost',NULL,NULL),(4,1,'Piciformes','2015-06-02','root@localhost',NULL,NULL),(5,1,'Passeriformes','2015-06-02','root@localhost',NULL,NULL);
/*!40000 ALTER TABLE `orden` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Orden_BEFORE_INSERT` BEFORE INSERT ON `Orden` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Orden_BEFORE_UPDATE` BEFORE UPDATE ON `Orden` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pajaros_x_persona`
--

DROP TABLE IF EXISTS `pajaros_x_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pajaros_x_persona` (
  `Pajaros_X_Persona_id` int(11) NOT NULL AUTO_INCREMENT,
  `Persona_idPersona` int(11) NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla con los datos de la persona.',
  `Color_idColor` int(11) NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla con los datos del color.',
  `Zona_de_Vida_idZonadeVida` int(11) NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla con los datos de la zona de vida.',
  `Especie_idEspecie` int(11) NOT NULL,
  `fechaCreacion` date DEFAULT NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` date DEFAULT NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`Pajaros_X_Persona_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Tabla donde se guardan los datos de las aves que ha visto cada persona.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pajaros_x_persona`
--

LOCK TABLES `pajaros_x_persona` WRITE;
/*!40000 ALTER TABLE `pajaros_x_persona` DISABLE KEYS */;
INSERT INTO `pajaros_x_persona` VALUES (1,1,1,1,2,'2015-06-02','root@localhost',NULL,NULL),(2,2,1,2,1,'2015-06-02','root@localhost',NULL,NULL),(3,1,2,2,1,'2015-06-02','root@localhost',NULL,NULL),(4,1,1,3,3,'2015-06-02','root@localhost',NULL,NULL),(5,2,3,2,4,'2015-06-02','root@localhost',NULL,NULL),(6,3,3,1,5,'2015-06-02','root@localhost',NULL,NULL);
/*!40000 ALTER TABLE `pajaros_x_persona` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Pajaros_X_Persona_BEFORE_INSERT` BEFORE INSERT ON `Pajaros_X_Persona` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Pajaros_X_Persona_BEFORE_UPDATE` BEFORE UPDATE ON `Pajaros_X_Persona` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `idPersona` int(11) NOT NULL COMMENT 'Identificador de la persona, en nuestro caso el numero de cédula de la persona.',
  `Usuario_idUsuario` int(11) NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla en la tabla de usuario, que nos da los datos de usuario de la persona.',
  `Tipo_de_Persona_idTipo_de_Persona` int(11) NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla en la tabla de tipo de persona, que nos indica que tipo de persona es.',
  `Nombre` varchar(45) NOT NULL COMMENT 'Nombre de la persona.',
  `Apellido` varchar(45) NOT NULL COMMENT 'Apellido de la persona.',
  `fechaCreacion` date DEFAULT NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` date DEFAULT NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla para guardar los datos de las personas.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (45,3,2,'b','b','2015-06-03','root@localhost',NULL,NULL),(113790395,1,1,'Adrian','Soto','2015-05-30','root@localhost','2015-06-03','root@localhost'),(113790396,2,1,'Adriana','Solano','2015-06-02','root@localhost',NULL,NULL);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Persona_BEFORE_INSERT` BEFORE INSERT ON `Persona` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Persona_BEFORE_UPDATE` BEFORE UPDATE ON `Persona` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `suborden`
--

DROP TABLE IF EXISTS `suborden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suborden` (
  `idSuborden` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id que se asigna automaticamente por la base de datos a cada sub orden.',
  `Orden_idOrden` int(11) NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla con los datos del orden.',
  `Suborden` varchar(45) DEFAULT NULL COMMENT 'Nombre del sub orden del ave.',
  `fechaCreacion` date DEFAULT NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` date DEFAULT NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idSuborden`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Tabla donde se guardan los subordenes de las aves.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suborden`
--

LOCK TABLES `suborden` WRITE;
/*!40000 ALTER TABLE `suborden` DISABLE KEYS */;
INSERT INTO `suborden` VALUES (1,1,'Cuculiformes','2015-06-02','root@localhost',NULL,NULL),(2,2,'Caprimulgiformes','2015-06-02','root@localhost',NULL,NULL),(3,3,'Alcedines','2015-06-02','root@localhost',NULL,NULL),(4,4,'Piciformes','2015-06-02','root@localhost',NULL,NULL),(5,5,'Passeriformes','2015-06-02','root@localhost',NULL,NULL),(6,5,'Passeri','2015-06-02','root@localhost',NULL,NULL);
/*!40000 ALTER TABLE `suborden` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Suborden_BEFORE_INSERT` BEFORE INSERT ON `Suborden` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Suborden_BEFORE_UPDATE` BEFORE UPDATE ON `Suborden` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `telefono`
--

DROP TABLE IF EXISTS `telefono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefono` (
  `Persona_idPersona` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Llave foranea que nos lleva a la tupla con los datos de la persona.',
  `Telefono` varchar(45) NOT NULL COMMENT 'Telefono de la persona.',
  `fechaCreacion` date DEFAULT NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` date DEFAULT NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`Persona_idPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=113790397 DEFAULT CHARSET=utf8 COMMENT='Tabla donde se guardan los telefonos de cada usuario. ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefono`
--

LOCK TABLES `telefono` WRITE;
/*!40000 ALTER TABLE `telefono` DISABLE KEYS */;
INSERT INTO `telefono` VALUES (45,'45','2015-06-03','root@localhost',NULL,NULL),(113790395,'83262011','2015-05-30','root@localhost','2015-06-03','root@localhost'),(113790396,'83262012','2015-06-02','root@localhost',NULL,NULL);
/*!40000 ALTER TABLE `telefono` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Telefono_BEFORE_INSERT` BEFORE INSERT ON `Telefono` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Telefono_BEFORE_UPDATE` BEFORE UPDATE ON `Telefono` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tipo_de_persona`
--

DROP TABLE IF EXISTS `tipo_de_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_de_persona` (
  `idTipo_de_Persona` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id que se asigna automaticamente por la base de datos a cada tipo de persona.',
  `Tipo_de_Persona` varchar(45) NOT NULL COMMENT 'Nombre del tipo de persona.',
  `fechaCreacion` date DEFAULT NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` date DEFAULT NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idTipo_de_Persona`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Tabla donde se guardan los tipos de persona';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_de_persona`
--

LOCK TABLES `tipo_de_persona` WRITE;
/*!40000 ALTER TABLE `tipo_de_persona` DISABLE KEYS */;
INSERT INTO `tipo_de_persona` VALUES (1,'Ornitologo','2015-05-30','root@localhost',NULL,NULL),(2,'Aficionado','2015-05-30','root@localhost',NULL,NULL);
/*!40000 ALTER TABLE `tipo_de_persona` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Tipo_de_Persona_BEFORE_INSERT` BEFORE INSERT ON `Tipo_de_Persona` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Tipo_de_Persona_BEFORE_UPDATE` BEFORE UPDATE ON `Tipo_de_Persona` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tipo_de_pico`
--

DROP TABLE IF EXISTS `tipo_de_pico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_de_pico` (
  `idTipo_de_Pico` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id que se asigna automaticamente por la base de datos a cada tipo de pico.',
  `Tipo_de_Pico` varchar(45) DEFAULT NULL COMMENT 'Nombre del tipo de pico.',
  `Especie_idEspecie` int(11) NOT NULL,
  `fechaCreacion` date DEFAULT NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` date DEFAULT NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idTipo_de_Pico`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='Tabla donde se guardan los tipos de pico de cada ave.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_de_pico`
--

LOCK TABLES `tipo_de_pico` WRITE;
/*!40000 ALTER TABLE `tipo_de_pico` DISABLE KEYS */;
INSERT INTO `tipo_de_pico` VALUES (1,'Pico sin surcos',1,'2015-06-02','root@localhost',NULL,NULL),(2,'Pico amplio',2,'2015-06-02','root@localhost',NULL,NULL),(3,'Pico grande',3,'2015-06-02','root@localhost',NULL,NULL),(4,'Pico con clac',4,'2015-06-02','root@localhost',NULL,NULL),(5,'Pico Agudo',5,'2015-06-02','root@localhost',NULL,NULL),(6,'Desconocido',6,'2015-06-02','root@localhost',NULL,NULL),(7,'Desconocido',7,'2015-06-02','root@localhost',NULL,NULL),(8,'Desconocido',8,'2015-06-02','root@localhost',NULL,NULL),(9,'Desconocido',9,'2015-06-02','root@localhost',NULL,NULL),(10,'Desconocido',10,'2015-06-02','root@localhost',NULL,NULL),(11,'Desconocido',11,'2015-06-02','root@localhost',NULL,NULL),(12,'Pico anaranjado',12,'2015-06-02','root@localhost',NULL,NULL),(13,'Desconocido',13,'2015-06-02','root@localhost',NULL,NULL),(14,'Desconocido',14,'2015-06-02','root@localhost',NULL,NULL),(15,'Desconocido',15,'2015-06-02','root@localhost',NULL,NULL),(16,'Desconocido',16,'2015-06-02','root@localhost',NULL,NULL),(17,'Pico Gris',17,'2015-06-02','root@localhost',NULL,NULL),(18,'Desconocido',18,'2015-06-02','root@localhost',NULL,NULL),(19,'Desconocido',19,'2015-06-02','root@localhost',NULL,NULL),(20,'Pico grande y fuerte',20,'2015-06-02','root@localhost',NULL,NULL),(21,'Desconocido',21,'2015-06-02','root@localhost',NULL,NULL),(22,'Olivaceo y gris',22,'2015-06-02','root@localhost',NULL,NULL),(23,'Desconocido',23,'2015-06-02','root@localhost',NULL,NULL),(24,'Desconocido',24,'2015-06-02','root@localhost',NULL,NULL),(25,'Desconocido',25,'2015-06-02','root@localhost',NULL,NULL);
/*!40000 ALTER TABLE `tipo_de_pico` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Tipo_de_Pico_BEFORE_INSERT` BEFORE INSERT ON `Tipo_de_Pico` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Tipo_de_Pico_BEFORE_UPDATE` BEFORE UPDATE ON `Tipo_de_Pico` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id que se asigna automaticamente por la base de datos a cada Usuario.',
  `NomUsuario` varchar(45) NOT NULL COMMENT 'Nombe de usuario elegido por la persona.',
  `Contrasenia` varchar(45) NOT NULL COMMENT 'contraseña elegida por la persona.',
  `permisos` int(11) NOT NULL DEFAULT '2' COMMENT 'Nos indica si el usuario normal o Administrador.',
  `tokenFacebook` varchar(100) DEFAULT NULL COMMENT 'Token que permite acceder a los datos de facebook del usuario, si el lo permitio previamente. ',
  `fechaCreacion` date DEFAULT NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` date DEFAULT NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Tabla donde se guardan los datos de usuario de la persona.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'asoto','81dc9bdb52d04dc20036dbd8313ed055',1,NULL,'2015-05-30','root@localhost','2015-05-30','root@localhost'),(2,'asolano','81dc9bdb52d04dc20036dbd8313ed055',2,NULL,'2015-06-02','root@localhost',NULL,NULL),(3,'b','92eb5ffee6ae2fec3ad71c777531578f',2,NULL,'2015-06-03','root@localhost',NULL,NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Usuario_BEFORE_INSERT` BEFORE INSERT ON `Usuario` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Usuario_BEFORE_UPDATE` BEFORE UPDATE ON `Usuario` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zona_de_vida`
--

DROP TABLE IF EXISTS `zona_de_vida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zona_de_vida` (
  `idZona_de_Vida` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id que se asigna automaticamente por la base de datos a cada zona de vida.',
  `Zona_de_Vida` varchar(45) DEFAULT NULL COMMENT 'Nombre de la zona de vida.',
  `fechaCreacion` date DEFAULT NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` date DEFAULT NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idZona_de_Vida`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Tabla que se utiliza para guardar datos de la zona de vida de cada ave.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zona_de_vida`
--

LOCK TABLES `zona_de_vida` WRITE;
/*!40000 ALTER TABLE `zona_de_vida` DISABLE KEYS */;
INSERT INTO `zona_de_vida` VALUES (1,'Zona Tropical - 0-1400msnm','2015-06-02','root@localhost',NULL,NULL),(2,'Zona Subtropical - 1400-2800msnm','2015-06-02','root@localhost',NULL,NULL),(3,'Zona Templada - 2800-3400msnm','2015-06-02','root@localhost',NULL,NULL),(4,'Zona del Paramo - 3400-3800msnm','2015-06-02','root@localhost',NULL,NULL);
/*!40000 ALTER TABLE `zona_de_vida` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Zona_de_Vida_BEFORE_INSERT` BEFORE INSERT ON `Zona_de_Vida` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Zona_de_Vida_BEFORE_UPDATE` BEFORE UPDATE ON `Zona_de_Vida` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'proyecto2web'
--

--
-- Dumping routines for database 'proyecto2web'
--
/*!50003 DROP PROCEDURE IF EXISTS `addEspecie` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addEspecie`(IN genero_idGenero int,IN nombre_especie varchar(50),IN nombre_comun varchar(50), IN nombre_ingles varchar(50), 
			IN nombre_cientifico varchar(50),IN cantidad_huevos int)
BEGIN
    insert into especie (Genero_idGenero,Especie,Nombre_Comun,Nombre_en_Ingles,Nombre_Cientifico,cantidad_Huevos_idcantidad_Huevos)
    values (genero_idGenero,nombre_especie,nombre_comun,nombre_ingles,nombre_cientifico,cantidad_huevos);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addFoto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addFoto`(in pIdPxP int, in pNombre varchar(45), in pFormato varchar(45),in pUrl varchar(100))
BEGIN
Insert into  fotografia (nombre,formato,URL,Pajaros_X_Persona_Pajaros_X_Persona_id) 
	   values (pNombre,pFormato,pUrl,pIdPxP);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_cantidad_Huevos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_cantidad_Huevos`(IN cantidad_huevos varchar(50))
BEGIN
    insert into cantidad_huevos(Cantidad)
	
    values (cantidad_huevos);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_clase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_clase`(IN nombre_clase varchar(50))
BEGIN
    insert into clase(Clase)
	
    values (nombre_clase);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_color` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_color`(IN nombre varchar(50))
BEGIN
    insert into Color (Color)
	
    values (nombre);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_especie` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_especie`(IN id_genero int, IN especie varchar(50))
BEGIN
    insert into especie (Genero_idGenero, Especie) 
	
    values (id_genero, especie);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_familia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_familia`(IN id_Suborden int, IN nombre_familia varchar(50))
BEGIN
    insert into familia (Suborden_idSuborden,Familia)
	
    values (id_Suborden,nombre_Familia);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_genero` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_genero`(IN id_familia int, IN genero varchar(50))
BEGIN
    insert into genero (Familia_idFamilia,Genero) 
	
    values (id_familia, genero);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_orden` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_orden`(IN id_clase int,IN nombre_orden varchar(50))
BEGIN
    insert into orden(Clase_idClase,Orden)
	
    values (id_clase,nombre_orden);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_P_x_P` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_P_x_P`(IN id_persona int ,IN id_color int, IN id_zonaVida int, IN id_especie int)
BEGIN
    insert into Pajaros_X_Persona (Persona_idPersona,Color_idColor,Zona_de_Vida_idZonadeVida,Especie_idEspecie)
	
    values (id_persona,id_color,id_zonaVida,id_especie);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_suborden` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_suborden`(IN id_orden int, IN nombre_suborden varchar(50) )
BEGIN
    insert into suborden(Orden_idOrden,Suborden)
	
    values (id_orden,nombre_suborden);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_tipo_pico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_tipo_pico`(IN tipo_pico varchar(50),IN id_Especie int)
BEGIN
    insert into tipo_de_pico (Tipo_de_Pico,Especie_idEspecie) 
	
    values (tipo_pico,id_Especie);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_ZonaVida` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_ZonaVida`(IN nombre varchar(50))
BEGIN
    insert into Zona_de_Vida (Zona_de_Vida)
	
    values (nombre);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_zona_vida` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_zona_vida`(IN zona varchar(50))
BEGIN
    insert into zona_de_vida(Zona_de_Vida)
	
    values (zona);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Borrar_Datos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Borrar_Datos`(in dusuario int,in dtelefono int, in dcorreo varchar(45),in tipo_modificar int)
BEGIN
	declare Ipersona int;

    Select idPersona into Ipersona from persona where Usuario_idUsuario=dusuario;
   
	#El procedimiento recibe todos los datos que pueden cambiar, dependiendo del tipo estos datos varian
		if (tipo_modificar=0) then
			delete from telefono
            where Persona_idPersona=Ipersona and Telefono=dtelefono;
            
            end if;
		if (tipo_modificar=1) then
			delete from correo
            where Persona_idPersona=Ipersona and Correo=dcorreo;
		end if;
    
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Buscar_color` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Buscar_color`(IN idBuscar int)
BEGIN
    Select Color 
    from Color
    where idColor = idBuscar;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscar_familia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_familia`(IN id_Suborden int)
BEGIN
	SELECT f.Familia FROM familia AS f
    WHERE f.Suborden_idSuborden = id_Suborden;
    
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscar_Orden` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_Orden`(IN id_Clase int)
BEGIN
	SELECT o.Orden FROM orden AS o
    WHERE o.Clase_idClase = id_Clase;
    
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscar_SubOrden` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_SubOrden`(IN id_Orden int)
BEGIN
	SELECT s.Suborden FROM suborden AS s
    WHERE s.Orden_idOrden = id_Orden;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Buscar_ZonaVida` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Buscar_ZonaVida`(IN idBuscar int)
BEGIN
    Select Zona_de_Vida
    from Zona_de_Vida
    where idZona_de_Vida = idBuscar;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Cambiar_Datos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Cambiar_Datos`(in dusuario int,in contraseña varchar(45),in telefono integer, in correo varchar(45),in tipo_modificar integer)
BEGIN
	declare Ipersona int;
    declare contra  varchar(45);
    declare nueva varchar(45);
    Select idPersona into Ipersona from persona where Usuario_idUsuario=dusuario;
    Select Contrasenia into contra from usuario where idUsuario=dusuario;
	#El procedimiento recibe todos los datos que pueden cambiar, dependiendo del tipo estos datos varian
		if (tipo_modificar=0) then
			insert  into telefono(Persona_idPersona,Telefono)
            values(Ipersona,telefono);
            end if;
		if (tipo_modificar=1) then
			insert into correo(Persona_idPersona,Correo)
            values(Ipersona,correo);
		end if;
        if (tipo_modificar=2) then
			set nueva= md5(contraseña);
            insert into bitacora_contrasenias(Usuario_idUsuario,contraseña,contraseñaAnterior,fechaModificacion)
            values(dusuario,nueva,contra,now());
			update usuario
            set Contrasenia=nueva
            where idUSuario=dusuario;
            
        end if;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllEspecies` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllEspecies`()
BEGIN
Select idEspecie,Especie,Nombre_Cientifico from especie 
order by especie;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCantHuevos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCantHuevos`()
BEGIN
Select idcantidad_Huevos,Cantidad from cantidad_huevos 
order by Cantidad;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getColor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`proyecto2web`@`localhost` PROCEDURE `getColor`()
BEGIN
	Select idColor,Color
    from color
    order by Color;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getEspecie` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getEspecie`(in pGenero int)
BEGIN
Select idEspecie,Especie from especie Where Genero_idGenero = pGenero
order by Especie;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getFamilia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getFamilia`(in pSuborden int)
BEGIN
Select idFamilia,Familia from familia Where Suborden_idSuborden = pSuborden
order by Familia;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getGenero` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getGenero`(in pFamilia int)
BEGIN
Select idGenero,Genero from genero Where Familia_idFamilia = pFamilia
order by Genero;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getIdUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getIdUsuario`(in pUsuario varchar(50))
BEGIN
Select idUsuario from usuario where usuario.NomUsuario = pUsuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getOrden` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getOrden`(in pClase int)
BEGIN
Select idOrden,Orden from orden Where Clase_idClase = pClase
order by orden;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPajaroXPersona` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getPajaroXPersona`(in pUsuario varchar(50))
BEGIN
Select Pajaros_X_Persona_id,Especie,Nombre_Cientifico 
from pajaros_x_persona inner join especie on pajaros_x_persona.Especie_idEspecie = especie.idEspecie
					   inner join usuario on pajaros_x_persona.Persona_idPersona = usuario.idUsuario
where usuario.NomUsuario = pUsuario
order by especie;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPerfil` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getPerfil`(in pUsuario varchar(50))
BEGIN
Select Nombre,Apellido,Telefono,Tipo_de_Persona_idTipo_de_Persona,Correo 
from persona inner join usuario on persona.Usuario_idUsuario =  usuario.idUsuario
			 inner join telefono on telefono.Persona_idPersona = persona.idPersona
             inner join correo  on correo.Persona_idPersona = persona.idPersona
where usuario.NomUsuario = pUsuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getSuborden` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getSuborden`(in pOrden int)
BEGIN
Select idSuborden,Suborden from suborden Where Orden_idOrden = pOrden
order by suborden;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTipoPico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTipoPico`(in pEspecie int)
BEGIN
Select idTipo_de_Pico,Tipo_de_Pico from tipo_de_pico Where Especie_idEspecie = pEspecie
order by Tipo_de_Pico;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getZonadeVida` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getZonadeVida`()
BEGIN
Select idZona_de_Vida,Zona_de_Vida from zona_de_vida
order by Zona_de_Vida;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_especie_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_especie_id`(IN especie varchar(50))
BEGIN
	SELECT e.idEspecie FROM especie AS e
	WHERE e.Especie = especie;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_idEspecie_x_idGenero` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_idEspecie_x_idGenero`(IN id_genero int)
BEGIN
	SELECT e.idEspecie FROM especie AS e
	WHERE e.Genero_idGenero = id_genero;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_idGenero_idFamilia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_idGenero_idFamilia`(IN id_familia int)
BEGIN
	SELECT g.idGenero FROM genero AS g
	WHERE g.Familia_idFamilia = id_familia;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_idGenero_x_genero` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_idGenero_x_genero`(IN genero varchar(50))
BEGIN
	SELECT g.idGenero FROM genero AS g
	WHERE g.Genero = genero;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_idPajaro_cantidad_huevos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_idPajaro_cantidad_huevos`(IN cantidad_huevos int)
BEGIN
	SELECT p.idPajaro FROM pajaro AS p
	WHERE p.Cantidad_de_Huevos = cantidad_huevos;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_idPajaro_idTipoPico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_idPajaro_idTipoPico`(IN id_TipoPico int)
BEGIN
	SELECT p.idPajaro FROM pajaro AS p
	WHERE p.Tipo_de_Pico_idTipo_de_Pico = id_TipoPico;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_idPajaro_nombre_cientifico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_idPajaro_nombre_cientifico`(IN nombre_cientifico varchar(50))
BEGIN
	SELECT p.idPajaro FROM pajaro AS p
	WHERE p.Nombre_Cientifico = nombre_cientifico;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_idPajaro_nombre_comun` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_idPajaro_nombre_comun`(IN nombre_comun varchar(50))
BEGIN
	SELECT p.idPajaro FROM pajaro AS p
	WHERE p.Nombre_Comun = nombre_comun;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_idPajaro_nombre_ingles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_idPajaro_nombre_ingles`(IN nombre_ingles varchar(50))
BEGIN
	SELECT p.idPajaro FROM pajaro AS p
	WHERE p.Nombre_en_Ingles = nombre_ingles;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_idPajaro_x_idEspecie` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_idPajaro_x_idEspecie`(IN id_especie int)
BEGIN
	SELECT p.idPajaro FROM pajaro AS p
	WHERE p.Especie_idEspecie = id_especie;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_idTipo_Pico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_idTipo_Pico`(IN tipo_pico varchar(50))
BEGIN
	SELECT tp.idTipo_de_Pico FROM tipo_de_pico AS tp
	WHERE tp.Tipo_de_Pico = tipo_pico;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_nombre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_nombre`(IN id_usuario int)
BEGIN
    select Nombre, Apellido from persona p
	where p.Usuario_idUsuario = id_usuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mostrar_datos_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mostrar_datos_usuario`(in pusuario int)
BEGIN
	Select persona.idPersona,persona.nombre,persona.apellido,usuario.NomUSuairo
    from persona,usuario 
    where usuario.idUsuario=pusuario and persona.Usuario_idUsuario=usuario.idUsuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtener_correos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtener_correos`(in usuario int)
BEGIN
SELECT correo.Correo
    FROM correo,persona
    where persona.Usuario_idUsuario=usuario and correo.Persona_idPersona=persona.idPersona
    order by Correo;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtener_telefonos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtener_telefonos`(in usuario int)
BEGIN
SELECT Telefono
    FROM telefono
    where persona.Usuario_idUsuario=usuario and telefono.Persona_idPersona=persona.idPersona
    order by Telefono;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Pajaros_x_ZonaVida` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Pajaros_x_ZonaVida`()
BEGIN
	Select count(Pajaros_X_Persona_id), Zona_de_Vida
	from Pajaros_X_Persona, zona_de_vida
	where (Zona_de_Vida_idZonadeVida <= 4)
	and Zona_de_Vida_idZonadeVida = idZona_de_Vida
	group by idZona_de_Vida
	order by count(Pajaros_X_Persona_id) desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `REGISTRO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `REGISTRO`(IN PCEDULA INT , IN PNOMBRE VARCHAR(50) , IN PAPELLIDO VARCHAR(50), IN PUSUARIO VARCHAR(50),
							 IN PCONTRASENIA VARCHAR(50), IN PTELEFONO VARCHAR(50),IN PCORREO VARCHAR(50), IN PTIPOPERSONA INT)
BEGIN

INSERT INTO usuario (NomUsuario, Contrasenia, permisos) VALUES (PUSUARIO, MD5(PCONTRASENIA), 2);

INSERT INTO persona (idPersona, Usuario_idUsuario, Tipo_de_Persona_idTipo_de_Persona, Nombre, Apellido)
VALUES 				(PCEDULA, LAST_INSERT_ID(), PTIPOPERSONA, PNOMBRE, PAPELLIDO);

INSERT INTO telefono (Persona_idPersona, Telefono) VALUES (PCEDULA, PTELEFONO);

INSERT INTO correo (Persona_idPersona, Correo) VALUES (PCEDULA, PCORREO);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setPerfil` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setPerfil`(in pNombre varchar(50), in pApellido varchar(50), in pTelefono varchar(50), 
							  in pTipoPersona int, in pCorreo varchar(50),in pUsuario varchar(50))
BEGIN
Update persona, usuario set Nombre = pNombre, Apellido = pApellido, Tipo_de_Persona_idTipo_de_Persona = pTipoPersona
where persona.Usuario_idUsuario =  usuario.idUsuario and usuario.NomUsuario = pUsuario;

Update correo,persona, usuario set Correo = pCorreo
where persona.Usuario_idUsuario =  usuario.idUsuario and usuario.NomUsuario = pUsuario and correo.Persona_idPersona = persona.idPersona;


Update telefono,persona, usuario set Telefono = pTelefono
where persona.Usuario_idUsuario =  usuario.idUsuario and usuario.NomUsuario = pUsuario and telefono.Persona_idPersona = persona.idPersona;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TopPajaros` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TopPajaros`(IN top int)
BEGIN
	select tabla.nombre,tabla.Apellido
  	from (Select nombre,Apellido,count(Pajaros_X_Persona_id)
			from Pajaros_X_Persona, persona
			where (Tipo_de_Persona_idTipo_de_Persona <= 2)
			and Persona_idPersona = idPersona
			group by idPersona
			order by count(Pajaros_X_Persona_id) desc) as tabla
  	limit top;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `totalPajaros` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `totalPajaros`()
BEGIN
	Select count(Pajaros_X_Persona_id)
	from Pajaros_X_Persona;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-06  0:24:41
