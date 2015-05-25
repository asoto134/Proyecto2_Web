DELIMITER //
CREATE PROCEDURE addPajaro (IN idEspecie int, IN nombre_comun varchar(50), IN nombre_ingles varchar(50), 
							IN nombre_cientifico varchar(50), IN id_Tipo_Pico int, IN cantidad_huevos int)
BEGIN
    insert into pajaro (Especie_idEspecie, Nombre_Comun, Nombre_en_Ingles, Nombre_Cientifico,
						Tipo_de_Pico_idTipo_de_Pico, Cantidad_de_Huevos) 
	
    values (idEspecie, nombre_comun, nombre_ingles, nombre_cientifico, id_Tipo_Pico, cantidad_huevos);
END //