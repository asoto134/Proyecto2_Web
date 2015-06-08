-- Creados por Amanda--
-- Procedimientos para poder connsultar--
-- Obtiene todos los ordenes--
USE `proyecto2web`;
DROP procedure IF EXISTS `getallOrden`;

DELIMITER $$
USE `proyecto2web`$$
CREATE PROCEDURE `getallOrden` ()
BEGIN
Select idOrden,Orden
from orden
order by Orden;
END
$$

DELIMITER ;

-- Obtiene todo los subordenes--

USE `proyecto2web`;
DROP procedure IF EXISTS `proyecto2web`.`getallSuborden`;

DELIMITER $$
USE `proyecto2web`$$
CREATE DEFINER=`proyecto2web`@`localhost` PROCEDURE `getallSuborden`()
BEGIN
Select idSuborden,Suborden
from suborden
order by Suborden;
END$$

DELIMITER ;
;

-- Obtiene todos los picos--

USE `proyecto2web`;
DROP procedure IF EXISTS `proyecto2web`.`getallPico`;

DELIMITER $$
USE `proyecto2web`$$
CREATE DEFINER=`proyecto2web`@`localhost` PROCEDURE `getallPico`()
BEGIN
Select idTipo_de_Pico,Tipo_de_Pico
from tipo_de_pico
order by Tipo_de_Pico;
END$$

DELIMITER ;
;
-- Obtiene todas las familias--

USE `proyecto2web`;
DROP procedure IF EXISTS `proyecto2web`.`getallFamilia`;

DELIMITER $$
USE `proyecto2web`$$
CREATE DEFINER=`proyecto2web`@`localhost` PROCEDURE `getallFamilia`()
BEGIN
Select idFamilia,Familia from familia 
order by Familia;
END$$

DELIMITER ;
;
-- Obtiene todos los genero--

USE `proyecto2web`;
DROP procedure IF EXISTS `getallGenero`;

DELIMITER $$
USE `proyecto2web`$$
CREATE DEFINER=`proyecto2web`@`localhost` PROCEDURE `getallGenero`()
BEGIN
Select idGenero,Genero from genero 
order by Genero;
END$$

DELIMITER ;
;