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
CREATE PROCEDURE `getTipoPico` (in pEspecie varchar(50))
BEGIN
Select idTipo_de_Pico,Tipo_de_Pico from tipo_de_pico inner join especie on tipo_de_pico.Especie_idEspecie =  especie.idEspecie
Where especie.Especie = pEspecie
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

DROP procedure IF EXISTS `getFotos`;
DELIMITER $$
CREATE PROCEDURE `getFotos` (in pUsuario varchar(50))
BEGIN
Select URL,Especie,Nombre_Comun,Nombre_Cientifico From 
fotografia inner join pajaros_x_persona on fotografia.Pajaros_X_Persona_Pajaros_X_Persona_id = pajaros_x_persona.Pajaros_X_Persona_id 
		   inner join especie on especie.idEspecie = pajaros_x_persona.Especie_idEspecie
           inner join usuario on pajaros_x_persona.Persona_idPersona = usuario.idUsuario
where usuario.NomUsuario = pUsuario;
END
$$

DROP procedure IF EXISTS `setContrasenia`;
DELIMITER $$
CREATE PROCEDURE `setContrasenia` (in pViejaContrasenia varchar(45),in pNuevaContrasenia varchar(45),in pUsuario varchar(45))
BEGIN

SET SQL_SAFE_UPDATES = 0;

Update usuario set Contrasenia = pNuevaContrasenia where usuario.NomUsuario = pUsuario;

Insert Into bitacora_contrasenias 
Values((select idUsuario from usuario where usuario.NomUsuario = pUsuario),pNuevaContrasenia,pViejaContrasenia,sysdate());

END
$$





-- ------------------------------VISTAS-------------------------------------------------
DELIMITER $$
CREATE OR REPLACE VIEW ORDENES AS 
SELECT Orden AS orden ,idOrden AS id,Null AS descripcion,Clase_idClase AS id_clase
FROM orden, clase where orden.Clase_idClase = clase.idClase;
$$

DELIMITER $$
CREATE OR REPLACE VIEW SUBORDENES AS 
SELECT Suborden AS suborden ,idSuborden AS id,Null AS descripcion,Orden AS nombre_orden,idOrden AS id_orden
FROM suborden, orden where suborden.Orden_idOrden = orden.idOrden;
$$

DELIMITER $$
CREATE OR REPLACE VIEW FAMILIAS AS 
SELECT Familia AS familia ,idFamilia AS id,Null AS descripcion,Suborden AS nombre_suborden,idSuborden AS id_suborden
FROM familia, suborden where familia.Suborden_idSuborden = suborden.idSuborden;
$$

DELIMITER $$
CREATE OR REPLACE VIEW GENEROS AS 
SELECT Genero AS genero ,idGenero AS id,Null AS descripcion,Familia AS nombre_familia,idFamilia AS id_familia
FROM genero, familia where genero.Familia_idFamilia = familia.idFamilia;
$$


DELIMITER $$
CREATE OR REPLACE VIEW ESPECIES AS 
SELECT Especie AS especie ,idGenero AS id,Null AS descripcion,Genero AS nombre_genero,idGenero AS id_genero
FROM especie, genero where especie.Genero_idGenero = genero.idGenero;
$$

DELIMITER $$
CREATE OR REPLACE VIEW TIPOSDEPICOS AS 
SELECT Tipo_de_Pico AS tipo_pico ,idTipo_de_Pico AS id,Null AS descripcion,Especie AS nombre_especie,idEspecie AS id_especie
FROM tipo_de_pico, especie where tipo_de_pico.Especie_idEspecie = especie.idEspecie;
$$


DELIMITER $$
CREATE OR REPLACE VIEW CANTHUEVOS AS 
SELECT Cantidad AS cantidad_huevos ,idcantidad_Huevos AS id,Null AS descripcion,Null AS nombre_especie,Null AS id_especie
FROM cantidad_huevos;
$$


DELIMITER $$
CREATE OR REPLACE VIEW ZONASVIDA  AS 
SELECT Zona_de_Vida AS zona_vida ,idZona_de_Vida AS id,Null AS descripcion
FROM zona_de_vida;
$$


DELIMITER $$
CREATE OR REPLACE VIEW COLORES  AS 
SELECT Color AS color ,idColor AS id,Null AS descripcion
FROM color;
$$

DELIMITER $$
CREATE OR REPLACE VIEW PAJAROSXPERSONA  AS 
SELECT Pajaros_X_Persona_id AS id ,idPersona AS id_persona,Especie AS especie, idPersona AS cedula, Color_idColor AS id_color,Zona_de_Vida AS zona_vida 
FROM pajaros_x_persona inner join persona on pajaros_x_persona.Persona_idPersona = persona.Usuario_idUsuario
					   inner join especie on pajaros_x_persona.Especie_idEspecie = especie.idEspecie
                       inner join zona_de_vida on pajaros_x_persona.Zona_de_Vida_idZonadeVida = zona_de_vida.idZona_de_Vida;
$$

DELIMITER $$
CREATE OR REPLACE VIEW PERSONAS  AS 
SELECT idPersona AS id ,Nombre AS nombre,Apellido AS primer_apellido, NULL AS segundo_apellido, idPersona AS cedula  FROM persona;
$$

DELIMITER $$
CREATE OR REPLACE VIEW USUARIOS  AS 
SELECT idUsuario AS id ,NomUsuario AS nickname,'1234' AS password, idPersona AS cedula, idPersona AS id_persona,Tipo_de_Persona AS tipo_usuario  
FROM usuario inner join persona on usuario.idUsuario = persona.Usuario_idUsuario
		     inner join tipo_de_persona on persona.Tipo_de_Persona_idTipo_de_Persona = tipo_de_persona.idTipo_de_Persona;
$$

DELIMITER $$
CREATE OR REPLACE VIEW TELEFONOS  AS 
SELECT NULL AS id ,Persona_idPersona AS id_persona,Telefono AS telefono 
FROM telefono;
$$

DELIMITER $$
CREATE OR REPLACE VIEW CORREOS  AS 
SELECT NULL AS id ,Persona_idPersona AS id_persona,Correo AS correo 
FROM correo;
$$


DELIMITER $$
CREATE OR REPLACE VIEW FOTOS  AS 
SELECT idFotografia AS id ,nombre AS nombre_foto,URL AS url , Pajaros_X_Persona_Pajaros_X_Persona_id AS id_pajaroxpersona
FROM fotografia;
$$

