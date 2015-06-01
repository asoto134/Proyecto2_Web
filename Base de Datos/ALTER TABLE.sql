ALTER TABLE `proyecto2web`.`pajaros_x_persona` 
DROP COLUMN `Pajaro_idPajaro`;

ALTER TABLE `proyecto2web`.`especie` 
CHANGE COLUMN `Nombre Común` `Nombre_Comun` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Nombre común del ave.' ;

ALTER TABLE `proyecto2web`.`especie` 
CHANGE COLUMN `Nombre en Ingles` `Nombre_en_Ingles` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Nombre en inglés del ave.' ;

ALTER TABLE `proyecto2web`.`especie` 
CHANGE COLUMN `Nombre Cientifico` `Nombre_Cientifico` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Nombre cientifico del ave.' ;

ALTER TABLE `proyecto2web`.`pajaros_x_persona` 
CHANGE COLUMN `Zona_de_Vida_idZona de Vida` `Zona_de_Vida_idZonadeVida` INT(11) NOT NULL COMMENT 'Llave foranea que nos lleva a la tupla con los datos de la zona de vida.' ;
