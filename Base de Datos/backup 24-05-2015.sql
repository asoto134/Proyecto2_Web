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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla donde se guardan las clases de cada ave.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clase`
--

LOCK TABLES `clase` WRITE;
/*!40000 ALTER TABLE `clase` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla donde se guardan los colores de las aves.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
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
  `Correo` varchar(45) DEFAULT NULL COMMENT 'correo de la persona.',
  `fechaCreacion` date DEFAULT NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` date DEFAULT NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`Persona_idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla donde se guardan los correos de cada persona.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correo`
--

LOCK TABLES `correo` WRITE;
/*!40000 ALTER TABLE `correo` DISABLE KEYS */;
INSERT INTO `correo` VALUES (113790395,'sotoadrian4@gmail.com','2015-05-23','root@localhost',NULL,NULL);
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
  `fechaCreacion` date DEFAULT NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` date DEFAULT NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idEspecie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla donde se guardan las especies de aves.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especie`
--

LOCK TABLES `especie` WRITE;
/*!40000 ALTER TABLE `especie` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla para guardar los datos de las familias de aves.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familia`
--

LOCK TABLES `familia` WRITE;
/*!40000 ALTER TABLE `familia` DISABLE KEYS */;
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
  `Fotografiacol` blob COMMENT 'Codificacion de la imagen en la base de datos.',
  `fechaCreacion` date DEFAULT NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` date DEFAULT NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idFotografia`)
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla donde se guardan los generos del ave.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla donde se guardan los tipo de orden de cada ave.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden`
--

LOCK TABLES `orden` WRITE;
/*!40000 ALTER TABLE `orden` DISABLE KEYS */;
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
-- Table structure for table `pajaro`
--

DROP TABLE IF EXISTS `pajaro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pajaro` (
  `idPajaro` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id que se asigna automaticamente por la base de datos a cada pajaro.',
  `Especie_idEspecie` int(11) NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla con los datos de la especie.',
  `Nombre_Comun` varchar(45) DEFAULT NULL COMMENT 'Nombre común del ave.',
  `Nombre_en_Ingles` varchar(45) DEFAULT NULL COMMENT 'Nombre en inglés del ave.',
  `Nombre_Cientifico` varchar(45) DEFAULT NULL COMMENT 'Nombre cientifico del ave.',
  `Tipo_de_Pico_idTipo_de_Pico` int(11) NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla con los datos del tipo de pico.',
  `Cantidad_de_Huevos` int(11) DEFAULT NULL COMMENT 'Cantidad de huevos que puede poner el ave.',
  `fechaCreacion` date DEFAULT NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` date DEFAULT NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idPajaro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla donde se guardan los datos de las aves conocidas.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pajaro`
--

LOCK TABLES `pajaro` WRITE;
/*!40000 ALTER TABLE `pajaro` DISABLE KEYS */;
/*!40000 ALTER TABLE `pajaro` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Pajaro_BEFORE_INSERT` BEFORE INSERT ON `Pajaro` FOR EACH ROW
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `proyecto2web`.`Pajaro_BEFORE_UPDATE` BEFORE UPDATE ON `Pajaro` FOR EACH ROW
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
  `Pajaro_idPajaro` int(11) NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla con los datos del pajaro.',
  `Persona_idPersona` int(11) NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla con los datos de la persona.',
  `Color_idColor` int(11) NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla con los datos del color.',
  `Fotografia_idFotografia` int(11) NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla con los datos de la fotografia.',
  `Zona_de_Vida_idZona de Vida` int(11) NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla con los datos de la zona de vida.',
  `fechaCreacion` date DEFAULT NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` date DEFAULT NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de la ultima modificacion de la tupla.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla donde se guardan los datos de las aves que ha visto cada persona.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pajaros_x_persona`
--

LOCK TABLES `pajaros_x_persona` WRITE;
/*!40000 ALTER TABLE `pajaros_x_persona` DISABLE KEYS */;
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
INSERT INTO `persona` VALUES (113790395,1,1,'Adrián','Soto','2015-05-23','root@localhost',NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla donde se guardan los subordenes de las aves.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suborden`
--

LOCK TABLES `suborden` WRITE;
/*!40000 ALTER TABLE `suborden` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=113790396 DEFAULT CHARSET=utf8 COMMENT='Tabla donde se guardan los telefonos de cada usuario. ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefono`
--

LOCK TABLES `telefono` WRITE;
/*!40000 ALTER TABLE `telefono` DISABLE KEYS */;
INSERT INTO `telefono` VALUES (113790395,'83262011','2015-05-23','root@localhost',NULL,NULL);
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
INSERT INTO `tipo_de_persona` VALUES (1,'Ornitologo','2015-05-23','root@localhost',NULL,NULL),(2,'Aficionado','2015-05-23','root@localhost',NULL,NULL);
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
  `fechaCreacion` date DEFAULT NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` date DEFAULT NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` varchar(20) DEFAULT NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idTipo_de_Pico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla donde se guardan los tipos de pico de cada ave.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_de_pico`
--

LOCK TABLES `tipo_de_pico` WRITE;
/*!40000 ALTER TABLE `tipo_de_pico` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Tabla donde se guardan los datos de usuario de la persona.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'asoto','81dc9bdb52d04dc20036dbd8313ed055',2,NULL,'2015-05-23','root@localhost',NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla que se utiliza para guardar datos de la zona de vida de cada ave.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zona_de_vida`
--

LOCK TABLES `zona_de_vida` WRITE;
/*!40000 ALTER TABLE `zona_de_vida` DISABLE KEYS */;
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-24 20:34:09
