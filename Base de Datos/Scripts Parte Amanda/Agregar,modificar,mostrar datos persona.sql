-- Amanda Solano Astorga, mayo 26--
-- Cambiar tabla Correo, para que acepta más de un correo--
ALTER TABLE `proyecto2web`.`correo` 
CHANGE COLUMN `Correo` `Correo` VARCHAR(45) NOT NULL COMMENT 'correo de la persona.' ,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`Persona_idPersona`, `Correo`);

--- Buscar todos los correos de un usuarios--
-- Recibe el id de los usuarios--
USE `proyecto2web`;
DROP procedure IF EXISTS `obtener_correos`;

DELIMITER $$
USE `proyecto2web`$$
CREATE PROCEDURE `obtener_correos` (in usuario int)
BEGIN
SELECT correo.Correo
    FROM correo,persona
    where persona.Usuario_idUsuario=usuario and correo.Persona_idPersona=persona.idPersona
    order by Correo;

END
$$

DELIMITER ;

-- Buscar todos  los telefonos del usuario
-- Recibe el id de los usuarios--
USE `proyecto2web`;
DROP procedure IF EXISTS `obtener_telefonos`;

DELIMITER $$
USE `proyecto2web`$$
CREATE PROCEDURE `obtener_telefonos` (in usuario int)
BEGIN
SELECT Telefono
    FROM telefono
    where persona.Usuario_idUsuario=usuario and telefono.Persona_idPersona=persona.idPersona
    order by Telefono;

END
$$

DELIMITER ;

-- Mostrar los datos del usuario--
-- Recibe el id del usuario y muestra: Id_Persona, ya que es la cédula
-- nombre,apellido y el usuario
USE `proyecto2web`;
DROP procedure IF EXISTS `mostrar_datos_usuario`;

DELIMITER $$
USE `proyecto2web`$$
CREATE PROCEDURE `mostrar_datos_usuario` (in pusuario int)
BEGIN
	Select persona.idPersona,persona.nombre,persona.apellido,usuario.NomUSuairo
    from persona,usuario 
    where usuario.idUsuario=pusuario and persona.Usuario_idUsuario=usuario.idUsuario;
END
$$

DELIMITER ;

-- Agregar contraseña, telefono y correo--
USE `proyecto2web`;
DROP procedure IF EXISTS `Cambiar_Datos`;

DELIMITER $$
USE `proyecto2web`$$
CREATE PROCEDURE `Cambiar_Datos` (in dusuario int,in contraseña varchar(45),in telefono integer, in correo varchar(45),in tipo_modificar integer)

	
BEGIN
	declare Ipersona int;
    declare contra  varchar(45);
    declare nueva varchar(45);
    Select idPersona into Ipersona from persona where Usuario_idUsuario=dusuario;
    Select Contrasenia into contra from usuario where idUsuario=dusuario;
	#El procedimiento recibe todos los datos que pueden cambiar, dependiendo del tipo estos datos varian
		if (tipo_modificar=0) then
			insert  into telefono(Persona_idPersona,Telefono)
            values(Ipersona,telefono);
            end if;
		if (tipo_modificar=1) then
			insert into correo(Persona_idPersona,Correo)
            values(Ipersona,correo);
		end if;
        if (tipo_modificar=2) then
			set nueva= md5(contraseña);
            insert into bitacora_contrasenias(Usuario_idUsuario,contraseña,contraseñaAnterior,fechaModificacion)
            values(dusuario,nueva,contra,now());
			update usuario
            set Contrasenia=nueva
            where idUSuario=dusuario;
            
        end if;    
END
$$

DELIMITER ;
-- Borrar datos un telefono o un correo--
-- Recibe un usuario, un telefono y un correo y un tipo y en base a esto
-- realiza los cambios necesarios
USE `proyecto2web`;
DROP procedure IF EXISTS `Borrar_Datos`;

DELIMITER $$
USE `proyecto2web`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Borrar_Datos`(in dusuario int,in dtelefono int, in dcorreo varchar(45),in tipo_modificar int)
BEGIN
	declare Ipersona int;

    Select idPersona into Ipersona from persona where Usuario_idUsuario=dusuario;
   
	#El procedimiento recibe todos los datos que pueden cambiar, dependiendo del tipo estos datos varian
		if (tipo_modificar=0) then
			delete from telefono
            where Persona_idPersona=Ipersona and Telefono=dtelefono;
            
            end if;
		if (tipo_modificar=1) then
			delete from correo
            where Persona_idPersona=Ipersona and Correo=dcorreo;
		end if;
    
        
END$$

DELIMITER ;






