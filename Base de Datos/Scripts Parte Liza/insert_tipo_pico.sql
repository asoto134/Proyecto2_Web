DELIMITER //
CREATE PROCEDURE tipo_pico ()
BEGIN
    insert into pajaro (idPajaro, Especie_idEspecie, Nombre_Comun, Nombre_en_Ingles, Nombre_Cientifico,
						Tipo_de_Pico_idTipo_de_Pico, Cantidad_de_Huevos) 
	
    values (id_Pajaro , idEspecie, nombre_comun, nombre_ingles, nombre_cientifico, id_Tipo_Pico, cantidad_huevos);
END //