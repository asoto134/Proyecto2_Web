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


DROP procedure IF EXISTS `getAllEspecies`;
DELIMITER $$
CREATE PROCEDURE `getAllEspecies` ()
BEGIN
Select idEspecie,Especie,Nombre_Cientifico from especie 
order by especie;
END
$$

DROP procedure IF EXISTS `getPerfil`;
DELIMITER $$
CREATE PROCEDURE `getPerfil` (in pUsuario varchar(50))
BEGIN
Select Nombre,Apellido,Telefono,Tipo_de_Persona_idTipo_de_Persona,Correo 
from persona inner join usuario on persona.Usuario_idUsuario =  usuario.idUsuario
			 inner join telefono on telefono.Persona_idPersona = persona.idPersona
             inner join correo  on correo.Persona_idPersona = persona.idPersona
where usuario.NomUsuario = pUsuario;
END
$$

DROP procedure IF EXISTS `setPerfil`;
DELIMITER $$
CREATE PROCEDURE `setPerfil` (in pNombre varchar(50), in pApellido varchar(50), in pTelefono varchar(50), 
							  in pTipoPersona int, in pCorreo varchar(50),in pUsuario varchar(50))
BEGIN
Update persona, usuario set Nombre = pNombre, Apellido = pApellido, Tipo_de_Persona_idTipo_de_Persona = pTipoPersona
where persona.Usuario_idUsuario =  usuario.idUsuario and usuario.NomUsuario = pUsuario;

Update correo,persona, usuario set Correo = pCorreo
where persona.Usuario_idUsuario =  usuario.idUsuario and usuario.NomUsuario = pUsuario and correo.Persona_idPersona = persona.idPersona;


Update telefono,persona, usuario set Telefono = pTelefono
where persona.Usuario_idUsuario =  usuario.idUsuario and usuario.NomUsuario = pUsuario and telefono.Persona_idPersona = persona.idPersona;

END
$$



DROP procedure IF EXISTS `getPajaroXPersona`;
DELIMITER $$
CREATE PROCEDURE `getPajaroXPersona` (in pUsuario varchar(50))
BEGIN
Select Pajaros_X_Persona_id,Especie,Nombre_Cientifico 
from pajaros_x_persona inner join especie on pajaros_x_persona.Especie_idEspecie = especie.idEspecie
					   inner join usuario on pajaros_x_persona.Persona_idPersona = usuario.idUsuario
where usuario.NomUsuario = pUsuario
order by especie;
END
$$

DROP procedure IF EXISTS `getIdUsuario`;
DELIMITER $$
CREATE PROCEDURE `getIdUsuario` (in pUsuario varchar(50))
BEGIN
Select idUsuario from usuario where usuario.NomUsuario = pUsuario;
END
$$


DROP procedure IF EXISTS `addFoto`;
DELIMITER $$
CREATE PROCEDURE `addFoto` (in pIdPxP int, in pNombre varchar(45), in pFormato varchar(45),in pUrl varchar(100))
BEGIN
Insert into  fotografia (nombre,formato,URL,Pajaros_X_Persona_Pajaros_X_Persona_id) 
	   values (pNombre,pFormato,pUrl,pIdPxP);
END
$$



