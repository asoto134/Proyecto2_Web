----- Nelson Abarca Quirós--- 1/6/2015------------------------

-- 1---------- Total de pajaros------------------------
DELIMITER //
CREATE PROCEDURE totalPajaros()
BEGIN
	Select count(Pajaros_X_Persona_id)
	from Pajaros_X_Persona;
END//
-- 2------------- Pajaros por zona de Vida---------------------
DELIMITER //
CREATE PROCEDURE Pajaros_x_ZonaVida()
BEGIN
	Select count(Pajaros_X_Persona_id), Zona_de_Vida
	from Pajaros_X_Persona, zona_de_vida
	where (Zona_de_Vida_idZonadeVida <= 4)
	and Zona_de_Vida_idZonadeVida = idZona_de_Vida
	group by idZona_de_Vida
	order by count(Pajaros_X_Persona_id) desc;
END//

-- 3--------------- Top N de pajaros por persona-------------------------
DELIMITER//
CREATE PROCEDURE TopPajaros(IN top int)
BEGIN
	select tabla.nombre,tabla.Apellido
  	from (Select nombre,Apellido,count(Pajaros_X_Persona_id)
			from Pajaros_X_Persona, persona
			where (Tipo_de_Persona_idTipo_de_Persona <= 2)
			and Persona_idPersona = idPersona
			group by idPersona
			order by count(Pajaros_X_Persona_id) desc) as tabla
  	limit top;
END//