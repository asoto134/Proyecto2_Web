--Amanda Solano, JOB--
--Realiza el select y crea un archivo donde van a estar los datos
USE `proyecto2web`;
DROP procedure IF EXISTS `Reporte`;

DELIMITER $$
USE `proyecto2web`$$
CREATE DEFINER=`proyecto2web`@`localhost` PROCEDURE `Reporte`()
BEGIN
Select  p.Nombre, p.Apellido, pXp.Pajaros_X_Persona_id,c.Correo
from persona p
inner join pajaros_x_persona pXp
on p.Usuario_idUsuario=pXp.Persona_idPersona 
and pXp.Especie_idEspecie=27
inner join correo c
on c.Persona_idPersona=p.idPersona and p.Usuario_idUsuario=pXp.Persona_idPersona
INTO outfile 'C:\\wamp\\www\\JOB\\reporte_diario.txt'
fields terminated by ';'
OPTIONALLY ENCLOSED BY '\"'
LINES TERMINATED BY '\r\n';
END$$

DELIMITER ;
