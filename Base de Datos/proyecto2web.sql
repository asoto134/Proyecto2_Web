-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema proyecto2web
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `proyecto2web` ;

-- -----------------------------------------------------
-- Schema proyecto2web
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `proyecto2web` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
SHOW WARNINGS;
USE `proyecto2web` ;

-- -----------------------------------------------------
-- Table `Clase`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Clase` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Clase` (
  `idClase` INT NOT NULL AUTO_INCREMENT COMMENT 'Id que se asigna automaticamente por la base de datos a cada clase.',
  `Clase` VARCHAR(45) NULL COMMENT 'Nombre de la  clase.',
  `fechaCreacion` DATE NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` VARCHAR(20) NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` DATE NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` VARCHAR(20) NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idClase`))
ENGINE = InnoDB
COMMENT = 'Tabla donde se guardan las clases de cada ave.';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Orden`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Orden` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Orden` (
  `idOrden` INT NOT NULL AUTO_INCREMENT COMMENT 'Id que se asigna automaticamente por la base de datos a cada orden.',
  `Clase_idClase` INT NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla con los datos de la clase en la tabla de las clases.',
  `Orden` VARCHAR(45) NULL COMMENT 'Nombre del orden.',
  `fechaCreacion` DATE NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` VARCHAR(20) NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` DATE NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` VARCHAR(20) NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idOrden`))
ENGINE = InnoDB
COMMENT = 'Tabla donde se guardan los tipo de orden de cada ave.';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Suborden`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Suborden` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Suborden` (
  `idSuborden` INT NOT NULL AUTO_INCREMENT COMMENT 'Id que se asigna automaticamente por la base de datos a cada sub orden.',
  `Orden_idOrden` INT NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla con los datos del orden.',
  `Suborden` VARCHAR(45) NULL COMMENT 'Nombre del sub orden del ave.',
  `fechaCreacion` DATE NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` VARCHAR(20) NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` DATE NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` VARCHAR(20) NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idSuborden`))
ENGINE = InnoDB
COMMENT = 'Tabla donde se guardan los subordenes de las aves.';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Familia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Familia` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Familia` (
  `idFamilia` INT NOT NULL AUTO_INCREMENT COMMENT 'Id que se asigna automaticamente por la base de datos a cada familia.',
  `Suborden_idSuborden` INT NOT NULL,
  `Familia` VARCHAR(45) NULL COMMENT 'Nombre de la familia.',
  `fechaCreacion` DATE NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` VARCHAR(20) NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` DATE NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` VARCHAR(20) NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idFamilia`))
ENGINE = InnoDB
COMMENT = 'Tabla para guardar los datos de las familias de aves.';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Genero`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Genero` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Genero` (
  `idGenero` INT NOT NULL AUTO_INCREMENT COMMENT 'Id que se asigna automaticamente por la base de datos a cada genero.',
  `Familia_idFamilia` INT NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla con los datos de la fam ilia del ave.',
  `Genero` VARCHAR(45) NULL COMMENT 'Nombre del genero.',
  `fechaCreacion` DATE NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` VARCHAR(20) NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` DATE NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` VARCHAR(20) NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idGenero`))
ENGINE = InnoDB
COMMENT = 'Tabla donde se guardan los generos del ave.';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `cantidad_Huevos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cantidad_Huevos` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `cantidad_Huevos` (
  `idcantidad_Huevos` INT NOT NULL AUTO_INCREMENT,
  `Cantidad` VARCHAR(45) NULL,
  `fechaCreacion` DATE NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` VARCHAR(20) NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` DATE NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` VARCHAR(20) NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idcantidad_Huevos`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Especie`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Especie` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Especie` (
  `idEspecie` INT NOT NULL AUTO_INCREMENT COMMENT 'Id que se asigna automaticamente por la base de datos a cada especie.',
  `Genero_idGenero` INT NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla con los datos del genero del ave.',
  `Especie` VARCHAR(45) NULL COMMENT 'Nombre de la especie del ave.',
  `Nombre Común` VARCHAR(45) NULL COMMENT 'Nombre común del ave.',
  `Nombre en Ingles` VARCHAR(45) NULL COMMENT 'Nombre en inglés del ave.',
  `Nombre Cientifico` VARCHAR(45) NULL COMMENT 'Nombre cientifico del ave.',
  `fechaCreacion` DATE NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` VARCHAR(20) NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` DATE NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` VARCHAR(20) NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  `cantidad_Huevos_idcantidad_Huevos` INT NOT NULL,
  PRIMARY KEY (`idEspecie`))
ENGINE = InnoDB
COMMENT = 'Tabla donde se guardan las especies de aves.';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Usuario` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Usuario` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT COMMENT 'Id que se asigna automaticamente por la base de datos a cada Usuario.',
  `NomUsuario` VARCHAR(45) NOT NULL COMMENT 'Nombe de usuario elegido por la persona.',
  `Contrasenia` VARCHAR(45) NOT NULL COMMENT 'contraseña elegida por la persona.',
  `permisos` INT NOT NULL DEFAULT 2 COMMENT 'Nos indica si el usuario normal o Administrador.',
  `tokenFacebook` VARCHAR(100) NULL COMMENT 'Token que permite acceder a los datos de facebook del usuario, si el lo permitio previamente. ',
  `fechaCreacion` DATE NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` VARCHAR(20) NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` DATE NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` VARCHAR(20) NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idUsuario`))
ENGINE = InnoDB
COMMENT = 'Tabla donde se guardan los datos de usuario de la persona.';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Tipo_de_Persona`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Tipo_de_Persona` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Tipo_de_Persona` (
  `idTipo_de_Persona` INT NOT NULL AUTO_INCREMENT COMMENT 'Id que se asigna automaticamente por la base de datos a cada tipo de persona.',
  `Tipo_de_Persona` VARCHAR(45) NOT NULL COMMENT 'Nombre del tipo de persona.',
  `fechaCreacion` DATE NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` VARCHAR(20) NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` DATE NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` VARCHAR(20) NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idTipo_de_Persona`))
ENGINE = InnoDB
COMMENT = 'Tabla donde se guardan los tipos de persona';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Persona`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Persona` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Persona` (
  `idPersona` INT NOT NULL COMMENT 'Identificador de la persona, en nuestro caso el numero de cédula de la persona.',
  `Usuario_idUsuario` INT NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla en la tabla de usuario, que nos da los datos de usuario de la persona.',
  `Tipo_de_Persona_idTipo_de_Persona` INT NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla en la tabla de tipo de persona, que nos indica que tipo de persona es.',
  `Nombre` VARCHAR(45) NOT NULL COMMENT 'Nombre de la persona.',
  `Apellido` VARCHAR(45) NOT NULL COMMENT 'Apellido de la persona.',
  `fechaCreacion` DATE NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` VARCHAR(20) NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` DATE NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` VARCHAR(20) NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idPersona`))
ENGINE = InnoDB
COMMENT = 'Tabla para guardar los datos de las personas.';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Tipo_de_Pico`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Tipo_de_Pico` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Tipo_de_Pico` (
  `idTipo_de_Pico` INT NOT NULL AUTO_INCREMENT COMMENT 'Id que se asigna automaticamente por la base de datos a cada tipo de pico.',
  `Tipo_de_Pico` VARCHAR(45) NULL COMMENT 'Nombre del tipo de pico.',
  `Especie_idEspecie` INT NOT NULL,
  `fechaCreacion` DATE NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` VARCHAR(20) NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` DATE NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` VARCHAR(20) NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idTipo_de_Pico`))
ENGINE = InnoDB
COMMENT = 'Tabla donde se guardan los tipos de pico de cada ave.';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Color`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Color` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Color` (
  `idColor` INT NOT NULL AUTO_INCREMENT COMMENT 'Id que se asigna automaticamente por la base de datos a cada color.',
  `Color` VARCHAR(45) NULL COMMENT 'Nombre del color.',
  `fechaCreacion` DATE NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` VARCHAR(20) NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` DATE NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` VARCHAR(20) NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idColor`))
ENGINE = InnoDB
COMMENT = 'Tabla donde se guardan los colores de las aves.';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Zona_de_Vida`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Zona_de_Vida` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Zona_de_Vida` (
  `idZona_de_Vida` INT NOT NULL AUTO_INCREMENT COMMENT 'Id que se asigna automaticamente por la base de datos a cada zona de vida.',
  `Zona_de_Vida` VARCHAR(45) NULL COMMENT 'Nombre de la zona de vida.',
  `fechaCreacion` DATE NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` VARCHAR(20) NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` DATE NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` VARCHAR(20) NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idZona_de_Vida`))
ENGINE = InnoDB
COMMENT = 'Tabla que se utiliza para guardar datos de la zona de vida de cada ave.';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Fotografia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Fotografia` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Fotografia` (
  `idFotografia` INT NOT NULL AUTO_INCREMENT COMMENT 'Id que se asigna automaticamente por la base de datos a cada fotografia.',
  `nombre` VARCHAR(45) NULL COMMENT 'Nombre de la fotografia.',
  `descripcion` VARCHAR(100) NULL COMMENT 'Una breve descripcion de la fotografia.',
  `formato` VARCHAR(45) NULL COMMENT 'Tipo de formato de la imagen.',
  `tamanio` INT NULL COMMENT 'tamaño en bytes de la imagen.',
  `URL` VARCHAR(100) NULL COMMENT 'Codificacion de la imagen en la base de datos.',
  `fechaCreacion` DATE NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` VARCHAR(20) NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` DATE NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` VARCHAR(20) NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`idFotografia`))
ENGINE = InnoDB
COMMENT = 'Tabla donde se guardan las imagenes de cada usuario.';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Pajaros_X_Persona`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Pajaros_X_Persona` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Pajaros_X_Persona` (
  `Pajaro_idPajaro` INT NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla con los datos del pajaro.',
  `Persona_idPersona` INT NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla con los datos de la persona.',
  `Color_idColor` INT NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla con los datos del color.',
  `Zona_de_Vida_idZona de Vida` INT NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla con los datos de la zona de vida.',
  `fechaCreacion` DATE NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` VARCHAR(20) NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` DATE NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` VARCHAR(20) NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  `Especie_idEspecie` INT NOT NULL,
  `Fotografia_idFotografia` INT NOT NULL)
ENGINE = InnoDB
COMMENT = 'Tabla donde se guardan los datos de las aves que ha visto cada persona.';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Correo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Correo` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Correo` (
  `Persona_idPersona` INT NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla con los datos de la persona.',
  `Correo` VARCHAR(45) NULL COMMENT 'correo de la persona.',
  `fechaCreacion` DATE NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` VARCHAR(20) NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` DATE NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` VARCHAR(20) NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`Persona_idPersona`))
ENGINE = InnoDB
COMMENT = 'Tabla donde se guardan los correos de cada persona.';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Telefono`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Telefono` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Telefono` (
  `Persona_idPersona` INT NOT NULL AUTO_INCREMENT COMMENT 'Llave foranea que nos lleva a la tupla con los datos de la persona.',
  `Telefono` VARCHAR(45) NOT NULL COMMENT 'Telefono de la persona.',
  `fechaCreacion` DATE NULL COMMENT 'Fecha de creacion de la tupla.',
  `usuarioCreacion` VARCHAR(20) NULL COMMENT 'Usuario de creacion de la tupla.',
  `fechaUltimaModificacion` DATE NULL COMMENT 'Fecha de la ultima modificacion de la tupla.',
  `usuarioUltimaModificacion` VARCHAR(20) NULL COMMENT 'Usuario de la ultima modificacion de la tupla.',
  PRIMARY KEY (`Persona_idPersona`))
ENGINE = InnoDB
COMMENT = 'Tabla donde se guardan los telefonos de cada usuario. ';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Bitacora_Contrasenias`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Bitacora_Contrasenias` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Bitacora_Contrasenias` (
  `Usuario_idUsuario` INT NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla con los datos de usuario.',
  `contrasenia` VARCHAR(45) NOT NULL COMMENT 'La contraseña actual.',
  `contraseniaAnterior` VARCHAR(45) NOT NULL COMMENT 'La contraseña anterior.',
  `fechaModificacion` DATE NOT NULL COMMENT 'Fecha en la que se modifico la contraseña.',
  PRIMARY KEY (`Usuario_idUsuario`))
ENGINE = InnoDB
COMMENT = 'Tabla donde se lleva un control de los cambios en la contraseña de cada usuario.';

SHOW WARNINGS;
USE `proyecto2web`;

DELIMITER $$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Clase_BEFORE_INSERT` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Clase_BEFORE_INSERT` BEFORE INSERT ON `Clase` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user();
$$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Clase_BEFORE_UPDATE` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Clase_BEFORE_UPDATE` BEFORE UPDATE ON `Clase` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user(); $$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Orden_BEFORE_INSERT` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Orden_BEFORE_INSERT` BEFORE INSERT ON `Orden` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user();$$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Orden_BEFORE_UPDATE` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Orden_BEFORE_UPDATE` BEFORE UPDATE ON `Orden` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user(); 
$$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Suborden_BEFORE_INSERT` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Suborden_BEFORE_INSERT` BEFORE INSERT ON `Suborden` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user();
$$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Suborden_BEFORE_UPDATE` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Suborden_BEFORE_UPDATE` BEFORE UPDATE ON `Suborden` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user(); $$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Familia_BEFORE_INSERT` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Familia_BEFORE_INSERT` BEFORE INSERT ON `Familia` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user();$$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Familia_BEFORE_UPDATE` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Familia_BEFORE_UPDATE` BEFORE UPDATE ON `Familia` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user(); $$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Genero_BEFORE_INSERT` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Genero_BEFORE_INSERT` BEFORE INSERT ON `Genero` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user();$$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Genero_BEFORE_UPDATE` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Genero_BEFORE_UPDATE` BEFORE UPDATE ON `Genero` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user(); 
$$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `cantidad_Huevos_BEFORE_INSERT` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`cantidad_Huevos_BEFORE_INSERT` BEFORE INSERT ON `cantidad_Huevos` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user();$$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `cantidad_Huevos_BEFORE_UPDATE` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`cantidad_Huevos_BEFORE_UPDATE` BEFORE UPDATE ON `cantidad_Huevos` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user(); 
$$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Especie_BEFORE_INSERT` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Especie_BEFORE_INSERT` BEFORE INSERT ON `Especie` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user();
$$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Especie_BEFORE_UPDATE` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Especie_BEFORE_UPDATE` BEFORE UPDATE ON `Especie` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user(); $$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Usuario_BEFORE_INSERT` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Usuario_BEFORE_INSERT` BEFORE INSERT ON `Usuario` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user();
$$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Usuario_BEFORE_UPDATE` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Usuario_BEFORE_UPDATE` BEFORE UPDATE ON `Usuario` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user();
$$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Tipo_de_Persona_BEFORE_INSERT` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Tipo_de_Persona_BEFORE_INSERT` BEFORE INSERT ON `Tipo_de_Persona` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user();
$$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Tipo_de_Persona_BEFORE_UPDATE` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Tipo_de_Persona_BEFORE_UPDATE` BEFORE UPDATE ON `Tipo_de_Persona` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user(); $$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Persona_BEFORE_INSERT` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Persona_BEFORE_INSERT` BEFORE INSERT ON `Persona` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user();$$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Persona_BEFORE_UPDATE` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Persona_BEFORE_UPDATE` BEFORE UPDATE ON `Persona` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user(); $$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Tipo_de_Pico_BEFORE_INSERT` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Tipo_de_Pico_BEFORE_INSERT` BEFORE INSERT ON `Tipo_de_Pico` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user();$$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Tipo_de_Pico_BEFORE_UPDATE` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Tipo_de_Pico_BEFORE_UPDATE` BEFORE UPDATE ON `Tipo_de_Pico` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user(); $$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Color_BEFORE_INSERT` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Color_BEFORE_INSERT` BEFORE INSERT ON `Color` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user();$$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Color_BEFORE_UPDATE` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Color_BEFORE_UPDATE` BEFORE UPDATE ON `Color` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user(); 
$$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Zona_de_Vida_BEFORE_INSERT` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Zona_de_Vida_BEFORE_INSERT` BEFORE INSERT ON `Zona_de_Vida` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user();
$$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Zona_de_Vida_BEFORE_UPDATE` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Zona_de_Vida_BEFORE_UPDATE` BEFORE UPDATE ON `Zona_de_Vida` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user(); $$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Fotografia_BEFORE_INSERT` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Fotografia_BEFORE_INSERT` BEFORE INSERT ON `Fotografia` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user();
$$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Fotografia_BEFORE_UPDATE` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Fotografia_BEFORE_UPDATE` BEFORE UPDATE ON `Fotografia` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user(); 
$$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Pajaros_X_Persona_BEFORE_INSERT` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Pajaros_X_Persona_BEFORE_INSERT` BEFORE INSERT ON `Pajaros_X_Persona` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user();$$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Pajaros_X_Persona_BEFORE_UPDATE` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Pajaros_X_Persona_BEFORE_UPDATE` BEFORE UPDATE ON `Pajaros_X_Persona` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user(); $$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Correo_BEFORE_INSERT` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Correo_BEFORE_INSERT` BEFORE INSERT ON `Correo` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user();$$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Correo_BEFORE_UPDATE` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Correo_BEFORE_UPDATE` BEFORE UPDATE ON `Correo` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user(); 
$$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Telefono_BEFORE_INSERT` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Telefono_BEFORE_INSERT` BEFORE INSERT ON `Telefono` FOR EACH ROW
SET    
NEW.fechaCreacion = sysdate(),
NEW.usuarioCreacion = current_user();$$

SHOW WARNINGS$$

USE `proyecto2web`$$
DROP TRIGGER IF EXISTS `Telefono_BEFORE_UPDATE` $$
SHOW WARNINGS$$
USE `proyecto2web`$$
CREATE DEFINER = CURRENT_USER TRIGGER `proyecto2web`.`Telefono_BEFORE_UPDATE` BEFORE UPDATE ON `Telefono` FOR EACH ROW
SET    
NEW.fechaUltimaModificacion = sysdate(),
NEW.usuarioUltimaModificacion = current_user();  $$

SHOW WARNINGS$$

DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
