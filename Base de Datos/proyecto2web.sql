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
  `idClase` INT NOT NULL,
  `Clase` VARCHAR(45) NULL,
  `fechaCreacion` DATE NULL,
  `usuarioCreacion` VARCHAR(20) NULL,
  `fechaModificacion` DATE NULL,
  `usuarioUltimaModificacion` VARCHAR(20) NULL,
  PRIMARY KEY (`idClase`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Orden`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Orden` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Orden` (
  `idOrden` INT NOT NULL,
  `Clase_idClase` INT NOT NULL,
  `Orden` VARCHAR(45) NULL,
  `fechaCreacion` DATE NULL,
  `usuarioCreacion` VARCHAR(20) NULL,
  `fechaModificacion` DATE NULL,
  `usuarioUltimaModificacion` VARCHAR(20) NULL,
  PRIMARY KEY (`idOrden`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Suborden`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Suborden` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Suborden` (
  `idSuborden` INT NOT NULL,
  `Orden_idOrden` INT NOT NULL,
  `Suborden` VARCHAR(45) NULL,
  `fechaCreacion` DATE NULL,
  `usuarioCreacion` VARCHAR(20) NULL,
  `fechaModificacion` DATE NULL,
  `usuarioUltimaModificacion` VARCHAR(20) NULL,
  PRIMARY KEY (`idSuborden`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Familia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Familia` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Familia` (
  `idFamilia` INT NOT NULL,
  `Suborden_idSuborden` INT NOT NULL,
  `Familia` VARCHAR(45) NULL,
  `fechaCreacion` DATE NULL,
  `usuarioCreacion` VARCHAR(20) NULL,
  `fechaModificacion` DATE NULL,
  `usuarioUltimaModificacion` VARCHAR(20) NULL,
  PRIMARY KEY (`idFamilia`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Genero`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Genero` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Genero` (
  `idGenero` INT NOT NULL,
  `Familia_idFamilia` INT NOT NULL,
  `Genero` VARCHAR(45) NULL,
  `fechaCreacion` DATE NULL,
  `usuarioCreacion` VARCHAR(20) NULL,
  `fechaModificacion` DATE NULL,
  `usuarioUltimaModificacion` VARCHAR(20) NULL,
  PRIMARY KEY (`idGenero`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Especie`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Especie` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Especie` (
  `idEspecie` INT NOT NULL,
  `Genero_idGenero` INT NOT NULL,
  `Especie` VARCHAR(45) NULL,
  `fechaCreacion` DATE NULL,
  `usuarioCreacion` VARCHAR(20) NULL,
  `fechaModificacion` DATE NULL,
  `usuarioUltimaModificacion` VARCHAR(20) NULL,
  PRIMARY KEY (`idEspecie`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Tipo de Pico`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Tipo de Pico` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Tipo de Pico` (
  `idTipo de Pico` INT NOT NULL,
  `Tipo de Pico` VARCHAR(45) NULL,
  `fechaCreacion` DATE NULL,
  `usuarioCreacion` VARCHAR(20) NULL,
  `fechaModificacion` DATE NULL,
  `usuarioUltimaModificacion` VARCHAR(20) NULL,
  PRIMARY KEY (`idTipo de Pico`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Pajaro`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Pajaro` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Pajaro` (
  `idPajaro` INT NOT NULL,
  `Especie_idEspecie` INT NOT NULL,
  `Nombre Común` VARCHAR(45) NULL,
  `Nombre en Ingles` VARCHAR(45) NULL,
  `Nombre Cientifico` VARCHAR(45) NULL,
  `Tipo de Pico_idTipo de Pico` INT NOT NULL,
  `Cantidad de Huevos` INT NULL,
  `fechaCreacion` DATE NULL,
  `usuarioCreacion` VARCHAR(20) NULL,
  `fechaModificacion` DATE NULL,
  `usuarioUltimaModificacion` VARCHAR(20) NULL,
  PRIMARY KEY (`idPajaro`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Usuario` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Usuario` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `NomUsuario` VARCHAR(45) NOT NULL,
  `Contraseña` VARCHAR(45) NOT NULL,
  `permisos` INT NOT NULL DEFAULT 2,
  `tokenFacebook` VARCHAR(100) NULL,
  `fechaCreacion` DATE NULL,
  `usuarioCreacion` VARCHAR(20) NULL,
  `fechaModificacion` DATE NULL,
  `usuarioUltimaModificacion` VARCHAR(20) NULL,
  PRIMARY KEY (`idUsuario`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Tipo de Persona`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Tipo de Persona` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Tipo de Persona` (
  `idTipo de Persona` INT NOT NULL,
  `Tipo de Persona` VARCHAR(45) NOT NULL,
  `fechaCreacion` DATE NULL,
  `usuarioCreacion` VARCHAR(20) NULL,
  `fechaModificacion` DATE NULL,
  `usuarioUltimaModificacion` VARCHAR(20) NULL,
  PRIMARY KEY (`idTipo de Persona`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Persona`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Persona` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Persona` (
  `idPersona` INT NOT NULL,
  `Usuario_idUsuario` INT NOT NULL,
  `Tipo de Persona_idTiipo de Persona` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellido` VARCHAR(45) NOT NULL,
  `fechaCreacion` DATE NULL,
  `usuarioCreacion` VARCHAR(20) NULL,
  `fechaModificacion` DATE NULL,
  `usuarioUltimaModificacion` VARCHAR(20) NULL,
  PRIMARY KEY (`idPersona`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Color`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Color` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Color` (
  `idColor` INT NOT NULL,
  `Color` VARCHAR(45) NULL,
  `fechaCreacion` DATE NULL,
  `usuarioCreacion` VARCHAR(20) NULL,
  `fechaModificacion` DATE NULL,
  `usuarioUltimaModificacion` VARCHAR(20) NULL,
  PRIMARY KEY (`idColor`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Fotografia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Fotografia` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Fotografia` (
  `idFotografia` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `descripcion` VARCHAR(100) NULL,
  `formato` VARCHAR(45) NULL,
  `tamanio` INT NULL,
  `Fotografiacol` BLOB NULL,
  `fechaCreacion` DATE NULL,
  `usuarioCreacion` VARCHAR(20) NULL,
  `fechaModificacion` DATE NULL,
  `usuarioUltimaModificacion` VARCHAR(20) NULL,
  PRIMARY KEY (`idFotografia`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Zona de Vida`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Zona de Vida` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Zona de Vida` (
  `idZona de Vida` INT NOT NULL,
  `Zona de Vida` VARCHAR(45) NULL,
  `fechaCreacion` DATE NULL,
  `usuarioCreacion` VARCHAR(20) NULL,
  `fechaModificacion` DATE NULL,
  `usuarioUltimaModificacion` VARCHAR(20) NULL,
  PRIMARY KEY (`idZona de Vida`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Pajaros_X_Persona`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Pajaros_X_Persona` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Pajaros_X_Persona` (
  `Persona_idPersona` INT NOT NULL,
  `Pajaro_idPajaro` INT NOT NULL,
  `Color_idColor` INT NOT NULL,
  `Fotografia_idFotografia` INT NOT NULL,
  `Zona de Vida_idZona de Vida` INT NOT NULL,
  `fechaCreacion` DATE NULL,
  `usuarioCreacion` VARCHAR(20) NULL,
  `fechaModificacion` DATE NULL,
  `usuarioUltimaModificacion` VARCHAR(20) NULL,
  PRIMARY KEY (`Persona_idPersona`, `Pajaro_idPajaro`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Correo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Correo` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Correo` (
  `Persona_idPersona` INT NOT NULL,
  `Correo` VARCHAR(45) NULL,
  `fechaCreacion` DATE NULL,
  `usuarioCreacion` VARCHAR(20) NULL,
  `fechaModificacion` DATE NULL,
  `usuarioUltimaModificacion` VARCHAR(20) NULL)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Telefono`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Telefono` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Telefono` (
  `Persona_idPersona` INT NOT NULL,
  `Telefono` VARCHAR(45) NOT NULL,
  `fechaCreacion` DATE NULL,
  `usuarioCreacion` VARCHAR(20) NULL,
  `fechaModificacion` DATE NULL,
  `usuarioUltimaModificacion` VARCHAR(20) NULL)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `BitacoraContrasenias`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `BitacoraContrasenias` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `BitacoraContrasenias` (
  `Usuario_idUsuario` INT NOT NULL,
  `contraseña` VARCHAR(45) NOT NULL,
  `contraseñaAnterior` VARCHAR(45) NOT NULL,
  `fechaModificacion` DATE NOT NULL)
ENGINE = InnoDB;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
