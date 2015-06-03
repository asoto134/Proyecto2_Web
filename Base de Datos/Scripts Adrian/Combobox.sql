-- Adrián Soto,2 de junio

USE `proyecto2web`;

DROP procedure IF EXISTS `getOrden`;
DELIMITER $$
CREATE PROCEDURE `getOrden` (in pClase int)
BEGIN
Select idOrden,Orden from orden Where Clase_idClase = pClase
order by orden;
END
$$


DROP procedure IF EXISTS `getSuborden`;
DELIMITER $$
CREATE PROCEDURE `getSuborden` (in pOrden int)
BEGIN
Select idSuborden,Suborden from suborden Where Orden_idOrden = pOrden
order by suborden;
END
$$

DROP procedure IF EXISTS `getFamilia`;
DELIMITER $$
CREATE PROCEDURE `getFamilia` (in pSuborden int)
BEGIN
Select idFamilia,Familia from familia Where Suborden_idSuborden = pSuborden
order by Familia;
END
$$


DROP procedure IF EXISTS `getGenero`;
DELIMITER $$
CREATE PROCEDURE `getGenero` (in pFamilia int)
BEGIN
Select idGenero,Genero from genero Where Familia_idFamilia = pFamilia
order by Genero;
END
$$

DROP procedure IF EXISTS `getEspecie`;
DELIMITER $$
CREATE PROCEDURE `getEspecie` (in pGenero int)
BEGIN
Select idEspecie,Especie from especie Where Genero_idGenero = pGenero
order by Especie;
END
$$


DROP procedure IF EXISTS `getTipoPico`;
DELIMITER $$
CREATE PROCEDURE `getTipoPico` (in pEspecie int)
BEGIN
Select idTipo_de_Pico,Tipo_de_Pico from tipo_de_pico Where Especie_idEspecie = pEspecie
order by Tipo_de_Pico;
END
$$


DROP procedure IF EXISTS `getCantHuevos`;
DELIMITER $$
CREATE PROCEDURE `getCantHuevos` ()
BEGIN
Select idcantidad_Huevos,Cantidad from cantidad_huevos 
order by Cantidad;
END
$$


