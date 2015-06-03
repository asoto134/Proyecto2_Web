--Amanda Solano Astorga,2 de junio
USE `proyecto2web`;
DROP procedure IF EXISTS `getZonadeVida`;

DELIMITER $$
USE `proyecto2web`$$
CREATE PROCEDURE `getZonadeVida` ()
BEGIN
Select idZona_de_Vida,Zona_de_Vida from zona_de_vida
order by Zona_de_Vida;
END
$$

DELIMITER ;


CREATE DEFINER=`proyecto2web`@`localhost` PROCEDURE `getColor`()
BEGIN
	Select idColor,Color
    from color
    order by Color;
END

USE `proyecto2web`;
DROP procedure IF EXISTS `getEspecie`;

DELIMITER $$
USE `proyecto2web`$$
CREATE PROCEDURE `getEspecie` ()
BEGIN
	Select idEspecie,Especie
    from especie
    order by especie;
END
$$

DELIMITER ;

