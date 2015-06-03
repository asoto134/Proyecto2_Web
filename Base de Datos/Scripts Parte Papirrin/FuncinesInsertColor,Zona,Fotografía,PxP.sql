-- Nelson Abarca Quirós, mayo 26--
-- Insertar Fotografía-------------------------------------------------------------

DELIMITER 
CREATE PROCEDURE add_fotografia(IN nombre varchar(50), IN descripcion varchar(50),IN formato varchar(45), IN tamanio int, IN URL varchar, IN id_pxp int)
BEGIN
    insert into Fotofrafia (nombre,descripcion,formato,tamanio,URL,Pajaros_X_Persona_Pajaros_X_Persona_id)
	
    values (nombre,descripcion,formato,tamanio,URL,id_pxp);
END//

-- Insertar Zona de Vida---------------------------------------------------------------------------------------------------

DELIMITER //
CREATE PROCEDURE add_ZonaVida(IN nombre varchar(50))
BEGIN
    insert into Zona_de_Vida (Zona_de_Vida)
	
    values (nombre);
END//

-- --------Buscar Zona de Vida------------------------------------------------------------------------------------------
DELIMITER //
CREATE PROCEDURE Buscar_ZonaVida(IN idBuscar int)
BEGIN
    Select Zona_de_Vida
    from Zona_de_Vida
    where idZona_de_Vida = idBuscar;
END//

-- -------Insertar Color----------------------------------------------------------------------------------------------
DELIMITER //
CREATE PROCEDURE add_color(IN nombre varchar(50))
BEGIN
    insert into Color (Color)
	
    values (nombre);
END//

-- -------Buscar Color----------------------------------------------------------------------------------------------
DELIMITER //
CREATE PROCEDURE Buscar_color(IN idBuscar int)
BEGIN
    Select Color 
    from Color
    where idColor = idBuscar;
END//

-- --------Insertar pajaro por persona----------------------------------------------------------------------------------------
DELIMITER //
CREATE PROCEDURE add_P_x_P(IN id_persona int ,IN id_color int, IN id_zonaVida int, IN id_especie int)
BEGIN
    insert into Pajaros_X_Persona (Persona_idPersona,Color_idColor,Zona_de_Vida_idZonadeVida,Especie_idEspecie)
	
    values (id_persona,id_color,id_zonaVida,id_especie);
END//