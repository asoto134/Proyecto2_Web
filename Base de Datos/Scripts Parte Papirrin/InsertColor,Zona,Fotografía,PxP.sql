--Nelson Abarca Quirós, mayo 26--
DELIMITER //
CREATE PROCEDURE add_fotografia(IN nombre varchar(50), IN descripcion varchar(50),IN formato varchar(45), IN tamanio int, IN URL varchar, IN id_pxp int)
BEGIN
    insert into Fotofrafia (nombre,descripcion,formato,tamanio,URL,Pajaros_X_Persona_Pajaros_X_Persona_id)
	
    values (nombre,descripcion,formato,tamanio,URL,id_pxp);
END//
-------------------------------------------------------------------------------------------------------
DELIMITER //
CREATE PROCEDURE add_ZonaVida(IN nombre varchar(50))
BEGIN
    insert into Zona_de_Vida (Zona_de_Vida)
	
    values (nombre);
END//
-------------------------------------------------------------------------------------------------------
DELIMITER //
CREATE PROCEDURE add_color(IN nombre varchar(50))
BEGIN
    insert into Color (Color)
	
    values (nombre);
END//
--------------------------------------------------------------------------------------------------
DELIMITER //
CREATE PROCEDURE add_P_x_P(IN id_pajaro int, IN id_persona int ,IN id_color int, IN id_zonaVida int, IN id_especie int)
BEGIN
    insert into Pajaros_X_Persona (Pajaro_idPajaro,Persona_idPersona,Color_idColor,Zona_de_Vida_idZona de Vida,Especie_idEspecie)
	
    values (id_pajaro,id_persona,id_color,id_zonaVida,id_especie);
END//